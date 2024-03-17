EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Gameport (C64 JoyKEY)"
Date ""
Rev "A"
Comp ""
Comment1 "*DESIGN IS UNTESTED*"
Comment2 "as the Gravis gamepad makes this a viable option for many games."
Comment3 "gameport. While originally a system for analog joysticks, the adoption of gamepads such"
Comment4 "Rewires the C64 JoyKEY for a 4-button layout suitable for use with PCs with a 15-pin"
$EndDescr
$Comp
L power:VCC #PWR0101
U 1 1 60065A17
P 8475 4400
F 0 "#PWR0101" H 8475 4250 50  0001 C CNN
F 1 "VCC" H 8490 4573 50  0000 C CNN
F 2 "" H 8475 4400 50  0001 C CNN
F 3 "" H 8475 4400 50  0001 C CNN
	1    8475 4400
	1    0    0    -1  
$EndComp
$Comp
L pc_gameport:Gameport_DB15 J3
U 1 1 63D3A71F
P 8925 5175
F 0 "J3" H 8750 6150 50  0000 L CNN
F 1 "Gameport" H 8750 6075 50  0000 L CNN
F 2 "Gameport IDC:Gameport_IDC" H 8925 5175 50  0001 C CNN
F 3 " ~" H 8925 5175 50  0001 C CNN
	1    8925 5175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5275 8625 5275
Wire Wire Line
	8550 5275 8550 5075
Wire Wire Line
	8550 5075 8625 5075
Connection ~ 8550 5275
Wire Wire Line
	8475 5875 8625 5875
Wire Wire Line
	8550 5275 8550 6000
$Comp
L power:GND #PWR0102
U 1 1 63D4EBAC
P 8550 6000
F 0 "#PWR0102" H 8550 5750 50  0001 C CNN
F 1 "GND" H 8555 5827 50  0000 C CNN
F 2 "" H 8550 6000 50  0001 C CNN
F 3 "" H 8550 6000 50  0001 C CNN
	1    8550 6000
	1    0    0    -1  
$EndComp
NoConn ~ 8625 4575
NoConn ~ 8625 5175
NoConn ~ 8625 5375
NoConn ~ 8625 4975
$Comp
L c64_idc:C64_IDC_ADAPTER J2
U 1 1 5FD1F19D
P 3325 2575
F 0 "J2" V 3375 3000 50  0000 C CNN
F 1 "Port 2" V 3300 3000 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 3325 2575 50  0001 C CNN
F 3 "~" H 3325 2575 50  0001 C CNN
	1    3325 2575
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FD2B691
P 3225 1775
F 0 "#PWR01" H 3225 1525 50  0001 C CNN
F 1 "GND" H 3230 1602 50  0000 C CNN
F 2 "" H 3225 1775 50  0001 C CNN
F 3 "" H 3225 1775 50  0001 C CNN
	1    3225 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 1700 3225 1700
Wire Wire Line
	3225 1700 3225 1775
Wire Wire Line
	3325 1700 3325 2100
$Comp
L joykey_jumpers:JUMPER_SETTINGS_1 #1
U 1 1 5FD24880
P 11000 725
F 0 "#1" H 10900 850 50  0001 C CNN
F 1 "JUMPER_SETTINGS_1" H 10875 -425 50  0001 C CNN
F 2 "" H 11000 550 50  0001 C CNN
F 3 "~" H 11000 550 50  0001 C CNN
	1    11000 725 
	1    0    0    -1  
$EndComp
$Comp
L joykey_jumpers:JUMPER_CONNECTED #4
U 1 1 5FD250F4
P 11000 1675
F 0 "#4" H 11000 1575 50  0001 C CNN
F 1 "JUMPER_CONNECTED" H 11000 1775 50  0001 C CNN
F 2 "" H 11000 1675 50  0001 C CNN
F 3 "" H 11000 1675 50  0001 C CNN
	1    11000 1675
	1    0    0    -1  
$EndComp
$Comp
L c64_idc:C64_IDC_ADAPTER J1
U 1 1 60386EDE
P 2000 2575
F 0 "J1" V 2050 3000 50  0000 C CNN
F 1 "Port 1" V 1975 3000 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 2000 2575 50  0001 C CNN
F 3 "~" H 2000 2575 50  0001 C CNN
	1    2000 2575
	0    -1   -1   0   
