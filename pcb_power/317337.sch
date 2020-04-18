EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:LM317_3PinPackage U1
U 1 1 5E8033C3
P 4800 2500
F 0 "U1" H 4800 2742 50  0000 C CNN
F 1 "LM317" H 4800 2651 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4800 2750 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 4800 2500 50  0001 C CNN
	1    4800 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Bridge_+AA- D1
U 1 1 5E8050ED
P 2800 3500
F 0 "D1" H 3144 3546 50  0000 L CNN
F 1 "D_Bridge_+AA-" H 3144 3455 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_Vishay_GBL" H 2800 3500 50  0001 C CNN
F 3 "~" H 2800 3500 50  0001 C CNN
	1    2800 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 5E806F09
P 1300 3500
F 0 "J1" H 1192 3785 50  0000 C CNN
F 1 "Conn_01x03_Female" H 1192 3694 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_3-G-5,08_1x03_P5.08mm_Vertical" H 1300 3500 50  0001 C CNN
F 3 "~" H 1300 3500 50  0001 C CNN
	1    1300 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1500 3400 1500 3200
Wire Wire Line
	1500 3200 2800 3200
Wire Wire Line
	1500 3600 1500 3800
Wire Wire Line
	1500 3800 2800 3800
$Comp
L power:GND #PWR01
U 1 1 5E8090A9
P 1500 3500
F 0 "#PWR01" H 1500 3250 50  0001 C CNN
F 1 "GND" V 1505 3372 50  0000 R CNN
F 2 "" H 1500 3500 50  0001 C CNN
F 3 "" H 1500 3500 50  0001 C CNN
	1    1500 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 4500 3850 4300
Wire Wire Line
	3850 4500 3500 4500
Wire Wire Line
	3500 4500 3500 4300
Connection ~ 3850 4500
Wire Wire Line
	3500 4500 2500 4500
Wire Wire Line
	2500 4500 2500 3500
Connection ~ 3500 4500
Wire Wire Line
	3500 4000 3500 3500
Wire Wire Line
	3850 3000 3850 3500
Wire Wire Line
	3100 3500 3100 2500
Wire Wire Line
	3100 2500 3500 2500
Wire Wire Line
	3850 2700 3850 2500
Connection ~ 3850 2500
Wire Wire Line
	3500 2700 3500 2500
Connection ~ 3500 2500
Wire Wire Line
	3500 2500 3850 2500
Wire Wire Line
	3500 3500 3850 3500
Connection ~ 3500 3500
Wire Wire Line
	3500 3500 3500 3000
Connection ~ 3850 3500
Wire Wire Line
	3850 3500 3850 4000
$Comp
L Device:R R1
U 1 1 5E80DF02
P 5200 2750
F 0 "R1" H 5270 2796 50  0000 L CNN
F 1 "100" H 5270 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5130 2750 50  0001 C CNN
F 3 "~" H 5200 2750 50  0001 C CNN
	1    5200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E80F82D
P 5200 4250
F 0 "R2" H 5270 4296 50  0000 L CNN
F 1 "100" H 5270 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5130 4250 50  0001 C CNN
F 3 "~" H 5200 4250 50  0001 C CNN
	1    5200 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5E81084B
P 4800 3750
F 0 "RV2" H 4730 3796 50  0000 R CNN
F 1 "1K" H 4730 3705 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 4800 3750 50  0001 C CNN
F 3 "~" H 4800 3750 50  0001 C CNN
	1    4800 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 3900 4800 4000
Connection ~ 4800 4000
Wire Wire Line
	4800 4000 4800 4200
$Comp
L Device:C C6
U 1 1 5E818BDF
P 4200 4150
F 0 "C6" H 4315 4196 50  0000 L CNN
F 1 "C" H 4315 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4238 4000 50  0001 C CNN
F 3 "~" H 4200 4150 50  0001 C CNN
	1    4200 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E81B2DB
P 4200 2850
F 0 "C5" H 4315 2896 50  0000 L CNN
F 1 "C" H 4315 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4238 2700 50  0001 C CNN
F 3 "~" H 4200 2850 50  0001 C CNN
	1    4200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2500 4200 2500
