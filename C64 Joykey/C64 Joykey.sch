EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "C64 JoyKEY"
Date ""
Rev "B"
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
L sw_keyboard:SW_Keyboard SW1
U 1 1 5FB706DC
P 2950 1225
F 0 "SW1" V 2644 1227 50  0000 C CNN
F 1 "FIRE1" V 2735 1227 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 2950 1425 50  0001 C CNN
F 3 "" H 2950 1425 50  0001 C CNN
	1    2950 1225
	0    1    1    0   
$EndComp
$Comp
L sw_keyboard:SW_Keyboard SW2
U 1 1 5FB7132D
P 2950 2400
F 0 "SW2" V 2644 2402 50  0000 C CNN
F 1 "FIRE2" V 2735 2402 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 2950 2600 50  0001 C CNN
F 3 "" H 2950 2600 50  0001 C CNN
	1    2950 2400
	0    1    1    0   
$EndComp
$Comp
L sw_keyboard:SW_Keyboard SW3
U 1 1 5FB71722
P 2950 4050
F 0 "SW3" V 2644 4052 50  0000 C CNN
F 1 "FIRE3" V 2735 4052 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 2950 4250 50  0001 C CNN
F 3 "" H 2950 4250 50  0001 C CNN
	1    2950 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FB73080
P 2775 1425
F 0 "#PWR01" H 2775 1175 50  0001 C CNN
F 1 "GND" H 2780 1252 50  0000 C CNN
F 2 "" H 2775 1425 50  0001 C CNN
F 3 "" H 2775 1425 50  0001 C CNN
	1    2775 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 2525 2850 2525
Wire Wire Line
	2775 1350 2850 1350
$Comp
L c64_idc:c64_idc J2
U 1 1 5FB748C4
P 8350 1125
F 0 "J2" H 8400 1542 50  0000 C CNN
F 1 "Port_2" H 8400 1451 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 8350 1125 50  0001 C CNN
F 3 "~" H 8350 1125 50  0001 C CNN
	1    8350 1125
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Top_Bottom J1
U 1 1 5FB76154
P 8350 1925
F 0 "J1" H 8400 2342 50  0000 C CNN
F 1 "Port_1" H 8400 2251 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 8350 1925 50  0001 C CNN
F 3 "~" H 8350 1925 50  0001 C CNN
	1    8350 1925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FB76300
P 8725 2200
F 0 "#PWR03" H 8725 1950 50  0001 C CNN
F 1 "GND" H 8730 2027 50  0000 C CNN
F 2 "" H 8725 2200 50  0001 C CNN
F 3 "" H 8725 2200 50  0001 C CNN
	1    8725 2200
	1    0    0    -1  
$EndComp
NoConn ~ 8650 1325
NoConn ~ 8650 2125
Wire Wire Line
	8650 1725 8800 1725
Text GLabel 8800 925  2    50   Input ~ 0
P2_FIRE1
Text GLabel 8800 1725 2    50   Input ~ 0
P1_FIRE1
$Comp
L power:VCC #PWR02
U 1 1 5FB781A5
P 9650 850
F 0 "#PWR02" H 9650 700 50  0001 C CNN
F 1 "VCC" H 9667 1023 50  0000 C CNN
F 2 "" H 9650 850 50  0001 C CNN
F 3 "" H 9650 850 50  0001 C CNN
	1    9650 850 
	1    0    0    -1  
$EndComp
NoConn ~ 8150 1725
NoConn ~ 8150 1825
NoConn ~ 8150 1925
NoConn ~ 8150 2025
NoConn ~ 8150 2125
NoConn ~ 8650 1825
Text GLabel 8000 925  0    50   Input ~ 0
P2_UP
Wire Wire Line
	8000 925  8150 925 
Text GLabel 8000 1025 0    50   Input ~ 0
P2_DOWN
Wire Wire Line
	8150 1025 8000 1025
Text GLabel 8000 1125 0    50   Input ~ 0
P2_LEFT
Wire Wire Line
	8000 1125 8150 1125
Text GLabel 8000 1225 0    50   Input ~ 0
P2_RIGHT
Wire Wire Line
	8000 1225 8150 1225
Text GLabel 8800 1225 2    50   Input ~ 0
P2_FIRE2
Wire Wire Line
	8800 1225 8650 1225
