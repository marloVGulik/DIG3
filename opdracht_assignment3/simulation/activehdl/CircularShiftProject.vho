-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "10/22/2025 15:45:05"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CircularShiftAssignment IS
    PORT (
	ADC_CLK_10 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 7);
	HEX1 : OUT std_logic_vector(0 TO 7);
	HEX2 : OUT std_logic_vector(0 TO 7);
	HEX3 : OUT std_logic_vector(0 TO 7);
	HEX4 : OUT std_logic_vector(0 TO 7);
	HEX5 : OUT std_logic_vector(0 TO 7)
	);
END CircularShiftAssignment;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CLK_10	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CircularShiftAssignment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADC_CLK_10 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 7);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 7);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 7);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 7);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 7);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 7);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ADC_CLK_10~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vertrager|outClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[7]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[7]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ADC_CLK_10~input_o\ : std_logic;
SIGNAL \ADC_CLK_10~inputclkctrl_outclk\ : std_logic;
SIGNAL \vertrager|internalCtr[0]~31_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \bothButtons~combout\ : std_logic;
SIGNAL \flippertje|sSaved~0_combout\ : std_logic;
SIGNAL \flippertje|sSaved~q\ : std_logic;
SIGNAL \vertrager|internalCtr[17]~66\ : std_logic;
SIGNAL \vertrager|internalCtr[18]~67_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[18]~68\ : std_logic;
SIGNAL \vertrager|internalCtr[19]~69_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[19]~70\ : std_logic;
SIGNAL \vertrager|internalCtr[20]~71_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[20]~72\ : std_logic;
SIGNAL \vertrager|internalCtr[21]~73_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[21]~74\ : std_logic;
SIGNAL \vertrager|internalCtr[22]~75_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[22]~76\ : std_logic;
SIGNAL \vertrager|internalCtr[23]~77_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[23]~78\ : std_logic;
SIGNAL \vertrager|internalCtr[24]~79_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[24]~80\ : std_logic;
SIGNAL \vertrager|internalCtr[25]~81_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[25]~82\ : std_logic;
SIGNAL \vertrager|internalCtr[26]~83_combout\ : std_logic;
SIGNAL \vertrager|LessThan0~6_combout\ : std_logic;
SIGNAL \vertrager|LessThan0~5_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[26]~84\ : std_logic;
SIGNAL \vertrager|internalCtr[27]~85_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[27]~86\ : std_logic;
SIGNAL \vertrager|internalCtr[28]~87_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[28]~88\ : std_logic;
SIGNAL \vertrager|internalCtr[29]~89_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[29]~90\ : std_logic;
SIGNAL \vertrager|internalCtr[30]~91_combout\ : std_logic;
SIGNAL \vertrager|LessThan0~7_combout\ : std_logic;
SIGNAL \vertrager|LessThan0~8_combout\ : std_logic;
SIGNAL \vertrager|LessThan0~1_combout\ : std_logic;
SIGNAL \vertrager|LessThan0~2_combout\ : std_logic;
SIGNAL \vertrager|LessThan0~3_combout\ : std_logic;
SIGNAL \vertrager|LessThan0~4_combout\ : std_logic;
SIGNAL \vertrager|LessThan0~9_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[0]~32\ : std_logic;
SIGNAL \vertrager|internalCtr[1]~33_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[1]~34\ : std_logic;
SIGNAL \vertrager|internalCtr[2]~35_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[2]~36\ : std_logic;
SIGNAL \vertrager|internalCtr[3]~37_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[3]~38\ : std_logic;
SIGNAL \vertrager|internalCtr[4]~39_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[4]~40\ : std_logic;
SIGNAL \vertrager|internalCtr[5]~41_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[5]~42\ : std_logic;
SIGNAL \vertrager|internalCtr[6]~43_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[6]~44\ : std_logic;
SIGNAL \vertrager|internalCtr[7]~45_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[7]~46\ : std_logic;
SIGNAL \vertrager|internalCtr[8]~47_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[8]~48\ : std_logic;
SIGNAL \vertrager|internalCtr[9]~49_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[9]~50\ : std_logic;
SIGNAL \vertrager|internalCtr[10]~51_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[10]~52\ : std_logic;
SIGNAL \vertrager|internalCtr[11]~53_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[11]~54\ : std_logic;
SIGNAL \vertrager|internalCtr[12]~55_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[12]~56\ : std_logic;
SIGNAL \vertrager|internalCtr[13]~57_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[13]~58\ : std_logic;
SIGNAL \vertrager|internalCtr[14]~59_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[14]~60\ : std_logic;
SIGNAL \vertrager|internalCtr[15]~61_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[15]~62\ : std_logic;
SIGNAL \vertrager|internalCtr[16]~63_combout\ : std_logic;
SIGNAL \vertrager|internalCtr[16]~64\ : std_logic;
SIGNAL \vertrager|internalCtr[17]~65_combout\ : std_logic;
SIGNAL \vertrager|LessThan0~0_combout\ : std_logic;
SIGNAL \vertrager|outClock~0_combout\ : std_logic;
SIGNAL \vertrager|outClock~feeder_combout\ : std_logic;
SIGNAL \vertrager|outClock~q\ : std_logic;
SIGNAL \vertrager|outClock~clkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \shifter|maakopdr3Muxen:1:opdr3Muxen|x~0_combout\ : std_logic;
SIGNAL \shifter|maakflipflops:1:flipflopjes|sSaved~q\ : std_logic;
SIGNAL \shifter|maakopdr3Muxen:2:opdr3Muxen|x~0_combout\ : std_logic;
SIGNAL \shifter|maakflipflops:2:flipflopjes|sSaved~q\ : std_logic;
SIGNAL \shifter|maakopdr3Muxen:3:opdr3Muxen|x~0_combout\ : std_logic;
SIGNAL \shifter|maakflipflops:3:flipflopjes|sSaved~q\ : std_logic;
SIGNAL \shifter|maakopdr3Muxen:4:opdr3Muxen|x~0_combout\ : std_logic;
SIGNAL \shifter|maakflipflops:4:flipflopjes|sSaved~q\ : std_logic;
SIGNAL \shifter|maakopdr3Muxen:5:opdr3Muxen|x~0_combout\ : std_logic;
SIGNAL \shifter|maakflipflops:5:flipflopjes|sSaved~q\ : std_logic;
SIGNAL \shifter|startopdr3Mux|x~0_combout\ : std_logic;
SIGNAL \shifter|maakflipflops:0:flipflopjes|sSaved~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \HEX0~1_combout\ : std_logic;
SIGNAL \HEX0~2_combout\ : std_logic;
SIGNAL \HEX0~3_combout\ : std_logic;
SIGNAL \HEX0~4_combout\ : std_logic;
SIGNAL \HEX0~5_combout\ : std_logic;
SIGNAL \vertrager|internalCtr\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \flippertje|ALT_INV_sSaved~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ADC_CLK_10 <= ADC_CLK_10;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\ADC_CLK_10~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADC_CLK_10~input_o\);

