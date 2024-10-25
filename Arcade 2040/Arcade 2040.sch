EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "C64 JoyKEY"
Date ""
Rev "E"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mounting:Mounting M1
U 1 1 5FB6F935
P 15500 600
F 0 "M1" H 15500 700 50  0001 C CNN
F 1 "Mounting" H 15500 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 15500 600 50  0001 C CNN
F 3 "~" H 15500 600 50  0001 C CNN
	1    15500 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 5FB70096
P 15625 600
F 0 "M2" H 15625 700 50  0001 C CNN
F 1 "Mounting" H 15625 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 15625 600 50  0001 C CNN
F 3 "~" H 15625 600 50  0001 C CNN
	1    15625 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 5FB70244
P 15775 600
F 0 "M3" H 15775 700 50  0001 C CNN
F 1 "Mounting" H 15775 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 15775 600 50  0001 C CNN
F 3 "~" H 15775 600 50  0001 C CNN
	1    15775 600 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 5FB705F7
P 15900 600
F 0 "M4" H 15900 700 50  0001 C CNN
F 1 "Mounting" H 15900 525 50  0001 C CNN
F 2 "mounting:M3_pin" H 15900 600 50  0001 C CNN
F 3 "~" H 15900 600 50  0001 C CNN
	1    15900 600 
	1    0    0    -1  
$EndComp
$Comp
L sw_push:SW_Push SW1
U 1 1 5FB706DC
P 3650 2100
F 0 "SW1" H 3550 2200 50  0000 C CNN
F 1 "P2_FIRE1" H 3650 2050 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3650 2300 50  0001 C CNN
F 3 "" H 3650 2300 50  0001 C CNN
	1    3650 2100
	1    0    0    -1  
$EndComp
$Comp
L sw_push:SW_Push SW2
U 1 1 5FB7132D
P 3650 3575
F 0 "SW2" H 3550 3675 50  0000 C CNN
F 1 "P2_FIRE2" H 3650 3525 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3650 3775 50  0001 C CNN
F 3 "" H 3650 3775 50  0001 C CNN
	1    3650 3575
	1    0    0    -1  
$EndComp
$Comp
L sw_push:SW_Push SW3
U 1 1 5FB71722
P 3650 5375
F 0 "SW3" H 3550 5475 50  0000 C CNN
F 1 "P2_FIRE3" H 3650 5325 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 3650 5575 50  0001 C CNN
F 3 "" H 3650 5575 50  0001 C CNN
	1    3650 5375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FB73080
P 3375 2425
F 0 "#PWR01" H 3375 2175 50  0001 C CNN
F 1 "GND" H 3380 2252 50  0000 C CNN
F 2 "" H 3375 2425 50  0001 C CNN
F 3 "" H 3375 2425 50  0001 C CNN
	1    3375 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 2350 3450 2350
$Comp
L power:GND #PWR03
U 1 1 5FB76300
P 12075 3650
F 0 "#PWR03" H 12075 3400 50  0001 C CNN
F 1 "GND" H 12080 3477 50  0000 C CNN
F 2 "" H 12075 3650 50  0001 C CNN
F 3 "" H 12075 3650 50  0001 C CNN
	1    12075 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 3175 12150 3175
Text GLabel 12150 2375 2    50   Input ~ 0
P2_FIRE1
Text GLabel 12150 3175 2    50   Input ~ 0
P1_FIRE1
$Comp
L power:VCC #PWR02
U 1 1 5FB781A5
P 13400 2300
F 0 "#PWR02" H 13400 2150 50  0001 C CNN
F 1 "VCC" H 13417 2473 50  0000 C CNN
F 2 "" H 13400 2300 50  0001 C CNN
F 3 "" H 13400 2300 50  0001 C CNN
	1    13400 2300
	1    0    0    -1  
$EndComp
NoConn ~ 11075 3275
NoConn ~ 11075 3375
NoConn ~ 11075 3475
NoConn ~ 12000 3275
Text GLabel 10925 2375 0    50   Input ~ 0
P2_UP
Wire Wire Line
	10925 2375 11075 2375
Text GLabel 10925 2475 0    50   Input ~ 0
P2_DOWN
Wire Wire Line
	11075 2475 10925 2475
Text GLabel 10925 2575 0    50   Input ~ 0
P2_LEFT
Wire Wire Line
	10925 2575 11075 2575
Text GLabel 10925 2675 0    50   Input ~ 0
P2_RIGHT
Wire Wire Line
	10925 2675 11075 2675
Text GLabel 12150 2675 2    50   Input ~ 0
P2_FIRE2
Wire Wire Line
	12150 2675 12000 2675
Text GLabel 10925 2775 0    50   Input ~ 0
P2_FIRE3
Wire Wire Line
	10925 2775 11075 2775
$Comp
L sw_push:SW_Push SW4
U 1 1 5FB7E128
P 1650 2125
F 0 "SW4" H 1550 2225 50  0000 C CNN
F 1 "UP" H 1650 2050 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 1650 2325 50  0001 C CNN
F 3 "" H 1650 2325 50  0001 C CNN
	1    1650 2125
	1    0    0    -1  
$EndComp
$Comp
L sw_push:SW_Push SW5
U 1 1 5FB7E12E
P 1650 2650
F 0 "SW5" H 1550 2750 50  0000 C CNN
F 1 "DOWN" H 1650 2575 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 1650 2850 50  0001 C CNN
F 3 "" H 1650 2850 50  0001 C CNN
	1    1650 2650
	1    0    0    -1  
