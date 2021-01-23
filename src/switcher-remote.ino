#if 1
#define USE_SERIAL 1
#define USE_DISPLAY 1
#endif

#ifdef USE_DISPLAY
#include<ArducamSSD1306.h>
ArducamSSD1306 screen = ArducamSSD1306(-1);
#endif


const uint8_t irDevAddr = 0;
const uint8_t irSwitchCmd = 64;
const uint8_t irSelectOneCmd = 25;
const uint8_t irSelectTwoCmd = 24;

const uint8_t pinIrIn = 12;
const uint8_t pinSignalIn = 6;
const uint8_t pinOut = 8;

#define USE_SIGNAL 0x0
#define USE_IR     0x1

struct State {
  unsigned int outputState : 1;
  unsigned int switchState : 1;
} state = {LOW, USE_SIGNAL};

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

    bool command_valid() {
      return cword.command == ~cword.command_inv;
    }
    
    bool address_valid() {
      return cword.address == ~cword.address_inv;
    }
};

#ifdef USE_DISPLAY
void debug(const char *text) {
  screen.clearDisplay();
  screen.setCursor(0, 0);
  screen.setTextColor(1);
  screen.setTextSize(2);
  screen.println(text);
  screen.display();
}
#endif

void setup() {
  pinMode(pinIrIn, INPUT);
  pinMode(pinOut, OUTPUT);
  digitalWrite(pinOut, state.outputState);

#ifdef USE_DISPLAY
  screen.begin();
  screen.setTextColor(1);
  screen.setTextSize(2);
  debug("begin");
  screen.display();
#endif
#ifdef USE_SERIAL
  Serial.begin(115200);
#endif
}

#ifdef USE_SERIAL
void printByte(char *name, unsigned char c) {
  Serial.print(name);
  Serial.print(": ");

  for (int i = 0; i < 8; i++)
    Serial.print((c >> (7 - i)) & 0x1);

  Serial.print(" ");
  Serial.print(c);

  Serial.println(" ");
}
#endif

int last_reading = HIGH;
int cur_transition = 0;
unsigned int transitions[68] = {0}; // The first slot is wasted

IrCommand decode_command() {
#ifdef USE_DISPLAY
  debug("decoding");
#endif

  if (cur_transition == 0)
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
#ifdef USE_SERIAL
    if (((tno - 3) / 2) % 8 == 0)
      Serial.println();
#endif

    v = (transitions[tno] + transitions[tno + 1]) < 1300 ? 0 : 1;
    c.cword.fullword |= v << ((tno - 3) / 2);
#ifdef USE_SERIAL
    Serial.print(v);
#endif
  }

#ifdef USE_SERIAL
  Serial.println("\n");
  printByte("address    ", c.cword.address);
  printByte("address_inv", c.cword.address_inv);
  printByte("command    ", c.cword.command);
  printByte("command_inv", c.cword.command_inv);
#endif

  return c;
}

#ifdef USE_DISPLAY
char * renderByte(uint8_t b) {
  static char str[9] = {0};

  for (int i = 0; i < 8; i++) {
    str[i] = (b >> i) & 0x1 ? '1' : '0';
  }

  return str;
}

void printIrCommand(IrCommand cmd) {
  screen.println(renderByte(cmd.cword.address));
  screen.println(renderByte(cmd.cword.address_inv));
  screen.println(renderByte(cmd.cword.command));
  screen.println(renderByte(cmd.cword.command_inv));
}
#endif

void handle_command(IrCommand cmd) {
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

#ifdef USE_DISPLAY
  screen.clearDisplay();
  screen.setCursor(0, 0);
  screen.setTextSize(2);
  screen.print(cmd.cword.command);
  screen.print("/");
  screen.println(cmd.cword.address);
  screen.setTextSize(1);
  printIrCommand(cmd);
  screen.display();
#endif
}

unsigned long tStart = 0;

void loop() {
  int new_reading = digitalRead(pinIrIn);
  unsigned long t_now = micros();
  unsigned long int_segment = t_now - tStart;
  
  if (cur_transition > 67 || int_segment > 70000) {    
    // NEC standard is 65.5ms message length
    if (cur_transition > 0) {
      IrCommand cmd = decode_command();
      handle_command(cmd);
    }

    cur_transition = 0;
    last_reading = HIGH;
  }

  if (new_reading != last_reading) {
    Serial.println(new_reading);
    transitions[cur_transition++] = int_segment;
    tStart = t_now;
  }

  last_reading = new_reading;

  // Ensure the output pin matches the desired state

  if (state.switchState == USE_SIGNAL) {
    state.outputState = digitalRead(pinSignalIn);
  }  

  if (digitalRead(pinOut) != state.outputState)
      digitalWrite(pinOut, state.outputState);
}
