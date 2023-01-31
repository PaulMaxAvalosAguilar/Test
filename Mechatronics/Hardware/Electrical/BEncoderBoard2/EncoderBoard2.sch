EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 2
Title "Encoder MCU"
Date "2020-06-30"
Rev "v1"
Comp "S.D.T."
Comment1 "Author:Paul Max Avalos Aguilar"
Comment2 "SingleBoardEncoder2"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 5C285A10
P 900 2300
F 0 "R1" H 970 2346 50  0000 L CNN
F 1 "560" H 970 2255 50  0000 L CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 830 2300 50  0001 C CNN
F 3 "~" H 900 2300 50  0001 C CNN
	1    900  2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C285A71
P 900 3400
F 0 "R2" H 950 3450 50  0000 L CNN
F 1 "560" H 950 3350 50  0000 L CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 830 3400 50  0001 C CNN
F 3 "~" H 900 3400 50  0001 C CNN
	1    900  3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C2863B3
P 900 2450
F 0 "#PWR0110" H 900 2200 50  0001 C CNN
F 1 "GND" H 905 2277 50  0000 C CNN
F 2 "" H 900 2450 50  0001 C CNN
F 3 "" H 900 2450 50  0001 C CNN
	1    900  2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5C2895D3
P 1800 1850
F 0 "#PWR0112" H 1800 1600 50  0001 C CNN
F 1 "GND" H 1805 1677 50  0000 C CNN
F 2 "" H 1800 1850 50  0001 C CNN
F 3 "" H 1800 1850 50  0001 C CNN
	1    1800 1850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C289611
P 1800 2950
F 0 "#PWR0113" H 1800 2700 50  0001 C CNN
F 1 "GND" H 1805 2777 50  0000 C CNN
F 2 "" H 1800 2950 50  0001 C CNN
F 3 "" H 1800 2950 50  0001 C CNN
	1    1800 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 1850 1800 1850
Wire Wire Line
	1800 2950 1600 2950
$Comp
L Device:R R3
U 1 1 5C28C76B
P 1950 1900
F 0 "R3" H 2020 1946 50  0000 L CNN
F 1 "1.2K" H 2020 1855 50  0000 L CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1880 1900 50  0001 C CNN
F 3 "~" H 1950 1900 50  0001 C CNN
	1    1950 1900
	1    0    0    -1  
$EndComp
Text Label 2150 2050 0    50   ~ 0
SIGB
Wire Wire Line
	1600 2050 1950 2050
Wire Wire Line
	1950 2050 2350 2050
Connection ~ 1950 2050
$Comp
L Device:R R4
U 1 1 5C293966
P 1950 3000
F 0 "R4" H 2020 3046 50  0000 L CNN
F 1 "1.2K" H 2020 2955 50  0000 L CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1880 3000 50  0001 C CNN
F 3 "~" H 1950 3000 50  0001 C CNN
	1    1950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3150 1950 3150
Wire Wire Line
	1950 3150 2350 3150
Connection ~ 1950 3150
Text Label 2150 3150 0    50   ~ 0
SIGA
$Comp
L Encoder:Q_PMOS_GSD Q3
U 1 1 5D553268
P 1150 1150
F 0 "Q3" H 1250 950 50  0000 C CNN
F 1 "Q_PMOS_GSD" H 1250 850 50  0000 C CNN
F 2 "Encoder:SOT-23" V 1350 1000 50  0001 C CNN
F 3 "~" V 1150 1200 50  0001 C CNN
	1    1150 1150
	1    0    0    -1  
$EndComp
Text Label 1550 900  2    50   ~ 0
EncEnable
Wire Wire Line
	1550 900  1150 900 
$Comp
L power:+3.3V #PWR017
U 1 1 5D59FF5B
P 1350 1200
F 0 "#PWR017" H 1350 1050 50  0001 C CNN
F 1 "+3.3V" H 1365 1373 50  0000 C CNN
F 2 "" H 1350 1200 50  0001 C CNN
F 3 "" H 1350 1200 50  0001 C CNN
	1    1350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1750 1950 1550
Wire Wire Line
	1950 2850 2450 2850
Wire Wire Line
	2450 2850 2450 1550
Wire Wire Line
	2450 1550 1950 1550
Connection ~ 1950 1550
Wire Wire Line
	750  2950 750  1850
Wire Wire Line
	750  1200 950  1200
Wire Wire Line
	750  2950 1000 2950
Wire Wire Line
	750  1550 1950 1550
Connection ~ 750  1550
Wire Wire Line
	750  1550 750  1200
Wire Wire Line
	750  1850 1000 1850
Connection ~ 750  1850
Wire Wire Line
	750  1850 750  1550
$Comp
L Encoder:RN4871 U4
U 1 1 5EF99AFA
P 8850 3100
F 0 "U4" H 8900 3865 50  0000 C CNN
F 1 "RN4871" H 8900 3774 50  0000 C CNN
F 2 "Encoder:Bluetooth_Module_RN4871" H 8800 3200 50  0001 C CNN
F 3 "" H 8800 3200 50  0001 C CNN
	1    8850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5EFB47B2
