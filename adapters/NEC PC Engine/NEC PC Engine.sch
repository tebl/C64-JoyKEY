EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NEC PC Engine Adapter (C64 JoyKEY)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "turbo circuit."
Comment4 "Not sure if this works, but in theory this is an NEC PC Engine gamepad without the "
$EndDescr
$Comp
L joykey_jumpers:JUMPER_SETTINGS_1 #1
U 1 1 5FD24880
P 10975 700
F 0 "#1" H 10875 825 50  0001 C CNN
F 1 "JUMPER_SETTINGS_1" H 10850 -450 50  0001 C CNN
F 2 "" H 10975 525 50  0001 C CNN
F 3 "~" H 10975 525 50  0001 C CNN
	1    10975 700 
	1    0    0    -1  
$EndComp
$Comp
L joykey_jumpers:JUMPER_CONNECTED #4
U 1 1 5FD250F4
P 10975 1650
F 0 "#4" H 10975 1550 50  0001 C CNN
F 1 "JUMPER_CONNECTED" H 10975 1750 50  0001 C CNN
F 2 "" H 10975 1650 50  0001 C CNN
F 3 "" H 10975 1650 50  0001 C CNN
	1    10975 1650
	1    0    0    -1  
$EndComp
$Comp
L joykey_jumpers:JUMPER_CONNECTED #3
U 1 1 604080DA
P 10975 1250
F 0 "#3" H 10975 1150 50  0001 C CNN
F 1 "JUMPER_CONNECTED" H 10975 1350 50  0001 C CNN
F 2 "" H 10975 1250 50  0001 C CNN
F 3 "" H 10975 1250 50  0001 C CNN
	1    10975 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6049A7C8
P 6100 7150
F 0 "C1" H 6192 7196 50  0000 L CNN
F 1 "100nF" H 6192 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 6100 7150 50  0001 C CNN
F 3 "~" H 6100 7150 50  0001 C CNN
	1    6100 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 6049AA7D
P 6600 7525
F 0 "#PWR0107" H 6600 7275 50  0001 C CNN
F 1 "GND" H 6605 7352 50  0000 C CNN
F 2 "" H 6600 7525 50  0001 C CNN
F 3 "" H 6600 7525 50  0001 C CNN
	1    6600 7525
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 6049AE4C
P 6100 6775
F 0 "#PWR0108" H 6100 6625 50  0001 C CNN
F 1 "VCC" H 6115 6948 50  0000 C CNN
F 2 "" H 6100 6775 50  0001 C CNN
F 3 "" H 6100 6775 50  0001 C CNN
	1    6100 6775
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M1
U 1 1 604B1C82
P 550 550
F 0 "M1" H 550 650 50  0001 C CNN
F 1 "Mounting" H 550 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 550 550 50  0001 C CNN
F 3 "~" H 550 550 50  0001 C CNN
	1    550  550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 604B204C
P 675 550
F 0 "M2" H 675 650 50  0001 C CNN
F 1 "Mounting" H 675 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 675 550 50  0001 C CNN
F 3 "~" H 675 550 50  0001 C CNN
	1    675  550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 604B239C
P 800 550
F 0 "M3" H 800 650 50  0001 C CNN
F 1 "Mounting" H 800 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 800 550 50  0001 C CNN
F 3 "~" H 800 550 50  0001 C CNN
	1    800  550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 604B26C5
P 925 550
F 0 "M4" H 925 650 50  0001 C CNN
F 1 "Mounting" H 925 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 925 550 50  0001 C CNN
F 3 "~" H 925 550 50  0001 C CNN
	1    925  550 
	1    0    0    -1  
$EndComp
$Comp
L c64_idc:C64_IDC_ADAPTER J2
U 1 1 5FD1F19D
P 4300 2850
F 0 "J2" V 4350 3275 50  0000 C CNN
F 1 "Port 2" V 4275 3275 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 4300 2850 50  0001 C CNN
F 3 "~" H 4300 2850 50  0001 C CNN
	1    4300 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FD2B691
