EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Amiga CD32 Adapter (C64 JoyKEY)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L c64_idc:C64_IDC_ADAPTER J2
U 1 1 5FD1F19D
P 6550 2500
F 0 "J2" V 6600 2925 50  0000 C CNN
F 1 "Port 2" V 6525 2925 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 6550 2500 50  0001 C CNN
F 3 "~" H 6550 2500 50  0001 C CNN
	1    6550 2500
	0    -1   -1   0   
$EndComp
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
L c64_idc:C64_IDC_ADAPTER J1
U 1 1 60386EDE
P 4675 2500
F 0 "J1" V 4725 2925 50  0000 C CNN
F 1 "Port 1" V 4650 2925 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 4675 2500 50  0001 C CNN
F 3 "~" H 4675 2500 50  0001 C CNN
	1    4675 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3975 3100 3900 3100
Wire Wire Line
	3900 3100 3900 3175
$Comp
L power:GND #PWR0104
U 1 1 603FBC7C
P 3900 3175
F 0 "#PWR0104" H 3900 2925 50  0001 C CNN
F 1 "GND" H 3905 3002 50  0000 C CNN
F 2 "" H 3900 3175 50  0001 C CNN
F 3 "" H 3900 3175 50  0001 C CNN
	1    3900 3175
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
L joykey_jumpers:JUMPER_CONNECTED #2
U 1 1 6040915A
P 10975 850
F 0 "#2" H 10975 750 50  0001 C CNN
F 1 "JUMPER_CONNECTED" H 10975 950 50  0001 C CNN
F 2 "" H 10975 850 50  0001 C CNN
F 3 "" H 10975 850 50  0001 C CNN
	1    10975 850 
	1    0    0    -1  
$EndComp
$Comp
L c64_idc:C64_IDC2 J3
U 1 1 60415751
P 2150 2500
F 0 "J3" H 2150 2915 50  0000 C CNN
F 1 "Amiga CD32" H 2150 2824 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 2100 2175 50  0001 C CNN
F 3 "" H 2100 2175 50  0001 C CNN
	1    2150 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6049A7C8
P 1775 6800
F 0 "C1" H 1867 6846 50  0000 L CNN
F 1 "100nF" H 1867 6755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1775 6800 50  0001 C CNN
F 3 "~" H 1775 6800 50  0001 C CNN
	1    1775 6800
	-1   0    0    -1  
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
L Device:R R1
U 1 1 604EB780
P 7175 1500
F 0 "R1" V 7125 1200 50  0000 L CNN
F 1 "10k" V 7175 1425 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7105 1500 50  0001 C CNN
F 3 "~" H 7175 1500 50  0001 C CNN
	1    7175 1500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 603D5BF9
P 4175 3100
F 0 "SW1" H 4175 3385 50  0000 C CNN
F 1 "PLAY" H 4175 3294 50  0000 C CNN
F 2 "switch_cutout:SW_PUSH_6mm" H 4175 3300 50  0001 C CNN
F 3 "~" H 4175 3300 50  0001 C CNN
	1    4175 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 626C27DB
P 7925 4475
F 0 "L1" V 8115 4475 50  0000 C CNN
F 1 "L" V 8024 4475 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" H 7925 4475 50  0001 C CNN
F 3 "~" H 7925 4475 50  0001 C CNN
	1    7925 4475
	0    1    -1   0   