$EndComp
NoConn ~ 1900 2100
Wire Wire Line
	3125 2100 3125 1625
Wire Wire Line
	3425 2100 3425 1700
$Comp
L power:GND #PWR0103
U 1 1 603E5353
P 1900 1775
F 0 "#PWR0103" H 1900 1525 50  0001 C CNN
F 1 "GND" H 1905 1602 50  0000 C CNN
F 2 "" H 1900 1775 50  0001 C CNN
F 3 "" H 1900 1775 50  0001 C CNN
	1    1900 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1700 1900 1700
Wire Wire Line
	1900 1700 1900 1775
Wire Wire Line
	2000 1700 2000 2100
Wire Wire Line
	1800 2100 1800 1625
Wire Wire Line
	1800 1625 2300 1625
$Comp
L joykey_jumpers:JUMPER_CONNECTED #3
U 1 1 604080DA
P 11000 1275
F 0 "#3" H 11000 1175 50  0001 C CNN
F 1 "JUMPER_CONNECTED" H 11000 1375 50  0001 C CNN
F 2 "" H 11000 1275 50  0001 C CNN
F 3 "" H 11000 1275 50  0001 C CNN
	1    11000 1275
	1    0    0    -1  
$EndComp
$Comp
L joykey_jumpers:JUMPER_CONNECTED #2
U 1 1 6040915A
P 11000 875
F 0 "#2" H 11000 775 50  0001 C CNN
F 1 "JUMPER_CONNECTED" H 11000 975 50  0001 C CNN
F 2 "" H 11000 875 50  0001 C CNN
F 3 "" H 11000 875 50  0001 C CNN
	1    11000 875 
	1    0    0    -1  
$EndComp
NoConn ~ 3525 2100
NoConn ~ 2200 2100
NoConn ~ 1800 3025
NoConn ~ 1900 3025
NoConn ~ 2000 3025
NoConn ~ 2100 3025
$Comp
L mounting:Mounting M1
U 1 1 604B1C82
P 575 575
F 0 "M1" H 575 675 50  0001 C CNN
F 1 "Mounting" H 575 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 575 575 50  0001 C CNN
F 3 "~" H 575 575 50  0001 C CNN
	1    575  575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 604B204C
P 700 575
F 0 "M2" H 700 675 50  0001 C CNN
F 1 "Mounting" H 700 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 700 575 50  0001 C CNN
F 3 "~" H 700 575 50  0001 C CNN
	1    700  575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 604B239C
P 825 575
F 0 "M3" H 825 675 50  0001 C CNN
F 1 "Mounting" H 825 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 825 575 50  0001 C CNN
F 3 "~" H 825 575 50  0001 C CNN
	1    825  575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 604B26C5
P 950 575
F 0 "M4" H 950 675 50  0001 C CNN
F 1 "Mounting" H 950 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 950 575 50  0001 C CNN
F 3 "~" H 950 575 50  0001 C CNN
	1    950  575 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 2100 3225 2025
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 604C213A
P 2750 1450
F 0 "JP1" V 2704 1402 50  0000 R CNN
F 1 "VCC_EN" V 2795 1402 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2750 1450 50  0001 C CNN
F 3 "~" H 2750 1450 50  0001 C CNN
	1    2750 1450
	0    -1   1    0   
$EndComp
Wire Wire Line
	2750 2025 3225 2025
Wire Wire Line
	2750 1550 2750 1625
$Comp
L power:VCC #PWR0109
U 1 1 604CC126
P 2750 1350
F 0 "#PWR0109" H 2750 1200 50  0001 C CNN
F 1 "VCC" H 2765 1523 50  0000 C CNN
F 2 "" H 2750 1350 50  0001 C CNN
F 3 "" H 2750 1350 50  0001 C CNN
	1    2750 1350
	1    0    0    -1  