Wire Wire Line
	3850 4500 4200 4500
Wire Wire Line
	4200 4300 4200 4500
Connection ~ 4200 4500
Wire Wire Line
	4200 4500 4300 4500
Wire Wire Line
	4200 4000 4200 3500
Wire Wire Line
	4200 3500 3850 3500
Wire Wire Line
	4200 3000 4200 3500
Connection ~ 4200 3500
Wire Wire Line
	4200 2700 4200 2500
Connection ~ 4200 2500
Wire Wire Line
	4200 2500 4300 2500
Wire Wire Line
	4800 3400 4800 3500
Wire Wire Line
	4800 3500 4650 3500
Wire Wire Line
	4800 3600 4800 3500
Connection ~ 4800 3500
Wire Wire Line
	4650 3750 4650 3500
Connection ~ 4650 3500
Wire Wire Line
	4650 3500 4200 3500
Wire Wire Line
	4650 3250 4650 3500
$Comp
L Device:D D2
U 1 1 5E8259D5
P 4800 2000
F 0 "D2" H 4800 2216 50  0000 C CNN
F 1 "D" H 4800 2125 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 4800 2000 50  0001 C CNN
F 3 "~" H 4800 2000 50  0001 C CNN
	1    4800 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2000 5300 2000
Wire Wire Line
	5300 2000 5300 2500
Wire Wire Line
	5300 2500 5200 2500
Wire Wire Line
	4650 2000 4300 2000
Wire Wire Line
	4300 2000 4300 2500
Connection ~ 4300 2500
Wire Wire Line
	4300 2500 4500 2500
Connection ~ 5300 2500
Wire Wire Line
	4800 2800 4800 3000
Wire Wire Line
	5200 2900 5200 3000
Connection ~ 4800 3000
Wire Wire Line
	4800 3000 4800 3100
$Comp
L Regulator_Linear:LM337_TO220 U2
U 1 1 5E803960
P 4800 4500
F 0 "U2" H 4800 4351 50  0000 C CNN
F 1 "LM337" H 4800 4260 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4800 4300 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337-n.pdf" H 4800 4500 50  0001 C CNN
	1    4800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4500 5200 4500
$Comp
L Device:D D3
U 1 1 5E833FEB
P 4800 5000
F 0 "D3" H 4800 4784 50  0000 C CNN
F 1 "D" H 4800 4875 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 4800 5000 50  0001 C CNN
F 3 "~" H 4800 5000 50  0001 C CNN
	1    4800 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 5000 5300 5000
Wire Wire Line
	5300 5000 5300 4500
Connection ~ 5300 4500
Wire Wire Line
	4650 5000 4300 5000
Wire Wire Line
	4300 5000 4300 4500
Connection ~ 4300 4500
Wire Wire Line
	4300 4500 4500 4500
$Comp
L Device:CP C8
U 1 1 5E839908
P 6200 4150
F 0 "C8" H 6318 4196 50  0000 L CNN
F 1 "1000u" H 6318 4105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 6238 4000 50  0001 C CNN
F 3 "~" H 6200 4150 50  0001 C CNN
	1    6200 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 5E8405ED
P 6200 2850
F 0 "C7" H 6318 2896 50  0000 L CNN
F 1 "1000u" H 6318 2805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 6238 2700 50  0001 C CNN
F 3 "~" H 6200 2850 50  0001 C CNN
	1    6200 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5E840EA4
P 3850 2850
F 0 "C3" H 3968 2896 50  0000 L CNN
F 1 "1000u" H 3968 2805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3888 2700 50  0001 C CNN
F 3 "~" H 3850 2850 50  0001 C CNN
	1    3850 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5E84131A
P 3500 2850
F 0 "C1" H 3618 2896 50  0000 L CNN
F 1 "1000u" H 3618 2805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3538 2700 50  0001 C CNN
F 3 "~" H 3500 2850 50  0001 C CNN
	1    3500 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5E841735