$EndComp
$Comp
L 74xx:74LS125 U1
U 1 1 626C6F17
P 3575 5025
F 0 "U1" H 3575 5342 50  0000 C CNN
F 1 "74LS125" H 3575 5251 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3575 5025 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3575 5025 50  0001 C CNN
	1    3575 5025
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U1
U 2 1 626C809F
P 4525 5475
F 0 "U1" H 4525 5700 50  0000 C CNN
F 1 "74LS125" H 4525 5791 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 4525 5475 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4525 5475 50  0001 C CNN
	2    4525 5475
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS125 U1
U 3 1 626C88CF
P 7425 4475
F 0 "U1" H 7425 4792 50  0000 C CNN
F 1 "74LS125" H 7425 4701 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 7425 4475 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 7425 4475 50  0001 C CNN
	3    7425 4475
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U1
U 4 1 626C8FF6
P 4525 4575
F 0 "U1" H 4525 4892 50  0000 C CNN
F 1 "74LS125" H 4525 4801 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 4525 4575 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4525 4575 50  0001 C CNN
	4    4525 4575
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U1
U 5 1 626C98A0
P 800 6825
F 0 "U1" H 800 6875 50  0000 C CNN
F 1 "74LS125" H 800 6800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 800 6825 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 800 6825 50  0001 C CNN
	5    800  6825
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 626E78C4
P 800 7475
F 0 "#PWR04" H 800 7225 50  0001 C CNN
F 1 "GND" H 805 7302 50  0000 C CNN
F 2 "" H 800 7475 50  0001 C CNN
F 3 "" H 800 7475 50  0001 C CNN
	1    800  7475
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 626E7F03
P 800 6175
F 0 "#PWR03" H 800 6025 50  0001 C CNN
F 1 "VCC" H 815 6348 50  0000 C CNN
F 2 "" H 800 6175 50  0001 C CNN
F 3 "" H 800 6175 50  0001 C CNN
	1    800  6175
	-1   0    0    -1  
$EndComp
Wire Wire Line
	800  6175 800  6250
Wire Wire Line
	800  7475 800  7400
Wire Wire Line
	1775 6700 1775 6250
Connection ~ 800  6250
Wire Wire Line
	800  6250 800  6325
Connection ~ 800  7400
Wire Wire Line
	800  7400 800  7325
Wire Wire Line
	1775 6900 1775 7400
$Comp
L power:GND #PWR01
U 1 1 626F72EC
P 7425 4725
F 0 "#PWR01" H 7425 4475 50  0001 C CNN
F 1 "GND" H 7430 4552 50  0000 C CNN
F 2 "" H 7425 4725 50  0001 C CNN
F 3 "" H 7425 4725 50  0001 C CNN
	1    7425 4725
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 2500 2700 2500
Wire Wire Line
	2700 2500 2700 2750
$Comp
L power:GND #PWR06
U 1 1 626F80E2
P 2700 2750
F 0 "#PWR06" H 2700 2500 50  0001 C CNN
F 1 "GND" H 2705 2577 50  0000 C CNN
F 2 "" H 2700 2750 50  0001 C CNN
F 3 "" H 2700 2750 50  0001 C CNN
	1    2700 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C3
U 1 1 626FDB8E
P 2150 6800
F 0 "C3" H 2238 6846 50  0000 L CNN
F 1 "47uF" H 2238 6755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2150 6800 50  0001 C CNN
F 3 "~" H 2150 6800 50  0001 C CNN
	1    2150 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2150 6700 2150 6250
Wire Wire Line
	2150 6900 2150 7400
$Comp
L Device:C_Small C5
U 1 1 62702D80
P 8150 4650
F 0 "C5" H 8242 4696 50  0000 L CNN
F 1 "220pF" H 8242 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8150 4650 50  0001 C CNN
F 3 "~" H 8150 4650 50  0001 C CNN
	1    8150 4650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 62703619
P 8150 4750
F 0 "#PWR02" H 8150 4500 50  0001 C CNN
F 1 "GND" H 8155 4577 50  0000 C CNN
F 2 "" H 8150 4750 50  0001 C CNN
F 3 "" H 8150 4750 50  0001 C CNN
	1    8150 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8150 4550 8150 4475
Wire Wire Line
	8150 4475 8075 4475
Wire Wire Line
	7775 4475 7725 4475
Wire Wire Line
	8150 4475 8225 4475
Connection ~ 8150 4475
Text GLabel 2775 2600 2    50   Input ~ 0
FIRE2
Wire Wire Line
	2625 2600 2775 2600
Wire Wire Line
	2625 2400 2700 2400
Wire Wire Line
	2700 2400 2700 2250