P 6200 5600
F 0 "C8" H 6315 5646 50  0000 L CNN
F 1 "100nF" H 6315 5555 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6238 5450 50  0001 C CNN
F 3 "~" H 6200 5600 50  0001 C CNN
	1    6200 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5EFB5210
P 6950 3250
F 0 "C9" V 6698 3250 50  0000 C CNN
F 1 "100nF" V 6789 3250 50  0000 C CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6988 3100 50  0001 C CNN
F 3 "~" H 6950 3250 50  0001 C CNN
	1    6950 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 3250 6650 3250
Wire Wire Line
	6200 5450 6200 5400
$Comp
L power:GND #PWR0102
U 1 1 5EFDFF05
P 7100 3250
F 0 "#PWR0102" H 7100 3000 50  0001 C CNN
F 1 "GND" H 7105 3077 50  0000 C CNN
F 2 "" H 7100 3250 50  0001 C CNN
F 3 "" H 7100 3250 50  0001 C CNN
	1    7100 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EFE01EC
P 6200 5750
F 0 "#PWR0103" H 6200 5500 50  0001 C CNN
F 1 "GND" H 6205 5577 50  0000 C CNN
F 2 "" H 6200 5750 50  0001 C CNN
F 3 "" H 6200 5750 50  0001 C CNN
	1    6200 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5EFE06DB
P 3650 2650
F 0 "C3" H 3765 2696 50  0000 L CNN
F 1 "4.7uF" H 3765 2605 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3688 2500 50  0001 C CNN
F 3 "~" H 3650 2650 50  0001 C CNN
	1    3650 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5EFE29C0
P 3650 2100
F 0 "#PWR0104" H 3650 1950 50  0001 C CNN
F 1 "+3.3V" H 3665 2273 50  0000 C CNN
F 2 "" H 3650 2100 50  0001 C CNN
F 3 "" H 3650 2100 50  0001 C CNN
	1    3650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3250 6800 2750
Connection ~ 6800 3250
Wire Wire Line
	6200 5400 6700 5400
Connection ~ 6200 5400
Wire Wire Line
	6200 5400 6200 5300
Text Label 6800 2900 3    50   ~ 0
Supply
Text Label 3650 2200 3    50   ~ 0
Supply
$Comp
L power:GND #PWR0107
U 1 1 5EFDF331
P 4150 2600
F 0 "#PWR0107" H 4150 2350 50  0001 C CNN
F 1 "GND" H 4155 2427 50  0000 C CNN
F 2 "" H 4150 2600 50  0001 C CNN
F 3 "" H 4150 2600 50  0001 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5EFB3530
P 4300 2600
F 0 "C5" V 4048 2600 50  0000 C CNN
F 1 "100nF" V 4139 2600 50  0000 C CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4338 2450 50  0001 C CNN
F 3 "~" H 4300 2600 50  0001 C CNN
	1    4300 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2150 4550 2600
Wire Wire Line
	4550 2600 4450 2600
Connection ~ 4550 2600
Wire Wire Line
	4550 2600 4550 2750
Text Label 6350 5400 0    50   ~ 0
Supply
$Comp
L Device:C C7
U 1 1 5F05A8A9
P 5750 6050
F 0 "C7" H 5600 6150 50  0000 L CNN
F 1 "10nF" H 5550 5950 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5788 5900 50  0001 C CNN
F 3 "~" H 5750 6050 50  0001 C CNN
	1    5750 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5F07D03B
P 5450 5900
F 0 "#PWR0108" H 5450 5750 50  0001 C CNN
F 1 "+3.3V" H 5465 6028 50  0000 L CNN
F 2 "" H 5450 5900 50  0001 C CNN
F 3 "" H 5450 5900 50  0001 C CNN
	1    5450 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F07EA18
P 5750 6200
F 0 "#PWR0109" H 5750 5950 50  0001 C CNN
F 1 "GND" H 5755 6027 50  0000 C CNN
F 2 "" H 5750 6200 50  0001 C CNN
F 3 "" H 5750 6200 50  0001 C CNN
	1    5750 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F07F709
P 5450 6200
F 0 "#PWR0114" H 5450 5950 50  0001 C CNN
F 1 "GND" H 5455 6027 50  0000 C CNN
F 2 "" H 5450 6200 50  0001 C CNN
F 3 "" H 5450 6200 50  0001 C CNN
	1    5450 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5EFA0713
P 6050 5300
F 0 "#PWR0115" H 6050 5050 50  0001 C CNN
F 1 "GND" H 6055 5127 50  0000 C CNN
F 2 "" H 6050 5300 50  0001 C CNN
F 3 "" H 6050 5300 50  0001 C CNN
	1    6050 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5EFA0B47
P 5450 5300
F 0 "#PWR0116" H 5450 5050 50  0001 C CNN
F 1 "GND" H 5455 5127 50  0000 C CNN
F 2 "" H 5450 5300 50  0001 C CNN
F 3 "" H 5450 5300 50  0001 C CNN
	1    5450 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5EFA1034
