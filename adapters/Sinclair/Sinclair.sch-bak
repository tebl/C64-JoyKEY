EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Sinclair Adapter (C64 JoyKEY)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L c64_idc:C64_IDC_ADAPTER J1
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
L sinclair_joystick:sinclair_joystick J2
U 1 1 5FD232F5
P 7350 4550
F 0 "J2" H 7300 5225 50  0000 L CNN
F 1 "Sinclair" H 7225 5150 50  0000 L CNN
F 2 "RND_DSUB:DSUB-9_Female_Edge" H 7350 4550 50  0001 C CNN
F 3 "" H 7350 4550 50  0001 C CNN
	1    7350 4550
	1    0    0    -1  
$EndComp
NoConn ~ 4625 3450
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
	4425 2125 4325 2125
Wire Wire Line
	4325 2125 4325 2200
Wire Wire Line
	4425 2125 4425 2525
Wire Wire Line
	4225 2050 4225 2525
Text Notes 7000 7125 0    50   ~ 0
When Sinclair wanted to add joystick ports to the ZX Spectrum Interface 2 and the later ZX Spectrum\n+2/+3, they chose to change the pinouts (mostly to keep people from buying Atari-style joysticks). \nNot to be confused with the Atari-compatible Kempston interfaces.\n\nThere are no active components on this, so you may as well just create a dedicated cable with these\nchanges instead of having a straight-through IDC to DE-9. There is no power provided, so the device\nwill need to be powered from USB if autofire is needed.
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
Text Label 4850 4650 0    50   ~ 0
LEFT
Text Label 4850 4850 0    50   ~ 0
RIGHT
Text Label 4850 4150 0    50   ~ 0
UP
Text Label 4850 4250 0    50   ~ 0
DOWN
$Comp
L joykey_jumpers:JUMPER_NOT_CONNECTED #4
U 1 1 5FF8F4AC
P 10975 1600
F 0 "#4" H 10975 1525 50  0001 C CNN
F 1 "JUMPER_NOT_CONNECTED" H 10975 1700 50  0001 C CNN
F 2 "" H 10975 1600 50  0001 C CNN
F 3 "" H 10975 1600 50  0001 C CNN
	1    10975 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4225 2050 4775 2050
NoConn ~ 4525 2525
Wire Wire Line
	7050 4150 4225 4150
Wire Wire Line
	4225 4150 4225 3450
Wire Wire Line
	7050 4650 4425 4650
Wire Wire Line
	4425 3450 4425 4650
Wire Wire Line
	4525 4850 7050 4850
Wire Wire Line
	4525 3450 4525 4850
Wire Wire Line
	4775 2050 4775 4350
Wire Wire Line
	4775 4350 7050 4350
Text Label 4850 4350 0    50   ~ 0
FIRE
Wire Wire Line
	6975 5075 6975 4750
Wire Wire Line
	6975 4750 7050 4750
Wire Wire Line
	4325 3450 4325 4250
Wire Wire Line
	7050 4250 4325 4250
Wire Wire Line
	6975 4750 6975 4450
Wire Wire Line
	6975 4450 7050 4450
Connection ~ 6975 4750
NoConn ~ 4625 2525
$Comp
L atari_joystick:Atari_Port J3
U 1 1 60303164
P 3775 5675
F 0 "J3" H 3909 6367 50  0000 C CNN
F 1 "Atari" H 3909 6276 50  0000 C CNN
F 2 "RND_DSUB:DSUB-9_Male_Edge" H 3775 5675 50  0001 C CNN
F 3 "" H 3775 5675 50  0001 C CNN
	1    3775 5675
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6030695F
P 4150 6200
F 0 "#PWR0101" H 4150 5950 50  0001 C CNN
F 1 "GND" H 4155 6027 50  0000 C CNN
F 2 "" H 4150 6200 50  0001 C CNN
F 3 "" H 4150 6200 50  0001 C CNN
	1    4150 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 5575 4150 5575
Wire Wire Line
	4150 5575 4150 6200
NoConn ~ 4075 5275
NoConn ~ 4075 5375
NoConn ~ 4075 5775
Wire Wire Line
	4225 4150 4225 6075
Connection ~ 4225 4150
Wire Wire Line
	4075 6075 4225 6075
Wire Wire Line
	4325 4250 4325 5875
Wire Wire Line
	4325 5875 4075 5875
Connection ~ 4325 4250
Wire Wire Line
	4425 4650 4425 5675
Wire Wire Line
	4425 5675 4075 5675
Connection ~ 4425 4650
Wire Wire Line
	4525 4850 4525 5475
Wire Wire Line
	4525 5475 4075 5475
Connection ~ 4525 4850
Connection ~ 4775 4350
Wire Wire Line
	4775 4350 4775 5975
Wire Wire Line
	4075 5975 4775 5975
$EndSCHEMATC