$Comp
L power:VCC #PWR05
U 1 1 627210D7
P 2700 2250
F 0 "#PWR05" H 2700 2100 50  0001 C CNN
F 1 "VCC" H 2715 2423 50  0000 C CNN
F 2 "" H 2700 2250 50  0001 C CNN
F 3 "" H 2700 2250 50  0001 C CNN
	1    2700 2250
	1    0    0    -1  
$EndComp
Text GLabel 2775 2300 2    50   Input ~ 0
FIRE1
Wire Wire Line
	2775 2300 2625 2300
Text GLabel 8225 4475 2    50   Output ~ 0
FIRE2
$Comp
L 74xx:74LS165 U2
U 1 1 62725C9B
P 6550 5075
F 0 "U2" H 6325 5825 50  0000 C CNN
F 1 "74LS165" H 6550 5075 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 6550 5075 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74ls165a.pdf" H 6550 5075 50  0001 C CNN
	1    6550 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4475 7125 4475
NoConn ~ 7050 4575
$Comp
L Device:C_Small C2
U 1 1 6273968B
P 1350 6800
F 0 "C2" H 1442 6846 50  0000 L CNN
F 1 "100nF" H 1442 6755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1350 6800 50  0001 C CNN
F 3 "~" H 1350 6800 50  0001 C CNN
	1    1350 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 6900 1350 7400
Connection ~ 1350 7400
Wire Wire Line
	1350 7400 800  7400
Wire Wire Line
	1350 6700 1350 6250
Connection ~ 1350 6250
Wire Wire Line
	1350 6250 800  6250
Connection ~ 1775 6250
Connection ~ 1775 7400
Wire Wire Line
	1775 6250 1350 6250
Wire Wire Line
	1775 7400 1350 7400
Wire Wire Line
	2150 6250 1775 6250
Wire Wire Line
	2150 7400 1775 7400
$Comp
L power:GND #PWR0101
U 1 1 6274F4CC
P 6550 6075
F 0 "#PWR0101" H 6550 5825 50  0001 C CNN
F 1 "GND" H 6555 5902 50  0000 C CNN
F 2 "" H 6550 6075 50  0001 C CNN
F 3 "" H 6550 6075 50  0001 C CNN
	1    6550 6075
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 62753A77
P 6550 4175
F 0 "#PWR0102" H 6550 4025 50  0001 C CNN
F 1 "VCC" H 6565 4348 50  0000 C CNN
F 2 "" H 6550 4175 50  0001 C CNN
F 3 "" H 6550 4175 50  0001 C CNN
	1    6550 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 5025 3200 5025
Wire Wire Line
	3200 5025 3200 4950
$Comp
L power:VCC #PWR0103
U 1 1 6275AF24
P 3200 4950
F 0 "#PWR0103" H 3200 4800 50  0001 C CNN
F 1 "VCC" H 3215 5123 50  0000 C CNN
F 2 "" H 3200 4950 50  0001 C CNN
F 3 "" H 3200 4950 50  0001 C CNN
	1    3200 4950
	1    0    0    -1  
$EndComp
Text GLabel 3500 5475 0    50   Input ~ 0
FIRE3
Wire Wire Line
	1625 2700 1700 2700
Text GLabel 1625 2700 0    50   Output ~ 0
FIRE3
$Comp
L Device:R R9
U 1 1 62766E1A
P 4150 5250
F 0 "R9" V 4050 5200 50  0000 L CNN
F 1 "2k2" V 4150 5175 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 5250 50  0001 C CNN
F 3 "~" H 4150 5250 50  0001 C CNN
	1    4150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5400 4150 5475
Wire Wire Line
	4150 5475 4225 5475
Wire Wire Line
	4150 5025 4150 5100
Wire Wire Line
	4150 5025 4525 5025
Wire Wire Line
	4525 5025 4525 5225
Connection ~ 4150 5025
Wire Wire Line
	3575 5475 3500 5475
Wire Wire Line
	3575 5275 3575 5475
Wire Wire Line
	4525 5025 4525 4825