P 4200 2050
F 0 "#PWR01" H 4200 1800 50  0001 C CNN
F 1 "GND" H 4205 1877 50  0000 C CNN
F 2 "" H 4200 2050 50  0001 C CNN
F 3 "" H 4200 2050 50  0001 C CNN
	1    4200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1975 4200 1975
Wire Wire Line
	4200 1975 4200 2050
Wire Wire Line
	4300 1975 4300 2375
$Comp
L c64_idc:C64_IDC_ADAPTER J1
U 1 1 60386EDE
P 2975 2850
F 0 "J1" V 3025 3275 50  0000 C CNN
F 1 "Port 1" V 2950 3275 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 2975 2850 50  0001 C CNN
F 3 "~" H 2975 2850 50  0001 C CNN
	1    2975 2850
	0    -1   -1   0   
$EndComp
NoConn ~ 2875 2375
Wire Wire Line
	4100 2375 4100 1900
Wire Wire Line
	4100 1900 4925 1900
Wire Wire Line
	4400 2375 4400 1975
Wire Wire Line
	4400 1975 4825 1975
$Comp
L power:GND #PWR0103
U 1 1 603E5353
P 2875 2050
F 0 "#PWR0103" H 2875 1800 50  0001 C CNN
F 1 "GND" H 2880 1877 50  0000 C CNN
F 2 "" H 2875 2050 50  0001 C CNN
F 3 "" H 2875 2050 50  0001 C CNN
	1    2875 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 1975 2875 1975
Wire Wire Line
	2875 1975 2875 2050
Wire Wire Line
	2975 1975 2975 2375
Wire Wire Line
	2775 2375 2775 1900
Wire Wire Line
	3075 2375 3075 1975
NoConn ~ 4500 2375
NoConn ~ 3175 2375
NoConn ~ 2775 3300
NoConn ~ 2875 3300
NoConn ~ 2975 3300
NoConn ~ 3075 3300
Wire Wire Line
	4200 2375 4200 2300
$Comp
L solder_select:Jumper_VCC JP1
U 1 1 604C213A
P 3725 1725
F 0 "JP1" V 3679 1677 50  0000 R CNN
F 1 "VCC_EN" V 3770 1677 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3725 1725 50  0001 C CNN
F 3 "~" H 3725 1725 50  0001 C CNN
	1    3725 1725
	0    1    -1   0   
$EndComp
Wire Wire Line
	3725 2300 4200 2300
Wire Wire Line
	3725 1825 3725 2300
$Comp
L power:VCC #PWR0109
U 1 1 604CC126
P 3725 1625
F 0 "#PWR0109" H 3725 1475 50  0001 C CNN
F 1 "VCC" H 3740 1798 50  0000 C CNN
F 2 "" H 3725 1625 50  0001 C CNN
F 3 "" H 3725 1625 50  0001 C CNN
	1    3725 1625
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 604EB780
P 5400 3475
F 0 "R1" V 5350 3225 50  0000 L CNN
F 1 "47k" V 5400 3425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5330 3475 50  0001 C CNN
F 3 "~" H 5400 3475 50  0001 C CNN
	1    5400 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 604F20EA
P 5500 3475
F 0 "R2" V 5450 3225 50  0000 L CNN
F 1 "47k" V 5500 3425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5430 3475 50  0001 C CNN
F 3 "~" H 5500 3475 50  0001 C CNN
	1    5500 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 604F3B9E
P 5600 3475
F 0 "R3" V 5550 3225 50  0000 L CNN
F 1 "47k" V 5600 3425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5530 3475 50  0001 C CNN
F 3 "~" H 5600 3475 50  0001 C CNN
	1    5600 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 604F5537
P 5700 3475
F 0 "R4" V 5650 3225 50  0000 L CNN
F 1 "47k" V 5700 3425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 3475 50  0001 C CNN
F 3 "~" H 5700 3475 50  0001 C CNN
	1    5700 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 604F6EDD
P 5800 3475
F 0 "R5" V 5750 3225 50  0000 L CNN
F 1 "47k" V 5800 3425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5730 3475 50  0001 C CNN
F 3 "~" H 5800 3475 50  0001 C CNN
	1    5800 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 604F88BA
