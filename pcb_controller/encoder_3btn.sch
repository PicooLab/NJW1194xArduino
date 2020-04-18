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
L Switch:SW_Push SW1
U 1 1 5E91B320
P 3000 4100
F 0 "SW1" H 3000 4385 50  0000 C CNN
F 1 "SW_Push" H 3000 4294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 3000 4300 50  0001 C CNN
F 3 "~" H 3000 4300 50  0001 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J1
U 1 1 5E91B8B4
P 4450 2750
F 0 "J1" H 4558 3231 50  0000 C CNN
F 1 "Conn_01x08_Male" H 4558 3140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Horizontal" H 4450 2750 50  0001 C CNN
F 3 "~" H 4450 2750 50  0001 C CNN
	1    4450 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E91C3E6
P 2900 2150
F 0 "C1" H 3015 2196 50  0000 L CNN
F 1 "100nF" H 3015 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2938 2000 50  0001 C CNN
F 3 "~" H 2900 2150 50  0001 C CNN
	1    2900 2150
	1    0    0    -1  
$EndComp
Text GLabel 4650 2450 2    50   Input ~ 0
VCC
Text GLabel 4650 2550 2    50   Input ~ 0
GND
Text GLabel 4650 2650 2    50   Input ~ 0
CLK
Text GLabel 4650 2750 2    50   Input ~ 0
DT
Text GLabel 4650 2850 2    50   Input ~ 0
SW1
Text GLabel 2800 4100 0    50   Input ~ 0
SW2
Text GLabel 2800 4450 0    50   Input ~ 0
SW3
Text GLabel 2800 4800 0    50   Input ~ 0
SW4
Text GLabel 2500 2500 0    50   Input ~ 0
CLK
Text GLabel 2500 2700 0    50   Input ~ 0
DT
Text GLabel 3000 2600 0    50   Input ~ 0
GND
Text GLabel 3600 2700 2    50   Input ~ 0
GND
$Comp
L Device:R R1
U 1 1 5E921DA5
P 2650 2150
F 0 "R1" H 2720 2196 50  0000 L CNN
F 1 "R" H 2720 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2580 2150 50  0001 C CNN
F 3 "~" H 2650 2150 50  0001 C CNN
	1    2650 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E922631
P 2650 3050
F 0 "R2" H 2720 3096 50  0000 L CNN
F 1 "R" H 2720 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2580 3050 50  0001 C CNN
F 3 "~" H 2650 3050 50  0001 C CNN
	1    2650 3050
	1    0    0    -1  
$EndComp
Text GLabel 2650 3300 3    50   Input ~ 0
VCC
Text GLabel 2650 1900 1    50   Input ~ 0
VCC
Text GLabel 3600 2500 2    50   Input ~ 0
SW1
Wire Wire Line
	2500 2500 2650 2500
Wire Wire Line
	2650 2900 2650 2700
Wire Wire Line
	2500 2700 2650 2700
Connection ~ 2650 2700
Wire Wire Line
	2650 2700 2900 2700
Wire Wire Line
	2650 2300 2650 2500
Connection ~ 2650 2500
Wire Wire Line
	2650 2500 2900 2500
Wire Wire Line
	2650 2000 2650 1900
Wire Wire Line
	2650 3200 2650 3300
Wire Wire Line
	2900 2900 2900 2700
Connection ~ 2900 2700
Wire Wire Line
	2900 2700 3000 2700
Text GLabel 2900 3300 3    50   Input ~ 0
GND
Wire Wire Line
	2900 3300 2900 3200
Text GLabel 2900 1900 1    50   Input ~ 0
GND
Wire Wire Line
	2900 1900 2900 2000
Wire Wire Line
	2900 2300 2900 2500
Connection ~ 2900 2500
Wire Wire Line
	2900 2500 3000 2500
$Comp
L Device:C C2
U 1 1 5E925A7B
P 2900 3050
F 0 "C2" H 3015 3096 50  0000 L CNN
F 1 "100nF" H 3015 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2938 2900 50  0001 C CNN
F 3 "~" H 2900 3050 50  0001 C CNN
	1    2900 3050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5E92994E
P 3000 4450
F 0 "SW2" H 3000 4735 50  0000 C CNN
F 1 "SW_Push" H 3000 4644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 3000 4650 50  0001 C CNN
F 3 "~" H 3000 4650 50  0001 C CNN
	1    3000 4450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5E929F20
P 3000 4800
F 0 "SW3" H 3000 5085 50  0000 C CNN
F 1 "SW_Push" H 3000 4994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 3000 5000 50  0001 C CNN
F 3 "~" H 3000 5000 50  0001 C CNN
	1    3000 4800
	1    0    0    -1  
$EndComp
Text GLabel 3200 4450 2    50   Input ~ 0
GND
Wire Wire Line
	3200 4450 3200 4100
Wire Wire Line
	3200 4450 3200 4800
Connection ~ 3200 4450
Text GLabel 4650 2950 2    50   Input ~ 0
SW2
Text GLabel 4650 3050 2    50   Input ~ 0
SW3
Text GLabel 4650 3150 2    50   Input ~ 0
SW4
$Comp
L Device:Rotary_Encoder_Switch SW4
U 1 1 5E947D77
P 3300 2600
F 0 "SW4" H 3300 2967 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 3300 2876 50  0000 C CNN
F 2 "atrix_encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 3150 2760 50  0001 C CNN
F 3 "~" H 3300 2860 50  0001 C CNN
	1    3300 2600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