P 6650 3400
F 0 "#PWR0117" H 6650 3150 50  0001 C CNN
F 1 "GND" H 6655 3227 50  0000 C CNN
F 2 "" H 6650 3400 50  0001 C CNN
F 3 "" H 6650 3400 50  0001 C CNN
	1    6650 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5EFA19C6
P 4700 2750
F 0 "#PWR0118" H 4700 2500 50  0001 C CNN
F 1 "GND" H 4705 2577 50  0000 C CNN
F 2 "" H 4700 2750 50  0001 C CNN
F 3 "" H 4700 2750 50  0001 C CNN
	1    4700 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 5EFA1FD1
P 3900 4150
F 0 "C4" V 3850 4000 50  0000 C CNN
F 1 "100nF" V 3850 3800 50  0000 C CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3938 4000 50  0001 C CNN
F 3 "~" H 3900 4150 50  0001 C CNN
	1    3900 4150
	0    1    1    0   
$EndComp
Connection ~ 2650 4000
Wire Wire Line
	2650 4000 2650 4150
Wire Wire Line
	3750 3850 3750 3700
Wire Wire Line
	4050 3850 3750 3850
Wire Wire Line
	3350 4000 4050 4000
Wire Wire Line
	3350 3700 3750 3700
Wire Wire Line
	3350 3700 3200 3700
Wire Wire Line
	3200 4000 3350 4000
Wire Wire Line
	2900 3700 2650 3700
Wire Wire Line
	2650 4000 2650 3700
Wire Wire Line
	2900 4000 2650 4000
$Comp
L Device:C C1
U 1 1 5EFB0E20
P 3050 3700
F 0 "C1" V 3250 3700 50  0000 C CNN
F 1 "12pF" V 3350 3700 50  0000 C CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3088 3550 50  0001 C CNN
F 3 "~" H 3050 3700 50  0001 C CNN
	1    3050 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5EFB0E1A
P 3050 4000
F 0 "C2" V 2798 4000 50  0000 C CNN
F 1 "12pF" V 2889 4000 50  0000 C CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3088 3850 50  0001 C CNN
F 3 "~" H 3050 4000 50  0001 C CNN
	1    3050 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5EFB0E14
P 3350 3850
F 0 "Y1" V 3350 3600 50  0000 L CNN
F 1 "8Mhz" V 3450 3550 50  0000 L CNN
F 2 "Encoder:Crystal_HC49-U_Vertical" H 3350 3850 50  0001 C CNN
F 3 "~" H 3350 3850 50  0001 C CNN
	1    3350 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5EFD5306
P 2650 4150
F 0 "#PWR0119" H 2650 3900 50  0001 C CNN
F 1 "GND" H 2655 3977 50  0000 C CNN
F 2 "" H 2650 4150 50  0001 C CNN
F 3 "" H 2650 4150 50  0001 C CNN
	1    2650 4150
	1    0    0    -1  
$EndComp
Connection ~ 3350 3700
Connection ~ 3350 4000
Wire Wire Line
	6050 2250 6050 2750
Wire Wire Line
	6200 2750 6200 2250
Text Label 6050 2650 1    50   ~ 0
SWCLK
Text Label 6200 2650 1    50   ~ 0
SWDIO
Wire Wire Line
	5900 2750 5900 2650
Wire Wire Line
	5750 2750 5750 2550
Text Label 5900 2700 1    50   ~ 0
TIM2_CH1
Text Label 5750 2700 1    50   ~ 0
TIM2_CH2
$Comp
L power:GND #PWR0120
U 1 1 5F070E6F
P 5000 2000
F 0 "#PWR0120" H 5000 1750 50  0001 C CNN
F 1 "GND" H 5005 1827 50  0000 C CNN
F 2 "" H 5000 2000 50  0001 C CNN
F 3 "" H 5000 2000 50  0001 C CNN
	1    5000 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5F070E68
P 5000 2150
F 0 "R5" V 5000 2100 50  0000 L CNN
F 1 "10K" V 5070 2105 50  0000 L CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4930 2150 50  0001 C CNN
F 3 "~" H 5000 2150 50  0001 C CNN
	1    5000 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2750 5000 2300
Text Label 4700 5600 1    50   ~ 0
2SIN+
Text Label 4850 5600 1    50   ~ 0
2SIN-
Text Label 5300 5600 1    50   ~ 0
2COS+
Text Label 4550 5600 1    50   ~ 0
2COS-
Wire Wire Line
	5150 2750 5150 2650
Wire Wire Line
	5450 2750 5450 2550
Text Label 5150 2650 0    0    ~ 0
LPTIM1_IN2
Text Label 5150 2650 1    0    ~ 0
LPTIM1_IN2
Text Label 5150 2700 1    50   ~ 0
LPTIM1_IN2
Text Label 5450 2700 1    50   ~ 0
LPTIM1_IN1
Wire Wire Line
	5450 2550 5750 2550