\vertrager|outClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vertrager|outClock~q\);
\flippertje|ALT_INV_sSaved~q\ <= NOT \flippertje|sSaved~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vertrager|outClock~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[7]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\ADC_CLK_10~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_CLK_10,
	o => \ADC_CLK_10~input_o\);

-- Location: CLKCTRL_G4
\ADC_CLK_10~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ADC_CLK_10~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ADC_CLK_10~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y53_N2
\vertrager|internalCtr[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[0]~31_combout\ = \vertrager|internalCtr\(0) $ (VCC)
-- \vertrager|internalCtr[0]~32\ = CARRY(\vertrager|internalCtr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(0),
	datad => VCC,
	combout => \vertrager|internalCtr[0]~31_combout\,
	cout => \vertrager|internalCtr[0]~32\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X54_Y53_N30
bothButtons : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bothButtons~combout\ = LCELL((\KEY[1]~input_o\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \bothButtons~combout\);

-- Location: LCCOMB_X54_Y53_N4
\flippertje|sSaved~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flippertje|sSaved~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \flippertje|sSaved~0_combout\);

-- Location: FF_X54_Y53_N31
\flippertje|sSaved\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bothButtons~combout\,
	asdata => \flippertje|sSaved~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flippertje|sSaved~q\);

-- Location: LCCOMB_X55_Y52_N4
\vertrager|internalCtr[17]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[17]~65_combout\ = (\vertrager|internalCtr\(17) & (!\vertrager|internalCtr[16]~64\)) # (!\vertrager|internalCtr\(17) & ((\vertrager|internalCtr[16]~64\) # (GND)))
-- \vertrager|internalCtr[17]~66\ = CARRY((!\vertrager|internalCtr[16]~64\) # (!\vertrager|internalCtr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(17),
	datad => VCC,
	cin => \vertrager|internalCtr[16]~64\,
	combout => \vertrager|internalCtr[17]~65_combout\,
	cout => \vertrager|internalCtr[17]~66\);

-- Location: LCCOMB_X55_Y52_N6
\vertrager|internalCtr[18]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[18]~67_combout\ = (\vertrager|internalCtr\(18) & (\vertrager|internalCtr[17]~66\ $ (GND))) # (!\vertrager|internalCtr\(18) & (!\vertrager|internalCtr[17]~66\ & VCC))
-- \vertrager|internalCtr[18]~68\ = CARRY((\vertrager|internalCtr\(18) & !\vertrager|internalCtr[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(18),
	datad => VCC,
	cin => \vertrager|internalCtr[17]~66\,
	combout => \vertrager|internalCtr[18]~67_combout\,
	cout => \vertrager|internalCtr[18]~68\);

-- Location: FF_X55_Y52_N7
\vertrager|internalCtr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[18]~67_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(18));

-- Location: LCCOMB_X55_Y52_N8
\vertrager|internalCtr[19]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[19]~69_combout\ = (\vertrager|internalCtr\(19) & (!\vertrager|internalCtr[18]~68\)) # (!\vertrager|internalCtr\(19) & ((\vertrager|internalCtr[18]~68\) # (GND)))
-- \vertrager|internalCtr[19]~70\ = CARRY((!\vertrager|internalCtr[18]~68\) # (!\vertrager|internalCtr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(19),
	datad => VCC,
	cin => \vertrager|internalCtr[18]~68\,
	combout => \vertrager|internalCtr[19]~69_combout\,
	cout => \vertrager|internalCtr[19]~70\);

-- Location: FF_X55_Y52_N9
\vertrager|internalCtr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[19]~69_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(19));

-- Location: LCCOMB_X55_Y52_N10
\vertrager|internalCtr[20]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[20]~71_combout\ = (\vertrager|internalCtr\(20) & (\vertrager|internalCtr[19]~70\ $ (GND))) # (!\vertrager|internalCtr\(20) & (!\vertrager|internalCtr[19]~70\ & VCC))
-- \vertrager|internalCtr[20]~72\ = CARRY((\vertrager|internalCtr\(20) & !\vertrager|internalCtr[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(20),
	datad => VCC,
	cin => \vertrager|internalCtr[19]~70\,
	combout => \vertrager|internalCtr[20]~71_combout\,
	cout => \vertrager|internalCtr[20]~72\);

-- Location: FF_X55_Y52_N11
\vertrager|internalCtr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[20]~71_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(20));

-- Location: LCCOMB_X55_Y52_N12
\vertrager|internalCtr[21]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[21]~73_combout\ = (\vertrager|internalCtr\(21) & (!\vertrager|internalCtr[20]~72\)) # (!\vertrager|internalCtr\(21) & ((\vertrager|internalCtr[20]~72\) # (GND)))
-- \vertrager|internalCtr[21]~74\ = CARRY((!\vertrager|internalCtr[20]~72\) # (!\vertrager|internalCtr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(21),
	datad => VCC,
	cin => \vertrager|internalCtr[20]~72\,
	combout => \vertrager|internalCtr[21]~73_combout\,
	cout => \vertrager|internalCtr[21]~74\);

-- Location: FF_X55_Y52_N13
\vertrager|internalCtr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[21]~73_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(21));

-- Location: LCCOMB_X55_Y52_N14
\vertrager|internalCtr[22]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[22]~75_combout\ = (\vertrager|internalCtr\(22) & (\vertrager|internalCtr[21]~74\ $ (GND))) # (!\vertrager|internalCtr\(22) & (!\vertrager|internalCtr[21]~74\ & VCC))
-- \vertrager|internalCtr[22]~76\ = CARRY((\vertrager|internalCtr\(22) & !\vertrager|internalCtr[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(22),
	datad => VCC,
	cin => \vertrager|internalCtr[21]~74\,
	combout => \vertrager|internalCtr[22]~75_combout\,
	cout => \vertrager|internalCtr[22]~76\);

-- Location: FF_X55_Y52_N15
\vertrager|internalCtr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[22]~75_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(22));

-- Location: LCCOMB_X55_Y52_N16
\vertrager|internalCtr[23]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[23]~77_combout\ = (\vertrager|internalCtr\(23) & (!\vertrager|internalCtr[22]~76\)) # (!\vertrager|internalCtr\(23) & ((\vertrager|internalCtr[22]~76\) # (GND)))
-- \vertrager|internalCtr[23]~78\ = CARRY((!\vertrager|internalCtr[22]~76\) # (!\vertrager|internalCtr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(23),
	datad => VCC,
	cin => \vertrager|internalCtr[22]~76\,
	combout => \vertrager|internalCtr[23]~77_combout\,
	cout => \vertrager|internalCtr[23]~78\);

-- Location: FF_X55_Y52_N17
\vertrager|internalCtr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[23]~77_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(23));

-- Location: LCCOMB_X55_Y52_N18
\vertrager|internalCtr[24]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[24]~79_combout\ = (\vertrager|internalCtr\(24) & (\vertrager|internalCtr[23]~78\ $ (GND))) # (!\vertrager|internalCtr\(24) & (!\vertrager|internalCtr[23]~78\ & VCC))
-- \vertrager|internalCtr[24]~80\ = CARRY((\vertrager|internalCtr\(24) & !\vertrager|internalCtr[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(24),
	datad => VCC,
	cin => \vertrager|internalCtr[23]~78\,
	combout => \vertrager|internalCtr[24]~79_combout\,
	cout => \vertrager|internalCtr[24]~80\);

-- Location: FF_X55_Y52_N19
\vertrager|internalCtr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[24]~79_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(24));

-- Location: LCCOMB_X55_Y52_N20
\vertrager|internalCtr[25]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[25]~81_combout\ = (\vertrager|internalCtr\(25) & (!\vertrager|internalCtr[24]~80\)) # (!\vertrager|internalCtr\(25) & ((\vertrager|internalCtr[24]~80\) # (GND)))
-- \vertrager|internalCtr[25]~82\ = CARRY((!\vertrager|internalCtr[24]~80\) # (!\vertrager|internalCtr\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(25),
	datad => VCC,
	cin => \vertrager|internalCtr[24]~80\,
	combout => \vertrager|internalCtr[25]~81_combout\,
	cout => \vertrager|internalCtr[25]~82\);

-- Location: FF_X55_Y52_N21
\vertrager|internalCtr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[25]~81_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(25));

-- Location: LCCOMB_X55_Y52_N22
\vertrager|internalCtr[26]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[26]~83_combout\ = (\vertrager|internalCtr\(26) & (\vertrager|internalCtr[25]~82\ $ (GND))) # (!\vertrager|internalCtr\(26) & (!\vertrager|internalCtr[25]~82\ & VCC))
-- \vertrager|internalCtr[26]~84\ = CARRY((\vertrager|internalCtr\(26) & !\vertrager|internalCtr[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(26),
	datad => VCC,
	cin => \vertrager|internalCtr[25]~82\,
	combout => \vertrager|internalCtr[26]~83_combout\,
	cout => \vertrager|internalCtr[26]~84\);

-- Location: FF_X55_Y52_N23
\vertrager|internalCtr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[26]~83_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(26));

-- Location: LCCOMB_X54_Y52_N22
\vertrager|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|LessThan0~6_combout\ = (!\vertrager|internalCtr\(25) & (!\vertrager|internalCtr\(24) & (!\vertrager|internalCtr\(26) & !\vertrager|internalCtr\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(25),
	datab => \vertrager|internalCtr\(24),
	datac => \vertrager|internalCtr\(26),
	datad => \vertrager|internalCtr\(23),
	combout => \vertrager|LessThan0~6_combout\);

-- Location: LCCOMB_X54_Y52_N30
\vertrager|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|LessThan0~5_combout\ = (!\vertrager|internalCtr\(20) & (!\vertrager|internalCtr\(22) & (!\vertrager|internalCtr\(21) & !\vertrager|internalCtr\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(20),
	datab => \vertrager|internalCtr\(22),
	datac => \vertrager|internalCtr\(21),
	datad => \vertrager|internalCtr\(19),
	combout => \vertrager|LessThan0~5_combout\);

-- Location: LCCOMB_X55_Y52_N24
\vertrager|internalCtr[27]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[27]~85_combout\ = (\vertrager|internalCtr\(27) & (!\vertrager|internalCtr[26]~84\)) # (!\vertrager|internalCtr\(27) & ((\vertrager|internalCtr[26]~84\) # (GND)))
-- \vertrager|internalCtr[27]~86\ = CARRY((!\vertrager|internalCtr[26]~84\) # (!\vertrager|internalCtr\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(27),
	datad => VCC,
	cin => \vertrager|internalCtr[26]~84\,
	combout => \vertrager|internalCtr[27]~85_combout\,
	cout => \vertrager|internalCtr[27]~86\);

-- Location: FF_X55_Y52_N25
\vertrager|internalCtr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[27]~85_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(27));

-- Location: LCCOMB_X55_Y52_N26
\vertrager|internalCtr[28]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[28]~87_combout\ = (\vertrager|internalCtr\(28) & (\vertrager|internalCtr[27]~86\ $ (GND))) # (!\vertrager|internalCtr\(28) & (!\vertrager|internalCtr[27]~86\ & VCC))
-- \vertrager|internalCtr[28]~88\ = CARRY((\vertrager|internalCtr\(28) & !\vertrager|internalCtr[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(28),
	datad => VCC,
	cin => \vertrager|internalCtr[27]~86\,
	combout => \vertrager|internalCtr[28]~87_combout\,
	cout => \vertrager|internalCtr[28]~88\);

-- Location: FF_X55_Y52_N27
\vertrager|internalCtr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[28]~87_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(28));

-- Location: LCCOMB_X55_Y52_N28
\vertrager|internalCtr[29]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[29]~89_combout\ = (\vertrager|internalCtr\(29) & (!\vertrager|internalCtr[28]~88\)) # (!\vertrager|internalCtr\(29) & ((\vertrager|internalCtr[28]~88\) # (GND)))
-- \vertrager|internalCtr[29]~90\ = CARRY((!\vertrager|internalCtr[28]~88\) # (!\vertrager|internalCtr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(29),
	datad => VCC,
	cin => \vertrager|internalCtr[28]~88\,
	combout => \vertrager|internalCtr[29]~89_combout\,
	cout => \vertrager|internalCtr[29]~90\);

-- Location: FF_X55_Y52_N29
\vertrager|internalCtr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[29]~89_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(29));

-- Location: LCCOMB_X55_Y52_N30
\vertrager|internalCtr[30]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[30]~91_combout\ = \vertrager|internalCtr\(30) $ (!\vertrager|internalCtr[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(30),
	cin => \vertrager|internalCtr[29]~90\,
	combout => \vertrager|internalCtr[30]~91_combout\);

-- Location: FF_X55_Y52_N31
\vertrager|internalCtr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[30]~91_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(30));

-- Location: LCCOMB_X54_Y52_N20
\vertrager|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|LessThan0~7_combout\ = (!\vertrager|internalCtr\(29) & (!\vertrager|internalCtr\(28) & (!\vertrager|internalCtr\(27) & !\vertrager|internalCtr\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(29),
	datab => \vertrager|internalCtr\(28),
	datac => \vertrager|internalCtr\(27),
	datad => \vertrager|internalCtr\(30),
	combout => \vertrager|LessThan0~7_combout\);

-- Location: LCCOMB_X54_Y52_N26
\vertrager|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|LessThan0~8_combout\ = (\vertrager|LessThan0~6_combout\ & (\vertrager|LessThan0~5_combout\ & \vertrager|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|LessThan0~6_combout\,
	datac => \vertrager|LessThan0~5_combout\,
	datad => \vertrager|LessThan0~7_combout\,
	combout => \vertrager|LessThan0~8_combout\);

-- Location: LCCOMB_X54_Y52_N12
\vertrager|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|LessThan0~1_combout\ = (((!\vertrager|internalCtr\(13) & !\vertrager|internalCtr\(14))) # (!\vertrager|internalCtr\(16))) # (!\vertrager|internalCtr\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(13),
	datab => \vertrager|internalCtr\(15),
	datac => \vertrager|internalCtr\(14),
	datad => \vertrager|internalCtr\(16),
	combout => \vertrager|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y53_N0
\vertrager|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|LessThan0~2_combout\ = ((!\vertrager|internalCtr\(5) & (!\vertrager|internalCtr\(7) & !\vertrager|internalCtr\(6)))) # (!\vertrager|internalCtr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(5),
	datab => \vertrager|internalCtr\(7),
	datac => \vertrager|internalCtr\(6),
	datad => \vertrager|internalCtr\(8),
	combout => \vertrager|LessThan0~2_combout\);

-- Location: LCCOMB_X54_Y52_N24
\vertrager|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|LessThan0~3_combout\ = (!\vertrager|internalCtr\(11) & (!\vertrager|internalCtr\(10) & (!\vertrager|internalCtr\(12) & !\vertrager|internalCtr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(11),
	datab => \vertrager|internalCtr\(10),
	datac => \vertrager|internalCtr\(12),
	datad => \vertrager|internalCtr\(9),
	combout => \vertrager|LessThan0~3_combout\);

-- Location: LCCOMB_X54_Y52_N28
\vertrager|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|LessThan0~4_combout\ = (\vertrager|LessThan0~1_combout\) # ((!\vertrager|internalCtr\(14) & (\vertrager|LessThan0~2_combout\ & \vertrager|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|LessThan0~1_combout\,
	datab => \vertrager|internalCtr\(14),
	datac => \vertrager|LessThan0~2_combout\,
	datad => \vertrager|LessThan0~3_combout\,
	combout => \vertrager|LessThan0~4_combout\);

-- Location: LCCOMB_X54_Y52_N0
\vertrager|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|LessThan0~9_combout\ = ((\vertrager|internalCtr\(17) & (\vertrager|internalCtr\(18) & !\vertrager|LessThan0~4_combout\))) # (!\vertrager|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(17),
	datab => \vertrager|internalCtr\(18),
	datac => \vertrager|LessThan0~8_combout\,
	datad => \vertrager|LessThan0~4_combout\,
	combout => \vertrager|LessThan0~9_combout\);

-- Location: FF_X55_Y53_N3
\vertrager|internalCtr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[0]~31_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(0));

-- Location: LCCOMB_X55_Y53_N4
\vertrager|internalCtr[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[1]~33_combout\ = (\vertrager|internalCtr\(1) & (!\vertrager|internalCtr[0]~32\)) # (!\vertrager|internalCtr\(1) & ((\vertrager|internalCtr[0]~32\) # (GND)))
-- \vertrager|internalCtr[1]~34\ = CARRY((!\vertrager|internalCtr[0]~32\) # (!\vertrager|internalCtr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(1),
	datad => VCC,
	cin => \vertrager|internalCtr[0]~32\,
	combout => \vertrager|internalCtr[1]~33_combout\,
	cout => \vertrager|internalCtr[1]~34\);

-- Location: FF_X55_Y53_N5
\vertrager|internalCtr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[1]~33_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(1));

-- Location: LCCOMB_X55_Y53_N6
\vertrager|internalCtr[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[2]~35_combout\ = (\vertrager|internalCtr\(2) & (\vertrager|internalCtr[1]~34\ $ (GND))) # (!\vertrager|internalCtr\(2) & (!\vertrager|internalCtr[1]~34\ & VCC))
-- \vertrager|internalCtr[2]~36\ = CARRY((\vertrager|internalCtr\(2) & !\vertrager|internalCtr[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(2),
	datad => VCC,
	cin => \vertrager|internalCtr[1]~34\,
	combout => \vertrager|internalCtr[2]~35_combout\,
	cout => \vertrager|internalCtr[2]~36\);

-- Location: FF_X55_Y53_N7
\vertrager|internalCtr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[2]~35_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(2));

-- Location: LCCOMB_X55_Y53_N8
\vertrager|internalCtr[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[3]~37_combout\ = (\vertrager|internalCtr\(3) & (!\vertrager|internalCtr[2]~36\)) # (!\vertrager|internalCtr\(3) & ((\vertrager|internalCtr[2]~36\) # (GND)))
-- \vertrager|internalCtr[3]~38\ = CARRY((!\vertrager|internalCtr[2]~36\) # (!\vertrager|internalCtr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(3),
	datad => VCC,
	cin => \vertrager|internalCtr[2]~36\,
	combout => \vertrager|internalCtr[3]~37_combout\,
	cout => \vertrager|internalCtr[3]~38\);

-- Location: FF_X55_Y53_N9
\vertrager|internalCtr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[3]~37_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(3));

-- Location: LCCOMB_X55_Y53_N10
\vertrager|internalCtr[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[4]~39_combout\ = (\vertrager|internalCtr\(4) & (\vertrager|internalCtr[3]~38\ $ (GND))) # (!\vertrager|internalCtr\(4) & (!\vertrager|internalCtr[3]~38\ & VCC))
-- \vertrager|internalCtr[4]~40\ = CARRY((\vertrager|internalCtr\(4) & !\vertrager|internalCtr[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(4),
	datad => VCC,
	cin => \vertrager|internalCtr[3]~38\,
	combout => \vertrager|internalCtr[4]~39_combout\,
	cout => \vertrager|internalCtr[4]~40\);

-- Location: FF_X55_Y53_N11
\vertrager|internalCtr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[4]~39_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(4));

-- Location: LCCOMB_X55_Y53_N12
\vertrager|internalCtr[5]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[5]~41_combout\ = (\vertrager|internalCtr\(5) & (!\vertrager|internalCtr[4]~40\)) # (!\vertrager|internalCtr\(5) & ((\vertrager|internalCtr[4]~40\) # (GND)))
-- \vertrager|internalCtr[5]~42\ = CARRY((!\vertrager|internalCtr[4]~40\) # (!\vertrager|internalCtr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(5),
	datad => VCC,
	cin => \vertrager|internalCtr[4]~40\,
	combout => \vertrager|internalCtr[5]~41_combout\,
	cout => \vertrager|internalCtr[5]~42\);

-- Location: FF_X55_Y53_N13
\vertrager|internalCtr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[5]~41_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(5));

-- Location: LCCOMB_X55_Y53_N14
\vertrager|internalCtr[6]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[6]~43_combout\ = (\vertrager|internalCtr\(6) & (\vertrager|internalCtr[5]~42\ $ (GND))) # (!\vertrager|internalCtr\(6) & (!\vertrager|internalCtr[5]~42\ & VCC))
-- \vertrager|internalCtr[6]~44\ = CARRY((\vertrager|internalCtr\(6) & !\vertrager|internalCtr[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(6),
	datad => VCC,
	cin => \vertrager|internalCtr[5]~42\,
	combout => \vertrager|internalCtr[6]~43_combout\,
	cout => \vertrager|internalCtr[6]~44\);

-- Location: FF_X55_Y53_N15
\vertrager|internalCtr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[6]~43_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(6));

-- Location: LCCOMB_X55_Y53_N16
\vertrager|internalCtr[7]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[7]~45_combout\ = (\vertrager|internalCtr\(7) & (!\vertrager|internalCtr[6]~44\)) # (!\vertrager|internalCtr\(7) & ((\vertrager|internalCtr[6]~44\) # (GND)))
-- \vertrager|internalCtr[7]~46\ = CARRY((!\vertrager|internalCtr[6]~44\) # (!\vertrager|internalCtr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(7),
	datad => VCC,
	cin => \vertrager|internalCtr[6]~44\,
	combout => \vertrager|internalCtr[7]~45_combout\,
	cout => \vertrager|internalCtr[7]~46\);

-- Location: FF_X55_Y53_N17
\vertrager|internalCtr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[7]~45_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(7));

-- Location: LCCOMB_X55_Y53_N18
\vertrager|internalCtr[8]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[8]~47_combout\ = (\vertrager|internalCtr\(8) & (\vertrager|internalCtr[7]~46\ $ (GND))) # (!\vertrager|internalCtr\(8) & (!\vertrager|internalCtr[7]~46\ & VCC))
-- \vertrager|internalCtr[8]~48\ = CARRY((\vertrager|internalCtr\(8) & !\vertrager|internalCtr[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(8),
	datad => VCC,
	cin => \vertrager|internalCtr[7]~46\,
	combout => \vertrager|internalCtr[8]~47_combout\,
	cout => \vertrager|internalCtr[8]~48\);

-- Location: FF_X55_Y53_N19
\vertrager|internalCtr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[8]~47_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(8));

-- Location: LCCOMB_X55_Y53_N20
\vertrager|internalCtr[9]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[9]~49_combout\ = (\vertrager|internalCtr\(9) & (!\vertrager|internalCtr[8]~48\)) # (!\vertrager|internalCtr\(9) & ((\vertrager|internalCtr[8]~48\) # (GND)))
-- \vertrager|internalCtr[9]~50\ = CARRY((!\vertrager|internalCtr[8]~48\) # (!\vertrager|internalCtr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(9),
	datad => VCC,
	cin => \vertrager|internalCtr[8]~48\,
	combout => \vertrager|internalCtr[9]~49_combout\,
	cout => \vertrager|internalCtr[9]~50\);

-- Location: FF_X55_Y53_N21
\vertrager|internalCtr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[9]~49_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(9));

-- Location: LCCOMB_X55_Y53_N22
\vertrager|internalCtr[10]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[10]~51_combout\ = (\vertrager|internalCtr\(10) & (\vertrager|internalCtr[9]~50\ $ (GND))) # (!\vertrager|internalCtr\(10) & (!\vertrager|internalCtr[9]~50\ & VCC))
-- \vertrager|internalCtr[10]~52\ = CARRY((\vertrager|internalCtr\(10) & !\vertrager|internalCtr[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(10),
	datad => VCC,
	cin => \vertrager|internalCtr[9]~50\,
	combout => \vertrager|internalCtr[10]~51_combout\,
	cout => \vertrager|internalCtr[10]~52\);

-- Location: FF_X55_Y53_N23
\vertrager|internalCtr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[10]~51_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(10));

-- Location: LCCOMB_X55_Y53_N24
\vertrager|internalCtr[11]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[11]~53_combout\ = (\vertrager|internalCtr\(11) & (!\vertrager|internalCtr[10]~52\)) # (!\vertrager|internalCtr\(11) & ((\vertrager|internalCtr[10]~52\) # (GND)))
-- \vertrager|internalCtr[11]~54\ = CARRY((!\vertrager|internalCtr[10]~52\) # (!\vertrager|internalCtr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(11),
	datad => VCC,
	cin => \vertrager|internalCtr[10]~52\,
	combout => \vertrager|internalCtr[11]~53_combout\,
	cout => \vertrager|internalCtr[11]~54\);

-- Location: FF_X55_Y53_N25
\vertrager|internalCtr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[11]~53_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(11));

-- Location: LCCOMB_X55_Y53_N26
\vertrager|internalCtr[12]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[12]~55_combout\ = (\vertrager|internalCtr\(12) & (\vertrager|internalCtr[11]~54\ $ (GND))) # (!\vertrager|internalCtr\(12) & (!\vertrager|internalCtr[11]~54\ & VCC))
-- \vertrager|internalCtr[12]~56\ = CARRY((\vertrager|internalCtr\(12) & !\vertrager|internalCtr[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(12),
	datad => VCC,
	cin => \vertrager|internalCtr[11]~54\,
	combout => \vertrager|internalCtr[12]~55_combout\,
	cout => \vertrager|internalCtr[12]~56\);

-- Location: FF_X55_Y53_N27
\vertrager|internalCtr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[12]~55_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(12));

-- Location: LCCOMB_X55_Y53_N28
\vertrager|internalCtr[13]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[13]~57_combout\ = (\vertrager|internalCtr\(13) & (!\vertrager|internalCtr[12]~56\)) # (!\vertrager|internalCtr\(13) & ((\vertrager|internalCtr[12]~56\) # (GND)))
-- \vertrager|internalCtr[13]~58\ = CARRY((!\vertrager|internalCtr[12]~56\) # (!\vertrager|internalCtr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(13),
	datad => VCC,
	cin => \vertrager|internalCtr[12]~56\,
	combout => \vertrager|internalCtr[13]~57_combout\,
	cout => \vertrager|internalCtr[13]~58\);

-- Location: FF_X54_Y52_N11
\vertrager|internalCtr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	asdata => \vertrager|internalCtr[13]~57_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(13));

-- Location: LCCOMB_X55_Y53_N30
\vertrager|internalCtr[14]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[14]~59_combout\ = (\vertrager|internalCtr\(14) & (\vertrager|internalCtr[13]~58\ $ (GND))) # (!\vertrager|internalCtr\(14) & (!\vertrager|internalCtr[13]~58\ & VCC))
-- \vertrager|internalCtr[14]~60\ = CARRY((\vertrager|internalCtr\(14) & !\vertrager|internalCtr[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(14),
	datad => VCC,
	cin => \vertrager|internalCtr[13]~58\,
	combout => \vertrager|internalCtr[14]~59_combout\,
	cout => \vertrager|internalCtr[14]~60\);

-- Location: FF_X55_Y53_N31
\vertrager|internalCtr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[14]~59_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(14));

-- Location: LCCOMB_X55_Y52_N0
\vertrager|internalCtr[15]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[15]~61_combout\ = (\vertrager|internalCtr\(15) & (!\vertrager|internalCtr[14]~60\)) # (!\vertrager|internalCtr\(15) & ((\vertrager|internalCtr[14]~60\) # (GND)))
-- \vertrager|internalCtr[15]~62\ = CARRY((!\vertrager|internalCtr[14]~60\) # (!\vertrager|internalCtr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(15),
	datad => VCC,
	cin => \vertrager|internalCtr[14]~60\,
	combout => \vertrager|internalCtr[15]~61_combout\,
	cout => \vertrager|internalCtr[15]~62\);

-- Location: FF_X54_Y52_N15
\vertrager|internalCtr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	asdata => \vertrager|internalCtr[15]~61_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(15));

-- Location: LCCOMB_X55_Y52_N2
\vertrager|internalCtr[16]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|internalCtr[16]~63_combout\ = (\vertrager|internalCtr\(16) & (\vertrager|internalCtr[15]~62\ $ (GND))) # (!\vertrager|internalCtr\(16) & (!\vertrager|internalCtr[15]~62\ & VCC))
-- \vertrager|internalCtr[16]~64\ = CARRY((\vertrager|internalCtr\(16) & !\vertrager|internalCtr[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|internalCtr\(16),
	datad => VCC,
	cin => \vertrager|internalCtr[15]~62\,
	combout => \vertrager|internalCtr[16]~63_combout\,
	cout => \vertrager|internalCtr[16]~64\);

-- Location: FF_X54_Y52_N19
\vertrager|internalCtr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	asdata => \vertrager|internalCtr[16]~63_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(16));

-- Location: FF_X55_Y52_N5
\vertrager|internalCtr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|internalCtr[17]~65_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	sclr => \vertrager|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|internalCtr\(17));

-- Location: LCCOMB_X54_Y52_N10
\vertrager|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|LessThan0~0_combout\ = (!\vertrager|internalCtr\(18)) # (!\vertrager|internalCtr\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|internalCtr\(17),
	datad => \vertrager|internalCtr\(18),
	combout => \vertrager|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y52_N2
\vertrager|outClock~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|outClock~0_combout\ = \vertrager|outClock~q\ $ ((((!\vertrager|LessThan0~0_combout\ & !\vertrager|LessThan0~4_combout\)) # (!\vertrager|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vertrager|outClock~q\,
	datab => \vertrager|LessThan0~0_combout\,
	datac => \vertrager|LessThan0~8_combout\,
	datad => \vertrager|LessThan0~4_combout\,
	combout => \vertrager|outClock~0_combout\);

-- Location: LCCOMB_X54_Y52_N6
\vertrager|outClock~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vertrager|outClock~feeder_combout\ = \vertrager|outClock~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vertrager|outClock~0_combout\,
	combout => \vertrager|outClock~feeder_combout\);

-- Location: FF_X54_Y52_N7
\vertrager|outClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \vertrager|outClock~feeder_combout\,
	clrn => \flippertje|ALT_INV_sSaved~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vertrager|outClock~q\);

-- Location: CLKCTRL_G12
\vertrager|outClock~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vertrager|outClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vertrager|outClock~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X63_Y53_N10
\shifter|maakopdr3Muxen:1:opdr3Muxen|x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|maakopdr3Muxen:1:opdr3Muxen|x~0_combout\ = (\SW[2]~input_o\) # (\shifter|maakflipflops:0:flipflopjes|sSaved~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \shifter|maakflipflops:0:flipflopjes|sSaved~q\,
	combout => \shifter|maakopdr3Muxen:1:opdr3Muxen|x~0_combout\);

-- Location: FF_X63_Y53_N11
\shifter|maakflipflops:1:flipflopjes|sSaved\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vertrager|outClock~clkctrl_outclk\,
	d => \shifter|maakopdr3Muxen:1:opdr3Muxen|x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|maakflipflops:1:flipflopjes|sSaved~q\);

-- Location: LCCOMB_X63_Y53_N16
\shifter|maakopdr3Muxen:2:opdr3Muxen|x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|maakopdr3Muxen:2:opdr3Muxen|x~0_combout\ = (\SW[2]~input_o\) # (\shifter|maakflipflops:1:flipflopjes|sSaved~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \shifter|maakflipflops:1:flipflopjes|sSaved~q\,
	combout => \shifter|maakopdr3Muxen:2:opdr3Muxen|x~0_combout\);

-- Location: FF_X63_Y53_N17
\shifter|maakflipflops:2:flipflopjes|sSaved\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vertrager|outClock~clkctrl_outclk\,
	d => \shifter|maakopdr3Muxen:2:opdr3Muxen|x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|maakflipflops:2:flipflopjes|sSaved~q\);

-- Location: LCCOMB_X63_Y53_N6
\shifter|maakopdr3Muxen:3:opdr3Muxen|x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|maakopdr3Muxen:3:opdr3Muxen|x~0_combout\ = (\SW[2]~input_o\) # (\shifter|maakflipflops:2:flipflopjes|sSaved~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \shifter|maakflipflops:2:flipflopjes|sSaved~q\,
	combout => \shifter|maakopdr3Muxen:3:opdr3Muxen|x~0_combout\);

-- Location: FF_X63_Y53_N7
\shifter|maakflipflops:3:flipflopjes|sSaved\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vertrager|outClock~clkctrl_outclk\,
	d => \shifter|maakopdr3Muxen:3:opdr3Muxen|x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|maakflipflops:3:flipflopjes|sSaved~q\);

-- Location: LCCOMB_X63_Y53_N0
\shifter|maakopdr3Muxen:4:opdr3Muxen|x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|maakopdr3Muxen:4:opdr3Muxen|x~0_combout\ = (\SW[2]~input_o\) # (\shifter|maakflipflops:3:flipflopjes|sSaved~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \shifter|maakflipflops:3:flipflopjes|sSaved~q\,
	combout => \shifter|maakopdr3Muxen:4:opdr3Muxen|x~0_combout\);

-- Location: FF_X63_Y53_N1
\shifter|maakflipflops:4:flipflopjes|sSaved\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vertrager|outClock~clkctrl_outclk\,
	d => \shifter|maakopdr3Muxen:4:opdr3Muxen|x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|maakflipflops:4:flipflopjes|sSaved~q\);

-- Location: LCCOMB_X63_Y53_N2
\shifter|maakopdr3Muxen:5:opdr3Muxen|x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|maakopdr3Muxen:5:opdr3Muxen|x~0_combout\ = (\SW[2]~input_o\) # (\shifter|maakflipflops:4:flipflopjes|sSaved~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \shifter|maakflipflops:4:flipflopjes|sSaved~q\,
	combout => \shifter|maakopdr3Muxen:5:opdr3Muxen|x~0_combout\);