$EndComp
NoConn ~ 2200 3025
NoConn ~ 2100 2100
Wire Wire Line
	3325 3425 4050 3425
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 63EF476C
P 2475 1350
F 0 "#FLG0101" H 2475 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 2475 1523 50  0000 C CNN
F 2 "" H 2475 1350 50  0001 C CNN
F 3 "~" H 2475 1350 50  0001 C CNN
	1    2475 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2475 1625 2750 1625
Wire Wire Line
	2475 1350 2475 1625
Connection ~ 2750 1625
Wire Wire Line
	2750 1625 2750 2025
NoConn ~ 8625 4475
Wire Wire Line
	8475 4400 8475 5875
NoConn ~ 8625 5775
Text GLabel 8375 4875 0    50   Input ~ 0
PC_Y
Text GLabel 4050 3625 2    50   Output ~ 0
JK_UP
Wire Wire Line
	4050 3525 3225 3525
Wire Wire Line
	4050 3625 3125 3625
Wire Wire Line
	3425 3325 4050 3325
Text GLabel 4050 3525 2    50   Output ~ 0
JK_DOWN
Text GLabel 4050 3425 2    50   Output ~ 0
JK_LEFT
Text GLabel 4050 3325 2    50   Output ~ 0
JK_RIGHT
Wire Wire Line
	8375 4875 8625 4875
Text GLabel 8375 5475 0    50   Input ~ 0
PC_X
Wire Wire Line
	8375 5475 8625 5475
Text GLabel 4050 1625 2    50   Output ~ 0
JK_FIRE1
Wire Wire Line
	3125 1625 4050 1625
Text GLabel 4050 1700 2    50   Output ~ 0
JK_FIRE2
Text GLabel 8375 5675 0    50   Input ~ 0
JK_FIRE1
Wire Wire Line
	8375 5675 8625 5675
Text GLabel 8375 4675 0    50   Input ~ 0
JK_FIRE2
Wire Wire Line
	8375 4675 8625 4675
Wire Wire Line
	3425 1700 4050 1700
Wire Wire Line
	3525 3025 3525 3125
Wire Wire Line
	3525 3125 4050 3125
Text GLabel 4050 3125 2    50   Output ~ 0
JK_FIRE3
Wire Wire Line
	4050 3825 2300 3825
Wire Wire Line
	2300 1625 2300 3825
Wire Wire Line
	3125 3025 3125 3625
Wire Wire Line
	3225 3025 3225 3525
Wire Wire Line
	3325 3025 3325 3425
Wire Wire Line
	3425 3025 3425 3325
Text GLabel 4050 3825 2    50   Output ~ 0
JK_FIRE4
Text GLabel 8375 5575 0    50   Input ~ 0
JK_FIRE3
Wire Wire Line
	8375 5575 8625 5575
Text GLabel 8375 4775 0    50   Input ~ 0
JK_FIRE4
Wire Wire Line
	8375 4775 8625 4775
Text GLabel 6075 1625 0    50   Input ~ 0
JK_LEFT
Text GLabel 6075 2400 0    50   Input ~ 0
JK_RIGHT
Text GLabel 7900 2400 0    50   Input ~ 0
JK_DOWN
Text GLabel 7900 1625 0    50   Input ~ 0
JK_UP
$Comp
L power:VCC #PWR05
U 1 1 5FD03EA8
P 1300 6175
F 0 "#PWR05" H 1300 6025 50  0001 C CNN
F 1 "VCC" H 1300 6325 50  0000 C CNN
F 2 "" H 1300 6175 50  0001 C CNN
F 3 "" H 1300 6175 50  0001 C CNN
	1    1300 6175
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FD04829
P 1300 7475
F 0 "#PWR06" H 1300 7225 50  0001 C CNN
F 1 "GND" H 1300 7325 50  0000 C CNN
F 2 "" H 1300 7475 50  0001 C CNN
F 3 "" H 1300 7475 50  0001 C CNN
	1    1300 7475
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1300 7400 1300 7325
Wire Wire Line
	1300 7400 1300 7475
Connection ~ 1300 7400
$Comp
L Device:C C1
U 1 1 5FD32F7C
P 700 6825
F 0 "C1" H 585 6871 50  0000 R CNN
F 1 "100nF" H 585 6780 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 738 6675 50  0001 C CNN
F 3 "~" H 700 6825 50  0001 C CNN
	1    700  6825
	-1   0    0    -1  
