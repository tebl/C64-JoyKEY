EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "C64 Arcade"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mounting:Mounting M1
U 1 1 5FB6F935
P 10700 550
F 0 "M1" H 10700 650 50  0001 C CNN
F 1 "Mounting" H 10700 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10700 550 50  0001 C CNN
F 3 "~" H 10700 550 50  0001 C CNN
	1    10700 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 5FB70096
P 10825 550
F 0 "M2" H 10825 650 50  0001 C CNN
F 1 "Mounting" H 10825 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10825 550 50  0001 C CNN
F 3 "~" H 10825 550 50  0001 C CNN
	1    10825 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 5FB70244
P 10975 550
F 0 "M3" H 10975 650 50  0001 C CNN
F 1 "Mounting" H 10975 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10975 550 50  0001 C CNN
F 3 "~" H 10975 550 50  0001 C CNN
	1    10975 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 5FB705F7
P 11100 550
F 0 "M4" H 11100 650 50  0001 C CNN
F 1 "Mounting" H 11100 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 11100 550 50  0001 C CNN
F 3 "~" H 11100 550 50  0001 C CNN
	1    11100 550 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FB73080
P 3300 1500
F 0 "#PWR01" H 3300 1250 50  0001 C CNN
F 1 "GND" H 3305 1327 50  0000 C CNN
F 2 "" H 3300 1500 50  0001 C CNN
F 3 "" H 3300 1500 50  0001 C CNN
	1    3300 1500
	1    0    0    -1  
$EndComp
$Comp
L c64_idc:C64_IDC2_OUT J1
U 1 1 5FB76154
P 8350 2200
F 0 "J1" H 8400 2617 50  0000 C CNN
F 1 "Port_1" H 8400 2526 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 8350 2200 50  0001 C CNN
F 3 "~" H 8350 2200 50  0001 C CNN
	1    8350 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FB76300
P 8900 2475
F 0 "#PWR03" H 8900 2225 50  0001 C CNN
F 1 "GND" H 8905 2302 50  0000 C CNN
F 2 "" H 8900 2475 50  0001 C CNN
F 3 "" H 8900 2475 50  0001 C CNN
	1    8900 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	8825 2000 8975 2000
Text GLabel 8975 1200 2    50   Input ~ 0
P2_FIRE1
Text GLabel 8975 2000 2    50   Input ~ 0
P1_FIRE1
$Comp
L power:VCC #PWR02
U 1 1 5FB781A5
P 9825 1125
F 0 "#PWR02" H 9825 975 50  0001 C CNN
F 1 "VCC" H 9842 1298 50  0000 C CNN
F 2 "" H 9825 1125 50  0001 C CNN
F 3 "" H 9825 1125 50  0001 C CNN
	1    9825 1125
	1    0    0    -1  
$EndComp
NoConn ~ 7900 2000
NoConn ~ 7900 2100
NoConn ~ 7900 2200
NoConn ~ 7900 2300
NoConn ~ 8825 2100
Text GLabel 7750 1200 0    50   Input ~ 0
P2_UP
Wire Wire Line
	7750 1200 7900 1200
Text GLabel 7750 1300 0    50   Input ~ 0
P2_DOWN
Wire Wire Line
	7900 1300 7750 1300
Text GLabel 7750 1400 0    50   Input ~ 0
P2_LEFT
Wire Wire Line
	7750 1400 7900 1400
Text GLabel 7750 1500 0    50   Input ~ 0
P2_RIGHT
Wire Wire Line
	7750 1500 7900 1500
Text GLabel 8975 1500 2    50   Input ~ 0
P2_FIRE2
Wire Wire Line
	8975 1500 8825 1500
Text GLabel 7750 1600 0    50   Input ~ 0
P2_FIRE3
Wire Wire Line
	7750 1600 7900 1600
$Comp
L power:GND #PWR04
U 1 1 5FB7E13A
P 1275 2875
F 0 "#PWR04" H 1275 2625 50  0001 C CNN
F 1 "GND" H 1280 2702 50  0000 C CNN
F 2 "" H 1275 2875 50  0001 C CNN
F 3 "" H 1275 2875 50  0001 C CNN
	1    1275 2875
	1    0    0    -1  
$EndComp
Text GLabel 1575 1525 2    50   Output ~ 0
P2_UP
Text GLabel 1575 2575 2    50   Output ~ 0
P2_LEFT
Text GLabel 1575 2225 2    50   Output ~ 0
P2_DOWN
Text GLabel 1575 1875 2    50   Output ~ 0
P2_RIGHT
Text GLabel 4650 2150 2    50   Output ~ 0
P2_FIRE2
$Comp
L Jumper:Jumper_3_Bridged12 JP3
U 1 1 5FBAA15C
P 4275 3800
F 0 "JP3" H 4375 3650 50  0000 C CNN
F 1 "FIRE3_SEL" H 4500 3725 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 4275 3800 50  0001 C CNN
F 3 "~" H 4275 3800 50  0001 C CNN
	1    4275 3800
	-1   0    0    1   