P 3500 4150
F 0 "C2" H 3618 4196 50  0000 L CNN
F 1 "1000u" H 3618 4105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3538 4000 50  0001 C CNN
F 3 "~" H 3500 4150 50  0001 C CNN
	1    3500 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5E841BB3
P 3850 4150
F 0 "C4" H 3968 4196 50  0000 L CNN
F 1 "1000u" H 3968 4105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3888 4000 50  0001 C CNN
F 3 "~" H 3850 4150 50  0001 C CNN
	1    3850 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 5E84234D
P 7700 4000
F 0 "J2" H 7728 4026 50  0000 L CNN
F 1 "Conn_01x03_Female" H 7728 3935 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 7700 4000 50  0001 C CNN
F 3 "~" H 7700 4000 50  0001 C CNN
	1    7700 4000
	1    0    0    -1  
$EndComp
Connection ~ 6600 3500
$Comp
L Device:CP C14
U 1 1 5E80C89D
P 6600 4150
F 0 "C14" H 6718 4196 50  0000 L CNN
F 1 "1000u" H 6718 4105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 6638 4000 50  0001 C CNN
F 3 "~" H 6600 4150 50  0001 C CNN
	1    6600 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 5E80D278
P 6600 2850
F 0 "C13" H 6718 2896 50  0000 L CNN
F 1 "1000u" H 6718 2805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 6638 2700 50  0001 C CNN
F 3 "~" H 6600 2850 50  0001 C CNN
	1    6600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2700 6200 2500
Wire Wire Line
	6600 2700 6600 2500
Wire Wire Line
	6600 4300 6600 4500
Connection ~ 6200 4500
Wire Wire Line
	6200 4500 6600 4500
Wire Wire Line
	6200 4300 6200 4500
Wire Wire Line
	6200 4000 6200 3500
Wire Wire Line
	6600 4000 6600 3500
Connection ~ 6200 3500
Wire Wire Line
	6200 3000 6200 3500
Wire Wire Line
	6600 3000 6600 3500
Connection ~ 6200 2500
Wire Wire Line
	6200 3500 6600 3500
Wire Wire Line
	6200 2500 6600 2500
Connection ~ 6600 2500
Wire Wire Line
	6600 2500 7000 2500
Connection ~ 6600 4500
Wire Wire Line
	6600 4500 7000 4500
Wire Wire Line
	4800 3500 5200 3500
$Comp
L Device:C C11
U 1 1 5E822E9E
P 5800 2850
F 0 "C11" H 5915 2896 50  0000 L CNN
F 1 "C" H 5915 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5838 2700 50  0001 C CNN
F 3 "~" H 5800 2850 50  0001 C CNN
	1    5800 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5E825103
P 5800 4150
F 0 "C12" H 5915 4196 50  0000 L CNN
F 1 "C" H 5915 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5838 4000 50  0001 C CNN
F 3 "~" H 5800 4150 50  0001 C CNN
	1    5800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3000 5800 3500
Connection ~ 5800 3500
Wire Wire Line
	5800 3500 6200 3500
Wire Wire Line
	5800 4300 5800 4500
Connection ~ 5800 4500
Wire Wire Line
	5800 4500 6200 4500
Wire Wire Line
	5800 4000 5800 3500
$Comp
L Device:C C10
U 1 1 5E82D1A1
P 5200 3750
F 0 "C10" H 5315 3796 50  0000 L CNN
F 1 "10uf" H 5315 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5238 3600 50  0001 C CNN
F 3 "~" H 5200 3750 50  0001 C CNN
	1    5200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3600 5200 3500
Connection ~ 5200 3500
Wire Wire Line
	5200 3500 5800 3500
Wire Wire Line
	5200 3900 5200 4000
Wire Wire Line
	5200 4000 4800 4000
$Comp
L Device:C C9
U 1 1 5E830A45
P 5200 3250
F 0 "C9" H 5315 3296 50  0000 L CNN
F 1 "10uf" H 5315 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5238 3100 50  0001 C CNN
F 3 "~" H 5200 3250 50  0001 C CNN
	1    5200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3100 5200 3000
