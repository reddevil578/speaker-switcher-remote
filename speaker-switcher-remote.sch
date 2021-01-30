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
P 7050 3400
F 0 "R2" V 6843 3400 50  0000 C CNN
F 1 "2.2k" V 6934 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6980 3400 50  0001 C CNN
F 3 "~" H 7050 3400 50  0001 C CNN
	1    7050 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 4750 6050 4750
$Comp
L Device:Q_NPN_BCE Q2
U 1 1 6006D052
P 7800 3400
F 0 "Q2" H 7991 3446 50  0000 L CNN
F 1 "TIP31C" H 7991 3355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8000 3500 50  0001 C CNN
F 3 "~" H 7800 3400 50  0001 C CNN
	1    7800 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6006F615
P 7350 3600
F 0 "R3" H 7420 3646 50  0000 L CNN
F 1 "10k" H 7420 3555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7280 3600 50  0001 C CNN
F 3 "~" H 7350 3600 50  0001 C CNN
	1    7350 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 6006FF68
P 7650 3800
F 0 "#PWR0101" H 7650 3550 50  0001 C CNN
F 1 "GNDREF" H 7655 3627 50  0000 C CNN
F 2 "" H 7650 3800 50  0001 C CNN
F 3 "" H 7650 3800 50  0001 C CNN
	1    7650 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0102
U 1 1 60071496
P 6350 4750
F 0 "#PWR0102" H 6350 4500 50  0001 C CNN
F 1 "GNDREF" H 6355 4577 50  0000 C CNN
F 2 "" H 6350 4750 50  0001 C CNN
F 3 "" H 6350 4750 50  0001 C CNN
	1    6350 4750
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
L Device:R R1
U 1 1 60064471
P 6350 4450
F 0 "R1" V 6143 4450 50  0000 C CNN
F 1 "100k" V 6234 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6280 4450 50  0001 C CNN
F 3 "~" H 6350 4450 50  0001 C CNN
	1    6350 4450
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0106
U 1 1 600E3B6B
P 7600 4550
F 0 "#PWR0106" H 7600 4300 50  0001 C CNN
F 1 "GNDREF" H 7605 4377 50  0000 C CNN
F 2 "" H 7600 4550 50  0001 C CNN
F 3 "" H 7600 4550 50  0001 C CNN
	1    7600 4550
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
	6050 3950 6700 3950
Text GLabel 7850 2550 0    50   Input ~ 0
PWR
$Comp
L Device:R R7
U 1 1 6009AF9C
P 8000 2550
F 0 "R7" V 7793 2550 50  0000 C CNN
F 1 "10" V 7884 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 7930 2550 50  0001 C CNN
F 3 "~" H 8000 2550 50  0001 C CNN
	1    8000 2550
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
P 7750 4550
F 0 "SIG-1" H 7828 4585 50  0000 L CNN
F 1 "spade-terminal" H 7800 4450 30  0000 L CNN
F 2 "arduino-nano:SpadeTerminal635" H 7600 4700 50  0001 C CNN
F 3 "" H 7600 4700 50  0001 C CNN
	1    7750 4550
	1    0    0    -1  
$EndComp
$Comp
L speaker-switcher-remote-rescue:spade-terminal-arduino SIG+1
U 1 1 600B3081
P 7750 4450
F 0 "SIG+1" H 7828 4485 50  0000 L CNN
F 1 "spade-terminal" H 7850 4550 30  0000 L CNN
F 2 "arduino-nano:SpadeTerminal635" H 7600 4600 50  0001 C CNN
F 3 "" H 7600 4600 50  0001 C CNN
	1    7750 4450
	1    0    0    -1  
$EndComp
$Comp
L speaker-switcher-remote-rescue:spade-terminal-arduino OUT-1
U 1 1 600B4492
P 8950 3000
F 0 "OUT-1" H 9028 3035 50  0000 L CNN
F 1 "spade-terminal" H 9050 2950 30  0000 L CNN
F 2 "arduino-nano:SpadeTerminal635" H 8800 3150 50  0001 C CNN
F 3 "" H 8800 3150 50  0001 C CNN
	1    8950 3000
	1    0    0    -1  
$EndComp
$Comp
L speaker-switcher-remote-rescue:spade-terminal-arduino OUT+1
U 1 1 600B4885
P 8950 2900
F 0 "OUT+1" H 9028 2935 50  0000 L CNN
F 1 "spade-terminal" H 9050 3050 30  0000 L CNN
F 2 "arduino-nano:SpadeTerminal635" H 8800 3050 50  0001 C CNN
F 3 "" H 8800 3050 50  0001 C CNN
	1    8950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4550 7600 4550