$EndComp
Text GLabel 4600 3925 2    50   Output ~ 0
P2_FIRE3
Text GLabel 4600 3800 2    50   Output ~ 0
P1_FIRE1
Wire Wire Line
	4025 3800 3950 3800
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 5FBD1161
P 3300 4350
F 0 "JP2" H 3300 4461 50  0000 C CNN
F 1 "F3_POL" H 3300 4552 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 3300 4350 50  0001 C CNN
F 3 "~" H 3300 4350 50  0001 C CNN
	1    3300 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5FBD1167
P 3300 4100
F 0 "R2" H 3359 4146 50  0000 L CNN
F 1 "270" H 3359 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3300 4100 50  0001 C CNN
F 3 "~" H 3300 4100 50  0001 C CNN
	1    3300 4100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5FBD1170
P 3625 4275
F 0 "#PWR08" H 3625 4125 50  0001 C CNN
F 1 "VCC" H 3642 4448 50  0000 C CNN
F 2 "" H 3625 4275 50  0001 C CNN
F 3 "" H 3625 4275 50  0001 C CNN
	1    3625 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3625 4275 3625 4350
Wire Wire Line
	3625 4350 3550 4350
Wire Wire Line
	3050 4350 2975 4350
Wire Wire Line
	2975 4350 2975 4425
$Comp
L power:GND #PWR07
U 1 1 5FBD117A
P 2975 4425
F 0 "#PWR07" H 2975 4175 50  0001 C CNN
F 1 "GND" H 2980 4252 50  0000 C CNN
F 2 "" H 2975 4425 50  0001 C CNN
F 3 "" H 2975 4425 50  0001 C CNN
	1    2975 4425
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW8
U 1 1 5FBBF92E
P 9150 4800
F 0 "SW8" H 9150 4975 50  0000 C CNN
F 1 "RESET" H 9150 4725 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 9150 5000 50  0001 C CNN
F 3 "~" H 9150 5000 50  0001 C CNN
	1    9150 4800
	1    0    0    -1  
$EndComp
NoConn ~ 8875 4600
NoConn ~ 7925 4600
NoConn ~ 7925 4700
$Comp
L power:GND #PWR0101
U 1 1 5FBC3892
P 8500 6100
F 0 "#PWR0101" H 8500 5850 50  0001 C CNN
F 1 "GND" H 8505 5927 50  0000 C CNN
F 2 "" H 8500 6100 50  0001 C CNN
F 3 "" H 8500 6100 50  0001 C CNN
	1    8500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 6100 8500 6025
Wire Wire Line
	8500 6025 8400 6025
Wire Wire Line
	8300 6025 8300 5950
Wire Wire Line
	8400 5950 8400 6025
Connection ~ 8400 6025
Wire Wire Line
	8400 6025 8300 6025
Wire Wire Line
	8500 5950 8500 6025
Connection ~ 8500 6025
$Comp
L power:VCC #PWR0102
U 1 1 5FBC8167
P 8400 3675
F 0 "#PWR0102" H 8400 3525 50  0001 C CNN
F 1 "VCC" H 8417 3848 50  0000 C CNN
F 2 "" H 8400 3675 50  0001 C CNN
F 3 "" H 8400 3675 50  0001 C CNN
	1    8400 3675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FBD56FF
P 10100 4875
F 0 "#PWR0103" H 10100 4625 50  0001 C CNN
F 1 "GND" H 10105 4702 50  0000 C CNN
F 2 "" H 10100 4875 50  0001 C CNN
F 3 "" H 10100 4875 50  0001 C CNN
	1    10100 4875
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FBD6E88
P 9850 4400
F 0 "D1" H 9850 4300 50  0000 C CNN
F 1 "PWR" H 9850 4500 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 9850 4400 50  0001 C CNN
F 3 "~" H 9850 4400 50  0001 C CNN
	1    9850 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5FBD9406
P 9850 4075
F 0 "R3" V 9750 4025 50  0000 L CNN
F 1 "330" V 9950 4000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9850 4075 50  0001 C CNN
F 3 "~" H 9850 4075 50  0001 C CNN
	1    9850 4075
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 3750 8400 3675
Connection ~ 8400 3750
$Comp
L Device:LED D2
U 1 1 5FBDF2F9
P 9850 5200
F 0 "D2" H 9850 5100 50  0000 C CNN
F 1 "SYS" H 9850 5300 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 9850 5200 50  0001 C CNN
F 3 "~" H 9850 5200 50  0001 C CNN
	1    9850 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5FBDF2FF
P 9850 5525
F 0 "R4" V 9750 5475 50  0000 L CNN
F 1 "330" V 9950 5450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9850 5525 50  0001 C CNN
F 3 "~" H 9850 5525 50  0001 C CNN
	1    9850 5525
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 5425 9850 5350
Wire Wire Line
	9850 4175 9850 4250