P 5900 3475
F 0 "R6" V 5850 3225 50  0000 L CNN
F 1 "47k" V 5900 3425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5830 3475 50  0001 C CNN
F 3 "~" H 5900 3475 50  0001 C CNN
	1    5900 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 604FA2E7
P 6000 3475
F 0 "R7" V 5950 3225 50  0000 L CNN
F 1 "47k" V 6000 3425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5930 3475 50  0001 C CNN
F 3 "~" H 6000 3475 50  0001 C CNN
	1    6000 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 604FBCC5
P 6100 3475
F 0 "R8" V 6050 3225 50  0000 L CNN
F 1 "47k" V 6100 3425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 3475 50  0001 C CNN
F 3 "~" H 6100 3475 50  0001 C CNN
	1    6100 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3325 5400 3250
Wire Wire Line
	5400 3250 5500 3250
Wire Wire Line
	5500 3250 5500 3325
Wire Wire Line
	5400 3250 5400 3175
Connection ~ 5400 3250
$Comp
L power:VCC #PWR0110
U 1 1 6051608D
P 5400 3175
F 0 "#PWR0110" H 5400 3025 50  0001 C CNN
F 1 "VCC" H 5415 3348 50  0000 C CNN
F 2 "" H 5400 3175 50  0001 C CNN
F 3 "" H 5400 3175 50  0001 C CNN
	1    5400 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3250 5600 3250
Wire Wire Line
	5600 3250 5600 3325
Connection ~ 5500 3250
Wire Wire Line
	5600 3250 5700 3250
Wire Wire Line
	5700 3250 5700 3325
Connection ~ 5600 3250
Wire Wire Line
	5700 3250 5800 3250
Wire Wire Line
	5800 3250 5800 3325
Connection ~ 5700 3250
Wire Wire Line
	5800 3250 5900 3250
Wire Wire Line
	5900 3250 5900 3325
Connection ~ 5800 3250
Wire Wire Line
	5900 3250 6000 3250
Wire Wire Line
	6000 3250 6000 3325
Connection ~ 5900 3250
Wire Wire Line
	6000 3250 6100 3250
Wire Wire Line
	6100 3250 6100 3325
Connection ~ 6000 3250
Wire Wire Line
	9050 4350 8975 4350
$Comp
L power:VCC #PWR0112
U 1 1 6214C52E
P 8975 3950
F 0 "#PWR0112" H 8975 3800 50  0001 C CNN
F 1 "VCC" H 8990 4123 50  0000 C CNN
F 2 "" H 8975 3950 50  0001 C CNN
F 3 "" H 8975 3950 50  0001 C CNN
	1    8975 3950
	1    0    0    -1  
$EndComp
Text Label 4950 4200 0    50   ~ 0
RIGHT
Text Label 4950 4800 0    50   ~ 0
LEFT
Text Label 4950 4500 0    50   ~ 0
DOWN
Text Label 4950 3900 0    50   ~ 0
UP
Text Label 4950 4700 0    50   ~ 0
RUN
Text Label 4950 4400 0    50   ~ 0
SELECT
Text Label 4950 4100 0    50   ~ 0
II
Text Label 4950 3800 0    50   ~ 0
I
NoConn ~ 4500 3300
Wire Wire Line
	2775 1900 3600 1900
Wire Wire Line
	3075 1975 3500 1975
NoConn ~ 3175 3300
$Comp
L pc_engine_joypad:PC_Engine_Pad J3
U 1 1 621539A5
P 9350 4250
F 0 "J3" H 9350 4825 50  0000 C CNN
F 1 "PC Engine" H 9350 4725 50  0000 C CNN
F 2 "NEC PC Engine:NEC_Output" V 9340 4240 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" V 9340 4240 50  0001 C CNN
	1    9350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8975 3950 8975 4350
$Comp
L power:GND #PWR04
U 1 1 62174162
P 9725 4550
F 0 "#PWR04" H 9725 4300 50  0001 C CNN
F 1 "GND" H 9730 4377 50  0000 C CNN
F 2 "" H 9725 4550 50  0001 C CNN
F 3 "" H 9725 4550 50  0001 C CNN
	1    9725 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4150 9725 4150
