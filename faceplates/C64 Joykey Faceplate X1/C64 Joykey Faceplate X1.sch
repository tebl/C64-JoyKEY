EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "C64 Joykey (Faceplate A)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 "This faceplate fits all MX-compatible keycaps."
Comment3 ""
Comment4 "It's just a faceplate, nothing to see here."
$EndDescr
$Comp
L Connector:Conn_01x01_Male M1
U 1 1 5FB6F935
P 10700 550
F 0 "M1" H 10700 650 50  0001 C CNN
F 1 "Mounting" H 10700 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10700 550 50  0001 C CNN
F 3 "~" H 10700 550 50  0001 C CNN
	1    10700 550 
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male M2
U 1 1 5FB70096
P 10825 550
F 0 "M2" H 10825 650 50  0001 C CNN
F 1 "Mounting" H 10825 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10825 550 50  0001 C CNN
F 3 "~" H 10825 550 50  0001 C CNN
	1    10825 550 
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male M3
U 1 1 5FB70244
P 10975 550
F 0 "M3" H 10975 650 50  0001 C CNN
F 1 "Mounting" H 10975 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10975 550 50  0001 C CNN
F 3 "~" H 10975 550 50  0001 C CNN
	1    10975 550 
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male M4
U 1 1 5FB705F7
P 11100 550
F 0 "M4" H 11100 650 50  0001 C CNN
F 1 "Mounting" H 11100 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 11100 550 50  0001 C CNN
F 3 "~" H 11100 550 50  0001 C CNN
	1    11100 550 
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 750  10700 825 
Wire Wire Line
	10700 825  10825 825 
Wire Wire Line
	11100 825  11100 750 
Wire Wire Line
	10975 750  10975 825 
Connection ~ 10975 825 
Wire Wire Line
	10975 825  11100 825 
Wire Wire Line
	10825 750  10825 825 
Connection ~ 10825 825 
Wire Wire Line
	10825 825  10975 825 
$EndSCHEMATC
