EESchema Schematic File Version 4
LIBS:CommunicationBoard-cache
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
$Comp
L Encoder:SSD1306OLED U1
U 1 1 5C2EB9CF
P 4500 3850
F 0 "U1" H 4122 3949 50  0000 R CNN
F 1 "SSD1306OLED" H 4122 4040 50  0000 R CNN
F 2 "Encoder:SSD1306" H 4500 3800 50  0001 C CNN
F 3 "" H 4500 3800 50  0001 C CNN
	1    4500 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 5C2EBC1C
P 4250 5150
F 0 "J3" V 4403 5063 50  0000 R CNN
F 1 "Conn_01x01_Male" V 4312 5063 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 4250 5150 50  0001 C CNN
F 3 "~" H 4250 5150 50  0001 C CNN
	1    4250 5150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 5C2EBC6E
P 4400 5150
F 0 "J4" V 4553 5063 50  0000 R CNN
F 1 "Conn_01x01_Male" V 4462 5063 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 4400 5150 50  0001 C CNN
F 3 "~" H 4400 5150 50  0001 C CNN
	1    4400 5150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 5C2EBC88
P 2150 4650
F 0 "J1" V 2303 4563 50  0000 R CNN
F 1 "Conn_01x01_Male" V 2212 4563 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 2150 4650 50  0001 C CNN
F 3 "~" H 2150 4650 50  0001 C CNN
	1    2150 4650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 5C2EBCA6
P 2150 4950
F 0 "J2" V 2210 4990 50  0000 L CNN
F 1 "Conn_01x01_Male" V 2301 4990 50  0000 L CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 2150 4950 50  0001 C CNN
F 3 "~" H 2150 4950 50  0001 C CNN
	1    2150 4950
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 5C2EBDAC
P 5950 5100
F 0 "J5" V 6103 5013 50  0000 R CNN
F 1 "Conn_01x01_Male" V 6012 5013 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 5950 5100 50  0001 C CNN
F 3 "~" H 5950 5100 50  0001 C CNN
	1    5950 5100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 5C2EBDFA
P 6050 5100
F 0 "J6" V 6203 5013 50  0000 R CNN
F 1 "Conn_01x01_Male" V 6112 5013 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 6050 5100 50  0001 C CNN
F 3 "~" H 6050 5100 50  0001 C CNN
	1    6050 5100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J7
U 1 1 5C2EBE22
P 6150 5100
F 0 "J7" V 6303 5013 50  0000 R CNN
F 1 "Conn_01x01_Male" V 6212 5013 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 6150 5100 50  0001 C CNN
F 3 "~" H 6150 5100 50  0001 C CNN
	1    6150 5100
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5C2EBF31
P 2150 4400
F 0 "#PWR01" H 2150 4250 50  0001 C CNN
F 1 "+3.3V" H 2165 4573 50  0000 C CNN
F 2 "" H 2150 4400 50  0001 C CNN
F 3 "" H 2150 4400 50  0001 C CNN
	1    2150 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C2EBFAD
P 2150 5250
F 0 "#PWR02" H 2150 5000 50  0001 C CNN
F 1 "GND" H 2155 5077 50  0000 C CNN
F 2 "" H 2150 5250 50  0001 C CNN
F 3 "" H 2150 5250 50  0001 C CNN
	1    2150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4450 2150 4400
Wire Wire Line
	2150 5250 2150 5150
Wire Wire Line
	4250 4250 4250 4300
Wire Wire Line
	4400 4250 4400 4450
Wire Wire Line
	6450 3600 6050 3600
Wire Wire Line
	6450 3500 5950 3500
Wire Wire Line
	6450 3700 6150 3700
$Comp
L power:GND #PWR05
U 1 1 5C2ECEFE
P 8500 4200
F 0 "#PWR05" H 8500 3950 50  0001 C CNN
F 1 "GND" H 8505 4027 50  0000 C CNN
F 2 "" H 8500 4200 50  0001 C CNN
F 3 "" H 8500 4200 50  0001 C CNN
	1    8500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4200 8500 4200