Connection ~ 5450 2550
Connection ~ 5750 2550
Wire Wire Line
	5750 2550 5750 2250
Wire Wire Line
	5150 2650 5900 2650
Connection ~ 5150 2650
Connection ~ 5900 2650
Wire Wire Line
	5900 2650 5900 2250
$Comp
L power:GND #PWR0121
U 1 1 5EFD5BCD
P 8250 2750
F 0 "#PWR0121" H 8250 2500 50  0001 C CNN
F 1 "GND" H 8255 2577 50  0000 C CNN
F 2 "" H 8250 2750 50  0001 C CNN
F 3 "" H 8250 2750 50  0001 C CNN
	1    8250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2750 8250 2750
Wire Wire Line
	8750 3550 8750 3850
Wire Wire Line
	8850 3550 8850 3850
Wire Wire Line
	9050 3550 9050 3600
Wire Wire Line
	9050 3600 9500 3600
$Comp
L power:GND #PWR0122
U 1 1 5F010DFE
P 9500 3950
F 0 "#PWR0122" H 9500 3700 50  0001 C CNN
F 1 "GND" H 9505 3777 50  0000 C CNN
F 2 "" H 9500 3950 50  0001 C CNN
F 3 "" H 9500 3950 50  0001 C CNN
	1    9500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3650 9500 3600
$Comp
L power:+3.3V #PWR0123
U 1 1 5F020B7D
P 9500 3550
F 0 "#PWR0123" H 9500 3400 50  0001 C CNN
F 1 "+3.3V" H 9515 3723 50  0000 C CNN
F 2 "" H 9500 3550 50  0001 C CNN
F 3 "" H 9500 3550 50  0001 C CNN
	1    9500 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F0318C4
P 9500 3800
F 0 "C10" H 9615 3846 50  0000 L CNN
F 1 "1uF" H 9615 3755 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9538 3650 50  0001 C CNN
F 3 "~" H 9500 3800 50  0001 C CNN
	1    9500 3800
	1    0    0    -1  
$EndComp
Connection ~ 9500 3600
Wire Wire Line
	9500 3600 9500 3550
NoConn ~ 8450 2850
NoConn ~ 8450 2950
NoConn ~ 8450 3050
NoConn ~ 8450 2650
NoConn ~ 9350 3050
NoConn ~ 9350 2750
Wire Wire Line
	9350 2950 9650 2950
Wire Wire Line
	9650 2950 9650 3050
$Comp
L power:GND #PWR0124
U 1 1 5F0E1058
P 9650 3050
F 0 "#PWR0124" H 9650 2800 50  0001 C CNN
F 1 "GND" H 9655 2877 50  0000 C CNN
F 2 "" H 9650 3050 50  0001 C CNN
F 3 "" H 9650 3050 50  0001 C CNN
	1    9650 3050
	1    0    0    -1  
$EndComp
Text Label 8750 3800 1    50   ~ 0
BLERX
Text Label 8850 3800 1    50   ~ 0
BLETX
NoConn ~ 8650 3550
NoConn ~ 8950 3550
Wire Wire Line
	9350 2850 9500 2850
Wire Wire Line
	9500 2850 9500 2650
Wire Wire Line
	9500 2650 9350 2650
Connection ~ 9500 2850
Wire Wire Line
	9500 2850 10000 2850
$Comp
L power:+3.3V #PWR0125
U 1 1 5F14E77C
P 10100 2850
F 0 "#PWR0125" H 10100 2700 50  0001 C CNN
F 1 "+3.3V" H 10115 3023 50  0000 C CNN
F 2 "" H 10100 2850 50  0001 C CNN
F 3 "" H 10100 2850 50  0001 C CNN
	1    10100 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F14F9A6
P 10000 3000
F 0 "C11" H 10115 3046 50  0000 L CNN
F 1 "10uF" H 10115 2955 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10038 2850 50  0001 C CNN
F 3 "~" H 10000 3000 50  0001 C CNN
	1    10000 3000
	1    0    0    -1  
$EndComp
Connection ~ 10000 2850
Wire Wire Line
	10000 2850 10100 2850
$Comp
L power:GND #PWR0126
U 1 1 5F15062E
P 10000 3150
F 0 "#PWR0126" H 10000 2900 50  0001 C CNN
F 1 "GND" H 10005 2977 50  0000 C CNN
F 2 "" H 10000 3150 50  0001 C CNN
F 3 "" H 10000 3150 50  0001 C CNN
	1    10000 3150
	1    0    0    -1  
$EndComp
Text Label 6700 3850 0    50   ~ 0
USART1RX
Text Label 7400 3850 2    50   ~ 0
BLETX
Wire Wire Line
	6650 3850 7450 3850
Text Label 5300 2350 3    50   ~ 0
USART1TX
Text Label 5300 2050 3    50   ~ 0
BLERX
Wire Wire Line
	5450 1950 5450 2550
Wire Wire Line
	5150 1950 5150 2650