$EndComp
Wire Wire Line
	700  6250 700  6675
Wire Wire Line
	700  7400 700  6975
Wire Wire Line
	1300 6175 1300 6250
Connection ~ 1300 6250
Wire Wire Line
	1300 6250 1300 6325
$Comp
L 4xxx:4066 U1
U 1 1 5FFF69E1
P 6525 1625
F 0 "U1" H 6525 1452 50  0000 C CNN
F 1 "4066" H 6525 1361 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6525 1625 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 6525 1625 50  0001 C CNN
	1    6525 1625
	0    -1   1    0   
$EndComp
$Comp
L 4xxx:4066 U1
U 2 1 5FFF8056
P 6525 2400
F 0 "U1" H 6525 2227 50  0000 C CNN
F 1 "4066" H 6525 2136 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6525 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 6525 2400 50  0001 C CNN
	2    6525 2400
	0    -1   -1   0   
$EndComp
$Comp
L 4xxx:4066 U1
U 4 1 5FFF8FAA
P 8350 1625
F 0 "U1" H 8350 1452 50  0000 C CNN
F 1 "4066" H 8350 1361 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8350 1625 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 8350 1625 50  0001 C CNN
	4    8350 1625
	0    -1   1    0   
$EndComp
$Comp
L 4xxx:4066 U1
U 5 1 5FFF9957
P 1300 6825
F 0 "U1" H 1530 6871 50  0000 L CNN
F 1 "4066" H 1530 6780 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1300 6825 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 1300 6825 50  0001 C CNN
	5    1300 6825
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 60009FE2
P 6525 1125
F 0 "#PWR02" H 6525 975 50  0001 C CNN
F 1 "VCC" H 6540 1298 50  0000 C CNN
F 2 "" H 6525 1125 50  0001 C CNN
F 3 "" H 6525 1125 50  0001 C CNN
	1    6525 1125
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 600116FD
P 6150 1450
F 0 "R1" H 6092 1404 50  0000 R CNN
F 1 "10k" H 6092 1495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6150 1450 50  0001 C CNN
F 3 "~" H 6150 1450 50  0001 C CNN
	1    6150 1450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6002A12E
P 6525 2900
F 0 "#PWR04" H 6525 2650 50  0001 C CNN
F 1 "GND" H 6530 2727 50  0000 C CNN
F 2 "" H 6525 2900 50  0001 C CNN
F 3 "" H 6525 2900 50  0001 C CNN
	1    6525 2900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 60030ADB
P 8350 1125
F 0 "#PWR07" H 8350 975 50  0001 C CNN
F 1 "VCC" H 8365 1298 50  0000 C CNN
F 2 "" H 8350 1125 50  0001 C CNN
F 3 "" H 8350 1125 50  0001 C CNN
	1    8350 1125
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60030B0F
P 8350 2900
F 0 "#PWR08" H 8350 2650 50  0001 C CNN
F 1 "GND" H 8355 2727 50  0000 C CNN
F 2 "" H 8350 2900 50  0001 C CNN
F 3 "" H 8350 2900 50  0001 C CNN
	1    8350 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	700  6250 1300 6250
Wire Wire Line
	700  7400 1300 7400
Wire Wire Line
	6525 1925 6525 2025
Connection ~ 6525 2025
Wire Wire Line
	6525 2025 6525 2100
Wire Wire Line
	8350 1925 8350 2025
Connection ~ 8350 2025
Wire Wire Line
	8350 2025 8350 2100
Wire Wire Line
	6525 2025 6825 2025
Text GLabel 6825 2025 2    50   Output ~ 0
PC_X
Wire Wire Line
	6075 1625 6150 1625
Wire Wire Line
	6150 1550 6150 1625
Connection ~ 6150 1625
Wire Wire Line
	6150 1625 6225 1625
$Comp
L power:VCC #PWR0104
U 1 1 664C2714
P 6150 1350
F 0 "#PWR0104" H 6150 1200 50  0001 C CNN
F 1 "VCC" H 6165 1523 50  0000 C CNN
F 2 "" H 6150 1350 50  0001 C CNN
F 3 "" H 6150 1350 50  0001 C CNN
	1    6150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6075 2400 6150 2400