Text GLabel 8000 1325 0    50   Input ~ 0
P2_FIRE3
Wire Wire Line
	8000 1325 8150 1325
$Comp
L sw_keyboard:SW_Keyboard SW4
U 1 1 5FB7E128
P 950 2825
F 0 "SW4" V 644 2827 50  0000 C CNN
F 1 "UP" V 735 2827 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 950 3025 50  0001 C CNN
F 3 "" H 950 3025 50  0001 C CNN
	1    950  2825
	0    1    1    0   
$EndComp
$Comp
L sw_keyboard:SW_Keyboard SW5
U 1 1 5FB7E12E
P 950 3400
F 0 "SW5" V 644 3402 50  0000 C CNN
F 1 "DOWN" V 735 3402 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 950 3600 50  0001 C CNN
F 3 "" H 950 3600 50  0001 C CNN
	1    950  3400
	0    1    1    0   
$EndComp
$Comp
L sw_keyboard:SW_Keyboard SW6
U 1 1 5FB7E134
P 950 3975
F 0 "SW6" V 644 3977 50  0000 C CNN
F 1 "LEFT" V 735 3977 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 950 4175 50  0001 C CNN
F 3 "" H 950 4175 50  0001 C CNN
	1    950  3975
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FB7E13A
P 775 4750
F 0 "#PWR04" H 775 4500 50  0001 C CNN
F 1 "GND" H 780 4577 50  0000 C CNN
F 2 "" H 775 4750 50  0001 C CNN
F 3 "" H 775 4750 50  0001 C CNN
	1    775  4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	775  4100 850  4100
Wire Wire Line
	775  4100 775  3525
Wire Wire Line
	775  3525 850  3525
Wire Wire Line
	775  3525 775  2950
Wire Wire Line
	775  2950 850  2950
Connection ~ 775  3525
$Comp
L sw_keyboard:SW_Keyboard SW7
U 1 1 5FB81454
P 950 4550
F 0 "SW7" V 644 4552 50  0000 C CNN
F 1 "RIGHT" V 735 4552 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_PCB" H 950 4750 50  0001 C CNN
F 3 "" H 950 4750 50  0001 C CNN
	1    950  4550
	0    1    1    0   
$EndComp
Wire Wire Line
	775  4675 850  4675
Wire Wire Line
	775  4675 775  4100
Wire Wire Line
	775  4675 775  4750
Connection ~ 775  4675
Text GLabel 1275 2700 2    50   Output ~ 0
P2_UP
Text GLabel 1275 3850 2    50   Output ~ 0
P2_LEFT
Text GLabel 1275 3275 2    50   Output ~ 0
P2_DOWN
Text GLabel 1275 4425 2    50   Output ~ 0
P2_RIGHT
Connection ~ 775  4100
Text GLabel 4100 2150 2    50   Output ~ 0
P2_FIRE2
Wire Wire Line
	2775 1425 2775 1350
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5FB8F17B
P 2775 3175
F 0 "JP1" H 2775 3286 50  0000 C CNN
F 1 "F2_POL" H 2775 3377 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 2775 3175 50  0001 C CNN
F 3 "~" H 2775 3175 50  0001 C CNN
	1    2775 3175
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5FB96763
P 2775 2850
F 0 "R1" H 2834 2896 50  0000 L CNN
F 1 "270" H 2834 2805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2775 2850 50  0001 C CNN
F 3 "~" H 2775 2850 50  0001 C CNN
	1    2775 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 3025 2775 2950
Wire Wire Line
	2775 2525 2775 2650
$Comp
L power:VCC #PWR06
U 1 1 5FB9C41D
P 3100 3100
F 0 "#PWR06" H 3100 2950 50  0001 C CNN
F 1 "VCC" H 3117 3273 50  0000 C CNN
F 2 "" H 3100 3100 50  0001 C CNN
F 3 "" H 3100 3100 50  0001 C CNN
	1    3100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3100 3100 3175
Wire Wire Line
	3100 3175 3025 3175
Wire Wire Line
	2525 3175 2450 3175
Wire Wire Line
	2450 3175 2450 3250
