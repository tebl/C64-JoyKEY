EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Atari 7800 Adapter (JoyKEY)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "FIRE1_SEL and FIRE2_SEL should be in position 2-3."
$EndDescr
$Comp
L c64_idc:C64_IDC2_OUT J1
U 1 1 5FD1F19D
P 4125 3550
F 0 "J1" V 4175 3975 50  0000 C CNN
F 1 "JoyKEY" V 4100 3975 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 4125 3550 50  0001 C CNN
F 3 "~" H 4125 3550 50  0001 C CNN
	1    4125 3550
	0    -1   -1   0   
$EndComp
NoConn ~ 4325 4000
$Comp
L power:GND #PWR02
U 1 1 5FD2A883
P 7050 5675
F 0 "#PWR02" H 7050 5425 50  0001 C CNN
F 1 "GND" H 7055 5502 50  0000 C CNN
F 2 "" H 7050 5675 50  0001 C CNN
F 3 "" H 7050 5675 50  0001 C CNN
	1    7050 5675
	1    0    0    -1  
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
L joykey_jumpers:JUMPER_NOT_CONNECTED #3
U 1 1 5FD25605
P 10975 1200
F 0 "#3" H 10975 1125 50  0001 C CNN
F 1 "JUMPER_NOT_CONNECTED" H 10975 1300 50  0001 C CNN
F 2 "" H 10975 1200 50  0001 C CNN
F 3 "" H 10975 1200 50  0001 C CNN
	1    10975 1200
	1    0    0    -1  
$EndComp
$Comp
L joykey_jumpers:JUMPER_NOT_CONNECTED #2
U 1 1 5FD25BFC
P 10975 800
F 0 "#2" H 10975 725 50  0001 C CNN
F 1 "JUMPER_NOT_CONNECTED" H 10975 900 50  0001 C CNN
F 2 "" H 10975 800 50  0001 C CNN
F 3 "" H 10975 800 50  0001 C CNN
	1    10975 800 
	1    0    0    -1  
$EndComp
Text Label 4150 5200 0    50   ~ 0
LEFT
Text Label 4250 5000 0    50   ~ 0
RIGHT
Text Label 3950 5600 0    50   ~ 0
UP
Text Label 4050 5400 0    50   ~ 0
DOWN
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 5FD30CB5
P 5300 3575
F 0 "JP2" V 5346 3642 50  0000 L CNN
F 1 "FIRE2_SEL" V 5255 3642 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5300 3575 50  0001 C CNN
F 3 "~" H 5300 3575 50  0001 C CNN
	1    5300 3575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 3050 5300 2950
Wire Wire Line
	5300 3825 5300 3875
Wire Wire Line
	4650 3875 4650 3050
Wire Wire Line
	4650 3875 5300 3875
Wire Wire Line
	4650 3050 5300 3050
Wire Wire Line
	5300 3325 5300 3250
Wire Wire Line
	5300 3250 4750 3250
$Comp
L atari_joystick:Atari_Joystick_Passive J2
U 1 1 5D1376D7
P 7525 5200
F 0 "J2" H 7525 5750 50  0000 C CNN
F 1 "Atari 7800" H 7525 4625 50  0000 C CNN
F 2 "RND_DSUB:DSUB-9_Female_Edge" H 7525 5200 50  0001 C CNN
F 3 "" H 7525 5200 50  0001 C CNN
	1    7525 5200
	1    0    0    -1  
$EndComp
Text GLabel 6800 4900 0    60   Input ~ 0
PADDLE_A
Text GLabel 6800 4800 0    60   Input ~ 0
PADDLE_B
Wire Wire Line
	5450 3575 7175 3575
Wire Wire Line
	5450 2700 5825 2700
$Comp
L power:VCC #PWR0101
U 1 1 5FDA6D3C
P 4025 3000
F 0 "#PWR0101" H 4025 2850 50  0001 C CNN
F 1 "VCC" H 4042 3173 50  0000 C CNN
F 2 "" H 4025 3000 50  0001 C CNN
F 3 "" H 4025 3000 50  0001 C CNN
	1    4025 3000
	1    0    0    -1  
$EndComp
Connection ~ 4650 3050
Wire Wire Line
	7175 1800 7175 3575
$Comp
L Transistor_BJT:2N3906 Q2
U 1 1 5FD776E0
P 6425 1800
F 0 "Q2" H 6616 1754 50  0000 L CNN
F 1 "2N3906" H 6616 1845 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 6625 1725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 6425 1800 50  0001 L CNN
	1    6425 1800
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q1
U 1 1 5FD74A67
P 7775 1800
F 0 "Q1" H 7966 1754 50  0000 L CNN
F 1 "2N3906" H 7966 1845 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 7975 1725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 7775 1800 50  0001 L CNN
	1    7775 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	7875 1525 6525 1525
Wire Wire Line
	6525 2075 6525 2150
Wire Wire Line
	7875 2075 7875 2150
Connection ~ 7875 1525
Wire Wire Line
	7875 1525 7875 1600
Connection ~ 6525 2075
Wire Wire Line
	6600 2075 6525 2075
Text GLabel 6600 2075 2    60   Output ~ 0
PADDLE_B
Connection ~ 7875 2075
Wire Wire Line
	7950 2075 7875 2075
Text GLabel 7950 2075 2    60   Output ~ 0
PADDLE_A
Wire Wire Line
	6525 1525 6525 1600