Wire Wire Line
	6150 2400 6150 2325
Wire Wire Line
	6150 2400 6225 2400
Connection ~ 6150 2400
$Comp
L power:VCC #PWR0105
U 1 1 664D8EF1
P 6150 2125
F 0 "#PWR0105" H 6150 1975 50  0001 C CNN
F 1 "VCC" H 6165 2298 50  0000 C CNN
F 2 "" H 6150 2125 50  0001 C CNN
F 3 "" H 6150 2125 50  0001 C CNN
	1    6150 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2025 8650 2025
$Comp
L 4xxx:4066 U1
U 3 1 5FFF8594
P 8350 2400
F 0 "U1" H 8350 2227 50  0000 C CNN
F 1 "4066" H 8350 2136 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8350 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 8350 2400 50  0001 C CNN
	3    8350 2400
	0    -1   -1   0   
$EndComp
Text GLabel 8650 2025 2    50   Output ~ 0
PC_Y
$Comp
L Device:R_Small R3
U 1 1 6650FCFA
P 6525 1225
F 0 "R3" H 6467 1179 50  0000 R CNN
F 1 "100k" H 6467 1270 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6525 1225 50  0001 C CNN
F 3 "~" H 6525 1225 50  0001 C CNN
	1    6525 1225
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 66514DE5
P 6525 2800
F 0 "R4" H 6467 2754 50  0000 R CNN
F 1 "100k" H 6467 2845 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6525 2800 50  0001 C CNN
F 3 "~" H 6525 2800 50  0001 C CNN
	1    6525 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 665154CD
P 6150 2225
F 0 "R2" H 6092 2179 50  0000 R CNN
F 1 "10k" H 6092 2270 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6150 2225 50  0001 C CNN
F 3 "~" H 6150 2225 50  0001 C CNN
	1    6150 2225
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 66517F6C
P 8350 1225
F 0 "R7" H 8292 1179 50  0000 R CNN
F 1 "100k" H 8292 1270 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8350 1225 50  0001 C CNN
F 3 "~" H 8350 1225 50  0001 C CNN
	1    8350 1225
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 6651860E
P 8350 2800
F 0 "R8" H 8292 2754 50  0000 R CNN
F 1 "100k" H 8292 2845 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8350 2800 50  0001 C CNN
F 3 "~" H 8350 2800 50  0001 C CNN
	1    8350 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 665236E4
P 7975 1450
F 0 "R5" H 7917 1404 50  0000 R CNN
F 1 "10k" H 7917 1495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7975 1450 50  0001 C CNN
F 3 "~" H 7975 1450 50  0001 C CNN
	1    7975 1450
	1    0    0    1   
$EndComp
Wire Wire Line
	7900 1625 7975 1625
Wire Wire Line
	7975 1550 7975 1625
Connection ~ 7975 1625
Wire Wire Line
	7975 1625 8050 1625
$Comp
L power:VCC #PWR0106
U 1 1 665236EE
P 7975 1350
F 0 "#PWR0106" H 7975 1200 50  0001 C CNN
F 1 "VCC" H 7990 1523 50  0000 C CNN
F 2 "" H 7975 1350 50  0001 C CNN
F 3 "" H 7975 1350 50  0001 C CNN
	1    7975 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2400 7975 2400
Wire Wire Line
	7975 2400 7975 2325
Wire Wire Line
	7975 2400 8050 2400
Connection ~ 7975 2400
$Comp
L power:VCC #PWR0107
U 1 1 665236F8
P 7975 2125
F 0 "#PWR0107" H 7975 1975 50  0001 C CNN
F 1 "VCC" H 7990 2298 50  0000 C CNN
F 2 "" H 7975 2125 50  0001 C CNN
F 3 "" H 7975 2125 50  0001 C CNN
	1    7975 2125
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 665236FE
P 7975 2225
F 0 "R6" H 7917 2179 50  0000 R CNN
F 1 "10k" H 7917 2270 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7975 2225 50  0001 C CNN
F 3 "~" H 7975 2225 50  0001 C CNN
	1    7975 2225
	1    0    0    1   
$EndComp
$EndSCHEMATC