$Comp
L power:GND #PWR05
U 1 1 5FB9E421
P 2450 3250
F 0 "#PWR05" H 2450 3000 50  0001 C CNN
F 1 "GND" H 2455 3077 50  0000 C CNN
F 2 "" H 2450 3250 50  0001 C CNN
F 3 "" H 2450 3250 50  0001 C CNN
	1    2450 3250
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP3
U 1 1 5FBAA15C
P 3575 4150
F 0 "JP3" H 3575 4261 50  0000 C CNN
F 1 "FIRE3_SEL" H 3575 4352 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 3575 4150 50  0001 C CNN
F 3 "~" H 3575 4150 50  0001 C CNN
	1    3575 4150
	-1   0    0    1   
$EndComp
Text GLabel 4025 4400 2    50   Output ~ 0
P2_FIRE3
Text GLabel 4025 4150 2    50   Output ~ 0
P1_FIRE1
Wire Wire Line
	3575 3925 3575 4000
Wire Wire Line
	3325 4150 3250 4150
Wire Wire Line
	3250 4150 3250 4400
Wire Wire Line
	3250 4400 4025 4400
Wire Wire Line
	3825 4150 4025 4150
Wire Wire Line
	2775 4175 2850 4175
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 5FBD1161
P 2775 5075
F 0 "JP2" H 2775 5186 50  0000 C CNN
F 1 "F3_POL" H 2775 5277 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 2775 5075 50  0001 C CNN
F 3 "~" H 2775 5075 50  0001 C CNN
	1    2775 5075
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5FBD1167
P 2775 4750
F 0 "R2" H 2834 4796 50  0000 L CNN
F 1 "270" H 2834 4705 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2775 4750 50  0001 C CNN
F 3 "~" H 2775 4750 50  0001 C CNN
	1    2775 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 4925 2775 4850
$Comp
L power:VCC #PWR08
U 1 1 5FBD1170
P 3100 5000
F 0 "#PWR08" H 3100 4850 50  0001 C CNN
F 1 "VCC" H 3117 5173 50  0000 C CNN
F 2 "" H 3100 5000 50  0001 C CNN
F 3 "" H 3100 5000 50  0001 C CNN
	1    3100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5000 3100 5075
Wire Wire Line
	3100 5075 3025 5075
Wire Wire Line
	2525 5075 2450 5075
Wire Wire Line
	2450 5075 2450 5150
$Comp
L power:GND #PWR07
U 1 1 5FBD117A
P 2450 5150
F 0 "#PWR07" H 2450 4900 50  0001 C CNN
F 1 "GND" H 2455 4977 50  0000 C CNN
F 2 "" H 2450 5150 50  0001 C CNN
F 3 "" H 2450 5150 50  0001 C CNN
	1    2450 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3925 3575 3925
Text Notes 3275 3175 0    50   ~ 0
JP1 (fire2 polarity):\n1-2 C64 (POTX)\n2-3 Amiga (POTY)\n     SMS\n
Text Notes 3275 5175 0    50   ~ 0
JP2 (fire3 polarity):\n1-2 C64 (POTY)\n2-3 Amiga (POTX)\nN/C SMS\n
Wire Wire Line
	1050 2700 1275 2700
Wire Wire Line
	1050 3275 1275 3275
Wire Wire Line
	1050 3850 1275 3850
Wire Wire Line
	1050 4425 1275 4425
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
P 8400 3850
F 0 "#PWR0102" H 8400 3700 50  0001 C CNN
F 1 "VCC" H 8417 4023 50  0000 C CNN
F 2 "" H 8400 3850 50  0001 C CNN
F 3 "" H 8400 3850 50  0001 C CNN
	1    8400 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FBD56FF
P 9850 5275
F 0 "#PWR0103" H 9850 5025 50  0001 C CNN
F 1 "GND" H 9855 5102 50  0000 C CNN
F 2 "" H 9850 5275 50  0001 C CNN
F 3 "" H 9850 5275 50  0001 C CNN
	1    9850 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FBD6E88
P 9850 4575
F 0 "D1" H 9850 4475 50  0000 C CNN
F 1 "PWR" H 9850 4675 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 9850 4575 50  0001 C CNN
F 3 "~" H 9850 4575 50  0001 C CNN
	1    9850 4575
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5FBD9406
P 9850 4250
F 0 "R3" V 9750 4200 50  0000 L CNN
F 1 "220" V 9950 4175 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9850 4250 50  0001 C CNN
F 3 "~" H 9850 4250 50  0001 C CNN
	1    9850 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 3925 8400 3850