Wire Wire Line
	8875 4800 8950 4800
Wire Wire Line
	9350 4800 9850 4800
Text GLabel 6175 5300 0    50   Output ~ 0
P2_FIRE1
Wire Wire Line
	8825 2200 8900 2200
Connection ~ 8900 2200
Wire Wire Line
	8900 2200 8900 2475
Wire Wire Line
	8825 1400 8900 1400
Wire Wire Line
	8900 1400 8900 2200
Wire Wire Line
	9825 1300 9825 1125
Text GLabel 9025 5300 2    50   Input ~ 0
P2_RIGHT
Wire Wire Line
	9025 5200 8875 5200
Text GLabel 9025 5200 2    50   Input ~ 0
P2_UP
Wire Wire Line
	9025 5500 8875 5500
Text GLabel 9025 5400 2    50   Input ~ 0
P2_DOWN
Text GLabel 9025 5500 2    50   Input ~ 0
P2_LEFT
Wire Wire Line
	9025 5400 8875 5400
Wire Wire Line
	9025 5300 8875 5300
Wire Wire Line
	6825 5200 7925 5200
Wire Wire Line
	6925 2275 6925 5100
Wire Wire Line
	6925 5100 7925 5100
Wire Wire Line
	7025 1100 7025 5000
Wire Wire Line
	7025 5000 7925 5000
Wire Wire Line
	4075 2150 4075 2275
Text Label 7900 5000 2    50   ~ 0
FIRE1_IN
Text Label 7900 5100 2    50   ~ 0
FIRE2_IN
Text Label 7900 5200 2    50   ~ 0
FIRE3_IN
Wire Wire Line
	4075 1425 4275 1425
Text Notes 4050 1850 0    50   ~ 0
There will be an alternate Arduino firmware where FIRE2/FIRE3\ncontrols various forms of autofire (for single-button systems).\nFor the default FW or units without an Arduino Pro Micro \ninstalled, JP4/JP6 must be linked.
Wire Wire Line
	4075 1100 4075 1425
$Comp
L promicro:Arduino_Pro_Micro A1
U 1 1 5FBBE539
P 8400 4850
F 0 "A1" H 8125 5250 50  0000 C CNN
F 1 "Arduino_Pro_Micro" V 8400 4550 50  0000 C CNN
F 2 "arduino_pro_micro:Arduino_Pro_Micro" H 8350 4850 50  0001 C CNN
F 3 "~" H 8350 4850 50  0001 C CNN
	1    8400 4850
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP5
U 1 1 60BF4B55
P 9850 3750
F 0 "JP5" H 9850 3861 50  0000 C CNN
F 1 "LED_SEL" H 9850 3952 50  0000 C CNN
F 2 "solder_bridge:select" H 9850 3750 50  0001 C CNN
F 3 "~" H 9850 3750 50  0001 C CNN
	1    9850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3750 9600 3750
Wire Wire Line
	9850 3900 9850 3975
Text Notes 9275 3475 0    50   ~ 0
Linking 1-2 will light PWR LED\npermanently, 2-3 enables\nArduino to control it.
Wire Notes Line
	10525 3925 10525 3175
Wire Notes Line
	10525 3175 9225 3175
Wire Notes Line
	9225 3175 9225 3925
Wire Notes Line
	9225 3925 10525 3925
Text Notes 7000 6725 0    50   ~ 0
A special version of the C64 JoyKEY, this has the same functionality as the regular - except it uses\narcade parts instead of Cherry MX switches.
$Comp
L Device:Jumper_NC_Small JP6
U 1 1 5FCB76F7
P 4375 2150
F 0 "JP6" H 4375 2325 50  0000 C CNN
F 1 "DEFAULT_FW" H 4375 2250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4375 2150 50  0001 C CNN
F 3 "~" H 4375 2150 50  0001 C CNN
	1    4375 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 2150 4275 2150
Wire Wire Line
	4475 2150 4650 2150
Wire Notes Line
	3800 2350 3800 1150
$Comp
L Device:D D3
U 1 1 5FCFF93E
P 9600 1300
F 0 "D3" H 9600 1084 50  0000 C CNN
F 1 "1n4001" H 9600 1175 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9600 1300 50  0001 C CNN
F 3 "~" H 9600 1300 50  0001 C CNN
	1    9600 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8825 1200 8975 1200
Wire Wire Line
	9750 1300 9825 1300
Wire Wire Line
	8825 1300 9450 1300
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FD15FFC
P 11025 850
F 0 "#FLG0101" H 11025 925 50  0001 C CNN
F 1 "PWR_FLAG" H 11025 1023 50  0000 C CNN
F 2 "" H 11025 850 50  0001 C CNN
F 3 "~" H 11025 850 50  0001 C CNN
	1    11025 850 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5FD16D69
