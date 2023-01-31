EESchema Schematic File Version 4
LIBS:BatteryBoard-cache
EELAYER 26 0
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
NoConn ~ 4200 4400
NoConn ~ 4200 4250
$Comp
L Connector:Conn_01x01_Male J11
U 1 1 5C66C510
P 4350 4400
F 0 "J11" H 4323 4330 50  0000 R CNN
F 1 "Conn_01x01_Male" H 4323 4421 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 4350 4400 50  0001 C CNN
F 3 "~" H 4350 4400 50  0001 C CNN
	1    4350 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J10
U 1 1 5C66C48E
P 4350 4250
F 0 "J10" H 4323 4180 50  0000 R CNN
F 1 "Conn_01x01_Male" H 4323 4271 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 4350 4250 50  0001 C CNN
F 3 "~" H 4350 4250 50  0001 C CNN
	1    4350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4400 4550 4400
Wire Wire Line
	4750 4250 4550 4250
Wire Wire Line
	4700 4750 4950 4750
Wire Wire Line
	4700 4400 4700 4750
Wire Wire Line
	4800 4300 4950 4300
Wire Wire Line
	4800 4400 4950 4400
Wire Wire Line
	4800 4300 4800 4400
Connection ~ 4800 4300
Wire Wire Line
	4750 4300 4800 4300
Wire Wire Line
	4750 4250 4750 4300
$Comp
L Connector:Conn_01x01_Male J8
U 1 1 5C667336
P 5150 4400
F 0 "J8" H 5123 4330 50  0000 R CNN
F 1 "Conn_01x01_Male" H 5123 4421 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 5150 4400 50  0001 C CNN
F 3 "~" H 5150 4400 50  0001 C CNN
	1    5150 4400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J9
U 1 1 5C6672F2
P 5150 4750
F 0 "J9" H 5123 4680 50  0000 R CNN
F 1 "Conn_01x01_Male" H 5123 4771 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 5150 4750 50  0001 C CNN
F 3 "~" H 5150 4750 50  0001 C CNN
	1    5150 4750
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J7
U 1 1 5C667246
P 5150 4300
F 0 "J7" H 5123 4230 50  0000 R CNN
F 1 "Conn_01x01_Male" H 5123 4321 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 5150 4300 50  0001 C CNN
F 3 "~" H 5150 4300 50  0001 C CNN
	1    5150 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 3700 3100 4250
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 5C666A0B
P 2900 3700
F 0 "J6" H 3006 3878 50  0000 C CNN
F 1 "Conn_01x01_Male" H 3006 3787 50  0000 C CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 2900 3700 50  0001 C CNN
F 3 "~" H 2900 3700 50  0001 C CNN
	1    2900 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5C6538DF
P 5650 4450
F 0 "#PWR0115" H 5650 4200 50  0001 C CNN
F 1 "GND" H 5655 4277 50  0000 C CNN
F 2 "" H 5650 4450 50  0001 C CNN
F 3 "" H 5650 4450 50  0001 C CNN
	1    5650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4150 5750 4150
Connection ~ 5650 4150
$Comp
L Device:D_Zener D3
U 1 1 5C6538D8
P 5650 4300
F 0 "D3" V 5604 4379 50  0000 L CNN
F 1 "TVS" V 5695 4379 50  0000 L CNN
F 2 "Encoder:D_DO-201AD_P15.24mm_Horizontal" H 5650 4300 50  0001 C CNN
F 3 "~" H 5650 4300 50  0001 C CNN
	1    5650 4300
	0    1    1    0   
$EndComp
Connection ~ 3100 3700
Wire Wire Line
	3100 3350 3100 3700
$Comp
L power:GND #PWR0114
U 1 1 5C5BB079
P 3300 3650
F 0 "#PWR0114" H 3300 3400 50  0001 C CNN
F 1 "GND" H 3305 3477 50  0000 C CNN
F 2 "" H 3300 3650 50  0001 C CNN
F 3 "" H 3300 3650 50  0001 C CNN
	1    3300 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5C5BA5D5