Connection ~ 4525 5025
Text GLabel 4975 4575 2    50   Output ~ 0
FIRE1
Wire Wire Line
	4825 4575 4900 4575
$Comp
L Device:R R10
U 1 1 627A2EA3
P 4900 4350
F 0 "R10" V 4800 4300 50  0000 L CNN
F 1 "10k" V 4900 4275 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4830 4350 50  0001 C CNN
F 3 "~" H 4900 4350 50  0001 C CNN
	1    4900 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 4500 4900 4575
Connection ~ 4900 4575
Wire Wire Line
	4900 4575 4975 4575
$Comp
L power:VCC #PWR0105
U 1 1 627A4C97
P 4900 4200
F 0 "#PWR0105" H 4900 4050 50  0001 C CNN
F 1 "VCC" H 4915 4373 50  0000 C CNN
F 2 "" H 4900 4200 50  0001 C CNN
F 3 "" H 4900 4200 50  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
Text GLabel 5975 5675 0    50   Input ~ 0
FIRE1
Wire Wire Line
	5975 5675 6050 5675
$Comp
L power:GND #PWR0106
U 1 1 627AA8CD
P 5975 5850
F 0 "#PWR0106" H 5975 5600 50  0001 C CNN
F 1 "GND" H 5980 5677 50  0000 C CNN
F 2 "" H 5975 5850 50  0001 C CNN
F 3 "" H 5975 5850 50  0001 C CNN
	1    5975 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5975 5850 5975 5775
Wire Wire Line
	5975 5775 6050 5775
Wire Wire Line
	4825 5475 4900 5475
$Comp
L Device:R R11
U 1 1 627D678A
P 4900 5250
F 0 "R11" V 4800 5200 50  0000 L CNN
F 1 "10k" V 4900 5175 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4830 5250 50  0001 C CNN
F 3 "~" H 4900 5250 50  0001 C CNN
	1    4900 5250
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 627D6790
P 4900 5100
F 0 "#PWR0107" H 4900 4950 50  0001 C CNN
F 1 "VCC" H 4915 5273 50  0000 C CNN
F 2 "" H 4900 5100 50  0001 C CNN
F 3 "" H 4900 5100 50  0001 C CNN
	1    4900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5400 4900 5475
Connection ~ 4900 5475
Wire Wire Line
	4900 5475 6050 5475
$Comp
L Device:C_Small C4
U 1 1 627DBC93
P 4900 5650
F 0 "C4" H 5000 5625 50  0000 L CNN
F 1 "220pF" H 5000 5700 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4900 5650 50  0001 C CNN
F 3 "~" H 4900 5650 50  0001 C CNN
	1    4900 5650
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 627DBC99
P 4900 5750
F 0 "#PWR0108" H 4900 5500 50  0001 C CNN
F 1 "GND" H 4905 5577 50  0000 C CNN
F 2 "" H 4900 5750 50  0001 C CNN
F 3 "" H 4900 5750 50  0001 C CNN
	1    4900 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 5475 4900 5550
Wire Wire Line
	4150 5475 4150 5550
Connection ~ 4150 5475
$Comp
L power:GND #PWR0109
U 1 1 627E65EC
P 4150 5550
F 0 "#PWR0109" H 4150 5300 50  0001 C CNN
F 1 "GND" H 4155 5377 50  0000 C CNN
F 2 "" H 4150 5550 50  0001 C CNN
F 3 "" H 4150 5550 50  0001 C CNN
	1    4150 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3875 5025 4150 5025
$Comp
L Device:R R13
U 1 1 627EEBCA
P 5975 4250
F 0 "R13" V 5875 4175 50  0000 L CNN
F 1 "100" V 5975 4175 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5905 4250 50  0001 C CNN
F 3 "~" H 5975 4250 50  0001 C CNN
	1    5975 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5975 4400 5975 4475
Wire Wire Line
	5975 4475 6050 4475