$EndComp
$Comp
L sw_push:SW_Push SW6
U 1 1 5FB7E134
P 1650 3175
F 0 "SW6" H 1550 3275 50  0000 C CNN
F 1 "LEFT" H 1650 3100 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 1650 3375 50  0001 C CNN
F 3 "" H 1650 3375 50  0001 C CNN
	1    1650 3175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FB7E13A
P 1300 3775
F 0 "#PWR04" H 1300 3525 50  0001 C CNN
F 1 "GND" H 1305 3602 50  0000 C CNN
F 2 "" H 1300 3775 50  0001 C CNN
F 3 "" H 1300 3775 50  0001 C CNN
	1    1300 3775
	1    0    0    -1  
$EndComp
$Comp
L sw_push:SW_Push SW7
U 1 1 5FB81454
P 1650 3700
F 0 "SW7" H 1550 3800 50  0000 C CNN
F 1 "RIGHT" H 1650 3625 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 1650 3900 50  0001 C CNN
F 3 "" H 1650 3900 50  0001 C CNN
	1    1650 3700
	1    0    0    -1  
$EndComp
Text GLabel 1925 2125 2    50   Output ~ 0
P2_UP
Text GLabel 1925 3175 2    50   Output ~ 0
P2_LEFT
Text GLabel 1925 2650 2    50   Output ~ 0
P2_DOWN
Text GLabel 1925 3700 2    50   Output ~ 0
P2_RIGHT
Text GLabel 5450 3800 2    50   Output ~ 0
P2_FIRE2
Wire Wire Line
	3375 2425 3375 2350
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5FB8F17B
P 3375 4575
F 0 "JP1" H 3375 4686 50  0000 C CNN
F 1 "F2_POL" H 3375 4777 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 3375 4575 50  0001 C CNN
F 3 "~" H 3375 4575 50  0001 C CNN
	1    3375 4575
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5FB96763
P 3375 4250
F 0 "R1" H 3434 4296 50  0000 L CNN
F 1 "270" H 3434 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3375 4250 50  0001 C CNN
F 3 "~" H 3375 4250 50  0001 C CNN
	1    3375 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 4425 3375 4350
$Comp
L power:VCC #PWR06
U 1 1 5FB9C41D
P 3700 4500
F 0 "#PWR06" H 3700 4350 50  0001 C CNN
F 1 "VCC" H 3717 4673 50  0000 C CNN
F 2 "" H 3700 4500 50  0001 C CNN
F 3 "" H 3700 4500 50  0001 C CNN
	1    3700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4500 3700 4575
Wire Wire Line
	3700 4575 3625 4575
Wire Wire Line
	3125 4575 3050 4575
Wire Wire Line
	3050 4575 3050 4650
$Comp
L power:GND #PWR05
U 1 1 5FB9E421
P 3050 4650
F 0 "#PWR05" H 3050 4400 50  0001 C CNN
F 1 "GND" H 3055 4477 50  0000 C CNN
F 2 "" H 3050 4650 50  0001 C CNN
F 3 "" H 3050 4650 50  0001 C CNN
	1    3050 4650
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP3
U 1 1 5FBAA15C
P 5100 5600
F 0 "JP3" H 5100 5711 50  0000 C CNN
F 1 "FIRE3_SEL" H 5100 5802 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 5100 5600 50  0001 C CNN
F 3 "~" H 5100 5600 50  0001 C CNN
	1    5100 5600
	-1   0    0    1   
$EndComp
Text GLabel 5550 5850 2    50   Output ~ 0
P2_FIRE3
Text GLabel 5550 5600 2    50   Output ~ 0
P1_FIRE1
Wire Wire Line
	4850 5600 4775 5600
Wire Wire Line
	4775 5600 4775 5850
Wire Wire Line
	4775 5850 5550 5850
Wire Wire Line
	5350 5600 5550 5600
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 5FBD1161
P 3375 6575
F 0 "JP2" H 3375 6686 50  0000 C CNN
F 1 "F3_POL" H 3375 6777 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 3375 6575 50  0001 C CNN
F 3 "~" H 3375 6575 50  0001 C CNN
	1    3375 6575
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5FBD1167
P 3375 6250
F 0 "R2" H 3434 6296 50  0000 L CNN
F 1 "270" H 3434 6205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3375 6250 50  0001 C CNN
F 3 "~" H 3375 6250 50  0001 C CNN
	1    3375 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 6425 3375 6350
$Comp
L power:VCC #PWR08
U 1 1 5FBD1170
P 3700 6500
F 0 "#PWR08" H 3700 6350 50  0001 C CNN
F 1 "VCC" H 3717 6673 50  0000 C CNN
F 2 "" H 3700 6500 50  0001 C CNN
F 3 "" H 3700 6500 50  0001 C CNN
	1    3700 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6500 3700 6575
Wire Wire Line
	3700 6575 3625 6575
Wire Wire Line
	3125 6575 3050 6575
Wire Wire Line
	3050 6575 3050 6650
$Comp
L power:GND #PWR07
U 1 1 5FBD117A
P 3050 6650
F 0 "#PWR07" H 3050 6400 50  0001 C CNN
F 1 "GND" H 3055 6477 50  0000 C CNN
F 2 "" H 3050 6650 50  0001 C CNN
F 3 "" H 3050 6650 50  0001 C CNN
	1    3050 6650
	1    0    0    -1  