Text Label 5150 2150 1    50   ~ 0
SIGB
Text Label 3600 4750 0    50   ~ 0
1COS-
Text Label 3600 4600 0    50   ~ 0
1COS+
Text Label 3600 4450 0    50   ~ 0
1SIN-
Text Label 3600 4300 0    50   ~ 0
1SIN+
Wire Wire Line
	4050 4750 3500 4750
Wire Wire Line
	4050 4600 3500 4600
Wire Wire Line
	4050 4450 3500 4450
Wire Wire Line
	4050 4300 3500 4300
$Comp
L power:GND #PWR0127
U 1 1 5EFA2AF5
P 3350 4250
F 0 "#PWR0127" H 3350 4000 50  0001 C CNN
F 1 "GND" H 3355 4077 50  0000 C CNN
F 2 "" H 3350 4250 50  0001 C CNN
F 3 "" H 3350 4250 50  0001 C CNN
	1    3350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4250 3350 4150
Wire Wire Line
	3350 4150 3750 4150
Wire Wire Line
	6650 4150 7450 4150
Wire Wire Line
	6650 4000 7450 4000
Text Label 6700 4000 0    50   ~ 0
I2C2SCL
Text Label 6700 4150 0    50   ~ 0
I2C2SDA
Wire Wire Line
	5750 5900 5450 5900
Connection ~ 5750 5900
$Sheet
S 7900 1500 700  350 
U 5F11DB77
F0 "Power" 50
F1 "Power.sch" 50
$EndSheet
$Comp
L Connector:Conn_01x08_Male J1
U 1 1 5F170274
P 1300 6900
F 0 "J1" H 1200 6900 50  0000 C CNN
F 1 "MagSensors_Conn" H 1550 7350 50  0000 C CNN
F 2 "Encoder:PinHeader_1x08_P2.54mm_Vertical" H 1300 6900 50  0001 C CNN
F 3 "~" H 1300 6900 50  0001 C CNN
	1    1300 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6600 1850 6600
Wire Wire Line
	1500 6700 1850 6700
Wire Wire Line
	1500 6800 1850 6800
Wire Wire Line
	1500 6900 1850 6900
Wire Wire Line
	1500 7000 1850 7000
Wire Wire Line
	1500 7100 1850 7100
Wire Wire Line
	1500 7200 1850 7200
Wire Wire Line
	1500 7300 1850 7300
Text Label 2150 6600 0    50   ~ 0
1SIN+
Text Label 2150 6700 0    50   ~ 0
1SIN-
Text Label 2150 6800 0    50   ~ 0
1COS+
Text Label 2150 6900 0    50   ~ 0
1COS-
Text Label 2450 7000 2    50   ~ 0
2COS-
Text Label 2450 7100 2    50   ~ 0
2SIN+
Text Label 2400 7200 2    50   ~ 0
2SIN-
Text Label 2450 7300 2    50   ~ 0
2COS+
$Comp
L power:GND #PWR0128
U 1 1 5F196248
P 900 3550
F 0 "#PWR0128" H 900 3300 50  0001 C CNN
F 1 "GND" H 905 3377 50  0000 C CNN
F 2 "" H 900 3550 50  0001 C CNN
F 3 "" H 900 3550 50  0001 C CNN
	1    900  3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1200 5100 1200
Wire Wire Line
	5450 1400 5100 1400
Wire Wire Line
	5450 1500 5100 1500
Text Label 5450 1500 2    50   ~ 0
OLEDSDA
Text Label 5450 1400 2    50   ~ 0
OLEDSCL
$Comp
L power:+3.3V #PWR02
U 1 1 5F234953
P 5100 1200
F 0 "#PWR02" H 5100 1050 50  0001 C CNN
F 1 "+3.3V" H 5115 1373 50  0000 C CNN
F 2 "" H 5100 1200 50  0001 C CNN
F 3 "" H 5100 1200 50  0001 C CNN
	1    5100 1200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F235EDB
P 4900 1300
F 0 "#PWR01" H 4900 1050 50  0001 C CNN
F 1 "GND" H 4850 1150 50  0000 C CNN
F 2 "" H 4900 1300 50  0001 C CNN
F 3 "" H 4900 1300 50  0001 C CNN
	1    4900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1300 5450 1300
Text Label 5450 1100 2    50   ~ 0
SWDIO
Wire Wire Line
	5450 1100 5100 1100
Wire Wire Line
	5450 1000 5100 1000
Text Label 5450 1000 2    50   ~ 0
SWCLK
Text Label 7400 4000 2    50   ~ 0
OLEDSCL
Text Label 7400 4150 2    50   ~ 0
OLEDSDA
NoConn ~ 5600 2750
NoConn ~ 4050 3400
NoConn ~ 4050 3550
NoConn ~ 4050 4900
NoConn ~ 5600 5300
NoConn ~ 6650 3700
NoConn ~ 6650 3550
NoConn ~ 9150 3550
Text Label 5450 2150 1    50   ~ 0
SIGA
Wire Wire Line
	4850 2750 4850 1950