P 10675 850
F 0 "#PWR0104" H 10675 700 50  0001 C CNN
F 1 "VCC" H 10692 1023 50  0000 C CNN
F 2 "" H 10675 850 50  0001 C CNN
F 3 "" H 10675 850 50  0001 C CNN
	1    10675 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10675 850  10675 925 
Wire Wire Line
	10675 925  11025 925 
Wire Wire Line
	11025 925  11025 850 
$Comp
L Device:D_Small D4
U 1 1 5FD49B7F
P 6625 5300
F 0 "D4" H 6625 5125 50  0000 C CNN
F 1 "1n4148" H 6625 5200 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 6625 5300 50  0001 C CNN
F 3 "~" V 6625 5300 50  0001 C CNN
	1    6625 5300
	-1   0    0    1   
$EndComp
Text Label 7900 5300 2    50   ~ 0
P2_FIRE1_OUT
Wire Wire Line
	4475 1425 4650 1425
Text GLabel 4650 1425 2    50   Output ~ 0
P2_FIRE1
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 5FCF52E4
P 4375 1425
F 0 "JP4" H 4375 1600 50  0000 C CNN
F 1 "DEFAULT_FW" H 4375 1525 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4375 1425 50  0001 C CNN
F 3 "~" H 4375 1425 50  0001 C CNN
	1    4375 1425
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5FDC0E14
P 6350 5300
F 0 "R5" V 6175 5250 50  0000 L CNN
F 1 "150" V 6250 5225 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6350 5300 50  0001 C CNN
F 3 "~" H 6350 5300 50  0001 C CNN
	1    6350 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 5300 6525 5300
Wire Wire Line
	6175 5300 6250 5300
$Comp
L c64_idc:C64_IDC2 J2
U 1 1 5FB748C4
P 8350 1400
F 0 "J2" H 8400 1817 50  0000 C CNN
F 1 "Port_2" H 8400 1726 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 8350 1400 50  0001 C CNN
F 3 "~" H 8350 1400 50  0001 C CNN
	1    8350 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5FF9EE9A
P 4575 7100
F 0 "Q1" H 4765 7146 50  0000 L CNN
F 1 "2N3904" H 4765 7055 50  0000 L CNN
F 2 "2n3904:2N3904_TO-92_Horizontal_FlatSideDown" H 4775 7025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4575 7100 50  0001 L CNN
	1    4575 7100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FF9F594
P 4475 7375
F 0 "#PWR0105" H 4475 7125 50  0001 C CNN
F 1 "GND" H 4480 7202 50  0000 C CNN
F 2 "" H 4475 7375 50  0001 C CNN
F 3 "" H 4475 7375 50  0001 C CNN
	1    4475 7375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4475 6900 4475 6825
Wire Wire Line
	3800 6750 3800 6825
Wire Wire Line
	3800 6825 3500 6825
Wire Wire Line
	3500 6750 3500 6825
Connection ~ 3500 6825
Wire Wire Line
	3500 6825 3200 6825
Wire Wire Line
	3200 6750 3200 6825
Connection ~ 3200 6825
Wire Wire Line
	3200 6825 2900 6825
Wire Wire Line
	2900 6750 2900 6825
Connection ~ 2900 6825
Wire Wire Line
	2900 6825 2600 6825
Wire Wire Line
	2600 6750 2600 6825
Connection ~ 2600 6825
Wire Wire Line
	2600 6825 2300 6825
Wire Wire Line
	2300 6750 2300 6825
Connection ~ 3800 6825
Wire Wire Line
	3800 5925 3800 5850
Wire Wire Line
	3800 5850 3500 5850
Wire Wire Line
	3500 5850 3500 5925
Wire Wire Line
	3500 5850 3200 5850
Wire Wire Line
	3200 5850 3200 5925
Connection ~ 3500 5850
Wire Wire Line
	3200 5850 2900 5850
Wire Wire Line
	2900 5850 2900 5925
Connection ~ 3200 5850
Wire Wire Line
	2900 5850 2600 5850
Wire Wire Line
	2600 5850 2600 5925
Connection ~ 2900 5850
Wire Wire Line
	2600 5850 2300 5850
Wire Wire Line
	2300 5850 2300 5925
Connection ~ 2600 5850
Connection ~ 2300 5850
$Comp
L power:VCC #PWR0106
U 1 1 60023832
P 2300 5775
F 0 "#PWR0106" H 2300 5625 50  0001 C CNN
F 1 "VCC" H 2315 5948 50  0000 C CNN
F 2 "" H 2300 5775 50  0001 C CNN
F 3 "" H 2300 5775 50  0001 C CNN
	1    2300 5775
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 6002E08F
P 4950 7100
F 0 "R13" V 4850 7025 50  0000 L CNN
F 1 "1k" V 5025 7050 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4950 7100 50  0001 C CNN
F 3 "~" H 4950 7100 50  0001 C CNN
	1    4950 7100
	0    -1   1    0   