Text Label 8800 2850 0    50   ~ 0
OUT+
Text Label 8800 3150 0    50   ~ 0
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
Wire Wire Line
	4100 5600 4650 5600
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
	6300 2150 6300 3150
Connection ~ 6300 3150
Wire Wire Line
	6300 3150 6300 3550
$Comp
L Device:R R9
U 1 1 601BDAF6
P 5500 3150
F 0 "R9" V 5500 3150 50  0000 C CNN
F 1 "47k" V 5600 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5430 3150 50  0001 C CNN
F 3 "~" H 5500 3150 50  0001 C CNN
	1    5500 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3150 6300 3150
Wire Wire Line
	7200 3400 7350 3400
Wire Wire Line
	7600 3400 7350 3400
Wire Wire Line
	8650 2550 8650 2900
Wire Wire Line
	8650 2900 8850 2900
Wire Wire Line
	8850 3000 8650 3000
Wire Wire Line
	8650 3000 8650 3200
Wire Wire Line
	8650 3200 8300 3200
$Comp
L Device:D D1
U 1 1 60218F13
P 8300 2850
F 0 "D1" V 8254 2929 50  0000 L CNN
F 1 "1N4148" H 8150 2750 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P3.81mm_Vertical_KathodeUp" H 8300 2850 50  0001 C CNN
F 3 "~" H 8300 2850 50  0001 C CNN
	1    8300 2850
	0    1    1    0   
$EndComp
Connection ~ 8300 2550
Wire Wire Line
	8300 2550 8650 2550
Wire Wire Line
	8300 2550 8300 2700
Wire Wire Line
	8300 3000 8300 3200
Connection ~ 8300 3200
Wire Wire Line
	8300 3200 7900 3200
Wire Wire Line
	8150 2550 8300 2550
Wire Wire Line
	7350 3400 7350 3450
Wire Wire Line
	7900 3600 7900 3800
Wire Wire Line
	7900 3800 7650 3800
Wire Wire Line
	7350 3800 7350 3750
Wire Wire Line
	7350 3800 7650 3800
Connection ~ 7350 3400
Wire Wire Line
	6900 3400 6700 3400
Wire Wire Line
	6050 4150 6350 4150
Wire Wire Line
	6350 4150 6350 4300
Connection ~ 6350 4150
Wire Wire Line
	6350 4600 6350 4750
Connection ~ 6350 4750
Wire Wire Line
	6700 3400 6700 3950
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 602A1BF3
P 7150 4450
F 0 "Q1" V 7450 4400 50  0000 L CNN
F 1 "2N2222" V 7350 4300 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 7350 4550 50  0001 C CNN
F 3 "~" H 7150 4450 50  0001 C CNN
	1    7150 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 4150 7050 4150
Text GLabel 7050 5100 3    50   Input ~ 0
+5V
Wire Wire Line
	7050 4150 7050 4250
Wire Wire Line
	7050 4650 7050 4700
Wire Wire Line
	6300 2150 6250 2150
Wire Wire Line
	4950 3150 4950 2750
Connection ~ 4950 3150
Wire Wire Line
	4950 3150 5350 3150
Wire Wire Line
	4950 2150 4950 2450
$Comp
L Device:R R8
U 1 1 601B5E62
P 4950 2600
F 0 "R8" H 5020 2646 50  0000 L CNN
F 1 "100" H 5020 2555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4880 2600 50  0001 C CNN
F 3 "~" H 4950 2600 50  0001 C CNN
	1    4950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3650 5150 3650
Wire Wire Line
	4950 3650 4950 3150
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
Connection ~ 7650 3800
$Comp
L Device:R R6
U 1 1 600BEA2A
P 7500 4450
F 0 "R6" V 7293 4450 50  0000 C CNN
F 1 "2.2k" V 7384 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7430 4450 50  0001 C CNN
F 3 "~" H 7500 4450 50  0001 C CNN
	1    7500 4450
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
P 7050 4850
F 0 "R10" H 6980 4804 50  0000 R CNN
F 1 "100" H 6980 4895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6980 4850 50  0001 C CNN
F 3 "~" H 7050 4850 50  0001 C CNN
	1    7050 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7050 5000 7050 5100
$EndSCHEMATC