Text Label 4850 2300 3    50   ~ 0
EncEnable
Text GLabel 7700 4150 1    50   Input ~ 0
Batt+
Connection ~ 5450 5900
$Comp
L Device:C C6
U 1 1 5F05B729
P 5450 6050
F 0 "C6" H 5250 6100 50  0000 L CNN
F 1 "1uF" H 5250 5950 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5488 5900 50  0001 C CNN
F 3 "~" H 5450 6050 50  0001 C CNN
	1    5450 6050
	1    0    0    -1  
$EndComp
NoConn ~ 4050 3250
Wire Wire Line
	5300 2750 5300 1950
NoConn ~ 4050 3700
NoConn ~ 5900 5300
NoConn ~ 6650 4900
$Comp
L Device:R R11
U 1 1 5F04A231
P 2000 6600
F 0 "R11" V 1950 6400 50  0000 C CNN
F 1 "100" V 2000 6600 50  0000 C CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1930 6600 50  0001 C CNN
F 3 "~" H 2000 6600 50  0001 C CNN
	1    2000 6600
	0    1    -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5F04DC3F
P 2000 6700
F 0 "R12" V 1950 6500 50  0000 C CNN
F 1 "100" V 2000 6700 50  0000 C CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1930 6700 50  0001 C CNN
F 3 "~" H 2000 6700 50  0001 C CNN
	1    2000 6700
	0    1    -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 5F04DE20
P 2000 6800
F 0 "R13" V 1950 6600 50  0000 C CNN
F 1 "100" V 2000 6800 50  0000 C CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1930 6800 50  0001 C CNN
F 3 "~" H 2000 6800 50  0001 C CNN
	1    2000 6800
	0    1    -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 5F04DF97
P 2000 6900
F 0 "R14" V 1950 6700 50  0000 C CNN
F 1 "100" V 2000 6900 50  0000 C CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1930 6900 50  0001 C CNN
F 3 "~" H 2000 6900 50  0001 C CNN
	1    2000 6900
	0    1    -1   0   
$EndComp
$Comp
L Device:R R15
U 1 1 5F04E059
P 2000 7000
F 0 "R15" V 1950 6800 50  0000 C CNN
F 1 "100" V 2000 7000 50  0000 C CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1930 7000 50  0001 C CNN
F 3 "~" H 2000 7000 50  0001 C CNN
	1    2000 7000
	0    1    -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 5F04E1B1
P 2000 7100
F 0 "R16" V 1950 6900 50  0000 C CNN
F 1 "100" V 2000 7100 50  0000 C CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1930 7100 50  0001 C CNN
F 3 "~" H 2000 7100 50  0001 C CNN
	1    2000 7100
	0    1    -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 5F04E323
P 2000 7200
F 0 "R17" V 1950 7000 50  0000 C CNN
F 1 "100" V 2000 7200 50  0000 C CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1930 7200 50  0001 C CNN
F 3 "~" H 2000 7200 50  0001 C CNN
	1    2000 7200
	0    1    -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 5F04E45C
P 2000 7300
F 0 "R18" V 1950 7100 50  0000 C CNN
F 1 "100" V 2000 7300 50  0000 C CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1930 7300 50  0001 C CNN
F 3 "~" H 2000 7300 50  0001 C CNN
	1    2000 7300
	0    1    -1   0   
$EndComp
Wire Wire Line
	2150 6600 2450 6600
$Comp
L Device:C C19
U 1 1 5F07A585
P 2450 6450
F 0 "C19" H 2565 6496 50  0000 L CNN
F 1 "3.2uF" H 2565 6405 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2488 6300 50  0001 C CNN
F 3 "~" H 2450 6450 50  0001 C CNN
	1    2450 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5F07B529
P 2750 6550
F 0 "C20" H 2865 6596 50  0000 L CNN
F 1 "3.2uF" H 2865 6505 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2788 6400 50  0001 C CNN
F 3 "~" H 2750 6550 50  0001 C CNN
	1    2750 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 5F07B93B
P 3050 6650
F 0 "C21" H 3165 6696 50  0000 L CNN
F 1 "3.2uF" H 3165 6605 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3088 6500 50  0001 C CNN
F 3 "~" H 3050 6650 50  0001 C CNN
	1    3050 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 5F07C00C
P 3350 6750
F 0 "C22" H 3465 6796 50  0000 L CNN
F 1 "3.2uF" H 3465 6705 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3388 6600 50  0001 C CNN
F 3 "~" H 3350 6750 50  0001 C CNN
	1    3350 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5F07C451
P 3650 6850
F 0 "C23" H 3765 6896 50  0000 L CNN
F 1 "3.2uF" H 3765 6805 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3688 6700 50  0001 C CNN
F 3 "~" H 3650 6850 50  0001 C CNN
	1    3650 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 5F07C9CD
P 3950 6950
F 0 "C24" H 4065 6996 50  0000 L CNN
F 1 "3.2uF" H 4065 6905 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3988 6800 50  0001 C CNN
F 3 "~" H 3950 6950 50  0001 C CNN
	1    3950 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 5F07CF2A