$EndComp
Wire Wire Line
	4850 7100 4775 7100
Text GLabel 3375 2600 2    50   Output ~ 0
FIRE2_POL
Text GLabel 3375 3900 2    50   Output ~ 0
FIRE3_POL
Wire Wire Line
	3300 3900 3300 4000
Wire Wire Line
	3300 2600 3300 2700
Text GLabel 9025 5000 2    50   Input ~ 0
FIRE2_POL
Text GLabel 9025 5100 2    50   Input ~ 0
FIRE3_POL
Wire Wire Line
	8875 5000 9025 5000
Wire Wire Line
	8875 5100 9025 5100
Wire Wire Line
	6825 7100 6825 5400
Wire Wire Line
	6825 5400 7925 5400
$Comp
L Device:R_Small R7
U 1 1 6014570E
P 2300 6650
F 0 "R7" V 2200 6600 50  0000 L CNN
F 1 "330" V 2400 6575 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2300 6650 50  0001 C CNN
F 3 "~" H 2300 6650 50  0001 C CNN
	1    2300 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 6014BD41
P 2600 6650
F 0 "R8" V 2500 6600 50  0000 L CNN
F 1 "330" V 2700 6575 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2600 6650 50  0001 C CNN
F 3 "~" H 2600 6650 50  0001 C CNN
	1    2600 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 6014BD47
P 2900 6650
F 0 "R9" V 2800 6600 50  0000 L CNN
F 1 "330" V 3000 6575 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2900 6650 50  0001 C CNN
F 3 "~" H 2900 6650 50  0001 C CNN
	1    2900 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 60152B72
P 3200 6650
F 0 "R10" V 3100 6600 50  0000 L CNN
F 1 "330" V 3300 6575 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3200 6650 50  0001 C CNN
F 3 "~" H 3200 6650 50  0001 C CNN
	1    3200 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 60152B78
P 3500 6650
F 0 "R11" V 3400 6600 50  0000 L CNN
F 1 "330" V 3600 6575 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3500 6650 50  0001 C CNN
F 3 "~" H 3500 6650 50  0001 C CNN
	1    3500 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 60152B7E
P 3800 6650
F 0 "R12" V 3700 6600 50  0000 L CNN
F 1 "330" V 3900 6575 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3800 6650 50  0001 C CNN
F 3 "~" H 3800 6650 50  0001 C CNN
	1    3800 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 7375 4475 7300
Wire Wire Line
	6725 5300 7925 5300
Wire Wire Line
	4275 3650 4275 3575
Wire Notes Line
	6725 2350 6725 1150
Wire Notes Line
	3800 1150 6725 1150
Wire Notes Line
	3800 2350 6725 2350
$Comp
L Device:Jumper_NC_Small JP7
U 1 1 603A8E18
P 4200 6825
F 0 "JP7" H 4200 7000 50  0000 C CNN
F 1 "EXT_LED" H 4200 6925 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 4200 6825 50  0001 C CNN
F 3 "~" H 4200 6825 50  0001 C CNN
	1    4200 6825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 7100 6825 7100
Wire Wire Line
	3800 6825 4100 6825
Wire Wire Line
	4300 6825 4475 6825
Text GLabel 6175 5500 0    50   Output ~ 0
P2_FIRE2
$Comp
L Device:D_Small D12
U 1 1 600C6BE2
P 6625 5500
F 0 "D12" H 6625 5600 50  0000 C CNN
F 1 "1n4148" H 6625 5675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 6625 5500 50  0001 C CNN
F 3 "~" V 6625 5500 50  0001 C CNN
	1    6625 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 600C6BE8
P 6350 5500
F 0 "R14" V 6450 5450 50  0000 L CNN
F 1 "150" V 6525 5425 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6350 5500 50  0001 C CNN
F 3 "~" H 6350 5500 50  0001 C CNN
	1    6350 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 5500 6525 5500
Wire Wire Line
	6175 5500 6250 5500
Wire Wire Line
	6725 5500 7925 5500
Text Label 7900 5500 2    50   ~ 0
P2_FIRE2_OUT
Text Label 8900 5700 0    50   ~ 0
SYS
Text Label 7900 5700 2    50   ~ 0
PWR
Wire Wire Line
	7700 5700 7700 6425
Wire Wire Line
	7700 5700 7925 5700
Text Label 7900 5400 2    50   ~ 0
EXT_LED
Text GLabel 8975 2300 2    50   Input ~ 0
P1_FIRE2
Wire Wire Line
	8975 2300 8825 2300
Text GLabel 7750 2400 0    50   Input ~ 0
P1_FIRE3
Wire Wire Line
	7750 2400 7900 2400
$Comp
L arcade:SWITCH J4
U 1 1 600A32A1
P 1675 1700
F 0 "J4" H 1803 1741 50  0000 L CNN
F 1 "UP" H 1803 1650 50  0000 L CNN
F 2 "" H 1625 1850 50  0001 C CNN
F 3 "~" H 1625 1850 50  0001 C CNN
	1    1675 1700
	1    0    0    -1  
