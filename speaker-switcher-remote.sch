EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L speaker-switcher-remote-rescue:arduino-nano-arduino M1
U 1 1 60062F98
P 5600 4450
F 0 "M1" H 5600 5575 50  0000 C CNN
F 1 "arduino-nano" H 5600 5484 50  0000 C CNN
F 2 "arduino-nano:arduino-nano" H 5700 5400 50  0001 C CNN
F 3 "" H 5700 5400 50  0001 C CNN
	1    5600 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60065658
P 6800 3400
F 0 "R2" V 6593 3400 50  0000 C CNN
F 1 "2.2k" V 6684 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6730 3400 50  0001 C CNN
F 3 "~" H 6800 3400 50  0001 C CNN
	1    6800 3400
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BCE Q2
U 1 1 6006D052
P 7550 3400
F 0 "Q2" H 7741 3446 50  0000 L CNN
F 1 "TIP31C" H 7741 3355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7750 3500 50  0001 C CNN
F 3 "~" H 7550 3400 50  0001 C CNN
	1    7550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 6006FF68
P 7400 3800
F 0 "#PWR0101" H 7400 3550 50  0001 C CNN
F 1 "GNDREF" H 7405 3627 50  0000 C CNN
F 2 "" H 7400 3800 50  0001 C CNN
F 3 "" H 7400 3800 50  0001 C CNN
	1    7400 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0105
U 1 1 60085B7D
P 5950 2700
F 0 "#PWR0105" H 5950 2450 50  0001 C CNN
F 1 "GNDREF" H 5955 2527 50  0000 C CNN
F 2 "" H 5950 2700 50  0001 C CNN
F 3 "" H 5950 2700 50  0001 C CNN
	1    5950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0106
U 1 1 600E3B6B
P 6650 5100
F 0 "#PWR0106" H 6650 4850 50  0001 C CNN
F 1 "GNDREF" H 6655 4927 50  0000 C CNN
F 2 "" H 6650 5100 50  0001 C CNN
F 3 "" H 6650 5100 50  0001 C CNN
	1    6650 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0108
U 1 1 600ED781
P 4100 5600
F 0 "#PWR0108" H 4100 5350 50  0001 C CNN
F 1 "GNDREF" H 4105 5427 50  0000 C CNN
F 2 "" H 4100 5600 50  0001 C CNN
F 3 "" H 4100 5600 50  0001 C CNN
	1    4100 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 3950 6550 3950
Text GLabel 7600 2550 0    50   Input ~ 0
PWR
$Comp
L Device:R R7
U 1 1 6009AF9C
P 7750 2550
F 0 "R7" V 7543 2550 50  0000 C CNN
F 1 "10" V 7634 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 7680 2550 50  0001 C CNN
F 3 "~" H 7750 2550 50  0001 C CNN
	1    7750 2550
	0    1    1    0   
$EndComp
$Comp
L speaker-switcher-remote-rescue:spade-terminal-arduino PWR+1
U 1 1 600B0454
P 3050 5200
F 0 "PWR+1" H 3128 5235 50  0000 L CNN
F 1 "spade-terminal" H 3128 5159 30  0000 L CNN
F 2 "arduino-nano:SpadeTerminal635" H 2900 5350 50  0001 C CNN
F 3 "" H 2900 5350 50  0001 C CNN
	1    3050 5200
	-1   0    0    1   
$EndComp
$Comp
L speaker-switcher-remote-rescue:spade-terminal-arduino PWR-1
U 1 1 600B13C9
P 3050 5300
F 0 "PWR-1" H 3128 5335 50  0000 L CNN
F 1 "spade-terminal" H 3150 5400 30  0000 L CNN
F 2 "arduino-nano:SpadeTerminal635" H 2900 5450 50  0001 C CNN
F 3 "" H 2900 5450 50  0001 C CNN
	1    3050 5300
	-1   0    0    1   