Wire Wire Line
	9725 4150 9725 4550
Text GLabel 9800 4350 2    50   Input ~ 0
D0
Wire Wire Line
	9800 4350 9650 4350
Text GLabel 8900 4250 0    50   Input ~ 0
D1
Wire Wire Line
	8900 4250 9050 4250
Text GLabel 8900 4625 0    50   Input ~ 0
D2
Wire Wire Line
	9350 4625 9350 4550
Wire Wire Line
	8900 4625 9350 4625
Text GLabel 9800 4250 2    50   Input ~ 0
D3
Wire Wire Line
	9800 4250 9650 4250
Text GLabel 8900 4150 0    50   Output ~ 0
SEL
Wire Wire Line
	8900 4150 9050 4150
Wire Wire Line
	9350 3950 9350 3875
Wire Wire Line
	9350 3875 9800 3875
Text GLabel 9800 3875 2    50   Output ~ 0
CLR
$Comp
L 74xx:74LS157 U1
U 1 1 6219C5F6
P 6975 4400
F 0 "U1" H 6750 5150 50  0000 C CNN
F 1 "74HCT157" V 6975 4400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 6975 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6975 4400 50  0001 C CNN
	1    6975 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 3800 5400 3800
Wire Wire Line
	4925 4100 5600 4100
Wire Wire Line
	4925 1900 4925 4100
Wire Wire Line
	3600 4400 5800 4400
Wire Wire Line
	3600 1900 3600 4400
Wire Wire Line
	3500 4700 6000 4700
Wire Wire Line
	3500 1975 3500 4700
Wire Wire Line
	4100 3900 4100 3300
Wire Wire Line
	4400 4200 4400 3300
Wire Wire Line
	4200 4500 4200 3300
Wire Wire Line
	4300 4800 4300 3300
Wire Wire Line
	5400 3625 5400 3800
Wire Wire Line
	5500 3625 5500 3900
Wire Wire Line
	5600 3625 5600 4100
Wire Wire Line
	5700 3625 5700 4200
Wire Wire Line
	5800 3625 5800 4400
Wire Wire Line
	5900 3625 5900 4500
Wire Wire Line
	6000 3625 6000 4700
Wire Wire Line
	6100 3625 6100 4800
Connection ~ 5400 3800
Connection ~ 5500 3900
Wire Wire Line
	5500 3900 4100 3900
Connection ~ 5600 4100
Connection ~ 5700 4200
Wire Wire Line
	5700 4200 4400 4200
Connection ~ 5800 4400
Connection ~ 5900 4500
Wire Wire Line
	5900 4500 4200 4500
Connection ~ 6000 4700
Connection ~ 6100 4800
Wire Wire Line
	6100 4800 4300 4800
Wire Wire Line
	5500 3900 6475 3900
Wire Wire Line
	5700 4200 6475 4200
Wire Wire Line
	5900 4500 6475 4500
Wire Wire Line
	6100 4800 6475 4800
Wire Wire Line
	5400 3800 6475 3800
Wire Wire Line
	5600 4100 6475 4100
Wire Wire Line
	5800 4400 6475 4400
Wire Wire Line
	6000 4700 6475 4700
$Comp
L Device:R R11
U 1 1 622725D9
P 7700 3800
F 0 "R11" V 7650 3550 50  0000 L CNN
F 1 "330" V 7700 3725 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7630 3800 50  0001 C CNN
F 3 "~" H 7700 3800 50  0001 C CNN
	1    7700 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7475 3800 7550 3800
$Comp
L Device:R R12
U 1 1 62278021
P 7700 4100
F 0 "R12" V 7650 3850 50  0000 L CNN
F 1 "330" V 7700 4025 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7630 4100 50  0001 C CNN
F 3 "~" H 7700 4100 50  0001 C CNN
	1    7700 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7475 4100 7550 4100
$Comp
L Device:R R13
U 1 1 62279D94
P 7700 4400
F 0 "R13" V 7650 4150 50  0000 L CNN
F 1 "330" V 7700 4325 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7630 4400 50  0001 C CNN
F 3 "~" H 7700 4400 50  0001 C CNN
	1    7700 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7475 4400 7550 4400