$EndComp
Text Notes 5525 4625 0    50   ~ 0
JP1 (FIRE2 polarity):\n1-2 C64 (POTX)\nN/C Other system\n\nWARNING: Read documentation for\ndetails, especially if not a C64.
Text Notes 5525 6650 0    50   ~ 0
JP2 (FIRE3 polarity):\n1-2 C64 (POTY)\nN/C Other system\n\nWARNING: Read documentation for\ndetails, especially if not a C64.
$Comp
L Switch:SW_Push SW8
U 1 1 5FBBF92E
P 12325 6250
F 0 "SW8" H 12325 6425 50  0000 C CNN
F 1 "RESET" H 12325 6175 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 12325 6450 50  0001 C CNN
F 3 "~" H 12325 6450 50  0001 C CNN
	1    12325 6250
	1    0    0    -1  
$EndComp
NoConn ~ 12050 6050
NoConn ~ 11100 6050
NoConn ~ 11100 6150
$Comp
L power:GND #PWR0101
U 1 1 5FBC3892
P 11675 7550
F 0 "#PWR0101" H 11675 7300 50  0001 C CNN
F 1 "GND" H 11680 7377 50  0000 C CNN
F 2 "" H 11675 7550 50  0001 C CNN
F 3 "" H 11675 7550 50  0001 C CNN
	1    11675 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11675 7550 11675 7475
Wire Wire Line
	11675 7475 11575 7475
Wire Wire Line
	11475 7475 11475 7400
Wire Wire Line
	11575 7400 11575 7475
Connection ~ 11575 7475
Wire Wire Line
	11575 7475 11475 7475
Wire Wire Line
	11675 7400 11675 7475
Connection ~ 11675 7475
$Comp
L power:VCC #PWR0102
U 1 1 5FBC8167
P 11575 5300
F 0 "#PWR0102" H 11575 5150 50  0001 C CNN
F 1 "VCC" H 11592 5473 50  0000 C CNN
F 2 "" H 11575 5300 50  0001 C CNN
F 3 "" H 11575 5300 50  0001 C CNN
	1    11575 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FBD56FF
P 13025 7225
F 0 "#PWR0103" H 13025 6975 50  0001 C CNN
F 1 "GND" H 13030 7052 50  0000 C CNN
F 2 "" H 13025 7225 50  0001 C CNN
F 3 "" H 13025 7225 50  0001 C CNN
	1    13025 7225
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FBD6E88
P 13025 6025
F 0 "D1" H 13025 5925 50  0000 C CNN
F 1 "PWR" H 13025 6125 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 13025 6025 50  0001 C CNN
F 3 "~" H 13025 6025 50  0001 C CNN
	1    13025 6025
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5FBD9406
P 13025 5700
F 0 "R3" V 12925 5650 50  0000 L CNN
F 1 "330" V 13125 5625 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 13025 5700 50  0001 C CNN
F 3 "~" H 13025 5700 50  0001 C CNN
	1    13025 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	11575 5375 11575 5300
$Comp
L Device:LED D2
U 1 1 5FBDF2F9
P 12800 7150
F 0 "D2" H 12800 7050 50  0000 C CNN
F 1 "SYS" H 12800 7250 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 12800 7150 50  0001 C CNN
F 3 "~" H 12800 7150 50  0001 C CNN
	1    12800 7150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5FBDF2FF
P 12475 7150
F 0 "R4" V 12375 7100 50  0000 L CNN
F 1 "330" V 12575 7075 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 12475 7150 50  0001 C CNN
F 3 "~" H 12475 7150 50  0001 C CNN
	1    12475 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	13025 7225 13025 7150
Wire Wire Line
	13025 7150 12950 7150
Wire Wire Line
	12375 7150 12050 7150
Wire Wire Line
	12575 7150 12650 7150
Connection ~ 13025 7150
Wire Wire Line
	13025 5800 13025 5875
Wire Wire Line
	12050 6250 12125 6250
Wire Wire Line
	12525 6250 13025 6250
Text GLabel 8725 6750 0    50   Output ~ 0
P2_FIRE1
Wire Wire Line
	12000 3375 12075 3375
Connection ~ 12075 3375
Wire Wire Line
	12075 3375 12075 3650
Wire Wire Line
	12000 2575 12075 2575
Wire Wire Line
	12075 2575 12075 3375
Wire Wire Line
	13400 2475 13400 2300
Text GLabel 12475 6750 2    50   Input ~ 0
P2_RIGHT
Wire Wire Line
	12200 6650 12050 6650
Text GLabel 12475 6650 2    50   Input ~ 0
P2_UP
Wire Wire Line
	12200 6950 12050 6950
Text GLabel 12475 6850 2    50   Input ~ 0
P2_DOWN
Text GLabel 12475 6950 2    50   Input ~ 0
P2_LEFT
Wire Wire Line
	12200 6850 12050 6850
Wire Wire Line
	12200 6750 12050 6750
Text Notes 6200 5925 0    50   ~ 0
JP3 (FIRE3 output select):\n1-2 C64 FIRE1 (port 1)\nN/C Other system\n\nRead documentation for\ndetails if not C64.
Text Label 11075 6450 2    50   ~ 0
FIRE1_IN
Text Label 11075 6550 2    50   ~ 0
FIRE2_IN
Text Label 11075 6650 2    50   ~ 0
FIRE3_IN
Wire Wire Line
	4875 2325 5075 2325
Text Notes 4950 2775 0    50   ~ 0
There will be an alternate Arduino firmware where FIRE2/FIRE3\ncontrols various forms of autofire (for single-button systems).\nFor the default FW or units without an Arduino Pro Micro \ninstalled, JP4/JP6 must be linked.
$Comp
L promicro:Arduino_Pro_Micro A1
U 1 1 5FBBE539
P 11575 6300
F 0 "A1" H 11300 6700 50  0000 C CNN
F 1 "Arduino_Pro_Micro" V 11575 6000 50  0000 C CNN
F 2 "arduino_pro_micro:Arduino_Pro_Micro" H 11525 6300 50  0001 C CNN
F 3 "~" H 11525 6300 50  0001 C CNN
	1    11575 6300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP5