$EndComp
$Comp
L speaker-switcher-remote-rescue:spade-terminal-arduino SIG-1
U 1 1 600B1A54
P 7850 4550
F 0 "SIG-1" H 7928 4585 50  0000 L CNN
F 1 "spade-terminal" H 7900 4450 30  0000 L CNN
F 2 "arduino-nano:SpadeTerminal635" H 7700 4700 50  0001 C CNN
F 3 "" H 7700 4700 50  0001 C CNN
	1    7850 4550
	1    0    0    -1  
$EndComp
$Comp
L speaker-switcher-remote-rescue:spade-terminal-arduino SIG+1
U 1 1 600B3081
P 7850 4450
F 0 "SIG+1" H 7928 4485 50  0000 L CNN
F 1 "spade-terminal" H 7950 4550 30  0000 L CNN
F 2 "arduino-nano:SpadeTerminal635" H 7700 4600 50  0001 C CNN
F 3 "" H 7700 4600 50  0001 C CNN
	1    7850 4450
	1    0    0    -1  
$EndComp
$Comp
L speaker-switcher-remote-rescue:spade-terminal-arduino OUT-1
U 1 1 600B4492
P 8700 3000
F 0 "OUT-1" H 8778 3035 50  0000 L CNN
F 1 "spade-terminal" H 8800 2950 30  0000 L CNN
F 2 "arduino-nano:SpadeTerminal635" H 8550 3150 50  0001 C CNN
F 3 "" H 8550 3150 50  0001 C CNN
	1    8700 3000
	1    0    0    -1  
$EndComp
$Comp
L speaker-switcher-remote-rescue:spade-terminal-arduino OUT+1
U 1 1 600B4885
P 8700 2900
F 0 "OUT+1" H 8778 2935 50  0000 L CNN
F 1 "spade-terminal" H 8800 3050 30  0000 L CNN
F 2 "arduino-nano:SpadeTerminal635" H 8550 3050 50  0001 C CNN
F 3 "" H 8550 3050 50  0001 C CNN
	1    8700 2900
	1    0    0    -1  
$EndComp
Text Label 8550 2850 0    50   ~ 0
OUT+
Text Label 8550 3150 0    50   ~ 0
OUT-
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 60171699
P 4100 4950
F 0 "U1" H 4100 5192 50  0000 C CNN
F 1 "LM7805_TO220" H 4100 5101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4100 5175 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 4100 4900 50  0001 C CNN
	1    4100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4950 3550 4950
Wire Wire Line
	4400 4950 4650 4950
Wire Wire Line
	3300 5600 3550 5600
Wire Wire Line
	4650 5600 4650 5400
Connection ~ 4100 5600
Connection ~ 4650 4950
Wire Wire Line
	4100 5250 4100 5600
Wire Wire Line
	3550 4950 3550 5100
Connection ~ 3550 4950
Wire Wire Line
	3550 4950 3300 4950
Connection ~ 3550 5600
Wire Wire Line
	3550 5600 4100 5600
$Comp
L Device:CP C1
U 1 1 6018000A
P 3550 5250
F 0 "C1" H 3668 5296 50  0000 L CNN
F 1 ".33uF" H 3668 5205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 3588 5100 50  0001 C CNN
F 3 "~" H 3550 5250 50  0001 C CNN
	1    3550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5400 3550 5600
$Comp
L Device:CP C2
U 1 1 60180458
P 4650 5250
F 0 "C2" H 4768 5296 50  0000 L CNN
F 1 ".1uF" H 4768 5205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 4688 5100 50  0001 C CNN
F 3 "~" H 4650 5250 50  0001 C CNN
	1    4650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5100 4650 4950
Text Label 3350 4950 0    50   ~ 0
PWR
Wire Wire Line
	5950 2500 5950 2600
Wire Wire Line
	5650 2150 5600 2150
Connection ~ 5950 2600
Wire Wire Line
	5950 2600 5950 2700
Wire Wire Line
	6050 3550 6300 3550
Wire Wire Line
	6300 2150 6300 3050