Connection ~ 8400 3925
$Comp
L Device:LED D2
U 1 1 5FBDF2F9
P 9625 5200
F 0 "D2" H 9625 5100 50  0000 C CNN
F 1 "SYS" H 9625 5300 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 9625 5200 50  0001 C CNN
F 3 "~" H 9625 5200 50  0001 C CNN
	1    9625 5200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5FBDF2FF
P 9300 5200
F 0 "R4" V 9200 5150 50  0000 L CNN
F 1 "220" V 9400 5125 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9300 5200 50  0001 C CNN
F 3 "~" H 9300 5200 50  0001 C CNN
	1    9300 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 5275 9850 5200
Wire Wire Line
	9850 5200 9775 5200
Wire Wire Line
	9200 5200 8875 5200
Wire Wire Line
	9400 5200 9475 5200
Wire Wire Line
	9850 4800 9850 5200
Connection ~ 9850 5200
Wire Wire Line
	9850 4350 9850 4425
Wire Wire Line
	8875 4800 8950 4800
Wire Wire Line
	9350 4800 9850 4800
Text GLabel 6275 5300 0    50   Output ~ 0
P2_FIRE1
NoConn ~ 8875 5000
NoConn ~ 8875 5100
NoConn ~ 8875 5300
Wire Wire Line
	8650 1925 8725 1925
Connection ~ 8725 1925
Wire Wire Line
	8725 1925 8725 2200
NoConn ~ 8650 2025
Wire Wire Line
	8650 1125 8725 1125
Wire Wire Line
	8725 1125 8725 1925
Wire Wire Line
	9650 1025 9650 850 
Text GLabel 9025 5500 2    50   Input ~ 0
P2_RIGHT
Wire Wire Line
	9025 5400 8875 5400
Text GLabel 9025 5400 2    50   Input ~ 0
P2_UP
Wire Wire Line
	9025 5700 8875 5700
Text GLabel 9025 5600 2    50   Input ~ 0
P2_DOWN
Text GLabel 9025 5700 2    50   Input ~ 0
P2_LEFT
Wire Wire Line
	9025 5600 8875 5600
Wire Wire Line
	9025 5500 8875 5500
Text Notes 4675 4425 0    50   ~ 0
JP3 (fire3 wiring):\n1-2 C64/Amiga FIRE1 (port 1)\n2-3 C64/Amiga FIRE3 (port 2)\nN/C SMS/Arduino
Wire Wire Line
	3575 3925 6825 3925
Wire Wire Line
	6825 3925 6825 5200
Wire Wire Line
	6825 5200 7925 5200
Connection ~ 3575 3925
Wire Wire Line
	6925 2275 6925 5100
Wire Wire Line
	6925 5100 7925 5100
Wire Wire Line
	7025 1100 7025 5000
Wire Wire Line
	3050 1100 3525 1100
Wire Wire Line
	7025 5000 7925 5000
Wire Wire Line
	3525 2150 3525 2275
Connection ~ 3525 1100
Wire Wire Line
	3525 1100 7025 1100
Wire Wire Line
	2775 2650 6725 2650
Wire Wire Line
	6725 2650 6725 5400
Wire Wire Line
	6725 5400 7925 5400
Connection ~ 2775 2650
Wire Wire Line
	2775 2650 2775 2750
Wire Wire Line
	2775 4175 2775 4550
Wire Wire Line
	2775 4550 6625 4550
Wire Wire Line
	6625 4550 6625 5500
Wire Wire Line
	6625 5500 7925 5500
Connection ~ 2775 4550
Wire Wire Line
	2775 4550 2775 4650
Text Label 7900 5000 2    50   ~ 0
FIRE1_IN
Text Label 7900 5100 2    50   ~ 0
FIRE2_IN
Text Label 7900 5200 2    50   ~ 0
FIRE3_IN
Wire Wire Line
	3525 1425 3725 1425
Text Label 7900 5400 2    50   ~ 0
FIRE2_POL
Text Label 7900 5500 2    50   ~ 0
FIRE3_POL
Wire Notes Line
	2300 2725 4100 2725
Wire Notes Line
	4100 2725 4100 3500
Wire Notes Line
	4100 3500 2300 3500
Wire Notes Line
	2300 3500 2300 2725