$Comp
L Device:R R14
U 1 1 6227BA7F
P 7700 4700
F 0 "R14" V 7650 4450 50  0000 L CNN
F 1 "330" V 7700 4625 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7630 4700 50  0001 C CNN
F 3 "~" H 7700 4700 50  0001 C CNN
	1    7700 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7475 4700 7550 4700
Text GLabel 8000 3800 2    50   Output ~ 0
D0
Wire Wire Line
	7850 3800 8000 3800
Text GLabel 8000 4100 2    50   Output ~ 0
D1
Wire Wire Line
	7850 4100 8000 4100
Text GLabel 8000 4400 2    50   Output ~ 0
D2
Wire Wire Line
	7850 4400 8000 4400
Text GLabel 8000 4700 2    50   Output ~ 0
D3
Wire Wire Line
	7850 4700 8000 4700
$Comp
L Device:R R9
U 1 1 6229394C
P 6200 3475
F 0 "R9" V 6150 3225 50  0000 L CNN
F 1 "47k" V 6200 3425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6130 3475 50  0001 C CNN
F 3 "~" H 6200 3475 50  0001 C CNN
	1    6200 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 62293952
P 6300 3475
F 0 "R10" V 6250 3225 50  0000 L CNN
F 1 "47k" V 6300 3425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 3475 50  0001 C CNN
F 3 "~" H 6300 3475 50  0001 C CNN
	1    6300 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3250 6200 3250
Wire Wire Line
	6200 3250 6200 3325
Connection ~ 6100 3250
Wire Wire Line
	6200 3250 6300 3250
Wire Wire Line
	6300 3250 6300 3325
Connection ~ 6200 3250
Text GLabel 6100 5100 0    50   Input ~ 0
CLR
Text GLabel 6100 5000 0    50   Input ~ 0
SEL
Wire Wire Line
	6100 5100 6300 5100
Wire Wire Line
	6200 3625 6200 5000
Wire Wire Line
	6200 5000 6100 5000
Wire Wire Line
	6200 5000 6475 5000
Connection ~ 6200 5000
Wire Wire Line
	6300 3625 6300 5100
Connection ~ 6300 5100
Wire Wire Line
	6300 5100 6475 5100
$Comp
L power:VCC #PWR02
U 1 1 622CF4FA
P 6975 3500
F 0 "#PWR02" H 6975 3350 50  0001 C CNN
F 1 "VCC" H 6990 3673 50  0000 C CNN
F 2 "" H 6975 3500 50  0001 C CNN
F 3 "" H 6975 3500 50  0001 C CNN
	1    6975 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 622D2EF9
P 6975 5400
F 0 "#PWR03" H 6975 5150 50  0001 C CNN
F 1 "GND" H 6980 5227 50  0000 C CNN
F 2 "" H 6975 5400 50  0001 C CNN
F 3 "" H 6975 5400 50  0001 C CNN
	1    6975 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6775 6100 6850
Connection ~ 6100 6850
$Comp
L Device:CP C3
U 1 1 622FFD11
P 6600 7150
F 0 "C3" H 6718 7196 50  0000 L CNN
F 1 "10uF" H 6718 7105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 6638 7000 50  0001 C CNN
F 3 "~" H 6600 7150 50  0001 C CNN
	1    6600 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 7000 6600 6850
Wire Wire Line
	6100 6850 6100 7050
Wire Wire Line
	6600 7525 6600 7450
Wire Wire Line
	6600 7450 6600 7300
Connection ~ 6600 7450
Wire Wire Line
	6100 7450 6100 7250
Wire Wire Line
	4825 1975 4825 3800
Wire Wire Line
	6100 7450 6600 7450
Wire Wire Line
	6100 6850 6600 6850
$Comp
L joykey_jumpers:JUMPER_CONNECTED #2
U 1 1 6040915A
P 10975 750
F 0 "#2" H 10975 650 50  0001 C CNN
F 1 "JUMPER_CONNECTED" H 10975 850 50  0001 C CNN
F 2 "" H 10975 750 50  0001 C CNN
F 3 "" H 10975 750 50  0001 C CNN
	1    10975 750 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