P 3300 3500
F 0 "D2" V 3254 3579 50  0000 L CNN
F 1 "TVS" V 3345 3579 50  0000 L CNN
F 2 "Encoder:D_DO-201AD_P15.24mm_Horizontal" H 3300 3500 50  0001 C CNN
F 3 "~" H 3300 3500 50  0001 C CNN
	1    3300 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2800 7150 2800
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U2
U 1 1 5C3412CA
P 6650 2800
F 0 "U2" H 6650 3042 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 6650 2951 50  0000 C CNN
F 2 "Encoder:TO-220-3_Horizontal_TabDown" H 6650 3000 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 6750 2550 50  0001 C CNN
	1    6650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4050 6150 4050
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C33E7F4
P 6200 4050
F 0 "#FLG0101" H 6200 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 6200 4224 50  0000 C CNN
F 2 "" H 6200 4050 50  0001 C CNN
F 3 "~" H 6200 4050 50  0001 C CNN
	1    6200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4250 7450 4150
Wire Wire Line
	7550 4250 7450 4250
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 5C33C90B
P 7750 4250
F 0 "J5" H 7723 4180 50  0000 R CNN
F 1 "Conn_01x01_Male" H 7723 4271 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 7750 4250 50  0001 C CNN
F 3 "~" H 7750 4250 50  0001 C CNN
	1    7750 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 4150 7550 4150
Connection ~ 7450 4250
Wire Wire Line
	7450 4400 7450 4250
Connection ~ 7450 4150
Wire Wire Line
	7350 4150 7450 4150
Wire Wire Line
	7550 3650 7450 3650
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 5C334249
P 7750 3650
F 0 "J2" H 7723 3580 50  0000 R CNN
F 1 "Conn_01x01_Male" H 7723 3671 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 7750 3650 50  0001 C CNN
F 3 "~" H 7750 3650 50  0001 C CNN
	1    7750 3650
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 5C33421F
P 7450 3650
F 0 "#PWR0113" H 7450 3500 50  0001 C CNN
F 1 "+3.3V" H 7465 3823 50  0000 C CNN
F 2 "" H 7450 3650 50  0001 C CNN
F 3 "" H 7450 3650 50  0001 C CNN
	1    7450 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 5C333E3A
P 7750 3500
F 0 "J1" H 7723 3430 50  0000 R CNN
F 1 "Conn_01x01_Male" H 7723 3521 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 7750 3500 50  0001 C CNN
F 3 "~" H 7750 3500 50  0001 C CNN
	1    7750 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 3500 7550 3500
$Comp
L power:+3.3V #PWR0112
U 1 1 5C333896
P 7450 3500
F 0 "#PWR0112" H 7450 3350 50  0001 C CNN
F 1 "+3.3V" H 7465 3673 50  0000 C CNN
F 2 "" H 7450 3500 50  0001 C CNN
F 3 "" H 7450 3500 50  0001 C CNN
	1    7450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3100 6650 3250
Wire Wire Line
	6150 2800 6150 2950
Wire Wire Line
	6350 2800 6150 2800
Wire Wire Line
	7150 2800 7150 2950
Wire Wire Line
	6650 3250 7150 3250
Connection ~ 6650 3250
Wire Wire Line
	6150 3250 6650 3250
$Comp
L Device:C C2
U 1 1 5C330348
P 7150 3100
F 0 "C2" H 7265 3146 50  0000 L CNN
F 1 "10uF" H 7265 3055 50  0000 L CNN
F 2 "Encoder:C_Disc_D9.0mm_W5.0mm_P5.00mm" H 7188 2950 50  0001 C CNN
F 3 "~" H 7150 3100 50  0001 C CNN
	1    7150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C32FF3C
P 6150 3100
F 0 "C1" H 6265 3146 50  0000 L CNN
F 1 ".1uF" H 6265 3055 50  0000 L CNN
F 2 "Encoder:C_Disc_D9.0mm_W5.0mm_P5.00mm" H 6188 2950 50  0001 C CNN
F 3 "~" H 6150 3100 50  0001 C CNN
	1    6150 3100
	1    0    0    -1  
$EndComp
Connection ~ 7150 2800
$Comp
L power:+3.3V #PWR0111
U 1 1 5C32FDDE
P 7150 2800
F 0 "#PWR0111" H 7150 2650 50  0001 C CNN
F 1 "+3.3V" H 7165 2973 50  0000 C CNN
F 2 "" H 7150 2800 50  0001 C CNN
F 3 "" H 7150 2800 50  0001 C CNN
	1    7150 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C32FD62
P 6650 3250
F 0 "#PWR0110" H 6650 3000 50  0001 C CNN
F 1 "GND" H 6655 3077 50  0000 C CNN
F 2 "" H 6650 3250 50  0001 C CNN
F 3 "" H 6650 3250 50  0001 C CNN
	1    6650 3250
	1    0    0    -1  