$Comp
L power:+3.3V #PWR06
U 1 1 5C2ED069
P 8800 4200
F 0 "#PWR06" H 8800 4050 50  0001 C CNN
F 1 "+3.3V" H 8815 4373 50  0000 C CNN
F 2 "" H 8800 4200 50  0001 C CNN
F 3 "" H 8800 4200 50  0001 C CNN
	1    8800 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 4100 8800 4100
Wire Wire Line
	8800 4100 8800 4200
NoConn ~ 8350 4000
NoConn ~ 8350 3900
NoConn ~ 8350 3800
NoConn ~ 8350 3700
NoConn ~ 8350 3500
NoConn ~ 8350 3400
NoConn ~ 8350 3300
NoConn ~ 8350 3100
NoConn ~ 6450 4200
NoConn ~ 6450 4100
NoConn ~ 6450 4000
NoConn ~ 6450 3900
NoConn ~ 6450 3400
NoConn ~ 6450 3300
NoConn ~ 6450 3200
NoConn ~ 6450 3100
$Comp
L power:+3.3V #PWR04
U 1 1 5C2EE7EF
P 4600 4550
F 0 "#PWR04" H 4600 4400 50  0001 C CNN
F 1 "+3.3V" H 4615 4723 50  0000 C CNN
F 2 "" H 4600 4550 50  0001 C CNN
F 3 "" H 4600 4550 50  0001 C CNN
	1    4600 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C2EE87D
P 4750 4700
F 0 "#PWR03" H 4750 4450 50  0001 C CNN
F 1 "GND" H 4755 4527 50  0000 C CNN
F 2 "" H 4750 4700 50  0001 C CNN
F 3 "" H 4750 4700 50  0001 C CNN
	1    4750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4550 4600 4450
Wire Wire Line
	4750 4250 4750 4700
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C2EF0BD
P 1750 4400
F 0 "#FLG01" H 1750 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 1750 4574 50  0000 C CNN
F 2 "" H 1750 4400 50  0001 C CNN
F 3 "~" H 1750 4400 50  0001 C CNN
	1    1750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4400 1750 4450
Wire Wire Line
	1750 4450 2150 4450
Connection ~ 2150 4450
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C2EF402
P 1750 5150
F 0 "#FLG02" H 1750 5225 50  0001 C CNN
F 1 "PWR_FLAG" H 1750 5324 50  0000 C CNN
F 2 "" H 1750 5150 50  0001 C CNN
F 3 "~" H 1750 5150 50  0001 C CNN
	1    1750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5150 2150 5150
Connection ~ 2150 5150
Wire Wire Line
	5950 3500 5950 4900
Wire Wire Line
	6050 3600 6050 4900
Wire Wire Line
	6150 3700 6150 4900
$Comp
L Encoder:RN4020-V_RM120 IC1
U 1 1 5C2EB132
P 7450 3600
F 0 "IC1" H 7400 4365 50  0000 C CNN
F 1 "RN4020-V_RM120" H 7400 4274 50  0000 C CNN
F 2 "Encoder:Bluetooth_Module_RN4020" H 8200 4200 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/8282856" H 8200 4100 50  0001 L CNN
F 4 "Microchip Bluetooth Development Module RN4020-V/RM120" H 8200 4000 50  0001 L CNN "Description"
F 5 "8282856" H 8200 3800 50  0001 L CNN "RS Part Number"
F 6 "Microchip" H 8200 3700 50  0001 L CNN "Manufacturer_Name"
F 7 "RN4020-V/RM120" H 8200 3600 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "70574112" H 8200 3500 50  0001 L CNN "Allied_Number"
	1    7450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4900 6300 3800
Wire Wire Line
	6300 3800 6450 3800
$Comp
L Connector:Conn_01x01_Male J8
U 1 1 5C31483E
P 6300 5100
F 0 "J8" V 6453 5013 50  0000 R CNN
F 1 "Conn_01x01_Male" V 6362 5013 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 6300 5100 50  0001 C CNN
F 3 "~" H 6300 5100 50  0001 C CNN
	1    6300 5100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J9
U 1 1 5C31521B
P 8150 5150
F 0 "J9" V 8303 5063 50  0000 R CNN
F 1 "Conn_01x01_Male" V 8212 5063 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 8150 5150 50  0001 C CNN
F 3 "~" H 8150 5150 50  0001 C CNN
	1    8150 5150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J10