$EndComp
$Comp
L arcade:SWITCH J7
U 1 1 600B28EF
P 1675 2750
F 0 "J7" H 1803 2791 50  0000 L CNN
F 1 "LEFT" H 1803 2700 50  0000 L CNN
F 2 "" H 1625 2900 50  0001 C CNN
F 3 "~" H 1625 2900 50  0001 C CNN
	1    1675 2750
	1    0    0    -1  
$EndComp
$Comp
L arcade:SWITCH J5
U 1 1 600B994D
P 1675 2050
F 0 "J5" H 1803 2091 50  0000 L CNN
F 1 "RIGHT" H 1803 2000 50  0000 L CNN
F 2 "" H 1625 2200 50  0001 C CNN
F 3 "~" H 1625 2200 50  0001 C CNN
	1    1675 2050
	1    0    0    -1  
$EndComp
$Comp
L arcade:SWITCH J6
U 1 1 600C0938
P 1675 2400
F 0 "J6" H 1803 2441 50  0000 L CNN
F 1 "DOWN" H 1803 2350 50  0000 L CNN
F 2 "" H 1625 2550 50  0001 C CNN
F 3 "~" H 1625 2550 50  0001 C CNN
	1    1675 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 2450 1425 2450
Wire Wire Line
	1575 2225 1350 2225
Wire Wire Line
	1350 2225 1350 2350
Wire Wire Line
	1350 2350 1425 2350
Wire Wire Line
	1275 1750 1425 1750
Wire Wire Line
	1350 2575 1350 2700
Wire Wire Line
	1350 2700 1425 2700
Wire Wire Line
	1350 2575 1575 2575
Wire Wire Line
	1275 2800 1425 2800
Wire Wire Line
	1275 2100 1425 2100
Wire Wire Line
	1575 1875 1350 1875
Wire Wire Line
	1350 1875 1350 2000
Wire Wire Line
	1350 2000 1425 2000
Wire Wire Line
	1425 1650 1350 1650
Wire Wire Line
	1350 1650 1350 1525
Wire Wire Line
	1350 1525 1575 1525
$Comp
L arcade:DIR J3
U 1 1 601F1F84
P 1000 1225
F 0 "J3" V 1026 937 50  0000 R CNN
F 1 "DIR" V 935 937 50  0000 R CNN
F 2 "" H 1000 1225 50  0001 C CNN
F 3 "~" H 1000 1225 50  0001 C CNN
	1    1000 1225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1275 1750 1275 2100
Connection ~ 1275 2100
Wire Wire Line
	1275 2100 1275 2450
Connection ~ 1275 2450
Wire Wire Line
	1275 2450 1275 2800
Connection ~ 1275 2800
Wire Wire Line
	1275 2800 1275 2875
Connection ~ 1350 2575
Connection ~ 1350 2225
Connection ~ 1350 1875
Connection ~ 1350 1525
Wire Wire Line
	1200 1425 1200 1525
Wire Wire Line
	1200 1525 1350 1525
Wire Wire Line
	1100 1425 1100 1875
Wire Wire Line
	1100 1875 1350 1875
Wire Wire Line
	1000 1425 1000 2225
Wire Wire Line
	1000 2225 1350 2225
Wire Wire Line
	900  1425 900  2575
Wire Wire Line
	900  2575 1350 2575
Wire Wire Line
	800  1425 800  2800
Wire Wire Line
	800  2800 1275 2800
$Comp
L arcade:SWITCH J8
U 1 1 60408C68
P 2900 1150
F 0 "J8" H 3075 1200 50  0000 C CNN
F 1 "P2_FIRE1" H 3200 1125 50  0000 C CNN
F 2 "" H 2850 1300 50  0001 C CNN
F 3 "~" H 2850 1300 50  0001 C CNN
	1    2900 1150
	-1   0    0    -1  
$EndComp
$Comp
L arcade:SWITCH J9
U 1 1 6043080F
P 2900 2325
F 0 "J9" H 3075 2375 50  0000 C CNN
F 1 "P2_FIRE2" H 3200 2300 50  0000 C CNN
F 2 "" H 2850 2475 50  0001 C CNN
F 3 "~" H 2850 2475 50  0001 C CNN
	1    2900 2325
	-1   0    0    -1  
$EndComp
$Comp
L arcade:SWITCH J10
U 1 1 60461C63
P 2900 3625
F 0 "J10" H 3100 3675 50  0000 C CNN
F 1 "P2_FIRE3" H 3200 3600 50  0000 C CNN
F 2 "" H 2850 3775 50  0001 C CNN
F 3 "~" H 2850 3775 50  0001 C CNN
	1    2900 3625
	-1   0    0    -1  