-- Location: FF_X63_Y53_N3
\shifter|maakflipflops:5:flipflopjes|sSaved\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vertrager|outClock~clkctrl_outclk\,
	d => \shifter|maakopdr3Muxen:5:opdr3Muxen|x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|maakflipflops:5:flipflopjes|sSaved~q\);

-- Location: LCCOMB_X63_Y53_N20
\shifter|startopdr3Mux|x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|startopdr3Mux|x~0_combout\ = (!\SW[2]~input_o\ & \shifter|maakflipflops:5:flipflopjes|sSaved~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \shifter|maakflipflops:5:flipflopjes|sSaved~q\,
	combout => \shifter|startopdr3Mux|x~0_combout\);

-- Location: FF_X63_Y53_N21
\shifter|maakflipflops:0:flipflopjes|sSaved\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vertrager|outClock~clkctrl_outclk\,
	d => \shifter|startopdr3Mux|x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|maakflipflops:0:flipflopjes|sSaved~q\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X63_Y53_N4
\HEX0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = (\SW[1]~input_o\ & (\shifter|maakflipflops:0:flipflopjes|sSaved~q\)) # (!\SW[1]~input_o\ & (((\shifter|maakflipflops:5:flipflopjes|sSaved~q\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|maakflipflops:0:flipflopjes|sSaved~q\,
	datab => \shifter|maakflipflops:5:flipflopjes|sSaved~q\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~0_combout\);

