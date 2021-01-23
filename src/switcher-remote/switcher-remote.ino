// #define USE_SERIAL
// #define USE_DISPLAY

// Represents a decoded IR command as either a 32-bit word or per command field
class IrCommand {
  public:

    union {
      uint32_t fullword = 0;
      struct {
        uint8_t address: 8;
        uint8_t address_inv: 8;
        uint8_t command: 8;
        uint8_t command_inv: 8;
      };
    } cword;

    IrCommand(unsigned long int cmdword) {
      cword.fullword = cmdword;
    };

    inline bool command_valid() {
      return cword.command == ~cword.command_inv;
    }
    
    inline bool address_valid() {
      return cword.address == ~cword.address_inv;
    }
};


/*
 * DEBUGGING GARBAGE
 */
 
#ifdef USE_DISPLAY
#include<ArducamSSD1306.h>
ArducamSSD1306 screen = ArducamSSD1306(-1);

void displayDebug(const char *text) {
  screen.clearDisplay();
  screen.setCursor(0, 0);
  screen.setTextColor(1);
  screen.setTextSize(2);
  screen.println(text);
  screen.display();
}
  
char * renderByte(uint8_t b) {
  static char str[9] = {0};

  for (int i = 0; i < 8; i++) {
    str[i] = (b >> i) & 0x1 ? '1' : '0';
  }

  return str;
}

void printIrCommand(IrCommand cmd) {
  screen.clearDisplay();
  screen.setCursor(0, 0);
  screen.setTextSize(2);
  screen.print(cmd.cword.command);
  screen.print("/");
  screen.println(cmd.cword.address);
  screen.setTextSize(1);
  screen.println(renderByte(cmd.cword.address));
  screen.println(renderByte(cmd.cword.address_inv));
  screen.println(renderByte(cmd.cword.command));
  screen.println(renderByte(cmd.cword.command_inv));
  screen.display();
}
#else
  #define displayDebug(x)
  #define printIrCommand(x)
  #define renderByte(x)
#endif

#ifdef USE_SERIAL
  #define SERIALPRINTLN(x) Serial.println(x)
  #define SERIALPRINT(x) Serial.print(x)

  void printByte(char *name, unsigned char c) {
    Serial.print(name);
    Serial.print(": ");
  
    for (int i = 0; i < 8; i++)
      Serial.print((c >> (7 - i)) & 0x1);
  
    Serial.print(" ");
    Serial.print(c);
  
    Serial.println(" ");
  }
#else
  #define SERIALPRINTLN(x)
  #define SERIALPRINT(x)
  #define printByte(x, y)
#endif


/*
 * PROGRAM DEFINITIONS AND RUNTIME STATE
 */
 
const uint8_t irDevAddr = 0;
const uint8_t irSwitchCmd = 64;
const uint8_t irSelectOneCmd = 25;
const uint8_t irSelectTwoCmd = 24;

const uint8_t pinIrIn = 12;
const uint8_t pinSignalIn = 6;
const uint8_t pinOut = 8;

#define USE_SIGNAL 0
#define USE_IR     1

struct {
  unsigned int outputState : 1; // Current state of trigger output pin
  unsigned int switchState : 1; // Whether output driven by IR or trigger input
  unsigned int lastReading : 1; // State of IR input on previous reading
} state = {LOW, USE_SIGNAL, HIGH};

unsigned int transitions[68]; // Times of intervals between IR signal transitions
uint8_t curTransition;        // Index into transitions[] of next interval to be recorded
unsigned long tStart;         // Start time of current interval


void setup() {
  pinMode(pinIrIn, INPUT);
  pinMode(pinOut, OUTPUT);
  digitalWrite(pinOut, state.outputState);

#ifdef USE_DISPLAY
  screen.begin();
  screen.setTextColor(1);
  screen.setTextSize(2);
  displayDebug("begin");
  screen.display();
#endif

#ifdef USE_SERIAL
  Serial.begin(115200);
#endif
}

// Reconstruct the 32-bit words sent via IR, bit by bit, by observing
// the total time of transmission of each bit, which is determined by
// the popular NEC IR protocol.
IrCommand decode_command() {
  displayDebug("decoding");

  if (curTransition == 0)
    return 0;

  if (transitions[1] < 8900 || transitions[1] > 9500) {
    return 0;
  }

  if (transitions[2] < 4200 || transitions[2] > 4600) {
    return 0;
  }

  IrCommand c(0);
  uint32_t v;

  for (int tno = 3; tno < 67; tno += 2) {
    if (((tno - 3) / 2) % 8 == 0)
      SERIALPRINTLN();

    v = (transitions[tno] + transitions[tno + 1]) < 1300 ? 0 : 1;
    c.cword.fullword |= v << ((tno - 3) / 2);

    SERIALPRINT(v);
  }

  SERIALPRINTLN("\n");
  printByte("address    ", c.cword.address);
  printByte("address_inv", c.cword.address_inv);
  printByte("command    ", c.cword.command);
  printByte("command_inv", c.cword.command_inv);

  return c;
}

// If the command is recognized and intended for this device,
// apply the intended state changes
void handle_command(IrCommand cmd) {
  if (cmd.cword.address != irDevAddr)
    return;
    
  if (cmd.cword.command == irSwitchCmd)
    state.switchState = !state.switchState;

  else if (state.switchState == USE_IR)
    switch (cmd.cword.command) {
      case irSelectOneCmd:
        state.outputState = LOW;
        break;
      case irSelectTwoCmd:
        state.outputState = HIGH;
        break;
    }

  printIrCommand(cmd);
}

void loop() {
  int new_reading = digitalRead(pinIrIn);
  unsigned long t_now = micros();
  unsigned long int_segment = t_now - tStart;

  // We either buffered a full 67 transitions (preamble + 32-bits) or
  // we timed out trying, as the full transmission cannot exceed 65.5ms.
  if (curTransition > 67 || int_segment > 70000) {    
    if (curTransition > 0) {
      IrCommand cmd = decode_command();
      handle_command(cmd);
    }

    curTransition = 0;
    state.lastReading = HIGH;
  }

  // If we just noticed a transition took place, record the interval of
  // the segment it followed, then start over timing the next segment.
  if (new_reading != state.lastReading) {
    SERIALPRINTLN(new_reading);
    transitions[curTransition++] = int_segment;
    tStart = t_now;
  }

  state.lastReading = new_reading;


  // If the input trigger is driving the output, set output state to match it
  if (state.switchState == USE_SIGNAL)
    state.outputState = digitalRead(pinSignalIn);

  // If an IR command or the input trigger changes the desired output state
  // then commit it to the output pin.
  if (digitalRead(pinOut) != state.outputState)
      digitalWrite(pinOut, state.outputState);
}