$EndComp
$Comp
L arcade:SWITCH J11
U 1 1 6052C4ED
P 2900 1375
F 0 "J11" H 3075 1425 50  0000 C CNN
F 1 "P1_FIRE1" H 3200 1350 50  0000 C CNN
F 2 "" H 2850 1525 50  0001 C CNN
F 3 "~" H 2850 1525 50  0001 C CNN
	1    2900 1375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3150 1425 3300 1425
Wire Wire Line
	3300 1200 3150 1200
Wire Wire Line
	3300 1425 3300 1200
Wire Wire Line
	3300 1500 3300 1425
Connection ~ 3300 1425
$Comp
L arcade:SWITCH J12
U 1 1 605C1A93
P 2900 2550
F 0 "J12" H 3075 2600 50  0000 C CNN
F 1 "P1_FIRE2" H 3200 2525 50  0000 C CNN
F 2 "" H 2850 2700 50  0001 C CNN
F 3 "~" H 2850 2700 50  0001 C CNN
	1    2900 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 2375 3300 2600
Wire Wire Line
	3150 2375 3300 2375
Wire Wire Line
	3150 2600 3300 2600
Connection ~ 3300 2600
$Comp
L arcade:SWITCH J13
U 1 1 606581C0
P 2900 3850
F 0 "J13" H 3100 3900 50  0000 C CNN
F 1 "P1_FIRE3" H 3200 3825 50  0000 C CNN
F 2 "" H 2850 4000 50  0001 C CNN
F 3 "~" H 2850 4000 50  0001 C CNN
	1    2900 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3150 3675 3300 3675
Wire Wire Line
	3300 3675 3300 3900
Wire Wire Line
	3300 3900 3150 3900
Connection ~ 3300 3900
Text GLabel 3375 1325 2    50   Output ~ 0
P1_FIRE1
Wire Wire Line
	3150 1325 3375 1325
Wire Wire Line
	3150 1100 4075 1100
Wire Wire Line
	3150 2275 4075 2275
Text GLabel 3375 2500 2    50   Output ~ 0
P1_FIRE2
Wire Wire Line
	3150 2500 3375 2500
Wire Wire Line
	3375 2600 3300 2600
Wire Wire Line
	3150 3575 4275 3575
Wire Wire Line
	3375 3900 3300 3900
Text GLabel 3375 3800 2    50   Output ~ 0
P1_FIRE3
Wire Wire Line
	3150 3800 3375 3800
Wire Wire Line
	4525 3800 4600 3800
Wire Wire Line
	4600 3925 3950 3925
Wire Wire Line
	3950 3925 3950 3800
$Comp
L power:GND #PWR05
U 1 1 5FB9E421
P 2975 3125
F 0 "#PWR05" H 2975 2875 50  0001 C CNN
F 1 "GND" H 2980 2952 50  0000 C CNN
F 2 "" H 2975 3125 50  0001 C CNN
F 3 "" H 2975 3125 50  0001 C CNN
	1    2975 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 3050 2975 3125
Wire Wire Line
	3050 3050 2975 3050
Wire Wire Line
	3625 3050 3550 3050
Wire Wire Line
	3625 2975 3625 3050
$Comp
L power:VCC #PWR06
U 1 1 5FB9C41D
P 3625 2975
F 0 "#PWR06" H 3625 2825 50  0001 C CNN
F 1 "VCC" H 3642 3148 50  0000 C CNN
F 2 "" H 3625 2975 50  0001 C CNN
F 3 "" H 3625 2975 50  0001 C CNN
	1    3625 2975
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5FB96763
P 3300 2800
F 0 "R1" H 3359 2846 50  0000 L CNN
F 1 "270" H 3359 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3300 2800 50  0001 C CNN
F 3 "~" H 3300 2800 50  0001 C CNN
	1    3300 2800
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5FB8F17B
P 3300 3050
F 0 "JP1" H 3300 3161 50  0000 C CNN
F 1 "F2_POL" H 3300 3252 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 3300 3050 50  0001 C CNN
F 3 "~" H 3300 3050 50  0001 C CNN
	1    3300 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6825 3575 6825 5200
Wire Wire Line
	4075 1100 7025 1100
Connection ~ 4075 1100
Wire Wire Line
	4075 2275 6925 2275
Connection ~ 4075 2275
Wire Wire Line
	4275 3575 6825 3575
Connection ~ 4275 3575
$Comp
L arcade:LED_Plugin D10
U 1 1 6013CF33
P 3800 6225
F 0 "D10" V 3950 6350 50  0000 R CNN
F 1 "LED_Plugin" V 3743 6047 50  0001 R CNN
F 2 "" H 3800 6225 50  0001 C CNN
F 3 "~" H 3800 6225 50  0001 C CNN
	1    3800 6225
	0    -1   -1   0   