-- Location: LCCOMB_X63_Y53_N26
\HEX0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~1_combout\ = (\SW[1]~input_o\ & (\shifter|maakflipflops:1:flipflopjes|sSaved~q\)) # (!\SW[1]~input_o\ & (((\shifter|maakflipflops:4:flipflopjes|sSaved~q\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|maakflipflops:1:flipflopjes|sSaved~q\,
	datab => \SW[1]~input_o\,
	datac => \shifter|maakflipflops:4:flipflopjes|sSaved~q\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~1_combout\);

-- Location: LCCOMB_X63_Y53_N24
\HEX0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~2_combout\ = (\SW[1]~input_o\ & (((\shifter|maakflipflops:2:flipflopjes|sSaved~q\)))) # (!\SW[1]~input_o\ & ((\shifter|maakflipflops:3:flipflopjes|sSaved~q\) # ((!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|maakflipflops:3:flipflopjes|sSaved~q\,
	datab => \shifter|maakflipflops:2:flipflopjes|sSaved~q\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~2_combout\);

-- Location: LCCOMB_X63_Y53_N30
\HEX0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~3_combout\ = (\SW[1]~input_o\ & (\shifter|maakflipflops:3:flipflopjes|sSaved~q\)) # (!\SW[1]~input_o\ & (((\shifter|maakflipflops:2:flipflopjes|sSaved~q\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|maakflipflops:3:flipflopjes|sSaved~q\,
	datab => \shifter|maakflipflops:2:flipflopjes|sSaved~q\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~3_combout\);

-- Location: LCCOMB_X63_Y53_N28
\HEX0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~4_combout\ = (\SW[1]~input_o\ & (((\shifter|maakflipflops:4:flipflopjes|sSaved~q\)))) # (!\SW[1]~input_o\ & ((\shifter|maakflipflops:1:flipflopjes|sSaved~q\) # ((!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|maakflipflops:1:flipflopjes|sSaved~q\,
	datab => \SW[1]~input_o\,
	datac => \shifter|maakflipflops:4:flipflopjes|sSaved~q\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~4_combout\);

-- Location: LCCOMB_X63_Y53_N22
\HEX0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX0~5_combout\ = (\SW[1]~input_o\ & (((\shifter|maakflipflops:5:flipflopjes|sSaved~q\)))) # (!\SW[1]~input_o\ & ((\shifter|maakflipflops:0:flipflopjes|sSaved~q\) # ((!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|maakflipflops:0:flipflopjes|sSaved~q\,
	datab => \shifter|maakflipflops:5:flipflopjes|sSaved~q\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \HEX0~5_combout\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(7) <= \HEX4[7]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(7) <= \HEX5[7]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;
END structure;