Connection ~ 6300 3050
Wire Wire Line
	6300 3050 6300 3550
Wire Wire Line
	5650 3050 6300 3050
Wire Wire Line
	8400 2550 8400 2900
Wire Wire Line
	8400 2900 8600 2900
Wire Wire Line
	8600 3000 8400 3000
Wire Wire Line
	8400 3000 8400 3200
Wire Wire Line
	8400 3200 8050 3200
$Comp
L Device:D D1
U 1 1 60218F13
P 8050 2850
F 0 "D1" V 8004 2929 50  0000 L CNN
F 1 "1N4148" H 7900 2750 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 8050 2850 50  0001 C CNN
F 3 "~" H 8050 2850 50  0001 C CNN
	1    8050 2850
	0    1    1    0   
$EndComp
Connection ~ 8050 2550
Wire Wire Line
	8050 2550 8400 2550
Wire Wire Line
	8050 2550 8050 2700
Wire Wire Line
	8050 3000 8050 3200
Connection ~ 8050 3200
Wire Wire Line
	8050 3200 7650 3200
Wire Wire Line
	7900 2550 8050 2550
Wire Wire Line
	7650 3600 7650 3800
Wire Wire Line
	7650 3800 7400 3800
Wire Wire Line
	6550 3400 6550 3950
Wire Wire Line
	6300 2150 6250 2150
Wire Wire Line
	4950 3050 4950 2750
Connection ~ 4950 3050
Wire Wire Line
	4950 3050 5350 3050
Wire Wire Line
	4950 2150 4950 2450
$Comp
L Device:R R8
U 1 1 601B5E62
P 4950 2600
F 0 "R8" H 5020 2646 50  0000 L CNN
F 1 "100" H 5020 2555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4880 2600 50  0001 C CNN
F 3 "~" H 4950 2600 50  0001 C CNN
	1    4950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3650 5150 3650
Wire Wire Line
	4950 3650 4950 3050
Wire Wire Line
	4650 4950 5150 4950
Text Label 4650 4950 0    50   ~ 0
+5V
Wire Wire Line
	3300 4950 3300 5200
Wire Wire Line
	3300 5200 3150 5200
Wire Wire Line
	3300 5600 3300 5300
Wire Wire Line
	3300 5300 3150 5300
$Comp
L Device:R R6
U 1 1 600BEA2A
P 7550 4450
F 0 "R6" V 7343 4450 50  0000 C CNN
F 1 "2.2k" V 7434 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7480 4450 50  0001 C CNN
F 3 "~" H 7550 4450 50  0001 C CNN
	1    7550 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 2150 5600 2200
Connection ~ 5600 2150
Wire Wire Line
	5600 2600 5950 2600
Connection ~ 5600 2600
Wire Wire Line
	5600 2500 5600 2600
$Comp
L Device:CP C3
U 1 1 601B46AF
P 5600 2350
F 0 "C3" H 5600 2450 50  0000 L CNN
F 1 "100uF" H 5600 2250 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 5638 2200 50  0001 C CNN
F 3 "~" H 5600 2350 50  0001 C CNN
	1    5600 2350
	1    0    0    -1  
$EndComp
$Comp
L speaker-switcher-remote-rescue:VS1838b-arduino IR1
U 1 1 6007FDE7
P 5950 2200
F 0 "IR1" H 5950 2515 50  0000 C CNN
F 1 "VS1838b" H 5950 2424 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5950 2300 50  0001 C CNN
F 3 "" H 5950 2300 50  0001 C CNN
	1    5950 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4950 2150 5300 2150
$Comp
L Device:C C4
U 1 1 603AD93C
P 5300 2350
F 0 "C4" H 5300 2450 50  0000 L CNN
F 1 "100pF" H 5300 2250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 5338 2200 50  0001 C CNN
F 3 "~" H 5300 2350 50  0001 C CNN
	1    5300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2150 5300 2200
Connection ~ 5300 2150
Wire Wire Line
	5300 2150 5600 2150