$Comp
L power:VCC #PWR0111
U 1 1 627F1BC3
P 5875 3950
F 0 "#PWR0111" H 5875 3800 50  0001 C CNN
F 1 "VCC" H 5890 4123 50  0000 C CNN
F 2 "" H 5875 3950 50  0001 C CNN
F 3 "" H 5875 3950 50  0001 C CNN
	1    5875 3950
	1    0    0    -1  
$EndComp
Text GLabel 5975 4675 0    50   Input ~ 0
CD32_PLAY
Wire Wire Line
	5975 4675 6050 4675
Wire Wire Line
	5975 4775 6050 4775
Text GLabel 5975 4875 0    50   Input ~ 0
CD32_FF
Wire Wire Line
	5975 4875 6050 4875
Text GLabel 5975 4975 0    50   Input ~ 0
CD32_GRN
Wire Wire Line
	5975 4975 6050 4975
Text GLabel 5975 5075 0    50   Input ~ 0
CD32_YEL
Wire Wire Line
	5975 5075 6050 5075
Text GLabel 5975 5175 0    50   Input ~ 0
CD32_RED
Wire Wire Line
	5975 5175 6050 5175
Text GLabel 5975 5275 0    50   Input ~ 0
CD32_BLU
Wire Wire Line
	5975 5275 6050 5275
$Comp
L Device:R R12
U 1 1 6280A726
P 5875 4250
F 0 "R12" V 5775 4175 50  0000 L CNN
F 1 "1k" V 5875 4200 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5805 4250 50  0001 C CNN
F 3 "~" H 5875 4250 50  0001 C CNN
	1    5875 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5875 4400 5875 4575
Wire Wire Line
	5875 4575 6050 4575
Wire Wire Line
	5875 4100 5875 4025
Wire Wire Line
	5975 4100 5975 4025
Wire Wire Line
	5975 4025 5875 4025
Connection ~ 5875 4025
Wire Wire Line
	5875 3950 5875 4025
Text GLabel 5975 4775 0    50   Input ~ 0
CD32_REW
Text GLabel 4150 4575 0    50   Input ~ 0
CD32_RED
Wire Wire Line
	4150 4575 4225 4575
Text GLabel 1625 2300 0    50   Input ~ 0
UP
Text GLabel 1625 2400 0    50   Input ~ 0
DOWN
Text GLabel 1625 2500 0    50   Input ~ 0
LEFT
Text GLabel 1625 2600 0    50   Input ~ 0
RIGHT
Wire Wire Line
	1625 2300 1700 2300
Wire Wire Line
	1625 2400 1700 2400
Wire Wire Line
	1625 2500 1700 2500
Wire Wire Line
	1625 2600 1700 2600
Text GLabel 7350 3425 2    50   Output ~ 0
UP
Text GLabel 7350 3325 2    50   Output ~ 0
DOWN
Text GLabel 7350 3225 2    50   Output ~ 0
LEFT
Text GLabel 7350 3125 2    50   Output ~ 0
RIGHT
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 62861618
P 6450 1450
F 0 "JP1" V 6500 1525 50  0000 L CNN
F 1 "VCC_EN" V 6400 1525 50  0000 L CNN
F 2 "solder_bridge:bridge_r" H 6450 1450 50  0001 C CNN
F 3 "~" H 6450 1450 50  0001 C CNN
	1    6450 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 1525 6650 1525
Wire Wire Line
	6650 1525 6650 1600
$Comp
L power:GND #PWR0112
U 1 1 6286565E
P 6650 1600
F 0 "#PWR0112" H 6650 1350 50  0001 C CNN
F 1 "GND" H 6655 1427 50  0000 C CNN
F 2 "" H 6650 1600 50  0001 C CNN
F 3 "" H 6650 1600 50  0001 C CNN
	1    6650 1600
	1    0    0    -1  
$EndComp
NoConn ~ 6750 2025
Wire Wire Line
	7175 1275 7175 1200
$Comp
L power:VCC #PWR0113
U 1 1 628775C3
P 7175 1200
F 0 "#PWR0113" H 7175 1050 50  0001 C CNN
F 1 "VCC" H 7190 1373 50  0000 C CNN
F 2 "" H 7175 1200 50  0001 C CNN
F 3 "" H 7175 1200 50  0001 C CNN
	1    7175 1200
	1    0    0    -1  
