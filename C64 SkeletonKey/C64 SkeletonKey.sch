EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "C64 JoyKEY (SkeletonKEY)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5FB8F17B
P 5900 4500
F 0 "JP1" H 5900 4611 50  0000 C CNN
F 1 "F2_POL" H 5900 4702 50  0000 C CNN
F 2 "solder_bridge:select_r" H 5900 4500 50  0001 C CNN
F 3 "~" H 5900 4500 50  0001 C CNN
	1    5900 4500
	0    -1   1    0   
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP3
U 1 1 5FBAA15C
P 4650 3700
F 0 "JP3" H 4650 3811 50  0000 C CNN
F 1 "FIRE3_SEL" H 4650 3902 50  0000 C CNN
F 2 "solder_bridge:select_r" H 4650 3700 50  0001 C CNN
F 3 "~" H 4650 3700 50  0001 C CNN
	1    4650 3700
	0    -1   1    0   
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 5FBD1161
P 5275 4100
F 0 "JP2" H 5275 4211 50  0000 C CNN
F 1 "F3_POL" H 5275 4302 50  0000 C CNN
F 2 "solder_bridge:select_r" H 5275 4100 50  0001 C CNN
F 3 "~" H 5275 4100 50  0001 C CNN
	1    5275 4100
	0    -1   1    0   
$EndComp
Text Notes 7000 6800 0    50   ~ 0
When good names go missing, this is what you get. The idea was to make a small PCB\nthat you would insert over the jumpers, mainly so that you do not have to remember\nthe settings that would work and not damage the system you're connecting it to.
$Comp
L Device:Jumper_NC_Small JP7
U 1 1 603A8E18
P 6500 4750
F 0 "JP7" H 6500 4925 50  0000 C CNN
F 1 "KEY_LED" H 6500 4850 50  0000 C CNN
F 2 "solder_bridge:bridge_r" H 6500 4750 50  0001 C CNN
F 3 "~" H 6500 4750 50  0001 C CNN
	1    6500 4750
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x16_Odd_Even J3
U 1 1 60586296
P 6900 3875
F 0 "J3" H 6950 4792 50  0000 C CNN
F 1 "SkeletonKEY" H 6950 4701 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x16_P2.54mm_Vertical" H 6900 3875 50  0001 C CNN
F 3 "~" H 6900 3875 50  0001 C CNN
	1    6900 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3450 4650 3375
Wire Wire Line
	4800 3700 4875 3700
Wire Wire Line
	4875 3475 4875 3700
Wire Wire Line
	4650 3950 4650 4025
Wire Wire Line
	4650 4025 4975 4025
Wire Wire Line
	4975 4025 4975 3575
NoConn ~ 6700 3175
NoConn ~ 6700 3275
NoConn ~ 7200 3275
NoConn ~ 7200 3175
NoConn ~ 6700 3675
NoConn ~ 7200 3675
Wire Wire Line
	5275 3850 5275 3775
Wire Wire Line
	5425 4100 5500 4100
Wire Wire Line
	5500 4100 5500 3875
Wire Wire Line
	5275 4350 5275 4425
Wire Wire Line
	5275 4425 5600 4425
Wire Wire Line
	5600 4425 5600 3975
NoConn ~ 6700 4075
NoConn ~ 7200 4075
Wire Wire Line
	5900 4250 5900 4175
Wire Wire Line
	6050 4500 6125 4500
Wire Wire Line
	6125 4500 6125 4275
Wire Wire Line
	5900 4750 5900 4825
Wire Wire Line
	5900 4825 6225 4825
Wire Wire Line
	6225 4825 6225 4375
NoConn ~ 6700 4475
Wire Wire Line
	6500 4650 6500 4575
Wire Wire Line
	6500 4575 6700 4575
Wire Wire Line
	6500 4850 6500 4925
Wire Wire Line
	6500 4925 6625 4925
Wire Wire Line
	6625 4925 6625 4675
Wire Wire Line
	6625 4675 6700 4675
Wire Wire Line
	6225 4375 6700 4375
Wire Wire Line
	6125 4275 6700 4275
Wire Wire Line
	5900 4175 6700 4175
Wire Wire Line
	5600 3975 6700 3975
Wire Wire Line
	5500 3875 6700 3875
Wire Wire Line
	5275 3775 6700 3775
Wire Wire Line
	4975 3575 6700 3575
Wire Wire Line
	4875 3475 6700 3475
Wire Wire Line
	4650 3375 6700 3375
Wire Wire Line
	6700 3375 7200 3375
Connection ~ 6700 3375
Wire Wire Line
	7200 3475 6700 3475
Connection ~ 6700 3475
Wire Wire Line
	6700 3575 7200 3575
Connection ~ 6700 3575
Wire Wire Line
	6700 3775 7200 3775
Connection ~ 6700 3775
Wire Wire Line
	6700 3875 7200 3875
Connection ~ 6700 3875
Wire Wire Line
	6700 3975 7200 3975
Connection ~ 6700 3975
Wire Wire Line
	6700 4175 7200 4175
Connection ~ 6700 4175
Wire Wire Line
	6700 4275 7200 4275
Connection ~ 6700 4275
Wire Wire Line
	6700 4375 7200 4375
Connection ~ 6700 4375
NoConn ~ 7200 4475
Wire Wire Line
	6700 4575 7200 4575
Connection ~ 6700 4575
Wire Wire Line
	6700 4675 7200 4675
Connection ~ 6700 4675
$EndSCHEMATC