P 4250 7050
F 0 "C25" H 4365 7096 50  0000 L CNN
F 1 "3.2uF" H 4365 7005 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4288 6900 50  0001 C CNN
F 3 "~" H 4250 7050 50  0001 C CNN
	1    4250 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 5F086FF0
P 4550 7150
F 0 "C26" H 4665 7196 50  0000 L CNN
F 1 "3.2uF" H 4665 7105 50  0000 L CNN
F 2 "Encoder:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4588 7000 50  0001 C CNN
F 3 "~" H 4550 7150 50  0001 C CNN
	1    4550 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6700 2750 6700
Wire Wire Line
	2150 6800 3050 6800
Wire Wire Line
	2150 6900 3350 6900
Wire Wire Line
	2150 7000 3650 7000
Wire Wire Line
	2150 7100 3950 7100
Wire Wire Line
	2150 7200 4250 7200
Wire Wire Line
	2150 7300 4550 7300
$Comp
L power:GND #PWR03
U 1 1 5F0A364D
P 2450 6300
F 0 "#PWR03" H 2450 6050 50  0001 C CNN
F 1 "GND" H 2455 6127 50  0000 C CNN
F 2 "" H 2450 6300 50  0001 C CNN
F 3 "" H 2450 6300 50  0001 C CNN
	1    2450 6300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F0A3F67
P 2750 6400
F 0 "#PWR04" H 2750 6150 50  0001 C CNN
F 1 "GND" H 2755 6227 50  0000 C CNN
F 2 "" H 2750 6400 50  0001 C CNN
F 3 "" H 2750 6400 50  0001 C CNN
	1    2750 6400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F0A4192
P 3050 6500
F 0 "#PWR05" H 3050 6250 50  0001 C CNN
F 1 "GND" H 3055 6327 50  0000 C CNN
F 2 "" H 3050 6500 50  0001 C CNN
F 3 "" H 3050 6500 50  0001 C CNN
	1    3050 6500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F0A437F
P 3350 6600
F 0 "#PWR06" H 3350 6350 50  0001 C CNN
F 1 "GND" H 3355 6427 50  0000 C CNN
F 2 "" H 3350 6600 50  0001 C CNN
F 3 "" H 3350 6600 50  0001 C CNN
	1    3350 6600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F0A45D4
P 3650 6700
F 0 "#PWR07" H 3650 6450 50  0001 C CNN
F 1 "GND" H 3655 6527 50  0000 C CNN
F 2 "" H 3650 6700 50  0001 C CNN
F 3 "" H 3650 6700 50  0001 C CNN
	1    3650 6700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F0A4815
P 3950 6800
F 0 "#PWR08" H 3950 6550 50  0001 C CNN
F 1 "GND" H 3955 6627 50  0000 C CNN
F 2 "" H 3950 6800 50  0001 C CNN
F 3 "" H 3950 6800 50  0001 C CNN
	1    3950 6800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F0A4A4C
P 4250 6900
F 0 "#PWR09" H 4250 6650 50  0001 C CNN
F 1 "GND" H 4255 6727 50  0000 C CNN
F 2 "" H 4250 6900 50  0001 C CNN
F 3 "" H 4250 6900 50  0001 C CNN
	1    4250 6900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F0E5227
P 4550 7000
F 0 "#PWR010" H 4550 6750 50  0001 C CNN
F 1 "GND" H 4555 6827 50  0000 C CNN
F 2 "" H 4550 7000 50  0001 C CNN
F 3 "" H 4550 7000 50  0001 C CNN
	1    4550 7000
	-1   0    0    1   
$EndComp
NoConn ~ 5000 5300
NoConn ~ 5150 5300
Text GLabel 6650 4750 2    50   Input ~ 0
VCC
NoConn ~ 6650 4300
Wire Wire Line
	4550 5300 4550 5700
Wire Wire Line
	4700 5300 4700 5700
Wire Wire Line
	4850 5300 4850 5700
Wire Wire Line
	5300 5300 5300 5700
Wire Wire Line
	5750 5300 5750 5900
$Comp
L Encoder:STM32G431CBT6 U1
U 1 1 5EF8C6BF
P 5350 4100
F 0 "U1" H 5300 4250 50  0000 L CNN
F 1 "STM32G431CBT6" H 5050 4050 50  0000 L CNN
F 2 "Encoder:LQFP-48_7x7mm_P0.5mm" H 5050 4250 50  0001 C CNN
F 3 "" H 5050 4250 50  0001 C CNN
	1    5350 4100
	1    0    0    -1  
$EndComp
NoConn ~ 6650 4600
$Comp
L Device:R R19
U 1 1 5F0F6150
P 7700 4300
F 0 "R19" H 7770 4346 50  0000 L CNN
F 1 "10K" H 7770 4255 50  0000 L CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7630 4300 50  0001 C CNN
F 3 "~" H 7700 4300 50  0001 C CNN
	1    7700 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5F0F6BEE