$EndComp
Connection ~ 6150 2800
$Comp
L power:+5V #PWR0109
U 1 1 5C32FCFC
P 6150 2800
F 0 "#PWR0109" H 6150 2650 50  0001 C CNN
F 1 "+5V" H 6165 2973 50  0000 C CNN
F 2 "" H 6150 2800 50  0001 C CNN
F 3 "" H 6150 2800 50  0001 C CNN
	1    6150 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5C32FC7E
P 7450 3900
F 0 "#PWR0108" H 7450 3750 50  0001 C CNN
F 1 "+5V" H 7465 4073 50  0000 C CNN
F 2 "" H 7450 3900 50  0001 C CNN
F 3 "" H 7450 3900 50  0001 C CNN
	1    7450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4050 7350 4050
Wire Wire Line
	7450 4050 7450 3900
Wire Wire Line
	3300 3350 4500 3350
Connection ~ 4500 3350
Wire Wire Line
	4500 3850 4500 3350
Wire Wire Line
	4500 3350 4950 3350
Wire Wire Line
	4950 3350 5500 3350
Connection ~ 4950 3350
Wire Wire Line
	4950 3600 4950 3350
Wire Wire Line
	3100 4250 3150 4250
Wire Wire Line
	5500 3350 5500 3450
Connection ~ 3300 3350
Wire Wire Line
	3100 3350 3300 3350
Wire Wire Line
	4950 4150 5650 4150
Wire Wire Line
	4950 4150 4700 4150
Connection ~ 4950 4150
Wire Wire Line
	4950 3900 4950 4150
Wire Wire Line
	4200 4150 4300 4150
Wire Wire Line
	5500 3850 5500 3750
$Comp
L power:GND #PWR0107
U 1 1 5C32DEC7
P 5500 3850
F 0 "#PWR0107" H 5500 3600 50  0001 C CNN
F 1 "GND" H 5505 3677 50  0000 C CNN
F 2 "" H 5500 3850 50  0001 C CNN
F 3 "" H 5500 3850 50  0001 C CNN
	1    5500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3950 5750 3950
$Comp
L power:GND #PWR0106
U 1 1 5C32DD4E
P 5650 3950
F 0 "#PWR0106" H 5650 3700 50  0001 C CNN
F 1 "GND" H 5655 3777 50  0000 C CNN
F 2 "" H 5650 3950 50  0001 C CNN
F 3 "" H 5650 3950 50  0001 C CNN
	1    5650 3950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 5C32DB0E
P 7750 4150
F 0 "J4" H 7723 4080 50  0000 R CNN
F 1 "Conn_01x01_Male" H 7723 4171 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 7750 4150 50  0001 C CNN
F 3 "~" H 7750 4150 50  0001 C CNN
	1    7750 4150
	-1   0    0    1   
$EndComp
Connection ~ 7450 4050
Wire Wire Line
	7550 4050 7450 4050
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 5C32DA3D
P 7750 4050
F 0 "J3" H 7723 3980 50  0000 R CNN
F 1 "Conn_01x01_Male" H 7723 4071 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 7750 4050 50  0001 C CNN
F 3 "~" H 7750 4050 50  0001 C CNN
	1    7750 4050
	-1   0    0    1   
$EndComp
Connection ~ 6200 4050
Wire Wire Line
	6450 4050 6200 4050
Connection ~ 3100 4250
Wire Wire Line
	3000 4250 3100 4250
$Comp
L power:VCC #PWR0105
U 1 1 5C32D60F
P 3000 4250
F 0 "#PWR0105" H 3000 4100 50  0001 C CNN
F 1 "VCC" H 3017 4423 50  0000 C CNN
F 2 "" H 3000 4250 50  0001 C CNN
F 3 "" H 3000 4250 50  0001 C CNN
	1    3000 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C32D4A9
P 7450 4400
F 0 "#PWR0104" H 7450 4150 50  0001 C CNN
F 1 "GND" H 7455 4227 50  0000 C CNN
F 2 "" H 7450 4400 50  0001 C CNN
F 3 "" H 7450 4400 50  0001 C CNN
	1    7450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4150 6450 4150
Wire Wire Line
	6400 4300 6400 4150