U 1 1 60BF4B55
P 13025 5375
F 0 "JP5" H 13025 5486 50  0000 C CNN
F 1 "LED_SEL" H 13025 5577 50  0000 C CNN
F 2 "solder_bridge:select" H 13025 5375 50  0001 C CNN
F 3 "~" H 13025 5375 50  0001 C CNN
	1    13025 5375
	1    0    0    -1  
$EndComp
Wire Wire Line
	13025 6175 13025 6250
Wire Wire Line
	11575 5375 12775 5375
Wire Wire Line
	13350 7875 13350 5375
Wire Wire Line
	13350 5375 13275 5375
Wire Wire Line
	13025 5525 13025 5600
NoConn ~ 11100 7050
Text Notes 12425 5075 0    50   ~ 0
Linking 1-2 will light PWR LED\npermanently, 2-3 allows Arduino\nto take control of it instead.
Wire Notes Line
	13725 5550 13725 4800
Wire Notes Line
	12400 4800 12400 5550
Text Notes 11850 10300 0    50   ~ 0
WASD-style keypad for use with vintage computers, can also be used as a simple USB keyboard with\nArduino Pro Micro installed. Note that selecting the wrong polarity may not be a good thing \ndepending on which system you're connecting it to (not installing a jumper here may be the safe\nchoice).
$Comp
L Device:Jumper_NC_Small JP6
U 1 1 5FCB76F7
P 5175 3800
F 0 "JP6" H 5175 3975 50  0000 C CNN
F 1 "DEFAULT_FW" H 5175 3900 50  0000 C CNN
F 2 "solder_bridge:bridge_r" H 5175 3800 50  0001 C CNN
F 3 "~" H 5175 3800 50  0001 C CNN
	1    5175 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4875 3800 5075 3800
Wire Wire Line
	5275 3800 5450 3800
$Comp
L Diode:1N5819 D3
U 1 1 5FCFF93E
P 13175 2475
F 0 "D3" H 13175 2259 50  0000 C CNN
F 1 "1n5819" H 13175 2350 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 13175 2475 50  0001 C CNN
F 3 "~" H 13175 2475 50  0001 C CNN
	1    13175 2475
	-1   0    0    1   
$EndComp
Wire Wire Line
	12000 2375 12150 2375
Wire Wire Line
	13325 2475 13400 2475
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FD15FFC
P 15825 900
F 0 "#FLG0101" H 15825 975 50  0001 C CNN
F 1 "PWR_FLAG" H 15825 1073 50  0000 C CNN
F 2 "" H 15825 900 50  0001 C CNN
F 3 "~" H 15825 900 50  0001 C CNN
	1    15825 900 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5FD16D69
P 15475 900
F 0 "#PWR0104" H 15475 750 50  0001 C CNN
F 1 "VCC" H 15492 1073 50  0000 C CNN
F 2 "" H 15475 900 50  0001 C CNN
F 3 "" H 15475 900 50  0001 C CNN
	1    15475 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	15475 900  15475 975 
Wire Wire Line
	15475 975  15825 975 
Wire Wire Line
	15825 975  15825 900 
$Comp
L Device:D_Small D4
U 1 1 5FD49B7F
P 9175 6750
F 0 "D4" H 9175 6575 50  0000 C CNN
F 1 "1n4148" H 9175 6650 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 9175 6750 50  0001 C CNN
F 3 "~" V 9175 6750 50  0001 C CNN
	1    9175 6750
	-1   0    0    1   
$EndComp
Text Label 11075 6750 2    50   ~ 0
FIRE1_OUT
Wire Wire Line
	5275 2325 5450 2325
Text GLabel 5450 2325 2    50   Output ~ 0
P2_FIRE1
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 5FCF52E4
P 5175 2325
F 0 "JP4" H 5175 2500 50  0000 C CNN
F 1 "DEFAULT_FW" H 5175 2425 50  0000 C CNN
F 2 "solder_bridge:bridge" H 5175 2325 50  0001 C CNN
F 3 "~" H 5175 2325 50  0001 C CNN
	1    5175 2325
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5FDC0E14
P 8900 6750
F 0 "R5" V 8725 6700 50  0000 L CNN
F 1 "10k" V 8800 6675 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8900 6750 50  0001 C CNN
F 3 "~" H 8900 6750 50  0001 C CNN
	1    8900 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 6750 9075 6750
Wire Wire Line
	8725 6750 8800 6750
$Comp
L c64_idc:C64_IDC_PORT2 J2
U 1 1 5FB748C4
P 11525 2575
F 0 "J2" H 11575 2992 50  0000 C CNN
F 1 "Port_2" H 11575 2901 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 11525 2575 50  0001 C CNN
F 3 "~" H 11525 2575 50  0001 C CNN
	1    11525 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D11
U 1 1 5FF8F495
P 5700 8850
F 0 "D11" H 5700 8950 50  0000 C CNN
F 1 "LED" H 5700 8925 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" H 5700 8850 50  0001 C CNN
F 3 "~" H 5700 8850 50  0001 C CNN
	1    5700 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 9000 3900 9075