Wire Wire Line
	5300 2500 5300 2600
Wire Wire Line
	5300 2600 5600 2600
$Comp
L Device:R R10
U 1 1 603B8358
P 6300 4150
F 0 "R10" V 6200 4250 50  0000 R CNN
F 1 "10k" V 6100 4250 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6230 4150 50  0001 C CNN
F 3 "~" H 6300 4150 50  0001 C CNN
	1    6300 4150
	0    -1   -1   0   
$EndComp
Text Notes 7400 7500 0    63   ~ 0
Speaker Swither Remote
Text Notes 10650 7650 0    63   ~ 0
0.1.0
Wire Wire Line
	6650 4900 7050 4900
Connection ~ 7300 4900
Wire Wire Line
	7750 4550 7600 4550
Wire Wire Line
	7600 4550 7600 4900
Wire Wire Line
	7750 4450 7700 4450
Wire Wire Line
	7400 4450 7300 4450
$Comp
L Device:C C5
U 1 1 60194B26
P 7300 4650
F 0 "C5" H 7300 4750 50  0000 L CNN
F 1 "100pF" H 7300 4550 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 7338 4500 50  0001 C CNN
F 3 "~" H 7300 4650 50  0001 C CNN
	1    7300 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4450 7300 4500
Wire Wire Line
	7300 4800 7300 4900
Wire Wire Line
	7300 4900 7600 4900
Wire Wire Line
	6650 4150 6650 4250
$Comp
L Device:R R11
U 1 1 601695ED
P 7050 4650
F 0 "R11" V 7250 4650 50  0000 C CNN
F 1 "100k" V 7150 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6980 4650 50  0001 C CNN
F 3 "~" H 7050 4650 50  0001 C CNN
	1    7050 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 602A1BF3
P 6750 4450
F 0 "Q1" V 7050 4400 50  0000 L CNN
F 1 "2N2222" V 6950 4300 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 6950 4550 50  0001 C CNN
F 3 "~" H 6750 4450 50  0001 C CNN
	1    6750 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6950 4450 7050 4450
Connection ~ 7300 4450
Wire Wire Line
	7050 4500 7050 4450
Connection ~ 7050 4450
Wire Wire Line
	7050 4450 7300 4450
Wire Wire Line
	7050 4800 7050 4900
Wire Wire Line
	7050 4900 7300 4900
Connection ~ 7400 3800
Wire Wire Line
	7100 3800 7400 3800
Wire Wire Line
	7100 3800 7100 3750
Wire Wire Line
	7100 3400 7100 3450
Wire Wire Line
	7350 3400 7100 3400
Connection ~ 7100 3400
Wire Wire Line
	6950 3400 7100 3400
$Comp
L Device:R R3
U 1 1 6006F615
P 7100 3600
F 0 "R3" H 7170 3646 50  0000 L CNN
F 1 "10k" H 7170 3555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 3600 50  0001 C CNN
F 3 "~" H 7100 3600 50  0001 C CNN
	1    7100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3400 6550 3400
$Comp
L Device:R R9
U 1 1 601BDAF6
P 5500 3050
F 0 "R9" V 5500 3050 50  0000 C CNN
F 1 "47k" V 5600 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5430 3050 50  0001 C CNN
F 3 "~" H 5500 3050 50  0001 C CNN
	1    5500 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 4950 4650 4650
Wire Wire Line
	4650 4650 5150 4650
Wire Wire Line
	6050 4150 6150 4150
Wire Wire Line
	5150 4850 5000 4850
Wire Wire Line
	5000 4850 5000 5600
Wire Wire Line
	4100 5600 4650 5600
Connection ~ 4650 5600
Wire Wire Line
	4650 5600 5000 5600
Wire Wire Line
	6450 4150 6650 4150
Wire Wire Line
	6650 4650 6650 4900
Connection ~ 7050 4900
Connection ~ 6650 4900
Wire Wire Line
	6650 4900 6650 5100
$EndSCHEMATC