P 7700 4600
F 0 "R20" H 7770 4646 50  0000 L CNN
F 1 "10K" H 7770 4555 50  0000 L CNN
F 2 "Encoder:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7630 4600 50  0001 C CNN
F 3 "~" H 7700 4600 50  0001 C CNN
	1    7700 4600
	1    0    0    -1  
$EndComp
Connection ~ 7700 4450
$Comp
L power:GND #PWR0105
U 1 1 5F0FACD0
P 7700 4750
F 0 "#PWR0105" H 7700 4500 50  0001 C CNN
F 1 "GND" H 7705 4577 50  0000 C CNN
F 2 "" H 7700 4750 50  0001 C CNN
F 3 "" H 7700 4750 50  0001 C CNN
	1    7700 4750
	1    0    0    -1  
$EndComp
Text Notes 6850 4800 0    50   ~ 0
*Config as digital\ninput always!!\n
Wire Wire Line
	6650 4450 7700 4450
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5F087510
P 3800 750
F 0 "J6" V 3862 894 50  0000 L CNN
F 1 "MagSensors_Power" V 3953 894 50  0000 L CNN
F 2 "Encoder:PinHeader_2x02_P2.54mm_Vertical" H 3800 750 50  0001 C CNN
F 3 "~" H 3800 750 50  0001 C CNN
	1    3800 750 
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 5F088CE6
P 3650 1100
F 0 "#PWR011" H 3650 950 50  0001 C CNN
F 1 "+3.3V" V 3650 1350 50  0000 C CNN
F 2 "" H 3650 1100 50  0001 C CNN
F 3 "" H 3650 1100 50  0001 C CNN
	1    3650 1100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F08ACC7
P 3850 1100
F 0 "#PWR012" H 3850 850 50  0001 C CNN
F 1 "GND" V 3850 900 50  0000 C CNN
F 2 "" H 3850 1100 50  0001 C CNN
F 3 "" H 3850 1100 50  0001 C CNN
	1    3850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1100 3800 1100
Wire Wire Line
	3800 1100 3800 950 
Wire Wire Line
	3850 1100 3900 1100
Wire Wire Line
	3900 1100 3900 950 
Connection ~ 3850 1100
Wire Wire Line
	3650 1100 3600 1100
Wire Wire Line
	3600 1100 3600 950 
Wire Wire Line
	3650 1100 3700 1100
Wire Wire Line
	3700 1100 3700 950 
Connection ~ 3650 1100
Wire Wire Line
	3650 2800 3650 2850
$Comp
L power:GND #PWR0106
U 1 1 5F0AE8F0
P 3650 2850
F 0 "#PWR0106" H 3650 2600 50  0001 C CNN
F 1 "GND" H 3655 2677 50  0000 C CNN
F 2 "" H 3650 2850 50  0001 C CNN
F 3 "" H 3650 2850 50  0001 C CNN
	1    3650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2100 3650 2500
Text Label 4550 2250 3    50   ~ 0
Supply
$Comp
L Connector:Conn_01x07_Male J2
U 1 1 5F0A4213
P 5650 1200
F 0 "J2" H 5622 1132 50  0000 R CNN
F 1 "OLED/SWD_Conn" H 5622 1223 50  0000 R CNN
F 2 "Encoder:PinHeader_1x07_P2.54mm_Vertical" H 5650 1200 50  0001 C CNN
F 3 "~" H 5650 1200 50  0001 C CNN
	1    5650 1200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F0A6625
P 4900 900
F 0 "#PWR0111" H 4900 650 50  0001 C CNN
F 1 "GND" H 4850 750 50  0000 C CNN
F 2 "" H 4900 900 50  0001 C CNN
F 3 "" H 4900 900 50  0001 C CNN
	1    4900 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 900  5450 900 
$Comp
L Encoder:OPTO_Conn U3
U 1 1 5F1557B4
P 1300 3050
F 0 "U3" H 1300 3350 50  0000 C CNN
F 1 "OPTO_Conn" H 1300 3250 50  0000 C CNN
F 2 "Encoder:PinHeader_2x02_P2.54mm_Vertical" H 1300 3050 50  0001 C CNN
F 3 "" H 1300 3050 50  0001 C CNN
	1    1300 3050
	1    0    0    -1  
$EndComp
$Comp
L Encoder:OPTO_Conn U2
U 1 1 5F15DEA7
P 1300 1950
F 0 "U2" H 1300 2275 50  0000 C CNN
F 1 "OPTO_Conn" H 1300 2150 50  0000 C CNN
F 2 "Encoder:PinHeader_2x02_P2.54mm_Vertical" H 1300 1950 50  0001 C CNN
F 3 "" H 1300 1950 50  0001 C CNN
	1    1300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2150 900  2050
Wire Wire Line
	900  2050 1000 2050
Wire Wire Line
	900  3250 900  3150
Wire Wire Line
	900  3150 1000 3150
$EndSCHEMATC