$EndComp
$Comp
L arcade:LED_Plugin D9
U 1 1 60185272
P 3500 6225
F 0 "D9" V 3650 6375 50  0000 R CNN
F 1 "LED_Plugin" V 3443 6047 50  0001 R CNN
F 2 "" H 3500 6225 50  0001 C CNN
F 3 "~" H 3500 6225 50  0001 C CNN
	1    3500 6225
	0    -1   -1   0   
$EndComp
$Comp
L arcade:LED_Plugin D8
U 1 1 6018EAC5
P 3200 6225
F 0 "D8" V 3350 6375 50  0000 R CNN
F 1 "LED_Plugin" V 3143 6047 50  0001 R CNN
F 2 "" H 3200 6225 50  0001 C CNN
F 3 "~" H 3200 6225 50  0001 C CNN
	1    3200 6225
	0    -1   -1   0   
$EndComp
$Comp
L arcade:LED_Plugin D7
U 1 1 60198250
P 2900 6225
F 0 "D7" V 3050 6375 50  0000 R CNN
F 1 "LED_Plugin" V 2843 6047 50  0001 R CNN
F 2 "" H 2900 6225 50  0001 C CNN
F 3 "~" H 2900 6225 50  0001 C CNN
	1    2900 6225
	0    -1   -1   0   
$EndComp
$Comp
L arcade:LED_Plugin D6
U 1 1 601A1981
P 2600 6225
F 0 "D6" V 2750 6375 50  0000 R CNN
F 1 "LED_Plugin" V 2543 6047 50  0001 R CNN
F 2 "" H 2600 6225 50  0001 C CNN
F 3 "~" H 2600 6225 50  0001 C CNN
	1    2600 6225
	0    -1   -1   0   
$EndComp
$Comp
L arcade:LED_Plugin D5
U 1 1 601AB1C0
P 2300 6225
F 0 "D5" V 2450 6375 50  0000 R CNN
F 1 "LED_Plugin" V 2243 6047 50  0001 R CNN
F 2 "" H 2300 6225 50  0001 C CNN
F 3 "~" H 2300 6225 50  0001 C CNN
	1    2300 6225
	0    -1   -1   0   
$EndComp
$Comp
L arcade:PWR J14
U 1 1 601C93F2
P 1525 6125
F 0 "J14" H 1653 6166 50  0000 L CNN
F 1 "PWR1" H 1653 6075 50  0000 L CNN
F 2 "" H 1475 6275 50  0001 C CNN
F 3 "~" H 1475 6275 50  0001 C CNN
	1    1525 6125
	1    0    0    -1  
$EndComp
$Comp
L arcade:PWR J15
U 1 1 601CC52A
P 1525 6350
F 0 "J15" H 1653 6391 50  0000 L CNN
F 1 "PWR2" H 1653 6300 50  0000 L CNN
F 2 "" H 1475 6500 50  0001 C CNN
F 3 "~" H 1475 6500 50  0001 C CNN
	1    1525 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 6075 1125 6000
Wire Wire Line
	1125 6300 1125 6075
Connection ~ 1125 6075
Wire Wire Line
	1125 6075 1275 6075
Wire Wire Line
	1125 6300 1275 6300
Wire Wire Line
	1275 6175 1200 6175
Wire Wire Line
	1200 6175 1200 6400
Wire Wire Line
	1200 6400 1275 6400
Wire Wire Line
	1200 6400 1200 6475
Connection ~ 1200 6400
$Comp
L power:GND #PWR010
U 1 1 60227105
P 1200 6475
F 0 "#PWR010" H 1200 6225 50  0001 C CNN
F 1 "GND" H 1205 6302 50  0000 C CNN
F 2 "" H 1200 6475 50  0001 C CNN
F 3 "" H 1200 6475 50  0001 C CNN
	1    1200 6475
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 60231D15
P 1125 6000
F 0 "#PWR09" H 1125 5850 50  0001 C CNN
F 1 "VCC" H 1140 6173 50  0000 C CNN
F 2 "" H 1125 6000 50  0001 C CNN
F 3 "" H 1125 6000 50  0001 C CNN
	1    1125 6000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 5775 2300 5850
Text GLabel 7700 5600 0    50   Input ~ 0
P1_FIRE2
Wire Wire Line
	7700 5600 7925 5600
Text GLabel 9025 5600 2    50   Input ~ 0
P1_FIRE3
Wire Wire Line
	8875 5600 9025 5600
Wire Wire Line
	10100 4800 10100 4875
Wire Wire Line
	9850 4800 9850 5050
Connection ~ 9850 4800
Wire Wire Line
	9850 5625 9850 5700
Wire Wire Line
	8875 5700 9850 5700
Wire Wire Line
	7700 6425 10350 6425
Wire Wire Line
	10100 3750 10350 3750
Wire Wire Line
	9850 4800 10100 4800
Wire Wire Line
	9850 4550 9850 4800
Wire Wire Line
	8400 3750 8400 4350
Wire Wire Line
	10350 3750 10350 6425
$EndSCHEMATC