Connection ~ 5200 3000
Wire Wire Line
	5200 3000 4800 3000
Wire Wire Line
	5200 3400 5200 3500
Wire Wire Line
	5300 2500 5500 2500
Wire Wire Line
	5200 2600 5200 2500
Connection ~ 5200 2500
Wire Wire Line
	5200 2500 5100 2500
Wire Wire Line
	5300 4500 5500 4500
Wire Wire Line
	5200 4100 5200 4000
Connection ~ 5200 4000
Wire Wire Line
	5200 4400 5200 4500
Connection ~ 5200 4500
Wire Wire Line
	5200 4500 5300 4500
$Comp
L Device:D D4
U 1 1 5E83D9BD
P 5500 2750
F 0 "D4" V 5454 2829 50  0000 L CNN
F 1 "D" V 5545 2829 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 5500 2750 50  0001 C CNN
F 3 "~" H 5500 2750 50  0001 C CNN
	1    5500 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2600 5500 2500
Connection ~ 5500 2500
Wire Wire Line
	5500 2500 5800 2500
Wire Wire Line
	5500 2900 5500 3000
Wire Wire Line
	5500 3000 5200 3000
$Comp
L Device:D D5
U 1 1 5E843588
P 5500 4250
F 0 "D5" V 5454 4329 50  0000 L CNN
F 1 "D" V 5545 4329 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 5500 4250 50  0001 C CNN
F 3 "~" H 5500 4250 50  0001 C CNN
	1    5500 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4400 5500 4500
Connection ~ 5500 4500
Wire Wire Line
	5500 4500 5800 4500
Wire Wire Line
	5500 4100 5500 4000
Wire Wire Line
	5500 4000 5200 4000
$Comp
L power:GND #PWR0101
U 1 1 5E84BD65
P 6800 3500
F 0 "#PWR0101" H 6800 3250 50  0001 C CNN
F 1 "GND" V 6805 3372 50  0000 R CNN
F 2 "" H 6800 3500 50  0001 C CNN
F 3 "" H 6800 3500 50  0001 C CNN
	1    6800 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 3500 6600 3500
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 5E84D037
P 7700 3000
F 0 "J3" H 7728 3026 50  0000 L CNN
F 1 "Conn_01x03_Female" H 7728 2935 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 7700 3000 50  0001 C CNN
F 3 "~" H 7700 3000 50  0001 C CNN
	1    7700 3000
	1    0    0    -1  
$EndComp
Text GLabel 7000 2500 2    50   Input ~ 0
V+
Text GLabel 7000 4500 2    50   Input ~ 0
V-
Text GLabel 7500 4100 0    50   Input ~ 0
V-
Text GLabel 7500 3100 0    50   Input ~ 0
V-
Text GLabel 7500 2900 0    50   Input ~ 0
V+
Text GLabel 7500 3900 0    50   Input ~ 0
V+
$Comp
L power:GND #PWR0102
U 1 1 5E85D4E7
P 7500 3000
F 0 "#PWR0102" H 7500 2750 50  0001 C CNN
F 1 "GND" V 7505 2872 50  0000 R CNN
F 2 "" H 7500 3000 50  0001 C CNN
F 3 "" H 7500 3000 50  0001 C CNN
	1    7500 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E85D9C9
P 7500 4000
F 0 "#PWR0103" H 7500 3750 50  0001 C CNN
F 1 "GND" V 7505 3872 50  0000 R CNN
F 2 "" H 7500 4000 50  0001 C CNN
F 3 "" H 7500 4000 50  0001 C CNN
	1    7500 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2700 5800 2500
Connection ~ 5800 2500
Wire Wire Line
	5800 2500 6200 2500
$Comp
L Device:R_POT RV1
U 1 1 5E814121
P 4800 3250
F 0 "RV1" H 4730 3204 50  0000 R CNN
F 1 "1K" H 4730 3295 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 4800 3250 50  0001 C CNN
F 3 "~" H 4800 3250 50  0001 C CNN
	1    4800 3250
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