Wire Wire Line
	3900 9350 3900 9275
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5FF9EE9A
P 6550 9625
F 0 "Q1" H 6740 9671 50  0000 L CNN
F 1 "2N3904" H 6740 9580 50  0000 L CNN
F 2 "2n3904:2N3904_TO-92_Horizontal_FlatSideDown" H 6750 9550 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 6550 9625 50  0001 L CNN
	1    6550 9625
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FF9F594
P 6450 9900
F 0 "#PWR0105" H 6450 9650 50  0001 C CNN
F 1 "GND" H 6455 9727 50  0000 C CNN
F 2 "" H 6450 9900 50  0001 C CNN
F 3 "" H 6450 9900 50  0001 C CNN
	1    6450 9900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 9425 6450 9350
$Comp
L Device:LED D10
U 1 1 5FFAE4D2
P 5400 8850
F 0 "D10" H 5400 8950 50  0000 C CNN
F 1 "LED" H 5400 8925 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" H 5400 8850 50  0001 C CNN
F 3 "~" H 5400 8850 50  0001 C CNN
	1    5400 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 9000 4200 9075
$Comp
L Device:LED D9
U 1 1 5FFBA06C
P 5100 8850
F 0 "D9" H 5100 8950 50  0000 C CNN
F 1 "LED" H 5100 8925 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" H 5100 8850 50  0001 C CNN
F 3 "~" H 5100 8850 50  0001 C CNN
	1    5100 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 9000 4500 9075
$Comp
L Device:LED D8
U 1 1 5FFC064C
P 4800 8850
F 0 "D8" H 4800 8950 50  0000 C CNN
F 1 "LED" H 4800 8925 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" H 4800 8850 50  0001 C CNN
F 3 "~" H 4800 8850 50  0001 C CNN
	1    4800 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 9000 4800 9075
$Comp
L Device:LED D7
U 1 1 5FFC0659
P 4500 8850
F 0 "D7" H 4500 8950 50  0000 C CNN
F 1 "LED" H 4500 8925 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" H 4500 8850 50  0001 C CNN
F 3 "~" H 4500 8850 50  0001 C CNN
	1    4500 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 9000 5100 9075
$Comp
L Device:LED D6
U 1 1 5FFC0666
P 4200 8850
F 0 "D6" H 4200 8950 50  0000 C CNN
F 1 "LED" H 4200 8925 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" H 4200 8850 50  0001 C CNN
F 3 "~" H 4200 8850 50  0001 C CNN
	1    4200 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 9000 5400 9075
$Comp
L Device:LED D5
U 1 1 5FFC4C4C
P 3900 8850
F 0 "D5" H 3900 8950 50  0000 C CNN
F 1 "LED" H 3900 8925 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" H 3900 8850 50  0001 C CNN
F 3 "~" H 3900 8850 50  0001 C CNN
	1    3900 8850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5FFC4C52
P 3900 9175
F 0 "R6" V 3800 9125 50  0000 L CNN
F 1 "330" V 4000 9100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3900 9175 50  0001 C CNN
F 3 "~" H 3900 9175 50  0001 C CNN
	1    3900 9175
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 9000 5700 9075
Wire Wire Line
	5700 9275 5700 9350
Wire Wire Line
	5700 9350 5400 9350
Wire Wire Line
	5400 9275 5400 9350
Connection ~ 5400 9350
Wire Wire Line
	5400 9350 5100 9350
Wire Wire Line
	5100 9275 5100 9350
Connection ~ 5100 9350
Wire Wire Line
	5100 9350 4800 9350
Wire Wire Line
	4800 9275 4800 9350
Connection ~ 4800 9350
Wire Wire Line
	4800 9350 4500 9350
Wire Wire Line
	4500 9275 4500 9350
Connection ~ 4500 9350
Wire Wire Line
	4500 9350 4200 9350
Wire Wire Line
	4200 9275 4200 9350
Connection ~ 4200 9350
Wire Wire Line
	4200 9350 3900 9350
Connection ~ 5700 9350
Wire Wire Line
	5700 8700 5700 8625
Wire Wire Line
	3900 8625 3900 8550
Wire Wire Line
	5700 8625 5400 8625
Wire Wire Line
	5400 8625 5400 8700
Wire Wire Line
	5400 8625 5100 8625
Wire Wire Line
	5100 8625 5100 8700
Connection ~ 5400 8625
Wire Wire Line
	5100 8625 4800 8625
Wire Wire Line
	4800 8625 4800 8700
Connection ~ 5100 8625
Wire Wire Line
	4800 8625 4500 8625
Wire Wire Line
	4500 8625 4500 8700
Connection ~ 4800 8625
Wire Wire Line
	4500 8625 4200 8625
Wire Wire Line
	4200 8625 4200 8700
Connection ~ 4500 8625
Wire Wire Line
	4200 8625 3900 8625
Wire Wire Line
	3900 8625 3900 8700
Connection ~ 4200 8625
$Comp
L power:VCC #PWR0106
U 1 1 60023832
P 3900 8550
F 0 "#PWR0106" H 3900 8400 50  0001 C CNN
F 1 "VCC" H 3915 8723 50  0000 C CNN
F 2 "" H 3900 8550 50  0001 C CNN
F 3 "" H 3900 8550 50  0001 C CNN
	1    3900 8550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 6002E08F
P 6925 9625
F 0 "R13" V 6825 9550 50  0000 L CNN
F 1 "1k" V 7000 9575 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6925 9625 50  0001 C CNN
F 3 "~" H 6925 9625 50  0001 C CNN
	1    6925 9625
	0    -1   1    0   
$EndComp
Wire Wire Line
	6825 9625 6750 9625
Wire Wire Line
	13025 6250 13025 7150
Connection ~ 13025 6250
NoConn ~ 12050 7050
Text GLabel 3550 4050 2    50   Output ~ 0
FIRE2_POL
Text GLabel 3550 6050 2    50   Output ~ 0
FIRE3_POL
Wire Wire Line
	3550 6050 3375 6050