$Comp
L power:GND #PWR0103
U 1 1 5C32D3F7
P 6400 4300
F 0 "#PWR0103" H 6400 4050 50  0001 C CNN
F 1 "GND" H 6405 4127 50  0000 C CNN
F 2 "" H 6400 4300 50  0001 C CNN
F 3 "" H 6400 4300 50  0001 C CNN
	1    6400 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C32D3D9
P 3000 4500
F 0 "#PWR0102" H 3000 4250 50  0001 C CNN
F 1 "GND" H 3005 4327 50  0000 C CNN
F 2 "" H 3000 4500 50  0001 C CNN
F 3 "" H 3000 4500 50  0001 C CNN
	1    3000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4400 3000 4500
Wire Wire Line
	3150 4400 3000 4400
$Comp
L power:GND #PWR0101
U 1 1 5C32D365
P 4400 4550
F 0 "#PWR0101" H 4400 4300 50  0001 C CNN
F 1 "GND" H 4405 4377 50  0000 C CNN
F 2 "" H 4400 4550 50  0001 C CNN
F 3 "" H 4400 4550 50  0001 C CNN
	1    4400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4500 4400 4550
Wire Wire Line
	4200 4500 4400 4500
$Comp
L Encoder:EG1218 S1
U 1 1 5C32D155
P 5950 4050
F 0 "S1" H 5950 3725 50  0000 C CNN
F 1 "EG1218" H 5950 3816 50  0000 C CNN
F 2 "Encoder:Switch_Slide_11.6x4mm_EG1218" H 6150 4250 50  0001 L CNN
F 3 "http://spec_sheets.e-switch.com/specs/P040040.pdf" H 6150 4350 60  0001 L CNN
F 4 "EG1903-ND" H 6150 4450 60  0001 L CNN "Digi-Key_PN"
F 5 "EG1218" H 6150 4550 60  0001 L CNN "MPN"
F 6 "Switches" H 6150 4650 60  0001 L CNN "Category"
F 7 "Slide Switches" H 6150 4750 60  0001 L CNN "Family"
F 8 "http://spec_sheets.e-switch.com/specs/P040040.pdf" H 6150 4850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/e-switch/EG1218/EG1903-ND/101726" H 6150 4950 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH SLIDE SPDT 200MA 30V" H 6150 5050 60  0001 L CNN "Description"
F 11 "E-Switch" H 6150 5150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6150 5250 60  0001 L CNN "Status"
	1    5950 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5C345C89
P 5500 3600
F 0 "R1" H 5570 3646 50  0000 L CNN
F 1 "10K" H 5570 3555 50  0000 L CNN
F 2 "Encoder:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 5430 3600 50  0001 C CNN
F 3 "~" H 5500 3600 50  0001 C CNN
	1    5500 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5C345BC9
P 4950 3750
F 0 "D1" V 4996 3671 50  0000 R CNN
F 1 "D_Schottky" V 4905 3671 50  0000 R CNN
F 2 "Encoder:D_DO-201AD_P15.24mm_Horizontal" H 4950 3750 50  0001 C CNN
F 3 "~" H 4950 3750 50  0001 C CNN
	1    4950 3750
	0    -1   -1   0   
$EndComp
$Comp
L Encoder:MT3608A U3
U 1 1 5C345A5C
P 6950 4100
F 0 "U3" H 6900 4437 60  0000 C CNN
F 1 "MT3608A" H 6900 4331 60  0000 C CNN
F 2 "Encoder:Mt3608" H 6850 4100 60  0001 C CNN
F 3 "" H 6850 4100 60  0001 C CNN
	1    6950 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q1
U 1 1 5C345975
P 4500 4050
F 0 "Q1" V 4750 4050 50  0000 C CNN
F 1 "Q_PMOS_GDS" V 4841 4050 50  0000 C CNN
F 2 "Encoder:TO-220-3_Horizontal_TabDown" H 4700 4150 50  0001 C CNN
F 3 "~" H 4500 4050 50  0001 C CNN
	1    4500 4050
	0    1    1    0   
$EndComp
$Comp
L Encoder:03962A U1
U 1 1 5C345817
P 3700 4250
F 0 "U1" H 3675 4597 60  0000 C CNN
F 1 "03962A" H 3675 4491 60  0000 C CNN
F 2 "Encoder:03962A" H 3550 4150 60  0001 C CNN
F 3 "" H 3550 4150 60  0001 C CNN
	1    3700 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
