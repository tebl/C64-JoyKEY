EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SMS Adapter (C64 JoyKEY)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L c64_idc:C64_IDC2 J1
U 1 1 5FD1F19D
P 4425 3000
F 0 "J1" V 4475 3425 50  0000 C CNN
F 1 "JoyKEY" V 4400 3425 50  0000 C CNN
F 2 "C64 IDC:IDC_Joystick" H 4425 3000 50  0001 C CNN
F 3 "~" H 4425 3000 50  0001 C CNN
	1    4425 3000
	0    -1   -1   0   
$EndComp
$Comp
L sega_joypad:sms_joypad J2
U 1 1 5FD232F5
P 7350 4550
F 0 "J2" H 7300 5225 50  0000 L CNN
F 1 "SMS" H 7275 5150 50  0000 L CNN
F 2 "RND_DSUB:DSUB-9_Female_Edge" H 7350 4550 50  0001 C CNN
F 3 "" H 7350 4550 50  0001 C CNN
	1    7350 4550
	1    0    0    -1  
$EndComp
NoConn ~ 4625 3450
Wire Wire Line
	5850 4850 7050 4850
Wire Wire Line
	7050 4450 6975 4450
Wire Wire Line
	6975 4450 6975 5075
$Comp
L power:GND #PWR02
U 1 1 5FD2A883
P 6975 5075
F 0 "#PWR02" H 6975 4825 50  0001 C CNN
F 1 "GND" H 6980 4902 50  0000 C CNN
F 2 "" H 6975 5075 50  0001 C CNN
F 3 "" H 6975 5075 50  0001 C CNN
	1    6975 5075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FD2B691
P 4325 2200
F 0 "#PWR01" H 4325 1950 50  0001 C CNN
F 1 "GND" H 4330 2027 50  0000 C CNN
F 2 "" H 4325 2200 50  0001 C CNN
F 3 "" H 4325 2200 50  0001 C CNN
	1    4325 2200
	1    0    0    -1  
$EndComp
NoConn ~ 4325 2525
Wire Wire Line
	7050 4350 4525 4350
Wire Wire Line
	7050 4550 4425 4550
Wire Wire Line
	4225 4950 7050 4950
Wire Wire Line
	4225 4950 4225 3450
Wire Wire Line
	4325 3450 4325 4750
Wire Wire Line
	4325 4750 7050 4750
Wire Wire Line
	4425 3450 4425 4550
Wire Wire Line
	4525 3450 4525 4350
Wire Wire Line
	4425 2125 4325 2125
Wire Wire Line
	4325 2125 4325 2200
Wire Wire Line
	4425 2125 4425 2525
Wire Wire Line
	4525 2125 4525 2525
Wire Wire Line
	4225 2050 4225 2525
Text Notes 7000 6800 0    50   ~ 0
The Sega Master System has a slightly different pinout from the standard Atari-style joysticks. There are\nno active components on this, so you may as well just create a dedicated cable with these changes \ninstead of having a straight-through IDC to DE-9.
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
Text Label 4450 4550 0    50   ~ 0
LEFT
Text Label 4550 4350 0    50   ~ 0
RIGHT
Text Label 4250 4950 0    50   ~ 0
UP
Text Label 4350 4750 0    50   ~ 0
DOWN
Text Label 5875 4850 0    50   ~ 0
FIRE1
Text Label 5975 4250 0    50   ~ 0
FIRE2
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5FD2FDB9
P 5600 2450
F 0 "JP1" V 5554 2517 50  0000 L CNN
F 1 "FIRE1_SEL" V 5645 2517 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5600 2450 50  0001 C CNN
F 3 "~" H 5600 2450 50  0001 C CNN
	1    5600 2450
	0    -1   1    0   
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 5FD30CB5
P 5600 3325
F 0 "JP2" V 5646 3392 50  0000 L CNN
F 1 "FIRE2_SEL" V 5555 3392 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5600 3325 50  0001 C CNN
F 3 "~" H 5600 3325 50  0001 C CNN
	1    5600 3325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 2050 5600 2200
Wire Wire Line
	5600 2800 5600 2700
Wire Wire Line
	5600 3575 5600 3625
Wire Wire Line
	4950 3625 4950 2800
Wire Wire Line
	4950 3625 5600 3625
Wire Wire Line
	4950 2800 5600 2800
Connection ~ 4950 2800
Wire Wire Line
	4950 2800 4950 2125
Wire Wire Line
	5600 3075 5600 3000
Wire Wire Line
	5600 3000 5050 3000
Wire Wire Line
	5050 3000 5050 2050
Connection ~ 5050 2050
Wire Wire Line
	5050 2050 5600 2050
Wire Wire Line
	5850 2450 5850 4850
Wire Wire Line
	5950 3325 5950 4250
Wire Wire Line
	5950 4250 7050 4250
Text Label 4250 2050 0    50   ~ 0
FIRE1_IN
Text Label 4550 2125 0    50   ~ 0
FIRE2_IN
Wire Wire Line
	5750 2450 5850 2450
Wire Wire Line
	5750 3325 5950 3325
Wire Wire Line
	4225 2050 5050 2050
Wire Wire Line
	4525 2125 4950 2125
$EndSCHEMATC