Wire Wire Line
	3550 4050 3375 4050
Connection ~ 3375 4050
Wire Wire Line
	3375 4050 3375 4150
Text GLabel 12200 6450 2    50   Input ~ 0
FIRE2_POL
Text GLabel 12200 6550 2    50   Input ~ 0
FIRE3_POL
Wire Wire Line
	12050 6450 12200 6450
Wire Wire Line
	12050 6550 12200 6550
$Comp
L Device:R_Small R7
U 1 1 6014570E
P 4200 9175
F 0 "R7" V 4100 9125 50  0000 L CNN
F 1 "330" V 4300 9100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4200 9175 50  0001 C CNN
F 3 "~" H 4200 9175 50  0001 C CNN
	1    4200 9175
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 6014BD41
P 4500 9175
F 0 "R8" V 4400 9125 50  0000 L CNN
F 1 "330" V 4600 9100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4500 9175 50  0001 C CNN
F 3 "~" H 4500 9175 50  0001 C CNN
	1    4500 9175
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 6014BD47
P 4800 9175
F 0 "R9" V 4700 9125 50  0000 L CNN
F 1 "330" V 4900 9100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4800 9175 50  0001 C CNN
F 3 "~" H 4800 9175 50  0001 C CNN
	1    4800 9175
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 60152B72
P 5100 9175
F 0 "R10" V 5000 9125 50  0000 L CNN
F 1 "330" V 5200 9100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5100 9175 50  0001 C CNN
F 3 "~" H 5100 9175 50  0001 C CNN
	1    5100 9175
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 60152B78
P 5400 9175
F 0 "R11" V 5300 9125 50  0000 L CNN
F 1 "330" V 5500 9100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5400 9175 50  0001 C CNN
F 3 "~" H 5400 9175 50  0001 C CNN
	1    5400 9175
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 60152B7E
P 5700 9175
F 0 "R12" V 5600 9125 50  0000 L CNN
F 1 "330" V 5800 9100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5700 9175 50  0001 C CNN
F 3 "~" H 5700 9175 50  0001 C CNN
	1    5700 9175
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 9900 6450 9825
Text Notes 3475 9925 0    50   ~ 0
These components adds the underglow LEDs to the key\nswitches. Footprints should match 2x3x4mm LEDs.\nStandard 3mm should also work with Gateron switches.
Wire Wire Line
	5100 5450 5100 5375
Wire Notes Line
	4600 5425 7525 5425
Wire Notes Line
	7525 5425 7525 5925
Wire Notes Line
	7525 5925 4600 5925
Wire Notes Line
	4600 5925 4600 5425
$Comp
L Device:Jumper_NC_Small JP7
U 1 1 603A8E18
P 6175 9350
F 0 "JP7" H 6175 9525 50  0000 C CNN
F 1 "KEY_LED" H 6175 9450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 6175 9350 50  0001 C CNN
F 3 "~" H 6175 9350 50  0001 C CNN
	1    6175 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 9350 6450 9350
Text GLabel 8725 6950 0    50   Output ~ 0
P2_FIRE2
$Comp
L Device:R_Small R14
U 1 1 600C6BE8
P 8900 6950
F 0 "R14" V 9000 6875 50  0000 L CNN
F 1 "10k" V 9075 6875 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8900 6950 50  0001 C CNN
F 3 "~" H 8900 6950 50  0001 C CNN
	1    8900 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	8725 6950 8800 6950
Text Label 11075 6950 2    50   ~ 0
FIRE2_OUT
Text Label 12075 7150 0    50   ~ 0
SYS
Text Label 11075 7150 2    50   ~ 0
PWR
Text Label 11075 6850 2    50   ~ 0
UNDERGLOW
$Comp
L promicro:VCC_EN JP8
U 1 1 601EE585
P 12850 2475
F 0 "JP8" H 12850 2650 50  0000 C CNN
F 1 "VCC_EN" H 12850 2575 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12850 2475 50  0001 C CNN
F 3 "~" H 12850 2475 50  0001 C CNN
	1    12850 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 2475 12750 2475
$Comp
L Device:Jumper_NC_Small JP9
U 1 1 6021387A
P 11575 5575
F 0 "JP9" H 11575 5750 50  0000 C CNN
F 1 "ARD_EN" H 11575 5675 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 11575 5575 50  0001 C CNN
F 3 "~" H 11575 5575 50  0001 C CNN
	1    11575 5575
	0    1    -1   0   
$EndComp
Wire Wire Line
	11575 5375 11575 5475
Connection ~ 11575 5375
Wire Wire Line
	11575 5675 11575 5800
$Comp
L c64_idc:C64_IDC_PORT1 J1
U 1 1 5FB76154
P 11525 3375
F 0 "J1" H 11575 3792 50  0000 C CNN
F 1 "Port_1" H 11575 3701 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 11525 3375 50  0001 C CNN
F 3 "~" H 11525 3375 50  0001 C CNN
	1    11525 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	13400 2775 13400 2475
Connection ~ 13400 2475
Wire Wire Line
	13400 2775 13400 3575
Wire Wire Line
	13400 3575 12000 3575
Connection ~ 13400 2775
Wire Wire Line
	10750 7875 10750 7150
Wire Wire Line
	10750 7150 11100 7150
Wire Wire Line
	10750 7875 13350 7875
$Comp
L Device:R_Small R18
U 1 1 603170B6
P 12300 6650
F 0 "R18" V 12250 6400 50  0000 L CNN
F 1 "10k" V 12300 6600 31  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 12300 6650 50  0001 C CNN
F 3 "~" H 12300 6650 50  0001 C CNN
	1    12300 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	12400 6650 12475 6650