U 1 1 5C31525D
P 8450 5150
F 0 "J10" V 8603 5063 50  0000 R CNN
F 1 "Conn_01x01_Male" V 8512 5063 50  0000 R CNN
F 2 "Encoder:PinHeader_1x01_P2.54mm_Vertical" H 8450 5150 50  0001 C CNN
F 3 "~" H 8450 5150 50  0001 C CNN
	1    8450 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 3600 9650 3600
Wire Wire Line
	9650 3600 9650 4700
Wire Wire Line
	9650 4700 8150 4700
Wire Wire Line
	8150 4700 8150 4950
Wire Wire Line
	8450 4950 8450 4800
Wire Wire Line
	8450 4800 9800 4800
Wire Wire Line
	9800 4800 9800 3200
Wire Wire Line
	9800 3200 8350 3200
$Comp
L Device:C C1
U 1 1 5C38FB11
P 9200 4250
F 0 "C1" H 9315 4296 50  0000 L CNN
F 1 "4.7uF" H 9315 4205 50  0000 L CNN
F 2 "Encoder:C_Disc_D9.0mm_W5.0mm_P5.00mm" H 9238 4100 50  0001 C CNN
F 3 "~" H 9200 4250 50  0001 C CNN
	1    9200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4100 9200 4100
Connection ~ 8800 4100
$Comp
L power:GND #PWR07
U 1 1 5C39082B
P 9200 4400
F 0 "#PWR07" H 9200 4150 50  0001 C CNN
F 1 "GND" H 9205 4227 50  0000 C CNN
F 2 "" H 9200 4400 50  0001 C CNN
F 3 "" H 9200 4400 50  0001 C CNN
	1    9200 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 5C678A53
P 3750 4300
F 0 "D1" H 3750 4084 50  0000 C CNN
F 1 "D_Zener" H 3750 4175 50  0000 C CNN
F 2 "Encoder:D_DO-201AD_P15.24mm_Horizontal" H 3750 4300 50  0001 C CNN
F 3 "~" H 3750 4300 50  0001 C CNN
	1    3750 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5C678AC5
P 3750 4450
F 0 "D2" H 3750 4234 50  0000 C CNN
F 1 "D_Zener" H 3750 4325 50  0000 C CNN
F 2 "Encoder:D_DO-201AD_P15.24mm_Horizontal" H 3750 4450 50  0001 C CNN
F 3 "~" H 3750 4450 50  0001 C CNN
	1    3750 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D3
U 1 1 5C678AF5
P 3750 4600
F 0 "D3" H 3750 4384 50  0000 C CNN
F 1 "D_Zener" H 3750 4475 50  0000 C CNN
F 2 "Encoder:D_DO-201AD_P15.24mm_Horizontal" H 3750 4600 50  0001 C CNN
F 3 "~" H 3750 4600 50  0001 C CNN
	1    3750 4600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C678B8A
P 3450 4650
F 0 "#PWR08" H 3450 4400 50  0001 C CNN
F 1 "GND" H 3455 4477 50  0000 C CNN
F 2 "" H 3450 4650 50  0001 C CNN
F 3 "" H 3450 4650 50  0001 C CNN
	1    3450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4600 3450 4600
Wire Wire Line
	3450 4600 3450 4650
Wire Wire Line
	3600 4450 3450 4450
Wire Wire Line
	3450 4450 3450 4600
Connection ~ 3450 4600
Wire Wire Line
	3600 4300 3450 4300
Wire Wire Line
	3450 4300 3450 4450
Connection ~ 3450 4450
Wire Wire Line
	3900 4300 4250 4300
Connection ~ 4250 4300
Wire Wire Line
	4250 4300 4250 4950
Wire Wire Line
	3900 4450 4400 4450
Connection ~ 4400 4450
Wire Wire Line
	4400 4450 4400 4950
Wire Wire Line
	3900 4600 4500 4600
Wire Wire Line
	4500 4600 4500 4450
Wire Wire Line
	4500 4450 4600 4450
Connection ~ 4600 4450
Wire Wire Line
	4600 4450 4600 4250
$EndSCHEMATC