Wire Wire Line
	7950 1525 7875 1525
Wire Wire Line
	7875 2000 7875 2075
Wire Wire Line
	6525 2000 6525 2075
Wire Wire Line
	7275 1800 7175 1800
$Comp
L power:GND #PWR05
U 1 1 5DA4F335
P 7875 2525
F 0 "#PWR05" H 7875 2275 50  0001 C CNN
F 1 "GND" H 7875 2375 50  0000 C CNN
F 2 "" H 7875 2525 50  0001 C CNN
F 3 "" H 7875 2525 50  0001 C CNN
	1    7875 2525
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DA4F32F
P 7875 2300
F 0 "R1" V 7955 2300 50  0000 C CNN
F 1 "620" V 7875 2300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7805 2300 50  0001 C CNN
F 3 "" H 7875 2300 50  0001 C CNN
	1    7875 2300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DA4F329
P 7425 1800
F 0 "R2" V 7505 1800 50  0000 C CNN
F 1 "1k" V 7425 1800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7355 1800 50  0001 C CNN
F 3 "" H 7425 1800 50  0001 C CNN
	1    7425 1800
	0    1    -1   0   
$EndComp
Wire Wire Line
	5825 1800 5925 1800
Wire Wire Line
	5825 2700 5825 1800
$Comp
L power:GND #PWR04
U 1 1 5DA4E413
P 6525 2525
F 0 "#PWR04" H 6525 2275 50  0001 C CNN
F 1 "GND" H 6525 2375 50  0000 C CNN
F 2 "" H 6525 2525 50  0001 C CNN
F 3 "" H 6525 2525 50  0001 C CNN
	1    6525 2525
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DA4D819
P 6525 2300
F 0 "R3" V 6605 2300 50  0000 C CNN
F 1 "620" V 6525 2300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6455 2300 50  0001 C CNN
F 3 "" H 6525 2300 50  0001 C CNN
	1    6525 2300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DA4D38B
P 6075 1800
F 0 "R4" V 6155 1800 50  0000 C CNN
F 1 "1k" V 6075 1800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6005 1800 50  0001 C CNN
F 3 "" H 6075 1800 50  0001 C CNN
	1    6075 1800
	0    -1   1    0   
$EndComp
Text GLabel 7950 1525 2    60   Output ~ 0
FIRE
Wire Wire Line
	4225 2375 4650 2375
Wire Wire Line
	3925 2300 4750 2300
Text Label 4250 2375 0    50   ~ 0
FIRE2_IN
Text Label 3950 2300 0    50   ~ 0
FIRE1_IN
Wire Wire Line
	4750 2300 5300 2300
Connection ~ 4750 2300
Wire Wire Line
	4750 3250 4750 2300
Wire Wire Line
	4650 3050 4650 2375
Wire Wire Line
	5300 2300 5300 2450
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5FD2FDB9
P 5300 2700
F 0 "JP1" V 5254 2767 50  0000 L CNN
F 1 "FIRE1_SEL" V 5345 2767 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5300 2700 50  0001 C CNN
F 3 "~" H 5300 2700 50  0001 C CNN
	1    5300 2700
	0    -1   1    0   
$EndComp
Wire Wire Line
	4025 2375 4025 2450
Wire Wire Line
	4125 2375 4025 2375
$Comp
L power:GND #PWR01
U 1 1 5FD2B691
P 4025 2450
F 0 "#PWR01" H 4025 2200 50  0001 C CNN
F 1 "GND" H 4030 2277 50  0000 C CNN
F 2 "" H 4025 2450 50  0001 C CNN
F 3 "" H 4025 2450 50  0001 C CNN
	1    4025 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3925 2300 3925 3075
Wire Wire Line
	4025 3000 4025 3075
Wire Wire Line
	4125 2375 4125 3075
Wire Wire Line
	4225 2375 4225 3075
Wire Wire Line
	3925 4000 3925 5600
Wire Wire Line
	4025 5400 4025 4000
Wire Wire Line
	4125 4000 4125 5200
Wire Wire Line
	4225 5000 4225 4000
Wire Wire Line
	6525 2525 6525 2450
Wire Wire Line
	7875 2525 7875 2450
Wire Wire Line
	3925 5600 7225 5600
Wire Wire Line
	4025 5400 7225 5400
Wire Wire Line
	4125 5200 7225 5200
Wire Wire Line
	4225 5000 7225 5000
Wire Wire Line
	6800 4800 7225 4800
Wire Wire Line
	6800 4900 7225 4900
Wire Wire Line
	7050 5675 7050 5100
Wire Wire Line
	7050 5100 7225 5100
Wire Wire Line
	7225 5300 7125 5300
Wire Wire Line
	7125 5300 7125 4600
$Comp
L power:VCC #PWR0102
U 1 1 5FDD3B82
P 7125 4600
F 0 "#PWR0102" H 7125 4450 50  0001 C CNN
F 1 "VCC" H 7142 4773 50  0000 C CNN
F 2 "" H 7125 4600 50  0001 C CNN
F 3 "" H 7125 4600 50  0001 C CNN
	1    7125 4600
	1    0    0    -1  
$EndComp
Text GLabel 6800 5500 0    60   Input ~ 0
FIRE
Wire Wire Line
	6800 5500 7225 5500
$EndSCHEMATC