$Comp
L Device:R_Small R19
U 1 1 6034215B
P 12300 6750
F 0 "R19" V 12250 6500 50  0000 L CNN
F 1 "10k" V 12300 6700 31  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 12300 6750 50  0001 C CNN
F 3 "~" H 12300 6750 50  0001 C CNN
	1    12300 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	12400 6750 12475 6750
$Comp
L Device:R_Small R20
U 1 1 603493E3
P 12300 6850
F 0 "R20" V 12250 6600 50  0000 L CNN
F 1 "10k" V 12300 6800 31  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 12300 6850 50  0001 C CNN
F 3 "~" H 12300 6850 50  0001 C CNN
	1    12300 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	12400 6850 12475 6850
$Comp
L Device:R_Small R21
U 1 1 60350811
P 12300 6950
F 0 "R21" V 12250 6700 50  0000 L CNN
F 1 "10k" V 12300 6900 31  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 12300 6950 50  0001 C CNN
F 3 "~" H 12300 6950 50  0001 C CNN
	1    12300 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	12400 6950 12475 6950
$Comp
L Device:R_Small R17
U 1 1 60386764
P 9575 6125
F 0 "R17" V 9625 5875 50  0000 L CNN
F 1 "10k" V 9575 6075 31  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9575 6125 50  0001 C CNN
F 3 "~" H 9575 6125 50  0001 C CNN
	1    9575 6125
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R16
U 1 1 6038DB1E
P 9475 6225
F 0 "R16" V 9525 5975 50  0000 L CNN
F 1 "10k" V 9475 6175 31  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9475 6225 50  0001 C CNN
F 3 "~" H 9475 6225 50  0001 C CNN
	1    9475 6225
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R15
U 1 1 60394ED2
P 9375 6325
F 0 "R15" V 9425 6075 50  0000 L CNN
F 1 "10k" V 9375 6275 31  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9375 6325 50  0001 C CNN
F 3 "~" H 9375 6325 50  0001 C CNN
	1    9375 6325
	-1   0    0    1   
$EndComp
Wire Wire Line
	9375 6225 9375 5375
Wire Wire Line
	9575 6225 9575 6450
Wire Wire Line
	9475 6325 9475 6550
Wire Wire Line
	9375 6425 9375 6650
Wire Notes Line
	13725 4800 12400 4800
Wire Notes Line
	12400 5550 13725 5550
$Comp
L sw_push:SW_Push SW9
U 1 1 61F8916C
P 3650 2350
F 0 "SW9" H 3550 2450 50  0000 C CNN
F 1 "P1_FIRE1" H 3650 2300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx31-2LFS" H 3650 2550 50  0001 C CNN
F 3 "" H 3650 2550 50  0001 C CNN
	1    3650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 2350 3375 2100
Wire Wire Line
	3375 2100 3450 2100
Connection ~ 3375 2350
Text GLabel 3925 2350 2    50   Output ~ 0
P1_FIRE1
Wire Wire Line
	3375 3575 3450 3575
$Comp
L sw_push:SW_Push SW10
U 1 1 6207B64E
P 3650 3825
F 0 "SW10" H 3550 3925 50  0000 C CNN
F 1 "P1_FIRE2" H 3650 3775 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx31-2LFS" H 3650 4025 50  0001 C CNN
F 3 "" H 3650 4025 50  0001 C CNN
	1    3650 3825
	1    0    0    -1  
$EndComp
Text GLabel 3925 3825 2    50   Output ~ 0
P1_FIRE2
Wire Wire Line
	3450 3825 3375 3825
Wire Wire Line
	3375 3825 3375 4050
Wire Wire Line
	3375 3825 3375 3575
Connection ~ 3375 3825
Wire Wire Line
	9375 6850 9375 9625
Wire Notes Line
	6975 3950 6975 4900
Wire Notes Line
	6975 4900 2900 4900
Wire Notes Line
	2900 3950 2900 4900
Wire Notes Line
	6975 3950 2900 3950
Wire Wire Line
	3375 5375 3450 5375
Wire Wire Line
	3375 5375 3375 5625
$Comp
L sw_push:SW_Push SW11
U 1 1 62170BFE
P 3650 5625
F 0 "SW11" H 3550 5725 50  0000 C CNN
F 1 "P1_FIRE3" H 3650 5575 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx31-2LFS" H 3650 5825 50  0001 C CNN
F 3 "" H 3650 5825 50  0001 C CNN
	1    3650 5625
	1    0    0    -1  
$EndComp
Text GLabel 3925 5625 2    50   Output ~ 0
P1_FIRE3
Wire Wire Line
	3450 5625 3375 5625
Connection ~ 3375 6050
Wire Wire Line
	3375 6050 3375 6150
Wire Notes Line
	6975 6875 6975 5950
Wire Notes Line
	2900 6900 6975 6900
Wire Wire Line
	3375 5625 3375 6050
Connection ~ 3375 5625
Wire Notes Line
	2900 5950 2900 6900
Wire Notes Line
	2900 5950 6975 5950
Wire Wire Line
	3925 5625 3850 5625
Wire Wire Line
	3850 3825 3925 3825
Wire Wire Line
	3850 2350 3925 2350
Text GLabel 12150 3475 2    50   Input ~ 0
P1_FIRE2
Wire Wire Line
	12150 3475 12000 3475
Text GLabel 10925 3575 0    50   Input ~ 0
P1_FIRE3
Wire Wire Line
	10925 3575 11075 3575
Wire Notes Line style solid
	7575 6950 2850 6950