$EndComp
Text GLabel 7475 1850 2    50   Output ~ 0
CD32_RED
Text GLabel 7475 1950 2    50   Output ~ 0
CD32_BLU
Wire Wire Line
	6650 2025 6650 1950
Wire Wire Line
	6350 1850 6350 2025
$Comp
L Device:R R14
U 1 1 628AD005
P 7275 1500
F 0 "R14" V 7225 1200 50  0000 L CNN
F 1 "10k" V 7275 1425 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7205 1500 50  0001 C CNN
F 3 "~" H 7275 1500 50  0001 C CNN
	1    7275 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7175 1275 7275 1275
Wire Wire Line
	7275 1275 7275 1350
Wire Wire Line
	7175 1275 7175 1350
Wire Wire Line
	6350 1850 7175 1850
Wire Wire Line
	7175 1650 7175 1850
Connection ~ 7175 1850
Wire Wire Line
	6550 1525 6550 2025
$Comp
L power:VCC #PWR0114
U 1 1 62913521
P 6450 1225
F 0 "#PWR0114" H 6450 1075 50  0001 C CNN
F 1 "VCC" H 6465 1398 50  0000 C CNN
F 2 "" H 6450 1225 50  0001 C CNN
F 3 "" H 6450 1225 50  0001 C CNN
	1    6450 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1225 6450 1300
Wire Wire Line
	6450 1600 6450 1675
Wire Wire Line
	6750 2950 6750 3025
Wire Wire Line
	6750 3025 6875 3025
$Comp
L Device:R R2
U 1 1 6295C795
P 7375 1500
F 0 "R2" V 7325 1200 50  0000 L CNN
F 1 "10k" V 7375 1425 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7305 1500 50  0001 C CNN
F 3 "~" H 7375 1500 50  0001 C CNN
	1    7375 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1950 7275 1950
Wire Wire Line
	7275 1650 7275 1950
Connection ~ 7275 1950
Wire Wire Line
	7275 1950 7475 1950
Wire Wire Line
	7175 1850 7475 1850
Wire Wire Line
	7375 1650 7375 2050
Wire Wire Line
	7375 2050 7475 2050
Text GLabel 7475 2050 2    50   Output ~ 0
CD32_GRN
Wire Wire Line
	7375 2050 6875 2050
Wire Wire Line
	6875 2050 6875 3025
Connection ~ 7375 2050
Wire Wire Line
	6650 2950 6650 3125
Wire Wire Line
	6650 3125 7350 3125
Wire Wire Line
	6550 2950 6550 3225
Wire Wire Line
	6550 3225 7350 3225
Wire Wire Line
	6450 2950 6450 3325
Wire Wire Line
	6450 3325 7350 3325
Wire Wire Line
	6350 2950 6350 3425
Wire Wire Line
	6350 3425 7350 3425
Text GLabel 5700 1850 2    50   Output ~ 0
CD32_YEL
Wire Wire Line
	4475 1850 4475 2025
Wire Wire Line
	4475 1850 5300 1850
Wire Wire Line
	7375 1350 7375 1275
Connection ~ 7175 1275
Wire Wire Line
	7275 1275 7375 1275
Connection ~ 7275 1275
$Comp
L Device:R R3
U 1 1 62A1918B
P 5300 1500
F 0 "R3" V 5250 1200 50  0000 L CNN
F 1 "10k" V 5300 1425 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5230 1500 50  0001 C CNN
F 3 "~" H 5300 1500 50  0001 C CNN
	1    5300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1275 5300 1200
$Comp
L power:VCC #PWR0115
U 1 1 62A19192
P 5300 1200
F 0 "#PWR0115" H 5300 1050 50  0001 C CNN
F 1 "VCC" H 5315 1373 50  0000 C CNN
F 2 "" H 5300 1200 50  0001 C CNN
F 3 "" H 5300 1200 50  0001 C CNN
	1    5300 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 62A19198