Wire Notes Line
	2300 4625 4100 4625
Wire Notes Line
	2300 5400 2300 4625
Wire Notes Line
	4100 4625 4100 5400
Wire Notes Line
	4100 5400 2300 5400
Text Notes 3275 1900 0    50   ~ 0
There will be an alternate Arduino firmware\nwhere FIRE2/FIRE3 controls various forms of\nautofire (for single-button systems). For the\ndefault FW or units without an Arduino\nPro Micro installed, JP4/JP6 must be linked.
Wire Notes Line
	3250 1150 5050 1150
Wire Notes Line
	5050 2350 3250 2350
Wire Wire Line
	3525 1100 3525 1425
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
P 9850 3925
F 0 "JP5" H 9850 4036 50  0000 C CNN
F 1 "LED_SEL" H 9850 4127 50  0000 C CNN
F 2 "solder_bridge:select" H 9850 3925 50  0001 C CNN
F 3 "~" H 9850 3925 50  0001 C CNN
	1    9850 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4725 9850 4800
Connection ~ 9850 4800
Wire Wire Line
	8400 3925 8400 4350
Wire Wire Line
	8400 3925 9600 3925
Wire Wire Line
	7925 5700 7850 5700
Wire Wire Line
	7850 5700 7850 6425
Wire Wire Line
	7850 6425 10175 6425
Wire Wire Line
	10175 6425 10175 3925
Wire Wire Line
	10175 3925 10100 3925
Wire Wire Line
	9850 4075 9850 4150
NoConn ~ 7925 5600
Text Notes 9275 3650 0    50   ~ 0
Linking 1-2 will light PWR LED\npermanently, 2-3 enables\nArduino to control it.
Wire Notes Line
	10525 4100 10525 3350
Wire Notes Line
	10525 3350 9225 3350
Wire Notes Line
	9225 3350 9225 4100
Wire Notes Line
	9225 4100 10525 4100
Text Notes 7025 6900 0    50   ~ 0
WASD-style keypad for use with vintage computers, can also be used as a simple USB keyboard with\nArduino Pro Micro installed. Note that selecting the wrong polarity may not be a good thing \ndepending on which system you're connecting it to (not installing a jumper here may be the safe\nchoice).
Connection ~ 3525 2275
Wire Wire Line
	3525 2275 6925 2275
Wire Wire Line
	3050 2275 3525 2275
$Comp
L Device:Jumper_NC_Small JP6
U 1 1 5FCB76F7
P 3825 2150
F 0 "JP6" H 3825 2325 50  0000 C CNN
F 1 "DEFAULT_FW" H 3825 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3825 2150 50  0001 C CNN
F 3 "~" H 3825 2150 50  0001 C CNN
	1    3825 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 2150 3725 2150
Wire Wire Line
	3925 2150 4100 2150
Wire Notes Line
	5050 1150 5050 2350
Wire Notes Line
	3250 2350 3250 1150
$Comp
L Device:D D3
U 1 1 5FCFF93E
P 9425 1025
F 0 "D3" H 9425 809 50  0000 C CNN
F 1 "1n4001" H 9425 900 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9425 1025 50  0001 C CNN
F 3 "~" H 9425 1025 50  0001 C CNN
	1    9425 1025
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 925  8800 925 
Wire Wire Line
	9575 1025 9650 1025
Wire Wire Line
	8650 1025 9275 1025
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
P 6450 5300
F 0 "D4" H 6450 5095 50  0000 C CNN
F 1 "1n4148" H 6450 5186 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 6450 5300 50  0001 C CNN
F 3 "~" V 6450 5300 50  0001 C CNN
	1    6450 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6275 5300 6350 5300
Wire Wire Line
	6550 5300 7925 5300
Text Label 7900 5300 2    50   ~ 0
FIRE1_OUT
Wire Wire Line
	3925 1425 4100 1425
Text GLabel 4100 1425 2    50   Output ~ 0
P2_FIRE1
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 5FCF52E4
P 3825 1425
F 0 "JP4" H 3825 1600 50  0000 C CNN
F 1 "DEFAULT_FW" H 3825 1525 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3825 1425 50  0001 C CNN
F 3 "~" H 3825 1425 50  0001 C CNN
	1    3825 1425
	1    0    0    -1  
$EndComp
$EndSCHEMATC