Wire Notes Line style solid
	2850 6950 2850 5200
Wire Notes Line style solid
	2850 5200 7575 5200
Wire Notes Line style solid
	7575 6950 7575 5200
Wire Wire Line
	3850 3575 4875 3575
Wire Wire Line
	4875 3575 4875 3800
Wire Notes Line style solid
	2850 4950 2850 3200
Wire Notes Line style solid
	2850 3200 7575 3200
Wire Notes Line style solid
	2850 4950 7575 4950
Wire Notes Line style solid
	7575 4950 7575 3200
Wire Wire Line
	3850 2100 4875 2100
Wire Wire Line
	4875 2100 4875 2325
Wire Notes Line style solid
	2850 2950 7575 2950
Wire Notes Line style solid
	7575 2950 7575 1750
Wire Notes Line style solid
	7575 1750 2850 1750
Wire Notes Line style solid
	2850 1750 2850 2950
Text Notes 2850 5175 0    98   ~ 0
FIRE 3:
Wire Wire Line
	9475 3575 9475 6125
Wire Wire Line
	9575 2100 9575 6025
Text Notes 2850 3175 0    98   ~ 0
FIRE 2:
Text Notes 2850 1725 0    98   ~ 0
FIRE 1:
Wire Notes Line style solid rgb(255, 0, 0)
	4950 2500 4875 2500
Wire Notes Line style solid rgb(255, 0, 0)
	4875 2350 4875 3525
Wire Notes Line style solid
	2850 8275 2850 10275
Wire Notes Line style solid
	2850 10275 7575 10275
Wire Notes Line style solid
	7575 10275 7575 8275
Wire Notes Line style solid
	7575 8275 2850 8275
Text Notes 2850 8250 0    98   ~ 0
Underglow LEDs:
Wire Wire Line
	5700 9350 6075 9350
Connection ~ 3900 8625
Wire Notes Line style solid
	2600 1750 2600 6950
Wire Notes Line style solid
	2600 6950 825  6950
Wire Notes Line style solid
	825  6950 825  1750
Wire Notes Line style solid
	825  1750 2600 1750
Wire Wire Line
	1850 2125 1925 2125
Connection ~ 1300 2650
Wire Wire Line
	1300 2125 1300 2650
Wire Wire Line
	1300 2650 1300 3175
Wire Wire Line
	1300 2125 1450 2125
Wire Wire Line
	1300 2650 1450 2650
Wire Wire Line
	1925 2650 1850 2650
Wire Wire Line
	1300 3175 1450 3175
Connection ~ 1300 3175
Wire Wire Line
	1300 3175 1300 3700
Wire Wire Line
	1300 3700 1450 3700
Wire Wire Line
	1925 3700 1850 3700
Wire Wire Line
	1850 3175 1925 3175
Text Notes 825  1725 0    98   ~ 0
DIRECTIONS:
Wire Wire Line
	4875 2100 9575 2100
Connection ~ 4875 2100
Wire Wire Line
	4875 3575 9475 3575
Connection ~ 4875 3575
Wire Wire Line
	7025 9625 9375 9625
Wire Wire Line
	5100 5375 9375 5375
Wire Wire Line
	3850 5375 5100 5375
Connection ~ 5100 5375
Wire Wire Line
	9575 6450 11100 6450
Wire Wire Line
	9475 6550 11100 6550
Wire Wire Line
	9375 6650 11100 6650
Wire Wire Line
	9275 6750 11100 6750
Wire Wire Line
	9375 6850 11100 6850
Wire Wire Line
	9000 6950 11100 6950
Wire Notes Line style solid
	10050 1750 15775 1750
Wire Notes Line style solid
	15775 1750 15775 4150
Wire Notes Line style solid
	15775 4150 10050 4150
Wire Notes Line style solid
	10050 4150 10050 1750
Text Notes 10050 1725 0    98   ~ 0
OUTPUT:
Wire Wire Line
	12000 2775 13400 2775
Wire Wire Line
	12950 2475 13025 2475
Text Notes 13600 3075 0    50   ~ 0
As is common, but definitely not always, on the\nCommodore 64, port 2 is the main controller port.\nPort 1 is simply used for additional fire buttons, at\nthe moment it does not include direction signals\n(this is by design).\n\nPay particular attention to the polarity settings\nfor the switches, these need to be set correctly\nin order to avoid damaging the system (this will\naffect both ports). An adapter designed for a\nspecific system will usually denote this setting.
Text GLabel 10925 3175 0    50   Input ~ 0
P1_FIRE4
Wire Wire Line
	10925 3175 11075 3175
Text GLabel 1925 5125 2    50   Output ~ 0
P1_FIRE4
$Comp
L sw_push:SW_Push SW12
U 1 1 62D9D03F
P 1650 5125
F 0 "SW12" H 1550 5225 50  0000 C CNN
F 1 "P1_FIRE4" H 1650 5050 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx31-2LFS" H 1650 5325 50  0001 C CNN
F 3 "" H 1650 5325 50  0001 C CNN
	1    1650 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5125 1925 5125
Wire Wire Line
	1450 5125 1300 5125
Wire Wire Line
	1300 3775 1300 3700
Connection ~ 1300 3700
$Comp
L power:GND #PWR0107
U 1 1 62DF21A8
P 1300 5200
F 0 "#PWR0107" H 1300 4950 50  0001 C CNN
F 1 "GND" H 1305 5027 50  0000 C CNN
F 2 "" H 1300 5200 50  0001 C CNN
F 3 "" H 1300 5200 50  0001 C CNN
	1    1300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5200 1300 5125
$EndSCHEMATC