P 5400 1500
F 0 "R4" V 5350 1200 50  0000 L CNN
F 1 "10k" V 5400 1425 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5330 1500 50  0001 C CNN
F 3 "~" H 5400 1500 50  0001 C CNN
	1    5400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1275 5400 1275
Wire Wire Line
	5400 1275 5400 1350
Wire Wire Line
	5300 1275 5300 1350
$Comp
L Device:R R5
U 1 1 62A191A2
P 5500 1500
F 0 "R5" V 5450 1200 50  0000 L CNN
F 1 "10k" V 5500 1425 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5430 1500 50  0001 C CNN
F 3 "~" H 5500 1500 50  0001 C CNN
	1    5500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1650 5400 1950
Wire Wire Line
	5500 1650 5500 2050
Wire Wire Line
	5500 1350 5500 1275
Connection ~ 5300 1275
Wire Wire Line
	5400 1275 5500 1275
Connection ~ 5400 1275
Wire Wire Line
	5300 1850 5300 1650
Connection ~ 5300 1850
NoConn ~ 4575 2025
Wire Wire Line
	4775 2025 4775 1950
Wire Wire Line
	4775 1950 5400 1950
Connection ~ 5400 1950
NoConn ~ 4875 2025
Wire Wire Line
	4875 3025 5000 3025
Wire Wire Line
	5500 2050 5000 2050
Wire Wire Line
	5000 2050 5000 3025
Wire Wire Line
	4875 3025 4875 2950
Connection ~ 5500 2050
Text GLabel 5700 1950 2    50   Output ~ 0
CD32_REW
Text GLabel 5700 2050 2    50   Output ~ 0
CD32_FF
Wire Wire Line
	4375 3100 4475 3100
Wire Wire Line
	5100 3100 5100 2150
Wire Wire Line
	5300 1850 5700 1850
Wire Wire Line
	5400 1950 5700 1950
Wire Wire Line
	5500 2050 5700 2050
Wire Wire Line
	5100 2150 5600 2150
$Comp
L Device:R R6
U 1 1 62ABF99D
P 5600 1500
F 0 "R6" V 5550 1200 50  0000 L CNN
F 1 "10k" V 5600 1425 50  0000 L CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5530 1500 50  0001 C CNN
F 3 "~" H 5600 1500 50  0001 C CNN
	1    5600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1350 5600 1275
Wire Wire Line
	5500 1275 5600 1275
Connection ~ 5500 1275
Wire Wire Line
	5600 1650 5600 2150
Connection ~ 5600 2150
Wire Wire Line
	5600 2150 5700 2150
Text GLabel 5700 2150 2    50   Output ~ 0
CD32_PLAY
Wire Wire Line
	4475 2950 4475 3100
Connection ~ 4475 3100
Wire Wire Line
	4475 3100 5100 3100
NoConn ~ 4575 2950
NoConn ~ 4675 2950
NoConn ~ 4775 2950
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 62B833E8
P 6450 1675
F 0 "#FLG0101" H 6450 1750 50  0001 C CNN
F 1 "PWR_FLAG" V 6450 1802 50  0001 L CNN
F 2 "" H 6450 1675 50  0001 C CNN
F 3 "~" H 6450 1675 50  0001 C CNN
	1    6450 1675
	0    -1   -1   0   
$EndComp
Connection ~ 6450 1675
Wire Wire Line
	6450 1675 6450 2025
Wire Wire Line
	4675 1525 4775 1525
Wire Wire Line
	4775 1525 4775 1600
$Comp
L power:GND #PWR0110
U 1 1 62C6FE1A
P 4775 1600
F 0 "#PWR0110" H 4775 1350 50  0001 C CNN
F 1 "GND" H 4780 1427 50  0000 C CNN
F 2 "" H 4775 1600 50  0001 C CNN
F 3 "" H 4775 1600 50  0001 C CNN
	1    4775 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 1525 4675 2025
$EndSCHEMATC
