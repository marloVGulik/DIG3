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

-- DATE "10/22/2025 16:12:27"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA_controller IS
    PORT (
	MAX10CLK150 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(4 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END VGA_controller;

-- Design Ports Information
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MAX10CLK150	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VGA_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MAX10CLK150 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock25M|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock25M|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_HS~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RefreshOrFreeze~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10CLK150~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \LEDR~2_combout\ : std_logic;
SIGNAL \MAX10CLK150~input_o\ : std_logic;
SIGNAL \MAX10CLK150~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock25M|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \clock25M|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \clock25M|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \clock25M|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \LEDR~3_combout\ : std_logic;
SIGNAL \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Hcount~5_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Hcount~6_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \VGA_HS~0_combout\ : std_logic;
SIGNAL \Hcount~4_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \VGA_HS~1_combout\ : std_logic;
SIGNAL \VGA_HS~reg0_q\ : std_logic;
SIGNAL \VGA_HS~reg0clkctrl_outclk\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \VGA_VS~1_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \VGA_VS~0_combout\ : std_logic;
SIGNAL \Vcount~5_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \VGA_VS~5_combout\ : std_logic;
SIGNAL \Vcount~3_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Vcount~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \VGA_VS~2_combout\ : std_logic;
SIGNAL \Vcount~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \VGA_VS~3_combout\ : std_logic;
SIGNAL \VGA_VS~4_combout\ : std_logic;
SIGNAL \VGA_VS~reg0_q\ : std_logic;
SIGNAL \xCord[0]~10_combout\ : std_logic;
SIGNAL \Hactive~0_combout\ : std_logic;
SIGNAL \Hactive~1_combout\ : std_logic;
SIGNAL \Hactive~2_combout\ : std_logic;
SIGNAL \Hactive~q\ : std_logic;
SIGNAL \xCord[0]~11\ : std_logic;
SIGNAL \xCord[1]~12_combout\ : std_logic;
SIGNAL \xCord[1]~13\ : std_logic;
SIGNAL \xCord[2]~14_combout\ : std_logic;
SIGNAL \xCord[2]~15\ : std_logic;
SIGNAL \xCord[3]~16_combout\ : std_logic;
SIGNAL \xCord[3]~17\ : std_logic;
SIGNAL \xCord[4]~18_combout\ : std_logic;
SIGNAL \Objekten|DrawRightRect|active~4_combout\ : std_logic;
SIGNAL \xCord[4]~19\ : std_logic;
SIGNAL \xCord[5]~20_combout\ : std_logic;
SIGNAL \Objekten|DrawRightRect|active~5_combout\ : std_logic;
SIGNAL \yCord[0]~10_combout\ : std_logic;
SIGNAL \Vactive~0_combout\ : std_logic;
SIGNAL \Vactive~1_combout\ : std_logic;
SIGNAL \Vactive~q\ : std_logic;
SIGNAL \yCord[0]~11\ : std_logic;
SIGNAL \yCord[1]~12_combout\ : std_logic;
SIGNAL \yCord[1]~13\ : std_logic;
SIGNAL \yCord[2]~14_combout\ : std_logic;
SIGNAL \yCord[2]~15\ : std_logic;
SIGNAL \yCord[3]~16_combout\ : std_logic;
SIGNAL \yCord[3]~17\ : std_logic;
SIGNAL \yCord[4]~18_combout\ : std_logic;
SIGNAL \yCord[4]~19\ : std_logic;
SIGNAL \yCord[5]~20_combout\ : std_logic;
SIGNAL \yCord[5]~21\ : std_logic;
SIGNAL \yCord[6]~22_combout\ : std_logic;
SIGNAL \yCord[6]~23\ : std_logic;
SIGNAL \yCord[7]~24_combout\ : std_logic;
SIGNAL \yCord[7]~25\ : std_logic;
SIGNAL \yCord[8]~26_combout\ : std_logic;
SIGNAL \yCord[8]~27\ : std_logic;
SIGNAL \yCord[9]~28_combout\ : std_logic;
SIGNAL \xCord[5]~21\ : std_logic;
SIGNAL \xCord[6]~22_combout\ : std_logic;
SIGNAL \xCord[6]~23\ : std_logic;
SIGNAL \xCord[7]~24_combout\ : std_logic;
SIGNAL \Objekten|DrawRightRect|active~0_combout\ : std_logic;
SIGNAL \Objekten|DrawRightRect|active~1_combout\ : std_logic;
SIGNAL \Objekten|DrawRightRect|active~2_combout\ : std_logic;
SIGNAL \Objekten|DrawRightRect|active~3_combout\ : std_logic;
SIGNAL \xCord[7]~25\ : std_logic;
SIGNAL \xCord[8]~26_combout\ : std_logic;
SIGNAL \xCord[8]~27\ : std_logic;
SIGNAL \xCord[9]~28_combout\ : std_logic;
SIGNAL \Objekten|DrawRightRect|active~6_combout\ : std_logic;
SIGNAL \Objekten|DrawRightRect|active~7_combout\ : std_logic;
SIGNAL \Objekten|DrawMiddleRect|active~0_combout\ : std_logic;
SIGNAL \Objekten|DrawMiddleRect|active~1_combout\ : std_logic;
SIGNAL \Objekten|DrawMiddleRect|active~2_combout\ : std_logic;
SIGNAL \Objekten|DrawMiddleRect|active~3_combout\ : std_logic;
SIGNAL \VGA_R~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Refresh~0_combout\ : std_logic;
SIGNAL \Refresh~q\ : std_logic;
SIGNAL \RefreshOrFreeze~combout\ : std_logic;
SIGNAL \RefreshOrFreeze~clkctrl_outclk\ : std_logic;
SIGNAL \Objekten|Add1~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \Objekten|Add1~1\ : std_logic;
SIGNAL \Objekten|Add1~3_combout\ : std_logic;
SIGNAL \Objekten|Add1~4\ : std_logic;
SIGNAL \Objekten|Add1~5_combout\ : std_logic;
SIGNAL \Objekten|CircleCoord1.x[2]~2_combout\ : std_logic;
SIGNAL \Objekten|Add1~6\ : std_logic;
SIGNAL \Objekten|Add1~7_combout\ : std_logic;
SIGNAL \Objekten|Add1~8\ : std_logic;
SIGNAL \Objekten|Add1~9_combout\ : std_logic;
SIGNAL \Objekten|Add1~10\ : std_logic;
SIGNAL \Objekten|Add1~11_combout\ : std_logic;
SIGNAL \Objekten|CircleCoord1.x[5]~1_combout\ : std_logic;
SIGNAL \Objekten|Add1~12\ : std_logic;
SIGNAL \Objekten|Add1~13_combout\ : std_logic;
SIGNAL \Objekten|CircleCoord1.x[6]~0_combout\ : std_logic;
SIGNAL \Objekten|Add1~14\ : std_logic;
SIGNAL \Objekten|Add1~15_combout\ : std_logic;
SIGNAL \Objekten|Add1~16\ : std_logic;
SIGNAL \Objekten|Add1~17_combout\ : std_logic;
SIGNAL \Objekten|Add1~18\ : std_logic;
SIGNAL \Objekten|Add1~19_combout\ : std_logic;
SIGNAL \Objekten|Add1~20\ : std_logic;
SIGNAL \Objekten|Add1~21_combout\ : std_logic;
SIGNAL \Objekten|Add1~22\ : std_logic;
SIGNAL \Objekten|Add1~23_combout\ : std_logic;
SIGNAL \Objekten|Add1~24\ : std_logic;
SIGNAL \Objekten|Add1~25_combout\ : std_logic;
SIGNAL \Objekten|Add1~26\ : std_logic;
SIGNAL \Objekten|Add1~27_combout\ : std_logic;
SIGNAL \Objekten|Add1~28\ : std_logic;
SIGNAL \Objekten|Add1~29_combout\ : std_logic;
SIGNAL \Objekten|Add1~30\ : std_logic;
SIGNAL \Objekten|Add1~31_combout\ : std_logic;
SIGNAL \Objekten|Add1~32\ : std_logic;
SIGNAL \Objekten|Add1~33_combout\ : std_logic;
SIGNAL \Objekten|Add1~34\ : std_logic;
SIGNAL \Objekten|Add1~35_combout\ : std_logic;
SIGNAL \Objekten|Add1~36\ : std_logic;
SIGNAL \Objekten|Add1~37_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~13_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~14_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~15_combout\ : std_logic;
SIGNAL \Objekten|CircleToRight1~q\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~8_combout\ : std_logic;
SIGNAL \Objekten|Add1~38\ : std_logic;
SIGNAL \Objekten|Add1~39_combout\ : std_logic;
SIGNAL \Objekten|Add1~40\ : std_logic;
SIGNAL \Objekten|Add1~41_combout\ : std_logic;
SIGNAL \Objekten|Add1~42\ : std_logic;
SIGNAL \Objekten|Add1~43_combout\ : std_logic;
SIGNAL \Objekten|Add1~44\ : std_logic;
SIGNAL \Objekten|Add1~45_combout\ : std_logic;
SIGNAL \Objekten|Add1~46\ : std_logic;
SIGNAL \Objekten|Add1~47_combout\ : std_logic;
SIGNAL \Objekten|Add1~48\ : std_logic;
SIGNAL \Objekten|Add1~49_combout\ : std_logic;
SIGNAL \Objekten|Add1~50\ : std_logic;
SIGNAL \Objekten|Add1~51_combout\ : std_logic;
SIGNAL \Objekten|Add1~52\ : std_logic;
SIGNAL \Objekten|Add1~53_combout\ : std_logic;
SIGNAL \Objekten|Add1~54\ : std_logic;
SIGNAL \Objekten|Add1~55_combout\ : std_logic;
SIGNAL \Objekten|Add1~56\ : std_logic;
SIGNAL \Objekten|Add1~57_combout\ : std_logic;
SIGNAL \Objekten|Add1~58\ : std_logic;
SIGNAL \Objekten|Add1~59_combout\ : std_logic;
SIGNAL \Objekten|Add1~60\ : std_logic;
SIGNAL \Objekten|Add1~61_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~9_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~10_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~11_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~12_combout\ : std_logic;
SIGNAL \Objekten|Add1~2_combout\ : std_logic;
SIGNAL \Objekten|Add1~62\ : std_logic;
SIGNAL \Objekten|Add1~63_combout\ : std_logic;
SIGNAL \Objekten|Add4~1\ : std_logic;
SIGNAL \Objekten|Add4~3\ : std_logic;
SIGNAL \Objekten|Add4~5\ : std_logic;
SIGNAL \Objekten|Add4~7\ : std_logic;
SIGNAL \Objekten|Add4~9\ : std_logic;
SIGNAL \Objekten|Add4~11\ : std_logic;
SIGNAL \Objekten|Add4~13\ : std_logic;
SIGNAL \Objekten|Add4~15\ : std_logic;
SIGNAL \Objekten|Add4~17\ : std_logic;
SIGNAL \Objekten|Add4~19\ : std_logic;
SIGNAL \Objekten|Add4~21\ : std_logic;
SIGNAL \Objekten|Add4~23\ : std_logic;
SIGNAL \Objekten|Add4~25\ : std_logic;
SIGNAL \Objekten|Add4~27\ : std_logic;
SIGNAL \Objekten|Add4~29\ : std_logic;
SIGNAL \Objekten|Add4~31\ : std_logic;
SIGNAL \Objekten|Add4~33\ : std_logic;
SIGNAL \Objekten|Add4~35\ : std_logic;
SIGNAL \Objekten|Add4~37\ : std_logic;
SIGNAL \Objekten|Add4~39\ : std_logic;
SIGNAL \Objekten|Add4~41\ : std_logic;
SIGNAL \Objekten|Add4~43\ : std_logic;
SIGNAL \Objekten|Add4~45\ : std_logic;
SIGNAL \Objekten|Add4~47\ : std_logic;
SIGNAL \Objekten|Add4~49\ : std_logic;
SIGNAL \Objekten|Add4~51\ : std_logic;
SIGNAL \Objekten|Add4~53\ : std_logic;
SIGNAL \Objekten|Add4~55\ : std_logic;
SIGNAL \Objekten|Add4~57\ : std_logic;
SIGNAL \Objekten|Add4~59\ : std_logic;
SIGNAL \Objekten|Add4~60_combout\ : std_logic;
SIGNAL \Objekten|Add5~1\ : std_logic;
SIGNAL \Objekten|Add5~3\ : std_logic;
SIGNAL \Objekten|Add5~5\ : std_logic;
SIGNAL \Objekten|Add5~7\ : std_logic;
SIGNAL \Objekten|Add5~9\ : std_logic;
SIGNAL \Objekten|Add5~11\ : std_logic;
SIGNAL \Objekten|Add5~13\ : std_logic;
SIGNAL \Objekten|Add5~15\ : std_logic;
SIGNAL \Objekten|Add5~17\ : std_logic;
SIGNAL \Objekten|Add5~19\ : std_logic;
SIGNAL \Objekten|Add5~21\ : std_logic;
SIGNAL \Objekten|Add5~23\ : std_logic;
SIGNAL \Objekten|Add5~25\ : std_logic;
SIGNAL \Objekten|Add5~27\ : std_logic;
SIGNAL \Objekten|Add5~29\ : std_logic;
SIGNAL \Objekten|Add5~31\ : std_logic;
SIGNAL \Objekten|Add5~33\ : std_logic;
SIGNAL \Objekten|Add5~35\ : std_logic;
SIGNAL \Objekten|Add5~37\ : std_logic;
SIGNAL \Objekten|Add5~39\ : std_logic;
SIGNAL \Objekten|Add5~41\ : std_logic;
SIGNAL \Objekten|Add5~43\ : std_logic;
SIGNAL \Objekten|Add5~45\ : std_logic;
SIGNAL \Objekten|Add5~47\ : std_logic;
SIGNAL \Objekten|Add5~49\ : std_logic;
SIGNAL \Objekten|Add5~51\ : std_logic;
SIGNAL \Objekten|Add5~53\ : std_logic;
SIGNAL \Objekten|Add5~55\ : std_logic;
SIGNAL \Objekten|Add5~57\ : std_logic;
SIGNAL \Objekten|Add5~58_combout\ : std_logic;
SIGNAL \Objekten|Add5~12_combout\ : std_logic;
SIGNAL \Objekten|Add5~16_combout\ : std_logic;
SIGNAL \Objekten|Add5~14_combout\ : std_logic;
SIGNAL \Objekten|Add5~6_combout\ : std_logic;
SIGNAL \Objekten|Add5~8_combout\ : std_logic;
SIGNAL \Objekten|Add5~2_combout\ : std_logic;
SIGNAL \Objekten|Add5~4_combout\ : std_logic;
SIGNAL \Objekten|Add5~0_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour~5_combout\ : std_logic;
SIGNAL \Objekten|Add5~10_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour~6_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour~7_combout\ : std_logic;
SIGNAL \Objekten|Add5~26_combout\ : std_logic;
SIGNAL \Objekten|Add5~32_combout\ : std_logic;
SIGNAL \Objekten|Add5~28_combout\ : std_logic;
SIGNAL \Objekten|Add5~30_combout\ : std_logic;
SIGNAL \Objekten|LessThan8~1_combout\ : std_logic;
SIGNAL \Objekten|Add5~24_combout\ : std_logic;
SIGNAL \Objekten|Add5~22_combout\ : std_logic;
SIGNAL \Objekten|Add5~20_combout\ : std_logic;
SIGNAL \Objekten|Add5~18_combout\ : std_logic;
SIGNAL \Objekten|LessThan8~0_combout\ : std_logic;
SIGNAL \Objekten|Add5~38_combout\ : std_logic;
SIGNAL \Objekten|Add5~36_combout\ : std_logic;
SIGNAL \Objekten|Add5~34_combout\ : std_logic;
SIGNAL \Objekten|Add5~40_combout\ : std_logic;
SIGNAL \Objekten|LessThan8~2_combout\ : std_logic;
SIGNAL \Objekten|Add5~44_combout\ : std_logic;
SIGNAL \Objekten|Add5~42_combout\ : std_logic;
SIGNAL \Objekten|Add5~46_combout\ : std_logic;
SIGNAL \Objekten|Add5~48_combout\ : std_logic;
SIGNAL \Objekten|LessThan8~3_combout\ : std_logic;
SIGNAL \Objekten|LessThan8~4_combout\ : std_logic;
SIGNAL \Objekten|Add5~50_combout\ : std_logic;
SIGNAL \Objekten|Add5~52_combout\ : std_logic;
SIGNAL \Objekten|Add5~56_combout\ : std_logic;
SIGNAL \Objekten|Add5~54_combout\ : std_logic;
SIGNAL \Objekten|LessThan8~5_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour~8_combout\ : std_logic;
SIGNAL \Objekten|Add5~59\ : std_logic;
SIGNAL \Objekten|Add5~60_combout\ : std_logic;
SIGNAL \Objekten|Add4~58_combout\ : std_logic;
SIGNAL \Objekten|Add4~16_combout\ : std_logic;
SIGNAL \Objekten|Add4~14_combout\ : std_logic;
SIGNAL \Objekten|Add4~8_combout\ : std_logic;
SIGNAL \Objekten|Add4~4_combout\ : std_logic;
SIGNAL \Objekten|Add4~6_combout\ : std_logic;
SIGNAL \Objekten|LessThan13~5_combout\ : std_logic;
SIGNAL \Objekten|Add4~0_combout\ : std_logic;
SIGNAL \Objekten|Add4~2_combout\ : std_logic;
SIGNAL \Objekten|LessThan11~0_combout\ : std_logic;
SIGNAL \Objekten|Add4~12_combout\ : std_logic;
SIGNAL \Objekten|Add4~10_combout\ : std_logic;
SIGNAL \Objekten|LessThan13~6_combout\ : std_logic;
SIGNAL \Objekten|LessThan13~7_combout\ : std_logic;
SIGNAL \Objekten|Add4~50_combout\ : std_logic;
SIGNAL \Objekten|Add4~54_combout\ : std_logic;
SIGNAL \Objekten|Add4~56_combout\ : std_logic;
SIGNAL \Objekten|Add4~52_combout\ : std_logic;
SIGNAL \Objekten|LessThan13~8_combout\ : std_logic;
SIGNAL \Objekten|Add4~24_combout\ : std_logic;
SIGNAL \Objekten|Add4~22_combout\ : std_logic;
SIGNAL \Objekten|Add4~20_combout\ : std_logic;
SIGNAL \Objekten|Add4~18_combout\ : std_logic;
SIGNAL \Objekten|LessThan13~0_combout\ : std_logic;
SIGNAL \Objekten|Add4~28_combout\ : std_logic;
SIGNAL \Objekten|Add4~26_combout\ : std_logic;
SIGNAL \Objekten|Add4~30_combout\ : std_logic;
SIGNAL \Objekten|Add4~32_combout\ : std_logic;
SIGNAL \Objekten|LessThan13~1_combout\ : std_logic;
SIGNAL \Objekten|Add4~38_combout\ : std_logic;
SIGNAL \Objekten|Add4~34_combout\ : std_logic;
SIGNAL \Objekten|Add4~36_combout\ : std_logic;
SIGNAL \Objekten|Add4~40_combout\ : std_logic;
SIGNAL \Objekten|LessThan13~2_combout\ : std_logic;
SIGNAL \Objekten|Add4~44_combout\ : std_logic;
SIGNAL \Objekten|Add4~42_combout\ : std_logic;
SIGNAL \Objekten|Add4~46_combout\ : std_logic;
SIGNAL \Objekten|Add4~48_combout\ : std_logic;
SIGNAL \Objekten|LessThan13~3_combout\ : std_logic;
SIGNAL \Objekten|LessThan13~4_combout\ : std_logic;
SIGNAL \Objekten|LessThan13~9_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour~9_combout\ : std_logic;
SIGNAL \Objekten|LessThan11~3_combout\ : std_logic;
SIGNAL \Objekten|LessThan11~4_combout\ : std_logic;
SIGNAL \Objekten|LessThan9~0_combout\ : std_logic;
SIGNAL \Objekten|LessThan9~1_combout\ : std_logic;
SIGNAL \Objekten|LessThan9~2_combout\ : std_logic;
SIGNAL \Objekten|LessThan8~7_combout\ : std_logic;
SIGNAL \Objekten|LessThan8~8_combout\ : std_logic;
SIGNAL \Objekten|LessThan8~6_combout\ : std_logic;
SIGNAL \Objekten|coloursProcess~5_combout\ : std_logic;
SIGNAL \Objekten|coloursProcess~7_combout\ : std_logic;
SIGNAL \Objekten|LessThan9~3_combout\ : std_logic;
SIGNAL \Objekten|LessThan11~1_combout\ : std_logic;
SIGNAL \Objekten|LessThan11~2_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour[1][3]~3_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour[1][3]~0_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour[1][3]~1_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour[1][3]~2_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour[1][3]~4_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour~10_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour[0][3]~q\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~1_cout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~2_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~4_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~6_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~8_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~10_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~12_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~14_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~16_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~18_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~20_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add1~22_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~0_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~2_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~4_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~6_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~8_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~10_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~12_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~14_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~16_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~18_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~20_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~22_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~24_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~25\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~26_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~27\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~28_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~29\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~30_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~31\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~32_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~33\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~34_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~22_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~10_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~8_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~14_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~16_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~12_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~0_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~0_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~6_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~4_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~2_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~1_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~2_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~18_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~20_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~3_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~35\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~36_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~37\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~38_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~39\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~40_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~41\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~42_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~43\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~44_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~45\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~46_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~47\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~48_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~49\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~50_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~51\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~52_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~53\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~54_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~55\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~56_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~57\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~58_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~59\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~60_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~61\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add0~62_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~25\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~26_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~24_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~22_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~18_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~16_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~23\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~25\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~27\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~29\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~31\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~33\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~35\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~37\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~39\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~41\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~43\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~45\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~47\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~49\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~51\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~53\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~55\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~57\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~59\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~61\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~62_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~46_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~42_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~44_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~40_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~7_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~54_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~48_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~52_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~50_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~8_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~36_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~34_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~32_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~38_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~6_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~30_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~26_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~24_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~28_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~5_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~9_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~60_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~56_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|Add2~58_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~4_combout\ : std_logic;
SIGNAL \Objekten|BovenCirkel|LessThan0~10_combout\ : std_logic;
SIGNAL \Objekten|CircleToRight2~0_combout\ : std_logic;
SIGNAL \Objekten|CircleToRight2~q\ : std_logic;
SIGNAL \Objekten|Add2~1_combout\ : std_logic;
SIGNAL \Objekten|Add2~2_combout\ : std_logic;
SIGNAL \Objekten|Add2~4_cout\ : std_logic;
SIGNAL \Objekten|Add2~5_combout\ : std_logic;
SIGNAL \Objekten|Add2~6\ : std_logic;
SIGNAL \Objekten|Add2~7_combout\ : std_logic;
SIGNAL \Objekten|CircleCoord2.x[2]~2_combout\ : std_logic;
SIGNAL \Objekten|Add2~8\ : std_logic;
SIGNAL \Objekten|Add2~9_combout\ : std_logic;
SIGNAL \Objekten|CircleCoord2.x[3]~1_combout\ : std_logic;
SIGNAL \Objekten|Add2~10\ : std_logic;
SIGNAL \Objekten|Add2~11_combout\ : std_logic;
SIGNAL \Objekten|CircleCoord2.x[4]~0_combout\ : std_logic;
SIGNAL \Objekten|Add2~12\ : std_logic;
SIGNAL \Objekten|Add2~13_combout\ : std_logic;
SIGNAL \Objekten|Add2~14\ : std_logic;
SIGNAL \Objekten|Add2~15_combout\ : std_logic;
SIGNAL \Objekten|Add2~16\ : std_logic;
SIGNAL \Objekten|Add2~17_combout\ : std_logic;
SIGNAL \Objekten|Add2~18\ : std_logic;
SIGNAL \Objekten|Add2~19_combout\ : std_logic;
SIGNAL \Objekten|Add2~20\ : std_logic;
SIGNAL \Objekten|Add2~21_combout\ : std_logic;
SIGNAL \Objekten|CircleCoord2.x[9]~3_combout\ : std_logic;
SIGNAL \Objekten|Add2~22\ : std_logic;
SIGNAL \Objekten|Add2~23_combout\ : std_logic;
SIGNAL \Objekten|Add2~24\ : std_logic;
SIGNAL \Objekten|Add2~25_combout\ : std_logic;
SIGNAL \Objekten|Add2~26\ : std_logic;
SIGNAL \Objekten|Add2~27_combout\ : std_logic;
SIGNAL \Objekten|Add2~28\ : std_logic;
SIGNAL \Objekten|Add2~29_combout\ : std_logic;
SIGNAL \Objekten|Add2~30\ : std_logic;
SIGNAL \Objekten|Add2~31_combout\ : std_logic;
SIGNAL \Objekten|Add2~32\ : std_logic;
SIGNAL \Objekten|Add2~33_combout\ : std_logic;
SIGNAL \Objekten|Add2~34\ : std_logic;
SIGNAL \Objekten|Add2~35_combout\ : std_logic;
SIGNAL \Objekten|Add2~36\ : std_logic;
SIGNAL \Objekten|Add2~37_combout\ : std_logic;
SIGNAL \Objekten|Add2~38\ : std_logic;
SIGNAL \Objekten|Add2~39_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~5_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~6_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~7_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~0_combout\ : std_logic;
SIGNAL \Objekten|Add2~40\ : std_logic;
SIGNAL \Objekten|Add2~41_combout\ : std_logic;
SIGNAL \Objekten|Add2~42\ : std_logic;
SIGNAL \Objekten|Add2~43_combout\ : std_logic;
SIGNAL \Objekten|Add2~44\ : std_logic;
SIGNAL \Objekten|Add2~45_combout\ : std_logic;
SIGNAL \Objekten|Add2~46\ : std_logic;
SIGNAL \Objekten|Add2~47_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~3_combout\ : std_logic;
SIGNAL \Objekten|Add2~48\ : std_logic;
SIGNAL \Objekten|Add2~49_combout\ : std_logic;
SIGNAL \Objekten|Add2~50\ : std_logic;
SIGNAL \Objekten|Add2~51_combout\ : std_logic;
SIGNAL \Objekten|Add2~52\ : std_logic;
SIGNAL \Objekten|Add2~53_combout\ : std_logic;
SIGNAL \Objekten|Add2~54\ : std_logic;
SIGNAL \Objekten|Add2~55_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~2_combout\ : std_logic;
SIGNAL \Objekten|Add2~56\ : std_logic;
SIGNAL \Objekten|Add2~57_combout\ : std_logic;
SIGNAL \Objekten|Add2~58\ : std_logic;
SIGNAL \Objekten|Add2~59_combout\ : std_logic;
SIGNAL \Objekten|Add2~60\ : std_logic;
SIGNAL \Objekten|Add2~61_combout\ : std_logic;
SIGNAL \Objekten|Add2~62\ : std_logic;
SIGNAL \Objekten|Add2~63_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~1_combout\ : std_logic;
SIGNAL \Objekten|CoordinateInRectangle~4_combout\ : std_logic;
SIGNAL \Objekten|Add2~0_combout\ : std_logic;
SIGNAL \Objekten|Add2~64\ : std_logic;
SIGNAL \Objekten|Add2~65_combout\ : std_logic;
SIGNAL \Objekten|Add7~1\ : std_logic;
SIGNAL \Objekten|Add7~3\ : std_logic;
SIGNAL \Objekten|Add7~5\ : std_logic;
SIGNAL \Objekten|Add7~7\ : std_logic;
SIGNAL \Objekten|Add7~9\ : std_logic;
SIGNAL \Objekten|Add7~11\ : std_logic;
SIGNAL \Objekten|Add7~13\ : std_logic;
SIGNAL \Objekten|Add7~15\ : std_logic;
SIGNAL \Objekten|Add7~17\ : std_logic;
SIGNAL \Objekten|Add7~19\ : std_logic;
SIGNAL \Objekten|Add7~21\ : std_logic;
SIGNAL \Objekten|Add7~23\ : std_logic;
SIGNAL \Objekten|Add7~25\ : std_logic;
SIGNAL \Objekten|Add7~27\ : std_logic;
SIGNAL \Objekten|Add7~29\ : std_logic;
SIGNAL \Objekten|Add7~31\ : std_logic;
SIGNAL \Objekten|Add7~33\ : std_logic;
SIGNAL \Objekten|Add7~35\ : std_logic;
SIGNAL \Objekten|Add7~37\ : std_logic;
SIGNAL \Objekten|Add7~39\ : std_logic;
SIGNAL \Objekten|Add7~41\ : std_logic;
SIGNAL \Objekten|Add7~43\ : std_logic;
SIGNAL \Objekten|Add7~45\ : std_logic;
SIGNAL \Objekten|Add7~47\ : std_logic;
SIGNAL \Objekten|Add7~49\ : std_logic;
SIGNAL \Objekten|Add7~51\ : std_logic;
SIGNAL \Objekten|Add7~53\ : std_logic;
SIGNAL \Objekten|Add7~55\ : std_logic;
SIGNAL \Objekten|Add7~57\ : std_logic;
SIGNAL \Objekten|Add7~59\ : std_logic;
SIGNAL \Objekten|Add7~60_combout\ : std_logic;
SIGNAL \Objekten|Add6~1\ : std_logic;
SIGNAL \Objekten|Add6~3\ : std_logic;
SIGNAL \Objekten|Add6~5\ : std_logic;
SIGNAL \Objekten|Add6~7\ : std_logic;
SIGNAL \Objekten|Add6~9\ : std_logic;
SIGNAL \Objekten|Add6~11\ : std_logic;
SIGNAL \Objekten|Add6~13\ : std_logic;
SIGNAL \Objekten|Add6~15\ : std_logic;
SIGNAL \Objekten|Add6~17\ : std_logic;
SIGNAL \Objekten|Add6~19\ : std_logic;
SIGNAL \Objekten|Add6~21\ : std_logic;
SIGNAL \Objekten|Add6~23\ : std_logic;
SIGNAL \Objekten|Add6~25\ : std_logic;
SIGNAL \Objekten|Add6~27\ : std_logic;
SIGNAL \Objekten|Add6~29\ : std_logic;
SIGNAL \Objekten|Add6~31\ : std_logic;
SIGNAL \Objekten|Add6~33\ : std_logic;
SIGNAL \Objekten|Add6~35\ : std_logic;
SIGNAL \Objekten|Add6~37\ : std_logic;
SIGNAL \Objekten|Add6~39\ : std_logic;
SIGNAL \Objekten|Add6~41\ : std_logic;
SIGNAL \Objekten|Add6~43\ : std_logic;
SIGNAL \Objekten|Add6~45\ : std_logic;
SIGNAL \Objekten|Add6~47\ : std_logic;
SIGNAL \Objekten|Add6~49\ : std_logic;
SIGNAL \Objekten|Add6~51\ : std_logic;
SIGNAL \Objekten|Add6~53\ : std_logic;
SIGNAL \Objekten|Add6~55\ : std_logic;
SIGNAL \Objekten|Add6~57\ : std_logic;
SIGNAL \Objekten|Add6~59\ : std_logic;
SIGNAL \Objekten|Add6~60_combout\ : std_logic;
SIGNAL \Objekten|Add6~16_combout\ : std_logic;
SIGNAL \Objekten|Add6~0_combout\ : std_logic;
SIGNAL \Objekten|Add6~2_combout\ : std_logic;
SIGNAL \Objekten|LessThan17~0_combout\ : std_logic;
SIGNAL \Objekten|Add6~12_combout\ : std_logic;
SIGNAL \Objekten|Add6~10_combout\ : std_logic;
SIGNAL \Objekten|Add6~8_combout\ : std_logic;
SIGNAL \Objekten|Add6~6_combout\ : std_logic;
SIGNAL \Objekten|Add6~4_combout\ : std_logic;
SIGNAL \Objekten|LessThan19~6_combout\ : std_logic;
SIGNAL \Objekten|LessThan19~7_combout\ : std_logic;
SIGNAL \Objekten|Add6~14_combout\ : std_logic;
SIGNAL \Objekten|LessThan19~8_combout\ : std_logic;
SIGNAL \Objekten|Add6~58_combout\ : std_logic;
SIGNAL \Objekten|Add6~50_combout\ : std_logic;
SIGNAL \Objekten|Add6~52_combout\ : std_logic;
SIGNAL \Objekten|Add6~54_combout\ : std_logic;
SIGNAL \Objekten|Add6~56_combout\ : std_logic;
SIGNAL \Objekten|LessThan19~5_combout\ : std_logic;
SIGNAL \Objekten|Add6~20_combout\ : std_logic;
SIGNAL \Objekten|Add6~18_combout\ : std_logic;
SIGNAL \Objekten|Add6~24_combout\ : std_logic;
SIGNAL \Objekten|Add6~22_combout\ : std_logic;
SIGNAL \Objekten|LessThan19~0_combout\ : std_logic;
SIGNAL \Objekten|Add6~34_combout\ : std_logic;
SIGNAL \Objekten|Add6~36_combout\ : std_logic;
SIGNAL \Objekten|Add6~38_combout\ : std_logic;
SIGNAL \Objekten|Add6~40_combout\ : std_logic;
SIGNAL \Objekten|LessThan19~2_combout\ : std_logic;
SIGNAL \Objekten|Add6~26_combout\ : std_logic;
SIGNAL \Objekten|Add6~28_combout\ : std_logic;
SIGNAL \Objekten|Add6~32_combout\ : std_logic;
SIGNAL \Objekten|Add6~30_combout\ : std_logic;
SIGNAL \Objekten|LessThan19~1_combout\ : std_logic;
SIGNAL \Objekten|Add6~42_combout\ : std_logic;
SIGNAL \Objekten|Add6~46_combout\ : std_logic;
SIGNAL \Objekten|Add6~44_combout\ : std_logic;
SIGNAL \Objekten|Add6~48_combout\ : std_logic;
SIGNAL \Objekten|LessThan19~3_combout\ : std_logic;
SIGNAL \Objekten|LessThan19~4_combout\ : std_logic;
SIGNAL \Objekten|LessThan19~9_combout\ : std_logic;
SIGNAL \Objekten|Add7~58_combout\ : std_logic;
SIGNAL \Objekten|Add7~12_combout\ : std_logic;
SIGNAL \Objekten|Add7~16_combout\ : std_logic;
SIGNAL \Objekten|Add7~10_combout\ : std_logic;
SIGNAL \Objekten|Add7~8_combout\ : std_logic;
SIGNAL \Objekten|Add7~0_combout\ : std_logic;
SIGNAL \Objekten|Add7~2_combout\ : std_logic;
SIGNAL \Objekten|Add7~4_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour~5_combout\ : std_logic;
SIGNAL \Objekten|Add7~6_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour~6_combout\ : std_logic;
SIGNAL \Objekten|Add7~14_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour~7_combout\ : std_logic;
SIGNAL \Objekten|Add7~56_combout\ : std_logic;
SIGNAL \Objekten|Add7~50_combout\ : std_logic;
SIGNAL \Objekten|Add7~54_combout\ : std_logic;
SIGNAL \Objekten|Add7~52_combout\ : std_logic;
SIGNAL \Objekten|LessThan14~9_combout\ : std_logic;
SIGNAL \Objekten|Add7~24_combout\ : std_logic;
SIGNAL \Objekten|Add7~22_combout\ : std_logic;
SIGNAL \Objekten|Add7~20_combout\ : std_logic;
SIGNAL \Objekten|Add7~18_combout\ : std_logic;
SIGNAL \Objekten|LessThan14~0_combout\ : std_logic;
SIGNAL \Objekten|Add7~26_combout\ : std_logic;
SIGNAL \Objekten|Add7~30_combout\ : std_logic;
SIGNAL \Objekten|Add7~32_combout\ : std_logic;
SIGNAL \Objekten|Add7~28_combout\ : std_logic;
SIGNAL \Objekten|LessThan14~1_combout\ : std_logic;
SIGNAL \Objekten|Add7~38_combout\ : std_logic;
SIGNAL \Objekten|Add7~36_combout\ : std_logic;
SIGNAL \Objekten|Add7~34_combout\ : std_logic;
SIGNAL \Objekten|Add7~40_combout\ : std_logic;
SIGNAL \Objekten|LessThan14~2_combout\ : std_logic;
SIGNAL \Objekten|Add7~44_combout\ : std_logic;
SIGNAL \Objekten|Add7~42_combout\ : std_logic;
SIGNAL \Objekten|Add7~46_combout\ : std_logic;
SIGNAL \Objekten|Add7~48_combout\ : std_logic;
SIGNAL \Objekten|LessThan14~3_combout\ : std_logic;
SIGNAL \Objekten|LessThan14~4_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour~8_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour~9_combout\ : std_logic;
SIGNAL \Objekten|LessThan15~0_combout\ : std_logic;
SIGNAL \Objekten|LessThan15~1_combout\ : std_logic;
SIGNAL \Objekten|LessThan15~2_combout\ : std_logic;
SIGNAL \Objekten|LessThan17~3_combout\ : std_logic;
SIGNAL \Objekten|LessThan14~8_combout\ : std_logic;
SIGNAL \Objekten|LessThan14~7_combout\ : std_logic;
SIGNAL \Objekten|LessThan14~5_combout\ : std_logic;
SIGNAL \Objekten|LessThan14~6_combout\ : std_logic;
SIGNAL \Objekten|coloursProcess~4_combout\ : std_logic;
SIGNAL \Objekten|coloursProcess~6_combout\ : std_logic;
SIGNAL \Objekten|LessThan17~1_combout\ : std_logic;
SIGNAL \Objekten|LessThan17~2_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour[0][3]~3_combout\ : std_logic;
SIGNAL \Objekten|LessThan15~3_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour[0][3]~0_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour[0][3]~1_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour[0][3]~2_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour[0][3]~4_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour~10_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour[0][3]~q\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~0_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~2_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~4_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~6_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~8_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~10_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~12_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~14_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~16_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~18_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~20_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~22_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~24_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~25\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~26_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~27\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~28_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~29\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~30_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~31\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~32_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~33\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~34_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~1_cout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~2_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~4_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~6_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~8_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~10_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~12_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~14_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~16_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~18_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~20_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add1~22_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~18_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~20_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~4_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~6_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~2_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~0_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|LessThan0~1_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~8_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~10_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~14_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~16_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~12_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|LessThan0~0_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|LessThan0~2_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~22_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|LessThan0~3_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~35\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~36_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~37\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~38_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~39\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~40_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~41\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~42_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~43\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~44_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~45\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~46_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~47\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~48_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~49\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~50_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~51\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~52_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~53\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~54_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~55\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~56_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~57\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~58_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~59\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~60_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~61\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add0~62_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~25\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~26_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~24_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~22_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~18_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~16_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~23\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~25\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~27\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~29\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~31\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~33\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~35\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~37\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~39\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~41\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~43\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~45\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~47\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~49\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~51\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~53\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~55\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~57\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~59\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~61\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~62_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~58_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~60_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~42_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~44_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~40_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~46_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|LessThan0~6_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~38_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~36_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~32_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~34_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|LessThan0~5_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~54_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~50_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~52_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~48_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|LessThan0~7_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~24_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~28_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~30_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~26_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|LessThan0~4_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|LessThan0~8_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|Add2~56_combout\ : std_logic;
SIGNAL \Objekten|OnderCirkel|LessThan0~9_combout\ : std_logic;
SIGNAL \VGA_B~0_combout\ : std_logic;
SIGNAL \VGA_R~1_combout\ : std_logic;
SIGNAL \Objekten|DrawLeftRect|active~0_combout\ : std_logic;
SIGNAL \Objekten|DrawLeftRect|active~1_combout\ : std_logic;
SIGNAL \Objekten|DrawLeftRect|active~2_combout\ : std_logic;
SIGNAL \VGA_R~2_combout\ : std_logic;
SIGNAL \VGA_G~0_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour~11_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour[1][3]~q\ : std_logic;
SIGNAL \Objekten|Circle1Colour~11_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour[1][3]~q\ : std_logic;
SIGNAL \VGA_G~1_combout\ : std_logic;
SIGNAL \VGA_G~2_combout\ : std_logic;
SIGNAL \Objekten|Circle2Colour[2][3]~q\ : std_logic;
SIGNAL \VGA_B~1_combout\ : std_logic;
SIGNAL \Objekten|Circle1Colour[2][3]~q\ : std_logic;
SIGNAL \VGA_B~2_combout\ : std_logic;
SIGNAL \VGA_B~3_combout\ : std_logic;
SIGNAL xCord : std_logic_vector(9 DOWNTO 0);
SIGNAL \clock25M|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Objekten|CircleCoord1.x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Objekten|OnderCirkel|Mult0|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL yCord : std_logic_vector(9 DOWNTO 0);
SIGNAL \Objekten|BovenCirkel|Mult0|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL Hcount : std_logic_vector(9 DOWNTO 0);
SIGNAL Vcount : std_logic_vector(9 DOWNTO 0);
SIGNAL \Objekten|CircleCoord2.x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_RefreshOrFreeze~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_VGA_HS~reg0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Hactive~q\ : std_logic;
SIGNAL \ALT_INV_Vactive~q\ : std_logic;

BEGIN

ww_MAX10CLK150 <= MAX10CLK150;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock25M|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \MAX10CLK150~inputclkctrl_outclk\);

\clock25M|altpll_component|auto_generated|wire_pll1_clk\(0) <= \clock25M|altpll_component|auto_generated|pll1_CLK_bus\(0);
\clock25M|altpll_component|auto_generated|wire_pll1_clk\(1) <= \clock25M|altpll_component|auto_generated|pll1_CLK_bus\(1);
\clock25M|altpll_component|auto_generated|wire_pll1_clk\(2) <= \clock25M|altpll_component|auto_generated|pll1_CLK_bus\(2);
\clock25M|altpll_component|auto_generated|wire_pll1_clk\(3) <= \clock25M|altpll_component|auto_generated|pll1_CLK_bus\(3);
\clock25M|altpll_component|auto_generated|wire_pll1_clk\(4) <= \clock25M|altpll_component|auto_generated|pll1_CLK_bus\(4);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT35\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT34\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT33\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT32\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT31\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT28\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT10\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~dataout\);

\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(0) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(1) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(2) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(3) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(4) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(5) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(6) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(7) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(8) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(9) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(10) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(11) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(12) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(13) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(14) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(15) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(16) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(17) <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT32\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT33\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT34\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT35\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT23\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT22\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT19\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT16\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT13\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT10\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT4\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT1\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~dataout\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~11\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~10\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~9\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~8\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~7\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~6\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~5\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~4\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~3\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~2\ & \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~1\ & 
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~0\);

\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~0\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~1\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~2\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~3\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~4\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~5\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~6\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~7\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~8\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~9\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~10\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~11\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~dataout\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT31\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT30\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT29\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT28\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT27\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT26\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT25\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT24\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT23\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT22\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT21\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT20\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT19\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT18\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT17\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT16\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT15\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT14\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT13\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT12\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT11\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT10\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT9\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT8\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT7\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT6\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT5\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT4\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT3\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT2\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT1\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~dataout\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~3\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~2\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~1\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~0\);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~0\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~1\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~2\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~3\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~dataout\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT13\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT14\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT15\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT16\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT17\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT18\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT19\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT20\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT21\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT22\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT23\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT24\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT25\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT26\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT27\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT28\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT29\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT30\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT31\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAA_bus\ <= (\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT31\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT30\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT29\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT28\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT27\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT26\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT25\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT24\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT23\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT22\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT21\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT20\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT19\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT18\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT17\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT16\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT15\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT14\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT13\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT12\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT11\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT10\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT9\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT8\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT7\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT6\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT5\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT4\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT3\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT2\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT1\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~dataout\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~3\ & 
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~2\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~1\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~0\);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~0\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(0);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~1\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(1);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~2\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(2);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~3\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(3);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~dataout\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(4);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(5);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(6);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(7);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(8);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(9);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(10);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(11);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(12);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(13);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(14);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(15);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(16);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT13\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(17);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT14\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(18);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT15\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(19);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT16\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(20);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT17\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(21);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT18\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(22);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT19\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(23);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT20\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(24);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT21\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(25);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT22\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(26);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT23\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(27);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT24\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(28);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT25\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(29);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT26\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(30);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT27\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(31);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT28\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(32);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT29\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(33);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT30\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(34);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT31\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(35);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT31\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT30\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT29\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT28\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT27\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT26\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT25\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT24\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT23\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT22\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT21\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT20\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT19\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT18\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT17\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT16\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT15\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT14\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT13\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT12\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT11\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT10\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT9\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT8\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT7\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT6\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT5\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT4\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT3\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT2\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT1\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~dataout\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~3\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~2\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~1\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~0\);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~0\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~1\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~2\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~3\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~dataout\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT13\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT14\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT15\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT16\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT17\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT18\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT19\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT20\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT21\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT22\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT23\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT24\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT25\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT26\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT27\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT28\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT29\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT30\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT31\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAA_bus\ <= (\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT31\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT30\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT29\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT28\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT27\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT26\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT25\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT24\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT23\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT22\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT21\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT20\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT19\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT18\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT17\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT16\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT15\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT14\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT13\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT12\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT11\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT10\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT9\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT8\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT7\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT6\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT5\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT4\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT3\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT2\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT1\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~dataout\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~3\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~2\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~1\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~0\);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~0\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(0);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~1\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(1);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~2\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(2);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~3\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(3);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~dataout\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(4);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(5);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(6);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(7);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(8);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(9);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(10);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(11);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(12);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(13);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(14);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(15);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(16);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT13\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(17);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT14\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(18);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT15\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(19);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT16\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(20);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT17\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(21);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT18\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(22);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT19\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(23);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT20\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(24);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT21\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(25);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT22\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(26);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT23\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(27);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT24\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(28);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT25\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(29);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT26\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(30);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT27\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(31);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT28\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(32);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT29\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(33);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT30\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(34);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT31\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\(35);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT35\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT34\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT33\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT32\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT31\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT28\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT10\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~dataout\);

\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(0) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(1) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(2) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(3) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(4) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(5) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(6) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(7) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(8) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(9) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(10) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(11) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(12) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(13) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(14) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(15) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(16) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(17) <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT32\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT33\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT34\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT35\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT23\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT22\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT19\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT16\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT13\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT10\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT4\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT1\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~dataout\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~11\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~10\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~9\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~8\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~7\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~6\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~5\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~4\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~3\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~2\ & \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~1\ & 
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~0\);

\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~0\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~1\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~2\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~3\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~4\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~5\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~6\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~7\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~8\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~9\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~10\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~11\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~dataout\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\Objekten|BovenCirkel|Add0~34_combout\ & \Objekten|BovenCirkel|Add0~32_combout\ & \Objekten|BovenCirkel|Add0~30_combout\ & \Objekten|BovenCirkel|Add0~28_combout\ & 
\Objekten|BovenCirkel|Add0~26_combout\ & \Objekten|BovenCirkel|Add0~24_combout\ & \Objekten|BovenCirkel|Add0~22_combout\ & \Objekten|BovenCirkel|Add0~20_combout\ & \Objekten|BovenCirkel|Add0~18_combout\ & \Objekten|BovenCirkel|Add0~16_combout\ & 
\Objekten|BovenCirkel|Add0~14_combout\ & \Objekten|BovenCirkel|Add0~12_combout\ & \Objekten|BovenCirkel|Add0~10_combout\ & \Objekten|BovenCirkel|Add0~8_combout\ & \Objekten|BovenCirkel|Add0~6_combout\ & \Objekten|BovenCirkel|Add0~4_combout\ & 
\Objekten|BovenCirkel|Add0~2_combout\ & \Objekten|BovenCirkel|Add0~0_combout\);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\Objekten|BovenCirkel|Add0~34_combout\ & \Objekten|BovenCirkel|Add0~32_combout\ & \Objekten|BovenCirkel|Add0~30_combout\ & \Objekten|BovenCirkel|Add0~28_combout\ & 
\Objekten|BovenCirkel|Add0~26_combout\ & \Objekten|BovenCirkel|Add0~24_combout\ & \Objekten|BovenCirkel|Add0~22_combout\ & \Objekten|BovenCirkel|Add0~20_combout\ & \Objekten|BovenCirkel|Add0~18_combout\ & \Objekten|BovenCirkel|Add0~16_combout\ & 
\Objekten|BovenCirkel|Add0~14_combout\ & \Objekten|BovenCirkel|Add0~12_combout\ & \Objekten|BovenCirkel|Add0~10_combout\ & \Objekten|BovenCirkel|Add0~8_combout\ & \Objekten|BovenCirkel|Add0~6_combout\ & \Objekten|BovenCirkel|Add0~4_combout\ & 
\Objekten|BovenCirkel|Add0~2_combout\ & \Objekten|BovenCirkel|Add0~0_combout\);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~dataout\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT34\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1~DATAOUT35\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\Objekten|BovenCirkel|Add1~22_combout\ & \Objekten|BovenCirkel|Add1~20_combout\ & \Objekten|BovenCirkel|Add1~18_combout\ & \Objekten|BovenCirkel|Add1~16_combout\ & 
\Objekten|BovenCirkel|Add1~14_combout\ & \Objekten|BovenCirkel|Add1~12_combout\ & \Objekten|BovenCirkel|Add1~10_combout\ & \Objekten|BovenCirkel|Add1~8_combout\ & \Objekten|BovenCirkel|Add1~6_combout\ & \Objekten|BovenCirkel|Add1~4_combout\ & 
\Objekten|BovenCirkel|Add1~2_combout\ & yCord(0) & gnd & gnd & gnd & gnd & gnd & gnd);

\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\Objekten|BovenCirkel|Add1~22_combout\ & \Objekten|BovenCirkel|Add1~20_combout\ & \Objekten|BovenCirkel|Add1~18_combout\ & \Objekten|BovenCirkel|Add1~16_combout\ & 
\Objekten|BovenCirkel|Add1~14_combout\ & \Objekten|BovenCirkel|Add1~12_combout\ & \Objekten|BovenCirkel|Add1~10_combout\ & \Objekten|BovenCirkel|Add1~8_combout\ & \Objekten|BovenCirkel|Add1~6_combout\ & \Objekten|BovenCirkel|Add1~4_combout\ & 
\Objekten|BovenCirkel|Add1~2_combout\ & yCord(0) & gnd & gnd & gnd & gnd & gnd & gnd);

\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~0\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~1\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~2\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~3\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~4\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~5\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~6\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~7\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~8\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~9\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~10\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~11\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~dataout\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (\Objekten|BovenCirkel|Add0~34_combout\ & \Objekten|BovenCirkel|Add0~32_combout\ & \Objekten|BovenCirkel|Add0~30_combout\ & \Objekten|BovenCirkel|Add0~28_combout\ & 
\Objekten|BovenCirkel|Add0~26_combout\ & \Objekten|BovenCirkel|Add0~24_combout\ & \Objekten|BovenCirkel|Add0~22_combout\ & \Objekten|BovenCirkel|Add0~20_combout\ & \Objekten|BovenCirkel|Add0~18_combout\ & \Objekten|BovenCirkel|Add0~16_combout\ & 
\Objekten|BovenCirkel|Add0~14_combout\ & \Objekten|BovenCirkel|Add0~12_combout\ & \Objekten|BovenCirkel|Add0~10_combout\ & \Objekten|BovenCirkel|Add0~8_combout\ & \Objekten|BovenCirkel|Add0~6_combout\ & \Objekten|BovenCirkel|Add0~4_combout\ & 
\Objekten|BovenCirkel|Add0~2_combout\ & \Objekten|BovenCirkel|Add0~0_combout\);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\Objekten|BovenCirkel|Add0~62_combout\ & \Objekten|BovenCirkel|Add0~60_combout\ & \Objekten|BovenCirkel|Add0~58_combout\ & \Objekten|BovenCirkel|Add0~56_combout\ & 
\Objekten|BovenCirkel|Add0~54_combout\ & \Objekten|BovenCirkel|Add0~52_combout\ & \Objekten|BovenCirkel|Add0~50_combout\ & \Objekten|BovenCirkel|Add0~48_combout\ & \Objekten|BovenCirkel|Add0~46_combout\ & \Objekten|BovenCirkel|Add0~44_combout\ & 
\Objekten|BovenCirkel|Add0~42_combout\ & \Objekten|BovenCirkel|Add0~40_combout\ & \Objekten|BovenCirkel|Add0~38_combout\ & \Objekten|BovenCirkel|Add0~36_combout\ & gnd & gnd & gnd & gnd);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~0\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~1\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~2\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~3\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~dataout\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT25\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT26\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT27\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT28\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT29\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT30\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3~DATAOUT31\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAA_bus\ <= (\Objekten|BovenCirkel|Add0~34_combout\ & \Objekten|BovenCirkel|Add0~32_combout\ & \Objekten|BovenCirkel|Add0~30_combout\ & \Objekten|BovenCirkel|Add0~28_combout\ & 
\Objekten|BovenCirkel|Add0~26_combout\ & \Objekten|BovenCirkel|Add0~24_combout\ & \Objekten|BovenCirkel|Add0~22_combout\ & \Objekten|BovenCirkel|Add0~20_combout\ & \Objekten|BovenCirkel|Add0~18_combout\ & \Objekten|BovenCirkel|Add0~16_combout\ & 
\Objekten|BovenCirkel|Add0~14_combout\ & \Objekten|BovenCirkel|Add0~12_combout\ & \Objekten|BovenCirkel|Add0~10_combout\ & \Objekten|BovenCirkel|Add0~8_combout\ & \Objekten|BovenCirkel|Add0~6_combout\ & \Objekten|BovenCirkel|Add0~4_combout\ & 
\Objekten|BovenCirkel|Add0~2_combout\ & \Objekten|BovenCirkel|Add0~0_combout\);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAB_bus\ <= (\Objekten|BovenCirkel|Add0~62_combout\ & \Objekten|BovenCirkel|Add0~60_combout\ & \Objekten|BovenCirkel|Add0~58_combout\ & \Objekten|BovenCirkel|Add0~56_combout\ & 
\Objekten|BovenCirkel|Add0~54_combout\ & \Objekten|BovenCirkel|Add0~52_combout\ & \Objekten|BovenCirkel|Add0~50_combout\ & \Objekten|BovenCirkel|Add0~48_combout\ & \Objekten|BovenCirkel|Add0~46_combout\ & \Objekten|BovenCirkel|Add0~44_combout\ & 
\Objekten|BovenCirkel|Add0~42_combout\ & \Objekten|BovenCirkel|Add0~40_combout\ & \Objekten|BovenCirkel|Add0~38_combout\ & \Objekten|BovenCirkel|Add0~36_combout\ & gnd & gnd & gnd & gnd);

\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~0\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~1\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~2\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~3\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~dataout\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT1\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT2\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT3\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT4\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT5\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT6\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT7\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT8\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT9\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT10\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT11\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT12\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT13\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT14\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT15\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT16\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT17\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT18\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT19\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT20\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT21\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT22\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT23\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT24\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT25\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT26\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT27\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT28\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT29\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT30\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5~DATAOUT31\ <= \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(35);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (\Objekten|OnderCirkel|Add0~34_combout\ & \Objekten|OnderCirkel|Add0~32_combout\ & \Objekten|OnderCirkel|Add0~30_combout\ & \Objekten|OnderCirkel|Add0~28_combout\ & 
\Objekten|OnderCirkel|Add0~26_combout\ & \Objekten|OnderCirkel|Add0~24_combout\ & \Objekten|OnderCirkel|Add0~22_combout\ & \Objekten|OnderCirkel|Add0~20_combout\ & \Objekten|OnderCirkel|Add0~18_combout\ & \Objekten|OnderCirkel|Add0~16_combout\ & 
\Objekten|OnderCirkel|Add0~14_combout\ & \Objekten|OnderCirkel|Add0~12_combout\ & \Objekten|OnderCirkel|Add0~10_combout\ & \Objekten|OnderCirkel|Add0~8_combout\ & \Objekten|OnderCirkel|Add0~6_combout\ & \Objekten|OnderCirkel|Add0~4_combout\ & 
\Objekten|OnderCirkel|Add0~2_combout\ & \Objekten|OnderCirkel|Add0~0_combout\);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\Objekten|OnderCirkel|Add0~62_combout\ & \Objekten|OnderCirkel|Add0~60_combout\ & \Objekten|OnderCirkel|Add0~58_combout\ & \Objekten|OnderCirkel|Add0~56_combout\ & 
\Objekten|OnderCirkel|Add0~54_combout\ & \Objekten|OnderCirkel|Add0~52_combout\ & \Objekten|OnderCirkel|Add0~50_combout\ & \Objekten|OnderCirkel|Add0~48_combout\ & \Objekten|OnderCirkel|Add0~46_combout\ & \Objekten|OnderCirkel|Add0~44_combout\ & 
\Objekten|OnderCirkel|Add0~42_combout\ & \Objekten|OnderCirkel|Add0~40_combout\ & \Objekten|OnderCirkel|Add0~38_combout\ & \Objekten|OnderCirkel|Add0~36_combout\ & gnd & gnd & gnd & gnd);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~0\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~1\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~2\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~3\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~dataout\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT25\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT26\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT27\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT28\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT29\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT30\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3~DATAOUT31\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAA_bus\ <= (\Objekten|OnderCirkel|Add0~34_combout\ & \Objekten|OnderCirkel|Add0~32_combout\ & \Objekten|OnderCirkel|Add0~30_combout\ & \Objekten|OnderCirkel|Add0~28_combout\ & 
\Objekten|OnderCirkel|Add0~26_combout\ & \Objekten|OnderCirkel|Add0~24_combout\ & \Objekten|OnderCirkel|Add0~22_combout\ & \Objekten|OnderCirkel|Add0~20_combout\ & \Objekten|OnderCirkel|Add0~18_combout\ & \Objekten|OnderCirkel|Add0~16_combout\ & 
\Objekten|OnderCirkel|Add0~14_combout\ & \Objekten|OnderCirkel|Add0~12_combout\ & \Objekten|OnderCirkel|Add0~10_combout\ & \Objekten|OnderCirkel|Add0~8_combout\ & \Objekten|OnderCirkel|Add0~6_combout\ & \Objekten|OnderCirkel|Add0~4_combout\ & 
\Objekten|OnderCirkel|Add0~2_combout\ & \Objekten|OnderCirkel|Add0~0_combout\);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAB_bus\ <= (\Objekten|OnderCirkel|Add0~62_combout\ & \Objekten|OnderCirkel|Add0~60_combout\ & \Objekten|OnderCirkel|Add0~58_combout\ & \Objekten|OnderCirkel|Add0~56_combout\ & 
\Objekten|OnderCirkel|Add0~54_combout\ & \Objekten|OnderCirkel|Add0~52_combout\ & \Objekten|OnderCirkel|Add0~50_combout\ & \Objekten|OnderCirkel|Add0~48_combout\ & \Objekten|OnderCirkel|Add0~46_combout\ & \Objekten|OnderCirkel|Add0~44_combout\ & 
\Objekten|OnderCirkel|Add0~42_combout\ & \Objekten|OnderCirkel|Add0~40_combout\ & \Objekten|OnderCirkel|Add0~38_combout\ & \Objekten|OnderCirkel|Add0~36_combout\ & gnd & gnd & gnd & gnd);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~0\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~1\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~2\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~3\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~dataout\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT1\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT2\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT3\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT4\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT5\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT6\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT7\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT8\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT9\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT10\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT11\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT12\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT13\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT14\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT15\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT16\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT17\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT18\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT19\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT20\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT21\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT22\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT23\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT24\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT25\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT26\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT27\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT28\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT29\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT30\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5~DATAOUT31\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(35);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\Objekten|OnderCirkel|Add0~34_combout\ & \Objekten|OnderCirkel|Add0~32_combout\ & \Objekten|OnderCirkel|Add0~30_combout\ & \Objekten|OnderCirkel|Add0~28_combout\ & 
\Objekten|OnderCirkel|Add0~26_combout\ & \Objekten|OnderCirkel|Add0~24_combout\ & \Objekten|OnderCirkel|Add0~22_combout\ & \Objekten|OnderCirkel|Add0~20_combout\ & \Objekten|OnderCirkel|Add0~18_combout\ & \Objekten|OnderCirkel|Add0~16_combout\ & 
\Objekten|OnderCirkel|Add0~14_combout\ & \Objekten|OnderCirkel|Add0~12_combout\ & \Objekten|OnderCirkel|Add0~10_combout\ & \Objekten|OnderCirkel|Add0~8_combout\ & \Objekten|OnderCirkel|Add0~6_combout\ & \Objekten|OnderCirkel|Add0~4_combout\ & 
\Objekten|OnderCirkel|Add0~2_combout\ & \Objekten|OnderCirkel|Add0~0_combout\);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\Objekten|OnderCirkel|Add0~34_combout\ & \Objekten|OnderCirkel|Add0~32_combout\ & \Objekten|OnderCirkel|Add0~30_combout\ & \Objekten|OnderCirkel|Add0~28_combout\ & 
\Objekten|OnderCirkel|Add0~26_combout\ & \Objekten|OnderCirkel|Add0~24_combout\ & \Objekten|OnderCirkel|Add0~22_combout\ & \Objekten|OnderCirkel|Add0~20_combout\ & \Objekten|OnderCirkel|Add0~18_combout\ & \Objekten|OnderCirkel|Add0~16_combout\ & 
\Objekten|OnderCirkel|Add0~14_combout\ & \Objekten|OnderCirkel|Add0~12_combout\ & \Objekten|OnderCirkel|Add0~10_combout\ & \Objekten|OnderCirkel|Add0~8_combout\ & \Objekten|OnderCirkel|Add0~6_combout\ & \Objekten|OnderCirkel|Add0~4_combout\ & 
\Objekten|OnderCirkel|Add0~2_combout\ & \Objekten|OnderCirkel|Add0~0_combout\);

\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~dataout\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT34\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1~DATAOUT35\ <= \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\Objekten|OnderCirkel|Add1~22_combout\ & \Objekten|OnderCirkel|Add1~20_combout\ & \Objekten|OnderCirkel|Add1~18_combout\ & \Objekten|OnderCirkel|Add1~16_combout\ & 
\Objekten|OnderCirkel|Add1~14_combout\ & \Objekten|OnderCirkel|Add1~12_combout\ & \Objekten|OnderCirkel|Add1~10_combout\ & \Objekten|OnderCirkel|Add1~8_combout\ & \Objekten|OnderCirkel|Add1~6_combout\ & \Objekten|OnderCirkel|Add1~4_combout\ & 
\Objekten|OnderCirkel|Add1~2_combout\ & yCord(0) & gnd & gnd & gnd & gnd & gnd & gnd);

\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\Objekten|OnderCirkel|Add1~22_combout\ & \Objekten|OnderCirkel|Add1~20_combout\ & \Objekten|OnderCirkel|Add1~18_combout\ & \Objekten|OnderCirkel|Add1~16_combout\ & 
\Objekten|OnderCirkel|Add1~14_combout\ & \Objekten|OnderCirkel|Add1~12_combout\ & \Objekten|OnderCirkel|Add1~10_combout\ & \Objekten|OnderCirkel|Add1~8_combout\ & \Objekten|OnderCirkel|Add1~6_combout\ & \Objekten|OnderCirkel|Add1~4_combout\ & 
\Objekten|OnderCirkel|Add1~2_combout\ & yCord(0) & gnd & gnd & gnd & gnd & gnd & gnd);

\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~0\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~1\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~2\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~3\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~4\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~5\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~6\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~7\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~8\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~9\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~10\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~11\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~dataout\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~combout\);

\VGA_HS~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VGA_HS~reg0_q\);

\RefreshOrFreeze~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RefreshOrFreeze~combout\);

\clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock25M|altpll_component|auto_generated|wire_pll1_clk\(0));

\MAX10CLK150~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10CLK150~input_o\);
\ALT_INV_RefreshOrFreeze~clkctrl_outclk\ <= NOT \RefreshOrFreeze~clkctrl_outclk\;
\ALT_INV_VGA_HS~reg0clkctrl_outclk\ <= NOT \VGA_HS~reg0clkctrl_outclk\;
\ALT_INV_rst~clkctrl_outclk\ <= NOT \rst~clkctrl_outclk\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_Hactive~q\ <= NOT \Hactive~q\;
\ALT_INV_Vactive~q\ <= NOT \Vactive~q\;

-- Location: LCCOMB_X44_Y42_N12
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
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

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
	o => ww_LEDR(5));

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
	o => ww_LEDR(6));

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
	o => ww_LEDR(7));

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
	o => ww_LEDR(8));

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X0_Y18_N2
\VGA_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_HS~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X0_Y13_N9
\VGA_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_VS~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X18_Y0_N30
\VGA_R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X0_Y12_N9
\VGA_R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X16_Y0_N16
\VGA_R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X16_Y0_N23
\VGA_R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X0_Y9_N2
\VGA_G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X0_Y15_N9
\VGA_G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X0_Y3_N9
\VGA_G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X0_Y3_N2
\VGA_G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X0_Y13_N2
\VGA_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X0_Y15_N2
\VGA_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X0_Y23_N2
\VGA_B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X0_Y18_N9
\VGA_B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

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

-- Location: LCCOMB_X45_Y48_N26
\LEDR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\SW[2]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \LEDR~0_combout\);

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

-- Location: LCCOMB_X46_Y49_N0
\LEDR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (\SW[0]~input_o\ & \SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \LEDR~1_combout\);

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

-- Location: LCCOMB_X55_Y52_N4
\LEDR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~2_combout\ = (\SW[0]~input_o\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \LEDR~2_combout\);

-- Location: IOIBUF_X78_Y29_N22
\MAX10CLK150~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10CLK150,
	o => \MAX10CLK150~input_o\);

-- Location: CLKCTRL_G9
\MAX10CLK150~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10CLK150~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10CLK150~inputclkctrl_outclk\);

-- Location: PLL_1
\clock25M|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "on",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_SW[0]~input_o\,
	fbin => \clock25M|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \clock25M|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \clock25M|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \clock25M|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \clock25M|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: LCCOMB_X46_Y49_N30
\clock25M|altpll_component|auto_generated|pll_lock_sync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock25M|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \clock25M|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X46_Y49_N31
\clock25M|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_locked\,
	d => \clock25M|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock25M|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X46_Y49_N24
\LEDR~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~3_combout\ = (\clock25M|altpll_component|auto_generated|wire_pll1_locked\ & (\clock25M|altpll_component|auto_generated|pll_lock_sync~q\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock25M|altpll_component|auto_generated|wire_pll1_locked\,
	datac => \clock25M|altpll_component|auto_generated|pll_lock_sync~q\,
	datad => \SW[0]~input_o\,
	combout => \LEDR~3_combout\);

-- Location: CLKCTRL_G18
\clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: FF_X45_Y47_N11
\Hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(3));

-- Location: LCCOMB_X45_Y47_N4
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = Hcount(0) $ (VCC)
-- \Add0~1\ = CARRY(Hcount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Hcount(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X45_Y47_N5
\Hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(0));

-- Location: LCCOMB_X45_Y47_N6
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (Hcount(1) & (!\Add0~1\)) # (!Hcount(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!Hcount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X45_Y47_N7
\Hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(1));

-- Location: LCCOMB_X45_Y47_N8
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (Hcount(2) & (\Add0~3\ $ (GND))) # (!Hcount(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((Hcount(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X45_Y47_N9
\Hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(2));

-- Location: LCCOMB_X45_Y47_N10
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (Hcount(3) & (!\Add0~5\)) # (!Hcount(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!Hcount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X45_Y47_N26
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~6_combout\ & (!\Add0~4_combout\ & (!\Add0~0_combout\ & !\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \Equal0~1_combout\);

-- Location: FF_X45_Y47_N17
\Hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(6));

-- Location: LCCOMB_X45_Y47_N12
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (Hcount(4) & (\Add0~7\ $ (GND))) # (!Hcount(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((Hcount(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X45_Y47_N13
\Hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(4));

-- Location: LCCOMB_X45_Y47_N14
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (Hcount(5) & (!\Add0~9\)) # (!Hcount(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!Hcount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X45_Y47_N16
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (Hcount(6) & (\Add0~11\ $ (GND))) # (!Hcount(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((Hcount(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X45_Y47_N30
\Hcount~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Hcount~5_combout\ = (\Add0~16_combout\ & (((\Add0~12_combout\) # (!\Add0~18_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~12_combout\,
	combout => \Hcount~5_combout\);

-- Location: FF_X45_Y47_N31
\Hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount~5_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(8));

-- Location: LCCOMB_X45_Y47_N18
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (Hcount(7) & (!\Add0~13\)) # (!Hcount(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!Hcount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X45_Y47_N19
\Hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(7));

-- Location: LCCOMB_X45_Y47_N20
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (Hcount(8) & (\Add0~15\ $ (GND))) # (!Hcount(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((Hcount(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X45_Y47_N24
\Hcount~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Hcount~6_combout\ = (\Add0~18_combout\ & (((\Add0~12_combout\) # (!\Equal0~2_combout\)) # (!\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~12_combout\,
	combout => \Hcount~6_combout\);

-- Location: FF_X45_Y47_N25
\Hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount~6_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(9));

-- Location: LCCOMB_X45_Y47_N22
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (Hcount(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Hcount(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X45_Y48_N16
\VGA_HS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_HS~0_combout\ = (\Add0~18_combout\ & (!\Add0~12_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~16_combout\,
	combout => \VGA_HS~0_combout\);

-- Location: LCCOMB_X45_Y47_N28
\Hcount~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Hcount~4_combout\ = (\Add0~10_combout\ & ((!\Equal0~2_combout\) # (!\VGA_HS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \VGA_HS~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Hcount~4_combout\);

-- Location: FF_X45_Y47_N29
\Hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount~4_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(5));

-- Location: LCCOMB_X45_Y47_N0
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (\Add0~10_combout\ & (!\Add0~14_combout\ & !\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~8_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X45_Y48_N18
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~18_combout\ & (\Add0~12_combout\ & !\Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~16_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y48_N24
\VGA_HS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_HS~1_combout\ = (\Equal0~2_combout\ & ((\Equal0~0_combout\) # ((\VGA_HS~reg0_q\ & !\VGA_HS~0_combout\)))) # (!\Equal0~2_combout\ & (((\VGA_HS~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \VGA_HS~reg0_q\,
	datad => \VGA_HS~0_combout\,
	combout => \VGA_HS~1_combout\);

-- Location: FF_X45_Y48_N25
\VGA_HS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_HS~1_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_HS~reg0_q\);

-- Location: CLKCTRL_G11
\VGA_HS~reg0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VGA_HS~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VGA_HS~reg0clkctrl_outclk\);

-- Location: FF_X45_Y49_N13
\Vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Add1~10_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(5));

-- Location: LCCOMB_X45_Y49_N2
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = Vcount(0) $ (VCC)
-- \Add1~1\ = CARRY(Vcount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X45_Y49_N4
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (Vcount(1) & (!\Add1~1\)) # (!Vcount(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!Vcount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Vcount(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X45_Y49_N5
\Vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(1));

-- Location: LCCOMB_X45_Y49_N6
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (Vcount(2) & (\Add1~3\ $ (GND))) # (!Vcount(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((Vcount(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X45_Y49_N8
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (Vcount(3) & (!\Add1~5\)) # (!Vcount(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!Vcount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Vcount(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X45_Y49_N26
\VGA_VS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_VS~1_combout\ = (\Add1~4_combout\ & (\Add1~0_combout\ & (\Add1~6_combout\ & !\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~0_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~2_combout\,
	combout => \VGA_VS~1_combout\);

-- Location: FF_X45_Y49_N17
\Vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Add1~14_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(7));

-- Location: LCCOMB_X45_Y49_N12
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (Vcount(5) & (!\Add1~9\)) # (!Vcount(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!Vcount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X45_Y49_N14
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (Vcount(6) & (\Add1~11\ $ (GND))) # (!Vcount(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((Vcount(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X45_Y49_N15
\Vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Add1~12_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(6));

-- Location: LCCOMB_X45_Y49_N16
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (Vcount(7) & (!\Add1~13\)) # (!Vcount(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!Vcount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X45_Y49_N19
\Vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Add1~16_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(8));

-- Location: LCCOMB_X45_Y49_N18
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (Vcount(8) & (\Add1~15\ $ (GND))) # (!Vcount(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((Vcount(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X45_Y49_N24
\VGA_VS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_VS~0_combout\ = (!\Add1~8_combout\ & (!\Add1~14_combout\ & (!\Add1~12_combout\ & !\Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~14_combout\,
	datac => \Add1~12_combout\,
	datad => \Add1~16_combout\,
	combout => \VGA_VS~0_combout\);

-- Location: LCCOMB_X46_Y49_N26
\Vcount~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Vcount~5_combout\ = (\Add1~18_combout\ & ((\Add1~10_combout\) # ((!\VGA_VS~0_combout\) # (!\VGA_VS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~18_combout\,
	datac => \VGA_VS~1_combout\,
	datad => \VGA_VS~0_combout\,
	combout => \Vcount~5_combout\);

-- Location: FF_X46_Y49_N27
\Vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Vcount~5_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(9));

-- Location: LCCOMB_X45_Y49_N20
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = \Add1~17\ $ (Vcount(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Vcount(9),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X45_Y49_N30
\VGA_VS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_VS~5_combout\ = (!\Add1~2_combout\ & (\Add1~0_combout\ & (!\Add1~10_combout\ & \Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~0_combout\,
	datac => \Add1~10_combout\,
	datad => \Add1~18_combout\,
	combout => \VGA_VS~5_combout\);

-- Location: LCCOMB_X45_Y49_N22
\Vcount~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Vcount~3_combout\ = (\Add1~4_combout\ & (((!\VGA_VS~0_combout\) # (!\VGA_VS~5_combout\)) # (!\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~6_combout\,
	datac => \VGA_VS~5_combout\,
	datad => \VGA_VS~0_combout\,
	combout => \Vcount~3_combout\);

-- Location: FF_X45_Y49_N23
\Vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Vcount~3_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(2));

-- Location: LCCOMB_X45_Y49_N28
\Vcount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Vcount~2_combout\ = (\Add1~6_combout\ & (((!\VGA_VS~0_combout\) # (!\VGA_VS~5_combout\)) # (!\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~6_combout\,
	datac => \VGA_VS~5_combout\,
	datad => \VGA_VS~0_combout\,
	combout => \Vcount~2_combout\);

-- Location: FF_X45_Y49_N29
\Vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Vcount~2_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(3));

-- Location: LCCOMB_X45_Y49_N10
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (Vcount(4) & (\Add1~7\ $ (GND))) # (!Vcount(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((Vcount(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Vcount(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X45_Y49_N11
\Vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Add1~8_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(4));

-- Location: LCCOMB_X46_Y49_N12
\VGA_VS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_VS~2_combout\ = (!\Add1~10_combout\ & (\Add1~18_combout\ & (\VGA_VS~1_combout\ & \VGA_VS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~18_combout\,
	datac => \VGA_VS~1_combout\,
	datad => \VGA_VS~0_combout\,
	combout => \VGA_VS~2_combout\);

-- Location: LCCOMB_X46_Y49_N4
\Vcount~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Vcount~4_combout\ = (\Add1~0_combout\ & !\VGA_VS~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => \VGA_VS~2_combout\,
	combout => \Vcount~4_combout\);

-- Location: FF_X46_Y49_N5
\Vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Vcount~4_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(0));

-- Location: LCCOMB_X45_Y49_N0
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\Add1~2_combout\ & (!\Add1~6_combout\ & !\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~4_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X46_Y49_N22
\VGA_VS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_VS~3_combout\ = (!\Add1~0_combout\ & (!\Add1~18_combout\ & (\Equal4~0_combout\ & !\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~18_combout\,
	datac => \Equal4~0_combout\,
	datad => \Add1~10_combout\,
	combout => \VGA_VS~3_combout\);

-- Location: LCCOMB_X46_Y49_N10
\VGA_VS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_VS~4_combout\ = (\VGA_VS~3_combout\ & ((\VGA_VS~0_combout\) # ((\VGA_VS~reg0_q\ & !\VGA_VS~2_combout\)))) # (!\VGA_VS~3_combout\ & (((\VGA_VS~reg0_q\ & !\VGA_VS~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_VS~3_combout\,
	datab => \VGA_VS~0_combout\,
	datac => \VGA_VS~reg0_q\,
	datad => \VGA_VS~2_combout\,
	combout => \VGA_VS~4_combout\);

-- Location: FF_X46_Y49_N11
\VGA_VS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \VGA_VS~4_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_VS~reg0_q\);

-- Location: LCCOMB_X40_Y34_N10
\xCord[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCord[0]~10_combout\ = xCord(0) $ (VCC)
-- \xCord[0]~11\ = CARRY(xCord(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => xCord(0),
	datad => VCC,
	combout => \xCord[0]~10_combout\,
	cout => \xCord[0]~11\);

-- Location: LCCOMB_X45_Y47_N2
\Hactive~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Hactive~0_combout\ = (\Add0~8_combout\ & (!\Add0~10_combout\ & (\SW[0]~input_o\ & !\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~10_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~12_combout\,
	combout => \Hactive~0_combout\);

-- Location: LCCOMB_X45_Y48_N30
\Hactive~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Hactive~1_combout\ = (\Hactive~q\ & (!\Add0~14_combout\ & (\Add0~18_combout\ & \Add0~16_combout\))) # (!\Hactive~q\ & (\Add0~14_combout\ & (!\Add0~18_combout\ & !\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hactive~q\,
	datab => \Add0~14_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~16_combout\,
	combout => \Hactive~1_combout\);

-- Location: LCCOMB_X44_Y47_N16
\Hactive~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Hactive~2_combout\ = \Hactive~q\ $ (((\Hactive~0_combout\ & (\Equal0~1_combout\ & \Hactive~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hactive~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Hactive~q\,
	datad => \Hactive~1_combout\,
	combout => \Hactive~2_combout\);

-- Location: FF_X44_Y47_N17
Hactive : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hactive~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hactive~q\);

-- Location: FF_X40_Y34_N11
\xCord[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \xCord[0]~10_combout\,
	sclr => \ALT_INV_Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xCord(0));

-- Location: LCCOMB_X40_Y34_N12
\xCord[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCord[1]~12_combout\ = (xCord(1) & (!\xCord[0]~11\)) # (!xCord(1) & ((\xCord[0]~11\) # (GND)))
-- \xCord[1]~13\ = CARRY((!\xCord[0]~11\) # (!xCord(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(1),
	datad => VCC,
	cin => \xCord[0]~11\,
	combout => \xCord[1]~12_combout\,
	cout => \xCord[1]~13\);

-- Location: FF_X40_Y34_N13
\xCord[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \xCord[1]~12_combout\,
	sclr => \ALT_INV_Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xCord(1));

-- Location: LCCOMB_X40_Y34_N14
\xCord[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCord[2]~14_combout\ = (xCord(2) & (\xCord[1]~13\ $ (GND))) # (!xCord(2) & (!\xCord[1]~13\ & VCC))
-- \xCord[2]~15\ = CARRY((xCord(2) & !\xCord[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xCord(2),
	datad => VCC,
	cin => \xCord[1]~13\,
	combout => \xCord[2]~14_combout\,
	cout => \xCord[2]~15\);

-- Location: FF_X40_Y34_N15
\xCord[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \xCord[2]~14_combout\,
	sclr => \ALT_INV_Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xCord(2));

-- Location: LCCOMB_X40_Y34_N16
\xCord[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCord[3]~16_combout\ = (xCord(3) & (!\xCord[2]~15\)) # (!xCord(3) & ((\xCord[2]~15\) # (GND)))
-- \xCord[3]~17\ = CARRY((!\xCord[2]~15\) # (!xCord(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(3),
	datad => VCC,
	cin => \xCord[2]~15\,
	combout => \xCord[3]~16_combout\,
	cout => \xCord[3]~17\);

-- Location: FF_X40_Y34_N17
\xCord[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \xCord[3]~16_combout\,
	sclr => \ALT_INV_Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xCord(3));

-- Location: LCCOMB_X40_Y34_N18
\xCord[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCord[4]~18_combout\ = (xCord(4) & (\xCord[3]~17\ $ (GND))) # (!xCord(4) & (!\xCord[3]~17\ & VCC))
-- \xCord[4]~19\ = CARRY((xCord(4) & !\xCord[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(4),
	datad => VCC,
	cin => \xCord[3]~17\,
	combout => \xCord[4]~18_combout\,
	cout => \xCord[4]~19\);

-- Location: FF_X40_Y34_N19
\xCord[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \xCord[4]~18_combout\,
	sclr => \ALT_INV_Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xCord(4));

-- Location: LCCOMB_X40_Y34_N0
\Objekten|DrawRightRect|active~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawRightRect|active~4_combout\ = (xCord(2) & xCord(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => xCord(2),
	datad => xCord(1),
	combout => \Objekten|DrawRightRect|active~4_combout\);

-- Location: LCCOMB_X40_Y34_N20
\xCord[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCord[5]~20_combout\ = (xCord(5) & (!\xCord[4]~19\)) # (!xCord(5) & ((\xCord[4]~19\) # (GND)))
-- \xCord[5]~21\ = CARRY((!\xCord[4]~19\) # (!xCord(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xCord(5),
	datad => VCC,
	cin => \xCord[4]~19\,
	combout => \xCord[5]~20_combout\,
	cout => \xCord[5]~21\);

-- Location: FF_X40_Y34_N21
\xCord[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \xCord[5]~20_combout\,
	sclr => \ALT_INV_Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xCord(5));

-- Location: LCCOMB_X40_Y34_N2
\Objekten|DrawRightRect|active~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawRightRect|active~5_combout\ = (xCord(4)) # ((xCord(5)) # ((\Objekten|DrawRightRect|active~4_combout\ & xCord(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xCord(4),
	datab => \Objekten|DrawRightRect|active~4_combout\,
	datac => xCord(3),
	datad => xCord(5),
	combout => \Objekten|DrawRightRect|active~5_combout\);

-- Location: LCCOMB_X46_Y48_N12
\yCord[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCord[0]~10_combout\ = yCord(0) $ (VCC)
-- \yCord[0]~11\ = CARRY(yCord(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yCord(0),
	datad => VCC,
	combout => \yCord[0]~10_combout\,
	cout => \yCord[0]~11\);

-- Location: LCCOMB_X46_Y49_N16
\Vactive~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Vactive~0_combout\ = (\Add1~0_combout\ & (\SW[0]~input_o\ & (\Equal4~0_combout\ & \VGA_VS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \VGA_VS~0_combout\,
	combout => \Vactive~0_combout\);

-- Location: LCCOMB_X46_Y48_N4
\Vactive~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Vactive~1_combout\ = (\Add1~10_combout\ & ((\Vactive~q\) # ((!\Add1~18_combout\ & \Vactive~0_combout\)))) # (!\Add1~10_combout\ & (\Vactive~q\ & ((!\Vactive~0_combout\) # (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~18_combout\,
	datac => \Vactive~q\,
	datad => \Vactive~0_combout\,
	combout => \Vactive~1_combout\);

-- Location: FF_X46_Y48_N5
Vactive : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_VGA_HS~reg0clkctrl_outclk\,
	d => \Vactive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vactive~q\);

-- Location: FF_X46_Y48_N13
\yCord[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0clkctrl_outclk\,
	d => \yCord[0]~10_combout\,
	sclr => \ALT_INV_Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yCord(0));

-- Location: LCCOMB_X46_Y48_N14
\yCord[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCord[1]~12_combout\ = (yCord(1) & (!\yCord[0]~11\)) # (!yCord(1) & ((\yCord[0]~11\) # (GND)))
-- \yCord[1]~13\ = CARRY((!\yCord[0]~11\) # (!yCord(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(1),
	datad => VCC,
	cin => \yCord[0]~11\,
	combout => \yCord[1]~12_combout\,
	cout => \yCord[1]~13\);

-- Location: FF_X46_Y48_N15
\yCord[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0clkctrl_outclk\,
	d => \yCord[1]~12_combout\,
	sclr => \ALT_INV_Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yCord(1));

-- Location: LCCOMB_X46_Y48_N16
\yCord[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCord[2]~14_combout\ = (yCord(2) & (\yCord[1]~13\ $ (GND))) # (!yCord(2) & (!\yCord[1]~13\ & VCC))
-- \yCord[2]~15\ = CARRY((yCord(2) & !\yCord[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(2),
	datad => VCC,
	cin => \yCord[1]~13\,
	combout => \yCord[2]~14_combout\,
	cout => \yCord[2]~15\);

-- Location: FF_X46_Y48_N17
\yCord[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0clkctrl_outclk\,
	d => \yCord[2]~14_combout\,
	sclr => \ALT_INV_Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yCord(2));

-- Location: LCCOMB_X46_Y48_N18
\yCord[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCord[3]~16_combout\ = (yCord(3) & (!\yCord[2]~15\)) # (!yCord(3) & ((\yCord[2]~15\) # (GND)))
-- \yCord[3]~17\ = CARRY((!\yCord[2]~15\) # (!yCord(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(3),
	datad => VCC,
	cin => \yCord[2]~15\,
	combout => \yCord[3]~16_combout\,
	cout => \yCord[3]~17\);

-- Location: FF_X46_Y48_N19
\yCord[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0clkctrl_outclk\,
	d => \yCord[3]~16_combout\,
	sclr => \ALT_INV_Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yCord(3));

-- Location: LCCOMB_X46_Y48_N20
\yCord[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCord[4]~18_combout\ = (yCord(4) & (\yCord[3]~17\ $ (GND))) # (!yCord(4) & (!\yCord[3]~17\ & VCC))
-- \yCord[4]~19\ = CARRY((yCord(4) & !\yCord[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(4),
	datad => VCC,
	cin => \yCord[3]~17\,
	combout => \yCord[4]~18_combout\,
	cout => \yCord[4]~19\);

-- Location: FF_X46_Y48_N21
\yCord[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0clkctrl_outclk\,
	d => \yCord[4]~18_combout\,
	sclr => \ALT_INV_Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yCord(4));

-- Location: LCCOMB_X46_Y48_N22
\yCord[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCord[5]~20_combout\ = (yCord(5) & (!\yCord[4]~19\)) # (!yCord(5) & ((\yCord[4]~19\) # (GND)))
-- \yCord[5]~21\ = CARRY((!\yCord[4]~19\) # (!yCord(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(5),
	datad => VCC,
	cin => \yCord[4]~19\,
	combout => \yCord[5]~20_combout\,
	cout => \yCord[5]~21\);

-- Location: FF_X46_Y48_N23
\yCord[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0clkctrl_outclk\,
	d => \yCord[5]~20_combout\,
	sclr => \ALT_INV_Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yCord(5));

-- Location: LCCOMB_X46_Y48_N24
\yCord[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCord[6]~22_combout\ = (yCord(6) & (\yCord[5]~21\ $ (GND))) # (!yCord(6) & (!\yCord[5]~21\ & VCC))
-- \yCord[6]~23\ = CARRY((yCord(6) & !\yCord[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(6),
	datad => VCC,
	cin => \yCord[5]~21\,
	combout => \yCord[6]~22_combout\,
	cout => \yCord[6]~23\);

-- Location: FF_X46_Y48_N25
\yCord[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0clkctrl_outclk\,
	d => \yCord[6]~22_combout\,
	sclr => \ALT_INV_Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yCord(6));

-- Location: LCCOMB_X46_Y48_N26
\yCord[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCord[7]~24_combout\ = (yCord(7) & (!\yCord[6]~23\)) # (!yCord(7) & ((\yCord[6]~23\) # (GND)))
-- \yCord[7]~25\ = CARRY((!\yCord[6]~23\) # (!yCord(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(7),
	datad => VCC,
	cin => \yCord[6]~23\,
	combout => \yCord[7]~24_combout\,
	cout => \yCord[7]~25\);

-- Location: FF_X46_Y48_N27
\yCord[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0clkctrl_outclk\,
	d => \yCord[7]~24_combout\,
	sclr => \ALT_INV_Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yCord(7));

-- Location: LCCOMB_X46_Y48_N28
\yCord[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCord[8]~26_combout\ = (yCord(8) & (\yCord[7]~25\ $ (GND))) # (!yCord(8) & (!\yCord[7]~25\ & VCC))
-- \yCord[8]~27\ = CARRY((yCord(8) & !\yCord[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(8),
	datad => VCC,
	cin => \yCord[7]~25\,
	combout => \yCord[8]~26_combout\,
	cout => \yCord[8]~27\);

-- Location: FF_X46_Y48_N29
\yCord[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0clkctrl_outclk\,
	d => \yCord[8]~26_combout\,
	sclr => \ALT_INV_Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yCord(8));

-- Location: LCCOMB_X46_Y48_N30
\yCord[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yCord[9]~28_combout\ = yCord(9) $ (\yCord[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(9),
	cin => \yCord[8]~27\,
	combout => \yCord[9]~28_combout\);

-- Location: FF_X46_Y48_N31
\yCord[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0clkctrl_outclk\,
	d => \yCord[9]~28_combout\,
	sclr => \ALT_INV_Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yCord(9));

-- Location: LCCOMB_X40_Y34_N22
\xCord[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCord[6]~22_combout\ = (xCord(6) & (\xCord[5]~21\ $ (GND))) # (!xCord(6) & (!\xCord[5]~21\ & VCC))
-- \xCord[6]~23\ = CARRY((xCord(6) & !\xCord[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(6),
	datad => VCC,
	cin => \xCord[5]~21\,
	combout => \xCord[6]~22_combout\,
	cout => \xCord[6]~23\);

-- Location: FF_X40_Y34_N23
\xCord[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \xCord[6]~22_combout\,
	sclr => \ALT_INV_Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xCord(6));

-- Location: LCCOMB_X40_Y34_N24
\xCord[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCord[7]~24_combout\ = (xCord(7) & (!\xCord[6]~23\)) # (!xCord(7) & ((\xCord[6]~23\) # (GND)))
-- \xCord[7]~25\ = CARRY((!\xCord[6]~23\) # (!xCord(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xCord(7),
	datad => VCC,
	cin => \xCord[6]~23\,
	combout => \xCord[7]~24_combout\,
	cout => \xCord[7]~25\);

-- Location: FF_X40_Y34_N25
\xCord[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \xCord[7]~24_combout\,
	sclr => \ALT_INV_Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xCord(7));

-- Location: LCCOMB_X46_Y48_N8
\Objekten|DrawRightRect|active~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawRightRect|active~0_combout\ = (yCord(9) & (((yCord(7))))) # (!yCord(9) & ((xCord(7) & (yCord(7))) # (!xCord(7) & ((yCord(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yCord(9),
	datab => xCord(7),
	datac => yCord(7),
	datad => yCord(8),
	combout => \Objekten|DrawRightRect|active~0_combout\);

-- Location: LCCOMB_X46_Y48_N6
\Objekten|DrawRightRect|active~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawRightRect|active~1_combout\ = (yCord(4) & (((yCord(3) & yCord(2))) # (!yCord(7)))) # (!yCord(4) & (!yCord(7) & ((yCord(3)) # (yCord(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yCord(4),
	datab => yCord(3),
	datac => yCord(7),
	datad => yCord(2),
	combout => \Objekten|DrawRightRect|active~1_combout\);

-- Location: LCCOMB_X46_Y48_N0
\Objekten|DrawRightRect|active~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawRightRect|active~2_combout\ = (yCord(5) & ((\Objekten|DrawRightRect|active~0_combout\ & ((yCord(1)) # (\Objekten|DrawRightRect|active~1_combout\))) # (!\Objekten|DrawRightRect|active~0_combout\ & (yCord(1) & 
-- \Objekten|DrawRightRect|active~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yCord(5),
	datab => \Objekten|DrawRightRect|active~0_combout\,
	datac => yCord(1),
	datad => \Objekten|DrawRightRect|active~1_combout\,
	combout => \Objekten|DrawRightRect|active~2_combout\);

-- Location: LCCOMB_X46_Y48_N10
\Objekten|DrawRightRect|active~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawRightRect|active~3_combout\ = (yCord(7) & (!\Objekten|DrawRightRect|active~0_combout\ & ((\Objekten|DrawRightRect|active~2_combout\) # (yCord(6))))) # (!yCord(7) & (!\Objekten|DrawRightRect|active~2_combout\ & 
-- (\Objekten|DrawRightRect|active~0_combout\ & !yCord(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yCord(7),
	datab => \Objekten|DrawRightRect|active~2_combout\,
	datac => \Objekten|DrawRightRect|active~0_combout\,
	datad => yCord(6),
	combout => \Objekten|DrawRightRect|active~3_combout\);

-- Location: LCCOMB_X40_Y34_N26
\xCord[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCord[8]~26_combout\ = (xCord(8) & (\xCord[7]~25\ $ (GND))) # (!xCord(8) & (!\xCord[7]~25\ & VCC))
-- \xCord[8]~27\ = CARRY((xCord(8) & !\xCord[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(8),
	datad => VCC,
	cin => \xCord[7]~25\,
	combout => \xCord[8]~26_combout\,
	cout => \xCord[8]~27\);

-- Location: FF_X40_Y34_N27
\xCord[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \xCord[8]~26_combout\,
	sclr => \ALT_INV_Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xCord(8));

-- Location: LCCOMB_X40_Y34_N28
\xCord[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xCord[9]~28_combout\ = \xCord[8]~27\ $ (xCord(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => xCord(9),
	cin => \xCord[8]~27\,
	combout => \xCord[9]~28_combout\);

-- Location: FF_X40_Y34_N29
\xCord[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock25M|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \xCord[9]~28_combout\,
	sclr => \ALT_INV_Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xCord(9));

-- Location: LCCOMB_X41_Y34_N10
\Objekten|DrawRightRect|active~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawRightRect|active~6_combout\ = (xCord(6) & xCord(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => xCord(6),
	datad => xCord(9),
	combout => \Objekten|DrawRightRect|active~6_combout\);

-- Location: LCCOMB_X41_Y34_N16
\Objekten|DrawRightRect|active~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawRightRect|active~7_combout\ = (\Objekten|DrawRightRect|active~5_combout\ & (\Objekten|DrawRightRect|active~3_combout\ & (!xCord(8) & \Objekten|DrawRightRect|active~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|DrawRightRect|active~5_combout\,
	datab => \Objekten|DrawRightRect|active~3_combout\,
	datac => xCord(8),
	datad => \Objekten|DrawRightRect|active~6_combout\,
	combout => \Objekten|DrawRightRect|active~7_combout\);

-- Location: LCCOMB_X40_Y34_N4
\Objekten|DrawMiddleRect|active~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawMiddleRect|active~0_combout\ = (xCord(0)) # ((xCord(6) & ((xCord(2)) # (xCord(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xCord(6),
	datab => xCord(0),
	datac => xCord(2),
	datad => xCord(1),
	combout => \Objekten|DrawMiddleRect|active~0_combout\);

-- Location: LCCOMB_X40_Y34_N6
\Objekten|DrawMiddleRect|active~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawMiddleRect|active~1_combout\ = (xCord(4) & (((\Objekten|DrawMiddleRect|active~0_combout\) # (xCord(5))))) # (!xCord(4) & (\Objekten|DrawRightRect|active~4_combout\ & (\Objekten|DrawMiddleRect|active~0_combout\ & xCord(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xCord(4),
	datab => \Objekten|DrawRightRect|active~4_combout\,
	datac => \Objekten|DrawMiddleRect|active~0_combout\,
	datad => xCord(5),
	combout => \Objekten|DrawMiddleRect|active~1_combout\);

-- Location: LCCOMB_X41_Y34_N30
\Objekten|DrawMiddleRect|active~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawMiddleRect|active~2_combout\ = (xCord(6) & (!xCord(5) & ((!\Objekten|DrawMiddleRect|active~1_combout\) # (!xCord(3))))) # (!xCord(6) & (xCord(5) & ((xCord(3)) # (\Objekten|DrawMiddleRect|active~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xCord(3),
	datab => xCord(6),
	datac => \Objekten|DrawMiddleRect|active~1_combout\,
	datad => xCord(5),
	combout => \Objekten|DrawMiddleRect|active~2_combout\);

-- Location: LCCOMB_X41_Y34_N28
\Objekten|DrawMiddleRect|active~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawMiddleRect|active~3_combout\ = (\Objekten|DrawMiddleRect|active~2_combout\ & (!xCord(9) & (xCord(8) & \Objekten|DrawRightRect|active~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|DrawMiddleRect|active~2_combout\,
	datab => xCord(9),
	datac => xCord(8),
	datad => \Objekten|DrawRightRect|active~3_combout\,
	combout => \Objekten|DrawMiddleRect|active~3_combout\);

-- Location: LCCOMB_X41_Y34_N6
\VGA_R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_R~0_combout\ = (\Objekten|DrawRightRect|active~7_combout\) # (\Objekten|DrawMiddleRect|active~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|DrawRightRect|active~7_combout\,
	datad => \Objekten|DrawMiddleRect|active~3_combout\,
	combout => \VGA_R~0_combout\);

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

-- Location: LCCOMB_X45_Y48_N20
\Refresh~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Refresh~0_combout\ = !\Vactive~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Vactive~q\,
	combout => \Refresh~0_combout\);

-- Location: FF_X45_Y48_N21
Refresh : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_HS~reg0_q\,
	d => \Refresh~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Refresh~q\);

-- Location: LCCOMB_X45_Y48_N12
RefreshOrFreeze : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RefreshOrFreeze~combout\ = LCELL((\KEY[1]~input_o\ & \Refresh~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Refresh~q\,
	combout => \RefreshOrFreeze~combout\);

-- Location: CLKCTRL_G14
\RefreshOrFreeze~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RefreshOrFreeze~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RefreshOrFreeze~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y30_N0
\Objekten|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~0_combout\ = \Objekten|CircleCoord1.x\(0) $ (VCC)
-- \Objekten|Add1~1\ = CARRY(\Objekten|CircleCoord1.x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(0),
	datad => VCC,
	combout => \Objekten|Add1~0_combout\,
	cout => \Objekten|Add1~1\);

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

-- Location: LCCOMB_X46_Y49_N18
rst : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rst~combout\ = (!\SW[0]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \rst~combout\);

-- Location: CLKCTRL_G10
\rst~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: FF_X30_Y30_N1
\Objekten|CircleCoord1.x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(0));

-- Location: LCCOMB_X30_Y30_N2
\Objekten|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~3_combout\ = (\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(1) & (\Objekten|Add1~1\ & VCC)) # (!\Objekten|CircleCoord1.x\(1) & (!\Objekten|Add1~1\)))) # (!\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(1) & 
-- (!\Objekten|Add1~1\)) # (!\Objekten|CircleCoord1.x\(1) & ((\Objekten|Add1~1\) # (GND)))))
-- \Objekten|Add1~4\ = CARRY((\Objekten|Add1~2_combout\ & (!\Objekten|CircleCoord1.x\(1) & !\Objekten|Add1~1\)) # (!\Objekten|Add1~2_combout\ & ((!\Objekten|Add1~1\) # (!\Objekten|CircleCoord1.x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(1),
	datad => VCC,
	cin => \Objekten|Add1~1\,
	combout => \Objekten|Add1~3_combout\,
	cout => \Objekten|Add1~4\);

-- Location: FF_X31_Y30_N13
\Objekten|CircleCoord1.x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	asdata => \Objekten|Add1~3_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(1));

-- Location: LCCOMB_X30_Y30_N4
\Objekten|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~5_combout\ = ((\Objekten|CircleCoord1.x\(2) $ (\Objekten|Add1~2_combout\ $ (\Objekten|Add1~4\)))) # (GND)
-- \Objekten|Add1~6\ = CARRY((\Objekten|CircleCoord1.x\(2) & (\Objekten|Add1~2_combout\ & !\Objekten|Add1~4\)) # (!\Objekten|CircleCoord1.x\(2) & ((\Objekten|Add1~2_combout\) # (!\Objekten|Add1~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(2),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~4\,
	combout => \Objekten|Add1~5_combout\,
	cout => \Objekten|Add1~6\);

-- Location: LCCOMB_X32_Y30_N10
\Objekten|CircleCoord1.x[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CircleCoord1.x[2]~2_combout\ = !\Objekten|Add1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Objekten|Add1~5_combout\,
	combout => \Objekten|CircleCoord1.x[2]~2_combout\);

-- Location: FF_X31_Y30_N5
\Objekten|CircleCoord1.x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	asdata => \Objekten|CircleCoord1.x[2]~2_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(2));

-- Location: LCCOMB_X30_Y30_N6
\Objekten|Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~7_combout\ = (\Objekten|CircleCoord1.x\(3) & ((\Objekten|Add1~2_combout\ & (\Objekten|Add1~6\ & VCC)) # (!\Objekten|Add1~2_combout\ & (!\Objekten|Add1~6\)))) # (!\Objekten|CircleCoord1.x\(3) & ((\Objekten|Add1~2_combout\ & 
-- (!\Objekten|Add1~6\)) # (!\Objekten|Add1~2_combout\ & ((\Objekten|Add1~6\) # (GND)))))
-- \Objekten|Add1~8\ = CARRY((\Objekten|CircleCoord1.x\(3) & (!\Objekten|Add1~2_combout\ & !\Objekten|Add1~6\)) # (!\Objekten|CircleCoord1.x\(3) & ((!\Objekten|Add1~6\) # (!\Objekten|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(3),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~6\,
	combout => \Objekten|Add1~7_combout\,
	cout => \Objekten|Add1~8\);

-- Location: FF_X30_Y30_N7
\Objekten|CircleCoord1.x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~7_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(3));

-- Location: LCCOMB_X30_Y30_N8
\Objekten|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~9_combout\ = ((\Objekten|Add1~2_combout\ $ (\Objekten|CircleCoord1.x\(4) $ (!\Objekten|Add1~8\)))) # (GND)
-- \Objekten|Add1~10\ = CARRY((\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(4)) # (!\Objekten|Add1~8\))) # (!\Objekten|Add1~2_combout\ & (\Objekten|CircleCoord1.x\(4) & !\Objekten|Add1~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(4),
	datad => VCC,
	cin => \Objekten|Add1~8\,
	combout => \Objekten|Add1~9_combout\,
	cout => \Objekten|Add1~10\);

-- Location: FF_X30_Y30_N9
\Objekten|CircleCoord1.x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~9_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(4));

-- Location: LCCOMB_X30_Y30_N10
\Objekten|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~11_combout\ = (\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(5) & (!\Objekten|Add1~10\)) # (!\Objekten|CircleCoord1.x\(5) & (\Objekten|Add1~10\ & VCC)))) # (!\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(5) & 
-- ((\Objekten|Add1~10\) # (GND))) # (!\Objekten|CircleCoord1.x\(5) & (!\Objekten|Add1~10\))))
-- \Objekten|Add1~12\ = CARRY((\Objekten|Add1~2_combout\ & (\Objekten|CircleCoord1.x\(5) & !\Objekten|Add1~10\)) # (!\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(5)) # (!\Objekten|Add1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(5),
	datad => VCC,
	cin => \Objekten|Add1~10\,
	combout => \Objekten|Add1~11_combout\,
	cout => \Objekten|Add1~12\);

-- Location: LCCOMB_X34_Y30_N6
\Objekten|CircleCoord1.x[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CircleCoord1.x[5]~1_combout\ = !\Objekten|Add1~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Objekten|Add1~11_combout\,
	combout => \Objekten|CircleCoord1.x[5]~1_combout\);

-- Location: FF_X35_Y30_N25
\Objekten|CircleCoord1.x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	asdata => \Objekten|CircleCoord1.x[5]~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(5));

-- Location: LCCOMB_X30_Y30_N12
\Objekten|Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~13_combout\ = ((\Objekten|Add1~2_combout\ $ (\Objekten|CircleCoord1.x\(6) $ (\Objekten|Add1~12\)))) # (GND)
-- \Objekten|Add1~14\ = CARRY((\Objekten|Add1~2_combout\ & ((!\Objekten|Add1~12\) # (!\Objekten|CircleCoord1.x\(6)))) # (!\Objekten|Add1~2_combout\ & (!\Objekten|CircleCoord1.x\(6) & !\Objekten|Add1~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(6),
	datad => VCC,
	cin => \Objekten|Add1~12\,
	combout => \Objekten|Add1~13_combout\,
	cout => \Objekten|Add1~14\);

-- Location: LCCOMB_X34_Y30_N16
\Objekten|CircleCoord1.x[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CircleCoord1.x[6]~0_combout\ = !\Objekten|Add1~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Objekten|Add1~13_combout\,
	combout => \Objekten|CircleCoord1.x[6]~0_combout\);

-- Location: FF_X35_Y30_N3
\Objekten|CircleCoord1.x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	asdata => \Objekten|CircleCoord1.x[6]~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(6));

-- Location: LCCOMB_X30_Y30_N14
\Objekten|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~15_combout\ = (\Objekten|CircleCoord1.x\(7) & ((\Objekten|Add1~2_combout\ & (\Objekten|Add1~14\ & VCC)) # (!\Objekten|Add1~2_combout\ & (!\Objekten|Add1~14\)))) # (!\Objekten|CircleCoord1.x\(7) & ((\Objekten|Add1~2_combout\ & 
-- (!\Objekten|Add1~14\)) # (!\Objekten|Add1~2_combout\ & ((\Objekten|Add1~14\) # (GND)))))
-- \Objekten|Add1~16\ = CARRY((\Objekten|CircleCoord1.x\(7) & (!\Objekten|Add1~2_combout\ & !\Objekten|Add1~14\)) # (!\Objekten|CircleCoord1.x\(7) & ((!\Objekten|Add1~14\) # (!\Objekten|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(7),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~14\,
	combout => \Objekten|Add1~15_combout\,
	cout => \Objekten|Add1~16\);

-- Location: FF_X30_Y30_N15
\Objekten|CircleCoord1.x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~15_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(7));

-- Location: LCCOMB_X30_Y30_N16
\Objekten|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~17_combout\ = ((\Objekten|CircleCoord1.x\(8) $ (\Objekten|Add1~2_combout\ $ (!\Objekten|Add1~16\)))) # (GND)
-- \Objekten|Add1~18\ = CARRY((\Objekten|CircleCoord1.x\(8) & ((\Objekten|Add1~2_combout\) # (!\Objekten|Add1~16\))) # (!\Objekten|CircleCoord1.x\(8) & (\Objekten|Add1~2_combout\ & !\Objekten|Add1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(8),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~16\,
	combout => \Objekten|Add1~17_combout\,
	cout => \Objekten|Add1~18\);

-- Location: FF_X30_Y30_N17
\Objekten|CircleCoord1.x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~17_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(8));

-- Location: LCCOMB_X30_Y30_N18
\Objekten|Add1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~19_combout\ = (\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(9) & (\Objekten|Add1~18\ & VCC)) # (!\Objekten|CircleCoord1.x\(9) & (!\Objekten|Add1~18\)))) # (!\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(9) & 
-- (!\Objekten|Add1~18\)) # (!\Objekten|CircleCoord1.x\(9) & ((\Objekten|Add1~18\) # (GND)))))
-- \Objekten|Add1~20\ = CARRY((\Objekten|Add1~2_combout\ & (!\Objekten|CircleCoord1.x\(9) & !\Objekten|Add1~18\)) # (!\Objekten|Add1~2_combout\ & ((!\Objekten|Add1~18\) # (!\Objekten|CircleCoord1.x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(9),
	datad => VCC,
	cin => \Objekten|Add1~18\,
	combout => \Objekten|Add1~19_combout\,
	cout => \Objekten|Add1~20\);

-- Location: FF_X30_Y30_N19
\Objekten|CircleCoord1.x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~19_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(9));

-- Location: LCCOMB_X30_Y30_N20
\Objekten|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~21_combout\ = ((\Objekten|Add1~2_combout\ $ (\Objekten|CircleCoord1.x\(10) $ (!\Objekten|Add1~20\)))) # (GND)
-- \Objekten|Add1~22\ = CARRY((\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(10)) # (!\Objekten|Add1~20\))) # (!\Objekten|Add1~2_combout\ & (\Objekten|CircleCoord1.x\(10) & !\Objekten|Add1~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(10),
	datad => VCC,
	cin => \Objekten|Add1~20\,
	combout => \Objekten|Add1~21_combout\,
	cout => \Objekten|Add1~22\);

-- Location: FF_X30_Y30_N21
\Objekten|CircleCoord1.x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~21_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(10));

-- Location: LCCOMB_X30_Y30_N22
\Objekten|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~23_combout\ = (\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(11) & (\Objekten|Add1~22\ & VCC)) # (!\Objekten|CircleCoord1.x\(11) & (!\Objekten|Add1~22\)))) # (!\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(11) & 
-- (!\Objekten|Add1~22\)) # (!\Objekten|CircleCoord1.x\(11) & ((\Objekten|Add1~22\) # (GND)))))
-- \Objekten|Add1~24\ = CARRY((\Objekten|Add1~2_combout\ & (!\Objekten|CircleCoord1.x\(11) & !\Objekten|Add1~22\)) # (!\Objekten|Add1~2_combout\ & ((!\Objekten|Add1~22\) # (!\Objekten|CircleCoord1.x\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(11),
	datad => VCC,
	cin => \Objekten|Add1~22\,
	combout => \Objekten|Add1~23_combout\,
	cout => \Objekten|Add1~24\);

-- Location: FF_X30_Y30_N23
\Objekten|CircleCoord1.x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~23_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(11));

-- Location: LCCOMB_X30_Y30_N24
\Objekten|Add1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~25_combout\ = ((\Objekten|CircleCoord1.x\(12) $ (\Objekten|Add1~2_combout\ $ (!\Objekten|Add1~24\)))) # (GND)
-- \Objekten|Add1~26\ = CARRY((\Objekten|CircleCoord1.x\(12) & ((\Objekten|Add1~2_combout\) # (!\Objekten|Add1~24\))) # (!\Objekten|CircleCoord1.x\(12) & (\Objekten|Add1~2_combout\ & !\Objekten|Add1~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(12),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~24\,
	combout => \Objekten|Add1~25_combout\,
	cout => \Objekten|Add1~26\);

-- Location: FF_X30_Y30_N25
\Objekten|CircleCoord1.x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~25_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(12));

-- Location: LCCOMB_X30_Y30_N26
\Objekten|Add1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~27_combout\ = (\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(13) & (\Objekten|Add1~26\ & VCC)) # (!\Objekten|CircleCoord1.x\(13) & (!\Objekten|Add1~26\)))) # (!\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(13) & 
-- (!\Objekten|Add1~26\)) # (!\Objekten|CircleCoord1.x\(13) & ((\Objekten|Add1~26\) # (GND)))))
-- \Objekten|Add1~28\ = CARRY((\Objekten|Add1~2_combout\ & (!\Objekten|CircleCoord1.x\(13) & !\Objekten|Add1~26\)) # (!\Objekten|Add1~2_combout\ & ((!\Objekten|Add1~26\) # (!\Objekten|CircleCoord1.x\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(13),
	datad => VCC,
	cin => \Objekten|Add1~26\,
	combout => \Objekten|Add1~27_combout\,
	cout => \Objekten|Add1~28\);

-- Location: FF_X30_Y30_N27
\Objekten|CircleCoord1.x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~27_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(13));

-- Location: LCCOMB_X30_Y30_N28
\Objekten|Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~29_combout\ = ((\Objekten|CircleCoord1.x\(14) $ (\Objekten|Add1~2_combout\ $ (!\Objekten|Add1~28\)))) # (GND)
-- \Objekten|Add1~30\ = CARRY((\Objekten|CircleCoord1.x\(14) & ((\Objekten|Add1~2_combout\) # (!\Objekten|Add1~28\))) # (!\Objekten|CircleCoord1.x\(14) & (\Objekten|Add1~2_combout\ & !\Objekten|Add1~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(14),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~28\,
	combout => \Objekten|Add1~29_combout\,
	cout => \Objekten|Add1~30\);

-- Location: FF_X30_Y30_N29
\Objekten|CircleCoord1.x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~29_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(14));

-- Location: LCCOMB_X30_Y30_N30
\Objekten|Add1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~31_combout\ = (\Objekten|CircleCoord1.x\(15) & ((\Objekten|Add1~2_combout\ & (\Objekten|Add1~30\ & VCC)) # (!\Objekten|Add1~2_combout\ & (!\Objekten|Add1~30\)))) # (!\Objekten|CircleCoord1.x\(15) & ((\Objekten|Add1~2_combout\ & 
-- (!\Objekten|Add1~30\)) # (!\Objekten|Add1~2_combout\ & ((\Objekten|Add1~30\) # (GND)))))
-- \Objekten|Add1~32\ = CARRY((\Objekten|CircleCoord1.x\(15) & (!\Objekten|Add1~2_combout\ & !\Objekten|Add1~30\)) # (!\Objekten|CircleCoord1.x\(15) & ((!\Objekten|Add1~30\) # (!\Objekten|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(15),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~30\,
	combout => \Objekten|Add1~31_combout\,
	cout => \Objekten|Add1~32\);

-- Location: FF_X30_Y30_N31
\Objekten|CircleCoord1.x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~31_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(15));

-- Location: LCCOMB_X30_Y29_N0
\Objekten|Add1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~33_combout\ = ((\Objekten|Add1~2_combout\ $ (\Objekten|CircleCoord1.x\(16) $ (!\Objekten|Add1~32\)))) # (GND)
-- \Objekten|Add1~34\ = CARRY((\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(16)) # (!\Objekten|Add1~32\))) # (!\Objekten|Add1~2_combout\ & (\Objekten|CircleCoord1.x\(16) & !\Objekten|Add1~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(16),
	datad => VCC,
	cin => \Objekten|Add1~32\,
	combout => \Objekten|Add1~33_combout\,
	cout => \Objekten|Add1~34\);

-- Location: FF_X30_Y29_N1
\Objekten|CircleCoord1.x[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~33_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(16));

-- Location: LCCOMB_X30_Y29_N2
\Objekten|Add1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~35_combout\ = (\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(17) & (\Objekten|Add1~34\ & VCC)) # (!\Objekten|CircleCoord1.x\(17) & (!\Objekten|Add1~34\)))) # (!\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(17) & 
-- (!\Objekten|Add1~34\)) # (!\Objekten|CircleCoord1.x\(17) & ((\Objekten|Add1~34\) # (GND)))))
-- \Objekten|Add1~36\ = CARRY((\Objekten|Add1~2_combout\ & (!\Objekten|CircleCoord1.x\(17) & !\Objekten|Add1~34\)) # (!\Objekten|Add1~2_combout\ & ((!\Objekten|Add1~34\) # (!\Objekten|CircleCoord1.x\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(17),
	datad => VCC,
	cin => \Objekten|Add1~34\,
	combout => \Objekten|Add1~35_combout\,
	cout => \Objekten|Add1~36\);

-- Location: FF_X30_Y29_N3
\Objekten|CircleCoord1.x[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~35_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(17));

-- Location: LCCOMB_X30_Y29_N4
\Objekten|Add1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~37_combout\ = ((\Objekten|Add1~2_combout\ $ (\Objekten|CircleCoord1.x\(18) $ (!\Objekten|Add1~36\)))) # (GND)
-- \Objekten|Add1~38\ = CARRY((\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(18)) # (!\Objekten|Add1~36\))) # (!\Objekten|Add1~2_combout\ & (\Objekten|CircleCoord1.x\(18) & !\Objekten|Add1~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(18),
	datad => VCC,
	cin => \Objekten|Add1~36\,
	combout => \Objekten|Add1~37_combout\,
	cout => \Objekten|Add1~38\);

-- Location: FF_X30_Y29_N5
\Objekten|CircleCoord1.x[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~37_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(18));

-- Location: LCCOMB_X32_Y29_N26
\Objekten|CoordinateInRectangle~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~13_combout\ = (!\Objekten|CircleCoord1.x\(16) & (!\Objekten|CircleCoord1.x\(17) & (!\Objekten|CircleCoord1.x\(15) & !\Objekten|CircleCoord1.x\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(16),
	datab => \Objekten|CircleCoord1.x\(17),
	datac => \Objekten|CircleCoord1.x\(15),
	datad => \Objekten|CircleCoord1.x\(18),
	combout => \Objekten|CoordinateInRectangle~13_combout\);

-- Location: LCCOMB_X32_Y29_N24
\Objekten|CoordinateInRectangle~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~14_combout\ = (!\Objekten|CircleCoord1.x\(12) & !\Objekten|CircleCoord1.x\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(12),
	datad => \Objekten|CircleCoord1.x\(11),
	combout => \Objekten|CoordinateInRectangle~14_combout\);

-- Location: LCCOMB_X32_Y29_N2
\Objekten|CoordinateInRectangle~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~15_combout\ = (!\Objekten|CircleCoord1.x\(14) & (!\Objekten|CircleCoord1.x\(13) & (!\Objekten|CircleCoord1.x\(10) & \Objekten|CoordinateInRectangle~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(14),
	datab => \Objekten|CircleCoord1.x\(13),
	datac => \Objekten|CircleCoord1.x\(10),
	datad => \Objekten|CoordinateInRectangle~14_combout\,
	combout => \Objekten|CoordinateInRectangle~15_combout\);

-- Location: FF_X32_Y29_N1
\Objekten|CircleToRight1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~2_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleToRight1~q\);

-- Location: LCCOMB_X32_Y29_N22
\Objekten|CoordinateInRectangle~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~8_combout\ = (!\Objekten|CircleCoord1.x\(31) & (((!\Objekten|CircleCoord1.x\(8) & !\Objekten|CircleCoord1.x\(7))) # (!\Objekten|CircleCoord1.x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(8),
	datab => \Objekten|CircleCoord1.x\(31),
	datac => \Objekten|CircleCoord1.x\(7),
	datad => \Objekten|CircleCoord1.x\(9),
	combout => \Objekten|CoordinateInRectangle~8_combout\);

-- Location: LCCOMB_X30_Y29_N6
\Objekten|Add1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~39_combout\ = (\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(19) & (\Objekten|Add1~38\ & VCC)) # (!\Objekten|CircleCoord1.x\(19) & (!\Objekten|Add1~38\)))) # (!\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(19) & 
-- (!\Objekten|Add1~38\)) # (!\Objekten|CircleCoord1.x\(19) & ((\Objekten|Add1~38\) # (GND)))))
-- \Objekten|Add1~40\ = CARRY((\Objekten|Add1~2_combout\ & (!\Objekten|CircleCoord1.x\(19) & !\Objekten|Add1~38\)) # (!\Objekten|Add1~2_combout\ & ((!\Objekten|Add1~38\) # (!\Objekten|CircleCoord1.x\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(19),
	datad => VCC,
	cin => \Objekten|Add1~38\,
	combout => \Objekten|Add1~39_combout\,
	cout => \Objekten|Add1~40\);

-- Location: FF_X30_Y29_N7
\Objekten|CircleCoord1.x[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~39_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(19));

-- Location: LCCOMB_X30_Y29_N8
\Objekten|Add1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~41_combout\ = ((\Objekten|Add1~2_combout\ $ (\Objekten|CircleCoord1.x\(20) $ (!\Objekten|Add1~40\)))) # (GND)
-- \Objekten|Add1~42\ = CARRY((\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(20)) # (!\Objekten|Add1~40\))) # (!\Objekten|Add1~2_combout\ & (\Objekten|CircleCoord1.x\(20) & !\Objekten|Add1~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(20),
	datad => VCC,
	cin => \Objekten|Add1~40\,
	combout => \Objekten|Add1~41_combout\,
	cout => \Objekten|Add1~42\);

-- Location: FF_X30_Y29_N9
\Objekten|CircleCoord1.x[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~41_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(20));

-- Location: LCCOMB_X30_Y29_N10
\Objekten|Add1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~43_combout\ = (\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(21) & (\Objekten|Add1~42\ & VCC)) # (!\Objekten|CircleCoord1.x\(21) & (!\Objekten|Add1~42\)))) # (!\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(21) & 
-- (!\Objekten|Add1~42\)) # (!\Objekten|CircleCoord1.x\(21) & ((\Objekten|Add1~42\) # (GND)))))
-- \Objekten|Add1~44\ = CARRY((\Objekten|Add1~2_combout\ & (!\Objekten|CircleCoord1.x\(21) & !\Objekten|Add1~42\)) # (!\Objekten|Add1~2_combout\ & ((!\Objekten|Add1~42\) # (!\Objekten|CircleCoord1.x\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(21),
	datad => VCC,
	cin => \Objekten|Add1~42\,
	combout => \Objekten|Add1~43_combout\,
	cout => \Objekten|Add1~44\);

-- Location: FF_X30_Y29_N11
\Objekten|CircleCoord1.x[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~43_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(21));

-- Location: LCCOMB_X30_Y29_N12
\Objekten|Add1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~45_combout\ = ((\Objekten|Add1~2_combout\ $ (\Objekten|CircleCoord1.x\(22) $ (!\Objekten|Add1~44\)))) # (GND)
-- \Objekten|Add1~46\ = CARRY((\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(22)) # (!\Objekten|Add1~44\))) # (!\Objekten|Add1~2_combout\ & (\Objekten|CircleCoord1.x\(22) & !\Objekten|Add1~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(22),
	datad => VCC,
	cin => \Objekten|Add1~44\,
	combout => \Objekten|Add1~45_combout\,
	cout => \Objekten|Add1~46\);

-- Location: FF_X30_Y29_N13
\Objekten|CircleCoord1.x[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~45_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(22));

-- Location: LCCOMB_X30_Y29_N14
\Objekten|Add1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~47_combout\ = (\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(23) & (\Objekten|Add1~46\ & VCC)) # (!\Objekten|CircleCoord1.x\(23) & (!\Objekten|Add1~46\)))) # (!\Objekten|Add1~2_combout\ & ((\Objekten|CircleCoord1.x\(23) & 
-- (!\Objekten|Add1~46\)) # (!\Objekten|CircleCoord1.x\(23) & ((\Objekten|Add1~46\) # (GND)))))
-- \Objekten|Add1~48\ = CARRY((\Objekten|Add1~2_combout\ & (!\Objekten|CircleCoord1.x\(23) & !\Objekten|Add1~46\)) # (!\Objekten|Add1~2_combout\ & ((!\Objekten|Add1~46\) # (!\Objekten|CircleCoord1.x\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add1~2_combout\,
	datab => \Objekten|CircleCoord1.x\(23),
	datad => VCC,
	cin => \Objekten|Add1~46\,
	combout => \Objekten|Add1~47_combout\,
	cout => \Objekten|Add1~48\);

-- Location: FF_X30_Y29_N15
\Objekten|CircleCoord1.x[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~47_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(23));

-- Location: LCCOMB_X30_Y29_N16
\Objekten|Add1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~49_combout\ = ((\Objekten|CircleCoord1.x\(24) $ (\Objekten|Add1~2_combout\ $ (!\Objekten|Add1~48\)))) # (GND)
-- \Objekten|Add1~50\ = CARRY((\Objekten|CircleCoord1.x\(24) & ((\Objekten|Add1~2_combout\) # (!\Objekten|Add1~48\))) # (!\Objekten|CircleCoord1.x\(24) & (\Objekten|Add1~2_combout\ & !\Objekten|Add1~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(24),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~48\,
	combout => \Objekten|Add1~49_combout\,
	cout => \Objekten|Add1~50\);

-- Location: FF_X30_Y29_N17
\Objekten|CircleCoord1.x[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~49_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(24));

-- Location: LCCOMB_X30_Y29_N18
\Objekten|Add1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~51_combout\ = (\Objekten|CircleCoord1.x\(25) & ((\Objekten|Add1~2_combout\ & (\Objekten|Add1~50\ & VCC)) # (!\Objekten|Add1~2_combout\ & (!\Objekten|Add1~50\)))) # (!\Objekten|CircleCoord1.x\(25) & ((\Objekten|Add1~2_combout\ & 
-- (!\Objekten|Add1~50\)) # (!\Objekten|Add1~2_combout\ & ((\Objekten|Add1~50\) # (GND)))))
-- \Objekten|Add1~52\ = CARRY((\Objekten|CircleCoord1.x\(25) & (!\Objekten|Add1~2_combout\ & !\Objekten|Add1~50\)) # (!\Objekten|CircleCoord1.x\(25) & ((!\Objekten|Add1~50\) # (!\Objekten|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(25),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~50\,
	combout => \Objekten|Add1~51_combout\,
	cout => \Objekten|Add1~52\);

-- Location: FF_X30_Y29_N19
\Objekten|CircleCoord1.x[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~51_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(25));

-- Location: LCCOMB_X30_Y29_N20
\Objekten|Add1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~53_combout\ = ((\Objekten|CircleCoord1.x\(26) $ (\Objekten|Add1~2_combout\ $ (!\Objekten|Add1~52\)))) # (GND)
-- \Objekten|Add1~54\ = CARRY((\Objekten|CircleCoord1.x\(26) & ((\Objekten|Add1~2_combout\) # (!\Objekten|Add1~52\))) # (!\Objekten|CircleCoord1.x\(26) & (\Objekten|Add1~2_combout\ & !\Objekten|Add1~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(26),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~52\,
	combout => \Objekten|Add1~53_combout\,
	cout => \Objekten|Add1~54\);

-- Location: FF_X30_Y29_N21
\Objekten|CircleCoord1.x[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~53_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(26));

-- Location: LCCOMB_X30_Y29_N22
\Objekten|Add1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~55_combout\ = (\Objekten|CircleCoord1.x\(27) & ((\Objekten|Add1~2_combout\ & (\Objekten|Add1~54\ & VCC)) # (!\Objekten|Add1~2_combout\ & (!\Objekten|Add1~54\)))) # (!\Objekten|CircleCoord1.x\(27) & ((\Objekten|Add1~2_combout\ & 
-- (!\Objekten|Add1~54\)) # (!\Objekten|Add1~2_combout\ & ((\Objekten|Add1~54\) # (GND)))))
-- \Objekten|Add1~56\ = CARRY((\Objekten|CircleCoord1.x\(27) & (!\Objekten|Add1~2_combout\ & !\Objekten|Add1~54\)) # (!\Objekten|CircleCoord1.x\(27) & ((!\Objekten|Add1~54\) # (!\Objekten|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(27),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~54\,
	combout => \Objekten|Add1~55_combout\,
	cout => \Objekten|Add1~56\);

-- Location: FF_X30_Y29_N23
\Objekten|CircleCoord1.x[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~55_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(27));

-- Location: LCCOMB_X30_Y29_N24
\Objekten|Add1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~57_combout\ = ((\Objekten|CircleCoord1.x\(28) $ (\Objekten|Add1~2_combout\ $ (!\Objekten|Add1~56\)))) # (GND)
-- \Objekten|Add1~58\ = CARRY((\Objekten|CircleCoord1.x\(28) & ((\Objekten|Add1~2_combout\) # (!\Objekten|Add1~56\))) # (!\Objekten|CircleCoord1.x\(28) & (\Objekten|Add1~2_combout\ & !\Objekten|Add1~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(28),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~56\,
	combout => \Objekten|Add1~57_combout\,
	cout => \Objekten|Add1~58\);

-- Location: FF_X30_Y29_N25
\Objekten|CircleCoord1.x[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~57_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(28));

-- Location: LCCOMB_X30_Y29_N26
\Objekten|Add1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~59_combout\ = (\Objekten|CircleCoord1.x\(29) & ((\Objekten|Add1~2_combout\ & (\Objekten|Add1~58\ & VCC)) # (!\Objekten|Add1~2_combout\ & (!\Objekten|Add1~58\)))) # (!\Objekten|CircleCoord1.x\(29) & ((\Objekten|Add1~2_combout\ & 
-- (!\Objekten|Add1~58\)) # (!\Objekten|Add1~2_combout\ & ((\Objekten|Add1~58\) # (GND)))))
-- \Objekten|Add1~60\ = CARRY((\Objekten|CircleCoord1.x\(29) & (!\Objekten|Add1~2_combout\ & !\Objekten|Add1~58\)) # (!\Objekten|CircleCoord1.x\(29) & ((!\Objekten|Add1~58\) # (!\Objekten|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(29),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~58\,
	combout => \Objekten|Add1~59_combout\,
	cout => \Objekten|Add1~60\);

-- Location: FF_X30_Y29_N27
\Objekten|CircleCoord1.x[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~59_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(29));

-- Location: LCCOMB_X30_Y29_N28
\Objekten|Add1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~61_combout\ = ((\Objekten|CircleCoord1.x\(30) $ (\Objekten|Add1~2_combout\ $ (!\Objekten|Add1~60\)))) # (GND)
-- \Objekten|Add1~62\ = CARRY((\Objekten|CircleCoord1.x\(30) & ((\Objekten|Add1~2_combout\) # (!\Objekten|Add1~60\))) # (!\Objekten|CircleCoord1.x\(30) & (\Objekten|Add1~2_combout\ & !\Objekten|Add1~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(30),
	datab => \Objekten|Add1~2_combout\,
	datad => VCC,
	cin => \Objekten|Add1~60\,
	combout => \Objekten|Add1~61_combout\,
	cout => \Objekten|Add1~62\);

-- Location: FF_X30_Y29_N29
\Objekten|CircleCoord1.x[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~61_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(30));

-- Location: LCCOMB_X32_Y29_N28
\Objekten|CoordinateInRectangle~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~9_combout\ = (!\Objekten|CircleCoord1.x\(27) & (!\Objekten|CircleCoord1.x\(29) & (!\Objekten|CircleCoord1.x\(30) & !\Objekten|CircleCoord1.x\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(27),
	datab => \Objekten|CircleCoord1.x\(29),
	datac => \Objekten|CircleCoord1.x\(30),
	datad => \Objekten|CircleCoord1.x\(28),
	combout => \Objekten|CoordinateInRectangle~9_combout\);

-- Location: LCCOMB_X34_Y29_N8
\Objekten|CoordinateInRectangle~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~10_combout\ = (!\Objekten|CircleCoord1.x\(26) & (!\Objekten|CircleCoord1.x\(23) & (!\Objekten|CircleCoord1.x\(25) & !\Objekten|CircleCoord1.x\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(26),
	datab => \Objekten|CircleCoord1.x\(23),
	datac => \Objekten|CircleCoord1.x\(25),
	datad => \Objekten|CircleCoord1.x\(24),
	combout => \Objekten|CoordinateInRectangle~10_combout\);

-- Location: LCCOMB_X32_Y29_N18
\Objekten|CoordinateInRectangle~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~11_combout\ = (!\Objekten|CircleCoord1.x\(20) & (!\Objekten|CircleCoord1.x\(21) & (!\Objekten|CircleCoord1.x\(22) & !\Objekten|CircleCoord1.x\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(20),
	datab => \Objekten|CircleCoord1.x\(21),
	datac => \Objekten|CircleCoord1.x\(22),
	datad => \Objekten|CircleCoord1.x\(19),
	combout => \Objekten|CoordinateInRectangle~11_combout\);

-- Location: LCCOMB_X32_Y29_N20
\Objekten|CoordinateInRectangle~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~12_combout\ = (\Objekten|CoordinateInRectangle~8_combout\ & (\Objekten|CoordinateInRectangle~9_combout\ & (\Objekten|CoordinateInRectangle~10_combout\ & \Objekten|CoordinateInRectangle~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CoordinateInRectangle~8_combout\,
	datab => \Objekten|CoordinateInRectangle~9_combout\,
	datac => \Objekten|CoordinateInRectangle~10_combout\,
	datad => \Objekten|CoordinateInRectangle~11_combout\,
	combout => \Objekten|CoordinateInRectangle~12_combout\);

-- Location: LCCOMB_X32_Y29_N0
\Objekten|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~2_combout\ = \Objekten|CircleToRight1~q\ $ ((((!\Objekten|CoordinateInRectangle~12_combout\) # (!\Objekten|CoordinateInRectangle~15_combout\)) # (!\Objekten|CoordinateInRectangle~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CoordinateInRectangle~13_combout\,
	datab => \Objekten|CoordinateInRectangle~15_combout\,
	datac => \Objekten|CircleToRight1~q\,
	datad => \Objekten|CoordinateInRectangle~12_combout\,
	combout => \Objekten|Add1~2_combout\);

-- Location: LCCOMB_X30_Y29_N30
\Objekten|Add1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add1~63_combout\ = \Objekten|CircleCoord1.x\(31) $ (\Objekten|Add1~62\ $ (\Objekten|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(31),
	datad => \Objekten|Add1~2_combout\,
	cin => \Objekten|Add1~62\,
	combout => \Objekten|Add1~63_combout\);

-- Location: FF_X30_Y29_N31
\Objekten|CircleCoord1.x[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add1~63_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord1.x\(31));

-- Location: LCCOMB_X35_Y30_N2
\Objekten|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~0_combout\ = \Objekten|CircleCoord1.x\(1) $ (VCC)
-- \Objekten|Add4~1\ = CARRY(\Objekten|CircleCoord1.x\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(1),
	datad => VCC,
	combout => \Objekten|Add4~0_combout\,
	cout => \Objekten|Add4~1\);

-- Location: LCCOMB_X35_Y30_N4
\Objekten|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~2_combout\ = (\Objekten|CircleCoord1.x\(2) & (!\Objekten|Add4~1\)) # (!\Objekten|CircleCoord1.x\(2) & (\Objekten|Add4~1\ & VCC))
-- \Objekten|Add4~3\ = CARRY((\Objekten|CircleCoord1.x\(2) & !\Objekten|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(2),
	datad => VCC,
	cin => \Objekten|Add4~1\,
	combout => \Objekten|Add4~2_combout\,
	cout => \Objekten|Add4~3\);

-- Location: LCCOMB_X35_Y30_N6
\Objekten|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~4_combout\ = (\Objekten|CircleCoord1.x\(3) & ((GND) # (!\Objekten|Add4~3\))) # (!\Objekten|CircleCoord1.x\(3) & (\Objekten|Add4~3\ $ (GND)))
-- \Objekten|Add4~5\ = CARRY((\Objekten|CircleCoord1.x\(3)) # (!\Objekten|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(3),
	datad => VCC,
	cin => \Objekten|Add4~3\,
	combout => \Objekten|Add4~4_combout\,
	cout => \Objekten|Add4~5\);

-- Location: LCCOMB_X35_Y30_N8
\Objekten|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~6_combout\ = (\Objekten|CircleCoord1.x\(4) & (!\Objekten|Add4~5\)) # (!\Objekten|CircleCoord1.x\(4) & ((\Objekten|Add4~5\) # (GND)))
-- \Objekten|Add4~7\ = CARRY((!\Objekten|Add4~5\) # (!\Objekten|CircleCoord1.x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(4),
	datad => VCC,
	cin => \Objekten|Add4~5\,
	combout => \Objekten|Add4~6_combout\,
	cout => \Objekten|Add4~7\);

-- Location: LCCOMB_X35_Y30_N10
\Objekten|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~8_combout\ = (\Objekten|CircleCoord1.x\(5) & (!\Objekten|Add4~7\ & VCC)) # (!\Objekten|CircleCoord1.x\(5) & (\Objekten|Add4~7\ $ (GND)))
-- \Objekten|Add4~9\ = CARRY((!\Objekten|CircleCoord1.x\(5) & !\Objekten|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(5),
	datad => VCC,
	cin => \Objekten|Add4~7\,
	combout => \Objekten|Add4~8_combout\,
	cout => \Objekten|Add4~9\);

-- Location: LCCOMB_X35_Y30_N12
\Objekten|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~10_combout\ = (\Objekten|CircleCoord1.x\(6) & (!\Objekten|Add4~9\)) # (!\Objekten|CircleCoord1.x\(6) & (\Objekten|Add4~9\ & VCC))
-- \Objekten|Add4~11\ = CARRY((\Objekten|CircleCoord1.x\(6) & !\Objekten|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(6),
	datad => VCC,
	cin => \Objekten|Add4~9\,
	combout => \Objekten|Add4~10_combout\,
	cout => \Objekten|Add4~11\);

-- Location: LCCOMB_X35_Y30_N14
\Objekten|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~12_combout\ = (\Objekten|CircleCoord1.x\(7) & ((GND) # (!\Objekten|Add4~11\))) # (!\Objekten|CircleCoord1.x\(7) & (\Objekten|Add4~11\ $ (GND)))
-- \Objekten|Add4~13\ = CARRY((\Objekten|CircleCoord1.x\(7)) # (!\Objekten|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(7),
	datad => VCC,
	cin => \Objekten|Add4~11\,
	combout => \Objekten|Add4~12_combout\,
	cout => \Objekten|Add4~13\);

-- Location: LCCOMB_X35_Y30_N16
\Objekten|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~14_combout\ = (\Objekten|CircleCoord1.x\(8) & (\Objekten|Add4~13\ & VCC)) # (!\Objekten|CircleCoord1.x\(8) & (!\Objekten|Add4~13\))
-- \Objekten|Add4~15\ = CARRY((!\Objekten|CircleCoord1.x\(8) & !\Objekten|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(8),
	datad => VCC,
	cin => \Objekten|Add4~13\,
	combout => \Objekten|Add4~14_combout\,
	cout => \Objekten|Add4~15\);

-- Location: LCCOMB_X35_Y30_N18
\Objekten|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~16_combout\ = (\Objekten|CircleCoord1.x\(9) & ((GND) # (!\Objekten|Add4~15\))) # (!\Objekten|CircleCoord1.x\(9) & (\Objekten|Add4~15\ $ (GND)))
-- \Objekten|Add4~17\ = CARRY((\Objekten|CircleCoord1.x\(9)) # (!\Objekten|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(9),
	datad => VCC,
	cin => \Objekten|Add4~15\,
	combout => \Objekten|Add4~16_combout\,
	cout => \Objekten|Add4~17\);

-- Location: LCCOMB_X35_Y30_N20
\Objekten|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~18_combout\ = (\Objekten|CircleCoord1.x\(10) & (\Objekten|Add4~17\ & VCC)) # (!\Objekten|CircleCoord1.x\(10) & (!\Objekten|Add4~17\))
-- \Objekten|Add4~19\ = CARRY((!\Objekten|CircleCoord1.x\(10) & !\Objekten|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(10),
	datad => VCC,
	cin => \Objekten|Add4~17\,
	combout => \Objekten|Add4~18_combout\,
	cout => \Objekten|Add4~19\);

-- Location: LCCOMB_X35_Y30_N22
\Objekten|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~20_combout\ = (\Objekten|CircleCoord1.x\(11) & ((GND) # (!\Objekten|Add4~19\))) # (!\Objekten|CircleCoord1.x\(11) & (\Objekten|Add4~19\ $ (GND)))
-- \Objekten|Add4~21\ = CARRY((\Objekten|CircleCoord1.x\(11)) # (!\Objekten|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(11),
	datad => VCC,
	cin => \Objekten|Add4~19\,
	combout => \Objekten|Add4~20_combout\,
	cout => \Objekten|Add4~21\);

-- Location: LCCOMB_X35_Y30_N24
\Objekten|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~22_combout\ = (\Objekten|CircleCoord1.x\(12) & (\Objekten|Add4~21\ & VCC)) # (!\Objekten|CircleCoord1.x\(12) & (!\Objekten|Add4~21\))
-- \Objekten|Add4~23\ = CARRY((!\Objekten|CircleCoord1.x\(12) & !\Objekten|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(12),
	datad => VCC,
	cin => \Objekten|Add4~21\,
	combout => \Objekten|Add4~22_combout\,
	cout => \Objekten|Add4~23\);

-- Location: LCCOMB_X35_Y30_N26
\Objekten|Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~24_combout\ = (\Objekten|CircleCoord1.x\(13) & ((GND) # (!\Objekten|Add4~23\))) # (!\Objekten|CircleCoord1.x\(13) & (\Objekten|Add4~23\ $ (GND)))
-- \Objekten|Add4~25\ = CARRY((\Objekten|CircleCoord1.x\(13)) # (!\Objekten|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(13),
	datad => VCC,
	cin => \Objekten|Add4~23\,
	combout => \Objekten|Add4~24_combout\,
	cout => \Objekten|Add4~25\);

-- Location: LCCOMB_X35_Y30_N28
\Objekten|Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~26_combout\ = (\Objekten|CircleCoord1.x\(14) & (\Objekten|Add4~25\ & VCC)) # (!\Objekten|CircleCoord1.x\(14) & (!\Objekten|Add4~25\))
-- \Objekten|Add4~27\ = CARRY((!\Objekten|CircleCoord1.x\(14) & !\Objekten|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(14),
	datad => VCC,
	cin => \Objekten|Add4~25\,
	combout => \Objekten|Add4~26_combout\,
	cout => \Objekten|Add4~27\);

-- Location: LCCOMB_X35_Y30_N30
\Objekten|Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~28_combout\ = (\Objekten|CircleCoord1.x\(15) & ((GND) # (!\Objekten|Add4~27\))) # (!\Objekten|CircleCoord1.x\(15) & (\Objekten|Add4~27\ $ (GND)))
-- \Objekten|Add4~29\ = CARRY((\Objekten|CircleCoord1.x\(15)) # (!\Objekten|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(15),
	datad => VCC,
	cin => \Objekten|Add4~27\,
	combout => \Objekten|Add4~28_combout\,
	cout => \Objekten|Add4~29\);

-- Location: LCCOMB_X35_Y29_N0
\Objekten|Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~30_combout\ = (\Objekten|CircleCoord1.x\(16) & (\Objekten|Add4~29\ & VCC)) # (!\Objekten|CircleCoord1.x\(16) & (!\Objekten|Add4~29\))
-- \Objekten|Add4~31\ = CARRY((!\Objekten|CircleCoord1.x\(16) & !\Objekten|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(16),
	datad => VCC,
	cin => \Objekten|Add4~29\,
	combout => \Objekten|Add4~30_combout\,
	cout => \Objekten|Add4~31\);

-- Location: LCCOMB_X35_Y29_N2
\Objekten|Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~32_combout\ = (\Objekten|CircleCoord1.x\(17) & ((GND) # (!\Objekten|Add4~31\))) # (!\Objekten|CircleCoord1.x\(17) & (\Objekten|Add4~31\ $ (GND)))
-- \Objekten|Add4~33\ = CARRY((\Objekten|CircleCoord1.x\(17)) # (!\Objekten|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(17),
	datad => VCC,
	cin => \Objekten|Add4~31\,
	combout => \Objekten|Add4~32_combout\,
	cout => \Objekten|Add4~33\);

-- Location: LCCOMB_X35_Y29_N4
\Objekten|Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~34_combout\ = (\Objekten|CircleCoord1.x\(18) & (\Objekten|Add4~33\ & VCC)) # (!\Objekten|CircleCoord1.x\(18) & (!\Objekten|Add4~33\))
-- \Objekten|Add4~35\ = CARRY((!\Objekten|CircleCoord1.x\(18) & !\Objekten|Add4~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(18),
	datad => VCC,
	cin => \Objekten|Add4~33\,
	combout => \Objekten|Add4~34_combout\,
	cout => \Objekten|Add4~35\);

-- Location: LCCOMB_X35_Y29_N6
\Objekten|Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~36_combout\ = (\Objekten|CircleCoord1.x\(19) & ((GND) # (!\Objekten|Add4~35\))) # (!\Objekten|CircleCoord1.x\(19) & (\Objekten|Add4~35\ $ (GND)))
-- \Objekten|Add4~37\ = CARRY((\Objekten|CircleCoord1.x\(19)) # (!\Objekten|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(19),
	datad => VCC,
	cin => \Objekten|Add4~35\,
	combout => \Objekten|Add4~36_combout\,
	cout => \Objekten|Add4~37\);

-- Location: LCCOMB_X35_Y29_N8
\Objekten|Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~38_combout\ = (\Objekten|CircleCoord1.x\(20) & (\Objekten|Add4~37\ & VCC)) # (!\Objekten|CircleCoord1.x\(20) & (!\Objekten|Add4~37\))
-- \Objekten|Add4~39\ = CARRY((!\Objekten|CircleCoord1.x\(20) & !\Objekten|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(20),
	datad => VCC,
	cin => \Objekten|Add4~37\,
	combout => \Objekten|Add4~38_combout\,
	cout => \Objekten|Add4~39\);

-- Location: LCCOMB_X35_Y29_N10
\Objekten|Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~40_combout\ = (\Objekten|CircleCoord1.x\(21) & ((GND) # (!\Objekten|Add4~39\))) # (!\Objekten|CircleCoord1.x\(21) & (\Objekten|Add4~39\ $ (GND)))
-- \Objekten|Add4~41\ = CARRY((\Objekten|CircleCoord1.x\(21)) # (!\Objekten|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(21),
	datad => VCC,
	cin => \Objekten|Add4~39\,
	combout => \Objekten|Add4~40_combout\,
	cout => \Objekten|Add4~41\);

-- Location: LCCOMB_X35_Y29_N12
\Objekten|Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~42_combout\ = (\Objekten|CircleCoord1.x\(22) & (\Objekten|Add4~41\ & VCC)) # (!\Objekten|CircleCoord1.x\(22) & (!\Objekten|Add4~41\))
-- \Objekten|Add4~43\ = CARRY((!\Objekten|CircleCoord1.x\(22) & !\Objekten|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(22),
	datad => VCC,
	cin => \Objekten|Add4~41\,
	combout => \Objekten|Add4~42_combout\,
	cout => \Objekten|Add4~43\);

-- Location: LCCOMB_X35_Y29_N14
\Objekten|Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~44_combout\ = (\Objekten|CircleCoord1.x\(23) & ((GND) # (!\Objekten|Add4~43\))) # (!\Objekten|CircleCoord1.x\(23) & (\Objekten|Add4~43\ $ (GND)))
-- \Objekten|Add4~45\ = CARRY((\Objekten|CircleCoord1.x\(23)) # (!\Objekten|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(23),
	datad => VCC,
	cin => \Objekten|Add4~43\,
	combout => \Objekten|Add4~44_combout\,
	cout => \Objekten|Add4~45\);

-- Location: LCCOMB_X35_Y29_N16
\Objekten|Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~46_combout\ = (\Objekten|CircleCoord1.x\(24) & (\Objekten|Add4~45\ & VCC)) # (!\Objekten|CircleCoord1.x\(24) & (!\Objekten|Add4~45\))
-- \Objekten|Add4~47\ = CARRY((!\Objekten|CircleCoord1.x\(24) & !\Objekten|Add4~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(24),
	datad => VCC,
	cin => \Objekten|Add4~45\,
	combout => \Objekten|Add4~46_combout\,
	cout => \Objekten|Add4~47\);

-- Location: LCCOMB_X35_Y29_N18
\Objekten|Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~48_combout\ = (\Objekten|CircleCoord1.x\(25) & ((GND) # (!\Objekten|Add4~47\))) # (!\Objekten|CircleCoord1.x\(25) & (\Objekten|Add4~47\ $ (GND)))
-- \Objekten|Add4~49\ = CARRY((\Objekten|CircleCoord1.x\(25)) # (!\Objekten|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(25),
	datad => VCC,
	cin => \Objekten|Add4~47\,
	combout => \Objekten|Add4~48_combout\,
	cout => \Objekten|Add4~49\);

-- Location: LCCOMB_X35_Y29_N20
\Objekten|Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~50_combout\ = (\Objekten|CircleCoord1.x\(26) & (\Objekten|Add4~49\ & VCC)) # (!\Objekten|CircleCoord1.x\(26) & (!\Objekten|Add4~49\))
-- \Objekten|Add4~51\ = CARRY((!\Objekten|CircleCoord1.x\(26) & !\Objekten|Add4~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(26),
	datad => VCC,
	cin => \Objekten|Add4~49\,
	combout => \Objekten|Add4~50_combout\,
	cout => \Objekten|Add4~51\);

-- Location: LCCOMB_X35_Y29_N22
\Objekten|Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~52_combout\ = (\Objekten|CircleCoord1.x\(27) & ((GND) # (!\Objekten|Add4~51\))) # (!\Objekten|CircleCoord1.x\(27) & (\Objekten|Add4~51\ $ (GND)))
-- \Objekten|Add4~53\ = CARRY((\Objekten|CircleCoord1.x\(27)) # (!\Objekten|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(27),
	datad => VCC,
	cin => \Objekten|Add4~51\,
	combout => \Objekten|Add4~52_combout\,
	cout => \Objekten|Add4~53\);

-- Location: LCCOMB_X35_Y29_N24
\Objekten|Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~54_combout\ = (\Objekten|CircleCoord1.x\(28) & (\Objekten|Add4~53\ & VCC)) # (!\Objekten|CircleCoord1.x\(28) & (!\Objekten|Add4~53\))
-- \Objekten|Add4~55\ = CARRY((!\Objekten|CircleCoord1.x\(28) & !\Objekten|Add4~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(28),
	datad => VCC,
	cin => \Objekten|Add4~53\,
	combout => \Objekten|Add4~54_combout\,
	cout => \Objekten|Add4~55\);

-- Location: LCCOMB_X35_Y29_N26
\Objekten|Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~56_combout\ = (\Objekten|CircleCoord1.x\(29) & ((GND) # (!\Objekten|Add4~55\))) # (!\Objekten|CircleCoord1.x\(29) & (\Objekten|Add4~55\ $ (GND)))
-- \Objekten|Add4~57\ = CARRY((\Objekten|CircleCoord1.x\(29)) # (!\Objekten|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(29),
	datad => VCC,
	cin => \Objekten|Add4~55\,
	combout => \Objekten|Add4~56_combout\,
	cout => \Objekten|Add4~57\);

-- Location: LCCOMB_X35_Y29_N28
\Objekten|Add4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~58_combout\ = (\Objekten|CircleCoord1.x\(30) & (\Objekten|Add4~57\ & VCC)) # (!\Objekten|CircleCoord1.x\(30) & (!\Objekten|Add4~57\))
-- \Objekten|Add4~59\ = CARRY((!\Objekten|CircleCoord1.x\(30) & !\Objekten|Add4~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(30),
	datad => VCC,
	cin => \Objekten|Add4~57\,
	combout => \Objekten|Add4~58_combout\,
	cout => \Objekten|Add4~59\);

-- Location: LCCOMB_X35_Y29_N30
\Objekten|Add4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add4~60_combout\ = \Objekten|CircleCoord1.x\(31) $ (\Objekten|Add4~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(31),
	cin => \Objekten|Add4~59\,
	combout => \Objekten|Add4~60_combout\);

-- Location: LCCOMB_X31_Y30_N2
\Objekten|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~0_combout\ = \Objekten|CircleCoord1.x\(1) $ (VCC)
-- \Objekten|Add5~1\ = CARRY(\Objekten|CircleCoord1.x\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(1),
	datad => VCC,
	combout => \Objekten|Add5~0_combout\,
	cout => \Objekten|Add5~1\);

-- Location: LCCOMB_X31_Y30_N4
\Objekten|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~2_combout\ = (\Objekten|CircleCoord1.x\(2) & ((\Objekten|Add5~1\) # (GND))) # (!\Objekten|CircleCoord1.x\(2) & (!\Objekten|Add5~1\))
-- \Objekten|Add5~3\ = CARRY((\Objekten|CircleCoord1.x\(2)) # (!\Objekten|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(2),
	datad => VCC,
	cin => \Objekten|Add5~1\,
	combout => \Objekten|Add5~2_combout\,
	cout => \Objekten|Add5~3\);

-- Location: LCCOMB_X31_Y30_N6
\Objekten|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~4_combout\ = (\Objekten|CircleCoord1.x\(3) & (\Objekten|Add5~3\ $ (GND))) # (!\Objekten|CircleCoord1.x\(3) & (!\Objekten|Add5~3\ & VCC))
-- \Objekten|Add5~5\ = CARRY((\Objekten|CircleCoord1.x\(3) & !\Objekten|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(3),
	datad => VCC,
	cin => \Objekten|Add5~3\,
	combout => \Objekten|Add5~4_combout\,
	cout => \Objekten|Add5~5\);

-- Location: LCCOMB_X31_Y30_N8
\Objekten|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~6_combout\ = (\Objekten|CircleCoord1.x\(4) & (\Objekten|Add5~5\ & VCC)) # (!\Objekten|CircleCoord1.x\(4) & (!\Objekten|Add5~5\))
-- \Objekten|Add5~7\ = CARRY((!\Objekten|CircleCoord1.x\(4) & !\Objekten|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(4),
	datad => VCC,
	cin => \Objekten|Add5~5\,
	combout => \Objekten|Add5~6_combout\,
	cout => \Objekten|Add5~7\);

-- Location: LCCOMB_X31_Y30_N10
\Objekten|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~8_combout\ = (\Objekten|CircleCoord1.x\(5) & (\Objekten|Add5~7\ $ (GND))) # (!\Objekten|CircleCoord1.x\(5) & ((GND) # (!\Objekten|Add5~7\)))
-- \Objekten|Add5~9\ = CARRY((!\Objekten|Add5~7\) # (!\Objekten|CircleCoord1.x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(5),
	datad => VCC,
	cin => \Objekten|Add5~7\,
	combout => \Objekten|Add5~8_combout\,
	cout => \Objekten|Add5~9\);

-- Location: LCCOMB_X31_Y30_N12
\Objekten|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~10_combout\ = (\Objekten|CircleCoord1.x\(6) & ((\Objekten|Add5~9\) # (GND))) # (!\Objekten|CircleCoord1.x\(6) & (!\Objekten|Add5~9\))
-- \Objekten|Add5~11\ = CARRY((\Objekten|CircleCoord1.x\(6)) # (!\Objekten|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(6),
	datad => VCC,
	cin => \Objekten|Add5~9\,
	combout => \Objekten|Add5~10_combout\,
	cout => \Objekten|Add5~11\);

-- Location: LCCOMB_X31_Y30_N14
\Objekten|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~12_combout\ = (\Objekten|CircleCoord1.x\(7) & (\Objekten|Add5~11\ $ (GND))) # (!\Objekten|CircleCoord1.x\(7) & (!\Objekten|Add5~11\ & VCC))
-- \Objekten|Add5~13\ = CARRY((\Objekten|CircleCoord1.x\(7) & !\Objekten|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(7),
	datad => VCC,
	cin => \Objekten|Add5~11\,
	combout => \Objekten|Add5~12_combout\,
	cout => \Objekten|Add5~13\);

-- Location: LCCOMB_X31_Y30_N16
\Objekten|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~14_combout\ = (\Objekten|CircleCoord1.x\(8) & (!\Objekten|Add5~13\)) # (!\Objekten|CircleCoord1.x\(8) & ((\Objekten|Add5~13\) # (GND)))
-- \Objekten|Add5~15\ = CARRY((!\Objekten|Add5~13\) # (!\Objekten|CircleCoord1.x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(8),
	datad => VCC,
	cin => \Objekten|Add5~13\,
	combout => \Objekten|Add5~14_combout\,
	cout => \Objekten|Add5~15\);

-- Location: LCCOMB_X31_Y30_N18
\Objekten|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~16_combout\ = (\Objekten|CircleCoord1.x\(9) & (\Objekten|Add5~15\ $ (GND))) # (!\Objekten|CircleCoord1.x\(9) & (!\Objekten|Add5~15\ & VCC))
-- \Objekten|Add5~17\ = CARRY((\Objekten|CircleCoord1.x\(9) & !\Objekten|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(9),
	datad => VCC,
	cin => \Objekten|Add5~15\,
	combout => \Objekten|Add5~16_combout\,
	cout => \Objekten|Add5~17\);

-- Location: LCCOMB_X31_Y30_N20
\Objekten|Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~18_combout\ = (\Objekten|CircleCoord1.x\(10) & (!\Objekten|Add5~17\)) # (!\Objekten|CircleCoord1.x\(10) & ((\Objekten|Add5~17\) # (GND)))
-- \Objekten|Add5~19\ = CARRY((!\Objekten|Add5~17\) # (!\Objekten|CircleCoord1.x\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(10),
	datad => VCC,
	cin => \Objekten|Add5~17\,
	combout => \Objekten|Add5~18_combout\,
	cout => \Objekten|Add5~19\);

-- Location: LCCOMB_X31_Y30_N22
\Objekten|Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~20_combout\ = (\Objekten|CircleCoord1.x\(11) & (\Objekten|Add5~19\ $ (GND))) # (!\Objekten|CircleCoord1.x\(11) & (!\Objekten|Add5~19\ & VCC))
-- \Objekten|Add5~21\ = CARRY((\Objekten|CircleCoord1.x\(11) & !\Objekten|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(11),
	datad => VCC,
	cin => \Objekten|Add5~19\,
	combout => \Objekten|Add5~20_combout\,
	cout => \Objekten|Add5~21\);

-- Location: LCCOMB_X31_Y30_N24
\Objekten|Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~22_combout\ = (\Objekten|CircleCoord1.x\(12) & (!\Objekten|Add5~21\)) # (!\Objekten|CircleCoord1.x\(12) & ((\Objekten|Add5~21\) # (GND)))
-- \Objekten|Add5~23\ = CARRY((!\Objekten|Add5~21\) # (!\Objekten|CircleCoord1.x\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(12),
	datad => VCC,
	cin => \Objekten|Add5~21\,
	combout => \Objekten|Add5~22_combout\,
	cout => \Objekten|Add5~23\);

-- Location: LCCOMB_X31_Y30_N26
\Objekten|Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~24_combout\ = (\Objekten|CircleCoord1.x\(13) & (\Objekten|Add5~23\ $ (GND))) # (!\Objekten|CircleCoord1.x\(13) & (!\Objekten|Add5~23\ & VCC))
-- \Objekten|Add5~25\ = CARRY((\Objekten|CircleCoord1.x\(13) & !\Objekten|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(13),
	datad => VCC,
	cin => \Objekten|Add5~23\,
	combout => \Objekten|Add5~24_combout\,
	cout => \Objekten|Add5~25\);

-- Location: LCCOMB_X31_Y30_N28
\Objekten|Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~26_combout\ = (\Objekten|CircleCoord1.x\(14) & (!\Objekten|Add5~25\)) # (!\Objekten|CircleCoord1.x\(14) & ((\Objekten|Add5~25\) # (GND)))
-- \Objekten|Add5~27\ = CARRY((!\Objekten|Add5~25\) # (!\Objekten|CircleCoord1.x\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(14),
	datad => VCC,
	cin => \Objekten|Add5~25\,
	combout => \Objekten|Add5~26_combout\,
	cout => \Objekten|Add5~27\);

-- Location: LCCOMB_X31_Y30_N30
\Objekten|Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~28_combout\ = (\Objekten|CircleCoord1.x\(15) & (\Objekten|Add5~27\ $ (GND))) # (!\Objekten|CircleCoord1.x\(15) & (!\Objekten|Add5~27\ & VCC))
-- \Objekten|Add5~29\ = CARRY((\Objekten|CircleCoord1.x\(15) & !\Objekten|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(15),
	datad => VCC,
	cin => \Objekten|Add5~27\,
	combout => \Objekten|Add5~28_combout\,
	cout => \Objekten|Add5~29\);

-- Location: LCCOMB_X31_Y29_N0
\Objekten|Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~30_combout\ = (\Objekten|CircleCoord1.x\(16) & (!\Objekten|Add5~29\)) # (!\Objekten|CircleCoord1.x\(16) & ((\Objekten|Add5~29\) # (GND)))
-- \Objekten|Add5~31\ = CARRY((!\Objekten|Add5~29\) # (!\Objekten|CircleCoord1.x\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(16),
	datad => VCC,
	cin => \Objekten|Add5~29\,
	combout => \Objekten|Add5~30_combout\,
	cout => \Objekten|Add5~31\);

-- Location: LCCOMB_X31_Y29_N2
\Objekten|Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~32_combout\ = (\Objekten|CircleCoord1.x\(17) & (\Objekten|Add5~31\ $ (GND))) # (!\Objekten|CircleCoord1.x\(17) & (!\Objekten|Add5~31\ & VCC))
-- \Objekten|Add5~33\ = CARRY((\Objekten|CircleCoord1.x\(17) & !\Objekten|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(17),
	datad => VCC,
	cin => \Objekten|Add5~31\,
	combout => \Objekten|Add5~32_combout\,
	cout => \Objekten|Add5~33\);

-- Location: LCCOMB_X31_Y29_N4
\Objekten|Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~34_combout\ = (\Objekten|CircleCoord1.x\(18) & (!\Objekten|Add5~33\)) # (!\Objekten|CircleCoord1.x\(18) & ((\Objekten|Add5~33\) # (GND)))
-- \Objekten|Add5~35\ = CARRY((!\Objekten|Add5~33\) # (!\Objekten|CircleCoord1.x\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(18),
	datad => VCC,
	cin => \Objekten|Add5~33\,
	combout => \Objekten|Add5~34_combout\,
	cout => \Objekten|Add5~35\);

-- Location: LCCOMB_X31_Y29_N6
\Objekten|Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~36_combout\ = (\Objekten|CircleCoord1.x\(19) & (\Objekten|Add5~35\ $ (GND))) # (!\Objekten|CircleCoord1.x\(19) & (!\Objekten|Add5~35\ & VCC))
-- \Objekten|Add5~37\ = CARRY((\Objekten|CircleCoord1.x\(19) & !\Objekten|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(19),
	datad => VCC,
	cin => \Objekten|Add5~35\,
	combout => \Objekten|Add5~36_combout\,
	cout => \Objekten|Add5~37\);

-- Location: LCCOMB_X31_Y29_N8
\Objekten|Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~38_combout\ = (\Objekten|CircleCoord1.x\(20) & (!\Objekten|Add5~37\)) # (!\Objekten|CircleCoord1.x\(20) & ((\Objekten|Add5~37\) # (GND)))
-- \Objekten|Add5~39\ = CARRY((!\Objekten|Add5~37\) # (!\Objekten|CircleCoord1.x\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(20),
	datad => VCC,
	cin => \Objekten|Add5~37\,
	combout => \Objekten|Add5~38_combout\,
	cout => \Objekten|Add5~39\);

-- Location: LCCOMB_X31_Y29_N10
\Objekten|Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~40_combout\ = (\Objekten|CircleCoord1.x\(21) & (\Objekten|Add5~39\ $ (GND))) # (!\Objekten|CircleCoord1.x\(21) & (!\Objekten|Add5~39\ & VCC))
-- \Objekten|Add5~41\ = CARRY((\Objekten|CircleCoord1.x\(21) & !\Objekten|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(21),
	datad => VCC,
	cin => \Objekten|Add5~39\,
	combout => \Objekten|Add5~40_combout\,
	cout => \Objekten|Add5~41\);

-- Location: LCCOMB_X31_Y29_N12
\Objekten|Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~42_combout\ = (\Objekten|CircleCoord1.x\(22) & (!\Objekten|Add5~41\)) # (!\Objekten|CircleCoord1.x\(22) & ((\Objekten|Add5~41\) # (GND)))
-- \Objekten|Add5~43\ = CARRY((!\Objekten|Add5~41\) # (!\Objekten|CircleCoord1.x\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(22),
	datad => VCC,
	cin => \Objekten|Add5~41\,
	combout => \Objekten|Add5~42_combout\,
	cout => \Objekten|Add5~43\);

-- Location: LCCOMB_X31_Y29_N14
\Objekten|Add5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~44_combout\ = (\Objekten|CircleCoord1.x\(23) & (\Objekten|Add5~43\ $ (GND))) # (!\Objekten|CircleCoord1.x\(23) & (!\Objekten|Add5~43\ & VCC))
-- \Objekten|Add5~45\ = CARRY((\Objekten|CircleCoord1.x\(23) & !\Objekten|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(23),
	datad => VCC,
	cin => \Objekten|Add5~43\,
	combout => \Objekten|Add5~44_combout\,
	cout => \Objekten|Add5~45\);

-- Location: LCCOMB_X31_Y29_N16
\Objekten|Add5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~46_combout\ = (\Objekten|CircleCoord1.x\(24) & (!\Objekten|Add5~45\)) # (!\Objekten|CircleCoord1.x\(24) & ((\Objekten|Add5~45\) # (GND)))
-- \Objekten|Add5~47\ = CARRY((!\Objekten|Add5~45\) # (!\Objekten|CircleCoord1.x\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(24),
	datad => VCC,
	cin => \Objekten|Add5~45\,
	combout => \Objekten|Add5~46_combout\,
	cout => \Objekten|Add5~47\);

-- Location: LCCOMB_X31_Y29_N18
\Objekten|Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~48_combout\ = (\Objekten|CircleCoord1.x\(25) & (\Objekten|Add5~47\ $ (GND))) # (!\Objekten|CircleCoord1.x\(25) & (!\Objekten|Add5~47\ & VCC))
-- \Objekten|Add5~49\ = CARRY((\Objekten|CircleCoord1.x\(25) & !\Objekten|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(25),
	datad => VCC,
	cin => \Objekten|Add5~47\,
	combout => \Objekten|Add5~48_combout\,
	cout => \Objekten|Add5~49\);

-- Location: LCCOMB_X31_Y29_N20
\Objekten|Add5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~50_combout\ = (\Objekten|CircleCoord1.x\(26) & (!\Objekten|Add5~49\)) # (!\Objekten|CircleCoord1.x\(26) & ((\Objekten|Add5~49\) # (GND)))
-- \Objekten|Add5~51\ = CARRY((!\Objekten|Add5~49\) # (!\Objekten|CircleCoord1.x\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(26),
	datad => VCC,
	cin => \Objekten|Add5~49\,
	combout => \Objekten|Add5~50_combout\,
	cout => \Objekten|Add5~51\);

-- Location: LCCOMB_X31_Y29_N22
\Objekten|Add5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~52_combout\ = (\Objekten|CircleCoord1.x\(27) & (\Objekten|Add5~51\ $ (GND))) # (!\Objekten|CircleCoord1.x\(27) & (!\Objekten|Add5~51\ & VCC))
-- \Objekten|Add5~53\ = CARRY((\Objekten|CircleCoord1.x\(27) & !\Objekten|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(27),
	datad => VCC,
	cin => \Objekten|Add5~51\,
	combout => \Objekten|Add5~52_combout\,
	cout => \Objekten|Add5~53\);

-- Location: LCCOMB_X31_Y29_N24
\Objekten|Add5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~54_combout\ = (\Objekten|CircleCoord1.x\(28) & (!\Objekten|Add5~53\)) # (!\Objekten|CircleCoord1.x\(28) & ((\Objekten|Add5~53\) # (GND)))
-- \Objekten|Add5~55\ = CARRY((!\Objekten|Add5~53\) # (!\Objekten|CircleCoord1.x\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(28),
	datad => VCC,
	cin => \Objekten|Add5~53\,
	combout => \Objekten|Add5~54_combout\,
	cout => \Objekten|Add5~55\);

-- Location: LCCOMB_X31_Y29_N26
\Objekten|Add5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~56_combout\ = (\Objekten|CircleCoord1.x\(29) & (\Objekten|Add5~55\ $ (GND))) # (!\Objekten|CircleCoord1.x\(29) & (!\Objekten|Add5~55\ & VCC))
-- \Objekten|Add5~57\ = CARRY((\Objekten|CircleCoord1.x\(29) & !\Objekten|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(29),
	datad => VCC,
	cin => \Objekten|Add5~55\,
	combout => \Objekten|Add5~56_combout\,
	cout => \Objekten|Add5~57\);

-- Location: LCCOMB_X31_Y29_N28
\Objekten|Add5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~58_combout\ = (\Objekten|CircleCoord1.x\(30) & (!\Objekten|Add5~57\)) # (!\Objekten|CircleCoord1.x\(30) & ((\Objekten|Add5~57\) # (GND)))
-- \Objekten|Add5~59\ = CARRY((!\Objekten|Add5~57\) # (!\Objekten|CircleCoord1.x\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(30),
	datad => VCC,
	cin => \Objekten|Add5~57\,
	combout => \Objekten|Add5~58_combout\,
	cout => \Objekten|Add5~59\);

-- Location: LCCOMB_X32_Y30_N4
\Objekten|Circle1Colour~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour~5_combout\ = ((!\Objekten|Add5~0_combout\) # (!\Objekten|Add5~4_combout\)) # (!\Objekten|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|Add5~2_combout\,
	datac => \Objekten|Add5~4_combout\,
	datad => \Objekten|Add5~0_combout\,
	combout => \Objekten|Circle1Colour~5_combout\);

-- Location: LCCOMB_X32_Y30_N18
\Objekten|Circle1Colour~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour~6_combout\ = ((!\Objekten|Add5~6_combout\ & (!\Objekten|Add5~8_combout\ & \Objekten|Circle1Colour~5_combout\))) # (!\Objekten|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~6_combout\,
	datab => \Objekten|Add5~8_combout\,
	datac => \Objekten|Circle1Colour~5_combout\,
	datad => \Objekten|Add5~10_combout\,
	combout => \Objekten|Circle1Colour~6_combout\);

-- Location: LCCOMB_X32_Y30_N20
\Objekten|Circle1Colour~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour~7_combout\ = ((!\Objekten|Add5~12_combout\ & (!\Objekten|Add5~14_combout\ & \Objekten|Circle1Colour~6_combout\))) # (!\Objekten|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~12_combout\,
	datab => \Objekten|Add5~16_combout\,
	datac => \Objekten|Add5~14_combout\,
	datad => \Objekten|Circle1Colour~6_combout\,
	combout => \Objekten|Circle1Colour~7_combout\);

-- Location: LCCOMB_X35_Y28_N30
\Objekten|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan8~1_combout\ = (!\Objekten|Add5~26_combout\ & (!\Objekten|Add5~32_combout\ & (!\Objekten|Add5~28_combout\ & !\Objekten|Add5~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~26_combout\,
	datab => \Objekten|Add5~32_combout\,
	datac => \Objekten|Add5~28_combout\,
	datad => \Objekten|Add5~30_combout\,
	combout => \Objekten|LessThan8~1_combout\);

-- Location: LCCOMB_X31_Y30_N0
\Objekten|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan8~0_combout\ = (!\Objekten|Add5~24_combout\ & (!\Objekten|Add5~22_combout\ & (!\Objekten|Add5~20_combout\ & !\Objekten|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~24_combout\,
	datab => \Objekten|Add5~22_combout\,
	datac => \Objekten|Add5~20_combout\,
	datad => \Objekten|Add5~18_combout\,
	combout => \Objekten|LessThan8~0_combout\);

-- Location: LCCOMB_X32_Y29_N16
\Objekten|LessThan8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan8~2_combout\ = (!\Objekten|Add5~38_combout\ & (!\Objekten|Add5~36_combout\ & (!\Objekten|Add5~34_combout\ & !\Objekten|Add5~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~38_combout\,
	datab => \Objekten|Add5~36_combout\,
	datac => \Objekten|Add5~34_combout\,
	datad => \Objekten|Add5~40_combout\,
	combout => \Objekten|LessThan8~2_combout\);

-- Location: LCCOMB_X32_Y29_N30
\Objekten|LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan8~3_combout\ = (!\Objekten|Add5~44_combout\ & (!\Objekten|Add5~42_combout\ & (!\Objekten|Add5~46_combout\ & !\Objekten|Add5~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~44_combout\,
	datab => \Objekten|Add5~42_combout\,
	datac => \Objekten|Add5~46_combout\,
	datad => \Objekten|Add5~48_combout\,
	combout => \Objekten|LessThan8~3_combout\);

-- Location: LCCOMB_X35_Y28_N4
\Objekten|LessThan8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan8~4_combout\ = (\Objekten|LessThan8~1_combout\ & (\Objekten|LessThan8~0_combout\ & (\Objekten|LessThan8~2_combout\ & \Objekten|LessThan8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan8~1_combout\,
	datab => \Objekten|LessThan8~0_combout\,
	datac => \Objekten|LessThan8~2_combout\,
	datad => \Objekten|LessThan8~3_combout\,
	combout => \Objekten|LessThan8~4_combout\);

-- Location: LCCOMB_X32_Y29_N4
\Objekten|LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan8~5_combout\ = (!\Objekten|Add5~50_combout\ & (!\Objekten|Add5~52_combout\ & (!\Objekten|Add5~56_combout\ & !\Objekten|Add5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~50_combout\,
	datab => \Objekten|Add5~52_combout\,
	datac => \Objekten|Add5~56_combout\,
	datad => \Objekten|Add5~54_combout\,
	combout => \Objekten|LessThan8~5_combout\);

-- Location: LCCOMB_X35_Y28_N24
\Objekten|Circle1Colour~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour~8_combout\ = (!\Objekten|Add5~58_combout\ & (\Objekten|Circle1Colour~7_combout\ & (\Objekten|LessThan8~4_combout\ & \Objekten|LessThan8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~58_combout\,
	datab => \Objekten|Circle1Colour~7_combout\,
	datac => \Objekten|LessThan8~4_combout\,
	datad => \Objekten|LessThan8~5_combout\,
	combout => \Objekten|Circle1Colour~8_combout\);

-- Location: LCCOMB_X31_Y29_N30
\Objekten|Add5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add5~60_combout\ = \Objekten|Add5~59\ $ (!\Objekten|CircleCoord1.x\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Objekten|CircleCoord1.x\(31),
	cin => \Objekten|Add5~59\,
	combout => \Objekten|Add5~60_combout\);

-- Location: LCCOMB_X36_Y28_N12
\Objekten|LessThan13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan13~5_combout\ = (\Objekten|CircleCoord1.x\(0)) # ((\Objekten|Add4~8_combout\) # ((\Objekten|Add4~4_combout\) # (\Objekten|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(0),
	datab => \Objekten|Add4~8_combout\,
	datac => \Objekten|Add4~4_combout\,
	datad => \Objekten|Add4~6_combout\,
	combout => \Objekten|LessThan13~5_combout\);

-- Location: LCCOMB_X36_Y28_N4
\Objekten|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan11~0_combout\ = (!\Objekten|Add4~0_combout\ & !\Objekten|Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Objekten|Add4~0_combout\,
	datad => \Objekten|Add4~2_combout\,
	combout => \Objekten|LessThan11~0_combout\);

-- Location: LCCOMB_X36_Y28_N10
\Objekten|LessThan13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan13~6_combout\ = (\Objekten|Add4~12_combout\ & ((\Objekten|LessThan13~5_combout\) # ((\Objekten|Add4~10_combout\) # (!\Objekten|LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan13~5_combout\,
	datab => \Objekten|LessThan11~0_combout\,
	datac => \Objekten|Add4~12_combout\,
	datad => \Objekten|Add4~10_combout\,
	combout => \Objekten|LessThan13~6_combout\);

-- Location: LCCOMB_X36_Y28_N8
\Objekten|LessThan13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan13~7_combout\ = (\Objekten|Add4~16_combout\ & ((\Objekten|Add4~14_combout\) # (\Objekten|LessThan13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~16_combout\,
	datac => \Objekten|Add4~14_combout\,
	datad => \Objekten|LessThan13~6_combout\,
	combout => \Objekten|LessThan13~7_combout\);

-- Location: LCCOMB_X36_Y29_N30
\Objekten|LessThan13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan13~8_combout\ = (!\Objekten|Add4~50_combout\ & (!\Objekten|Add4~54_combout\ & (!\Objekten|Add4~56_combout\ & !\Objekten|Add4~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~50_combout\,
	datab => \Objekten|Add4~54_combout\,
	datac => \Objekten|Add4~56_combout\,
	datad => \Objekten|Add4~52_combout\,
	combout => \Objekten|LessThan13~8_combout\);

-- Location: LCCOMB_X35_Y30_N0
\Objekten|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan13~0_combout\ = (!\Objekten|Add4~24_combout\ & (!\Objekten|Add4~22_combout\ & (!\Objekten|Add4~20_combout\ & !\Objekten|Add4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~24_combout\,
	datab => \Objekten|Add4~22_combout\,
	datac => \Objekten|Add4~20_combout\,
	datad => \Objekten|Add4~18_combout\,
	combout => \Objekten|LessThan13~0_combout\);

-- Location: LCCOMB_X36_Y30_N24
\Objekten|LessThan13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan13~1_combout\ = (!\Objekten|Add4~28_combout\ & (!\Objekten|Add4~26_combout\ & (!\Objekten|Add4~30_combout\ & !\Objekten|Add4~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~28_combout\,
	datab => \Objekten|Add4~26_combout\,
	datac => \Objekten|Add4~30_combout\,
	datad => \Objekten|Add4~32_combout\,
	combout => \Objekten|LessThan13~1_combout\);

-- Location: LCCOMB_X36_Y29_N4
\Objekten|LessThan13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan13~2_combout\ = (!\Objekten|Add4~38_combout\ & (!\Objekten|Add4~34_combout\ & (!\Objekten|Add4~36_combout\ & !\Objekten|Add4~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~38_combout\,
	datab => \Objekten|Add4~34_combout\,
	datac => \Objekten|Add4~36_combout\,
	datad => \Objekten|Add4~40_combout\,
	combout => \Objekten|LessThan13~2_combout\);

-- Location: LCCOMB_X36_Y29_N14
\Objekten|LessThan13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan13~3_combout\ = (!\Objekten|Add4~44_combout\ & (!\Objekten|Add4~42_combout\ & (!\Objekten|Add4~46_combout\ & !\Objekten|Add4~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~44_combout\,
	datab => \Objekten|Add4~42_combout\,
	datac => \Objekten|Add4~46_combout\,
	datad => \Objekten|Add4~48_combout\,
	combout => \Objekten|LessThan13~3_combout\);

-- Location: LCCOMB_X35_Y28_N10
\Objekten|LessThan13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan13~4_combout\ = (\Objekten|LessThan13~0_combout\ & (\Objekten|LessThan13~1_combout\ & (\Objekten|LessThan13~2_combout\ & \Objekten|LessThan13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan13~0_combout\,
	datab => \Objekten|LessThan13~1_combout\,
	datac => \Objekten|LessThan13~2_combout\,
	datad => \Objekten|LessThan13~3_combout\,
	combout => \Objekten|LessThan13~4_combout\);

-- Location: LCCOMB_X35_Y28_N6
\Objekten|LessThan13~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan13~9_combout\ = (\Objekten|Add4~58_combout\) # ((\Objekten|LessThan13~7_combout\) # ((!\Objekten|LessThan13~4_combout\) # (!\Objekten|LessThan13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~58_combout\,
	datab => \Objekten|LessThan13~7_combout\,
	datac => \Objekten|LessThan13~8_combout\,
	datad => \Objekten|LessThan13~4_combout\,
	combout => \Objekten|LessThan13~9_combout\);

-- Location: LCCOMB_X35_Y28_N8
\Objekten|Circle1Colour~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour~9_combout\ = (\Objekten|Circle1Colour~8_combout\) # ((\Objekten|Add5~60_combout\) # ((!\Objekten|Add4~60_combout\ & \Objekten|LessThan13~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~60_combout\,
	datab => \Objekten|Circle1Colour~8_combout\,
	datac => \Objekten|Add5~60_combout\,
	datad => \Objekten|LessThan13~9_combout\,
	combout => \Objekten|Circle1Colour~9_combout\);

-- Location: LCCOMB_X36_Y29_N28
\Objekten|LessThan11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan11~3_combout\ = (!\Objekten|Add4~16_combout\ & (!\Objekten|Add4~54_combout\ & (!\Objekten|Add4~50_combout\ & !\Objekten|Add4~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~16_combout\,
	datab => \Objekten|Add4~54_combout\,
	datac => \Objekten|Add4~50_combout\,
	datad => \Objekten|Add4~52_combout\,
	combout => \Objekten|LessThan11~3_combout\);

-- Location: LCCOMB_X35_Y28_N28
\Objekten|LessThan11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan11~4_combout\ = (!\Objekten|Add4~58_combout\ & (!\Objekten|Add4~56_combout\ & (\Objekten|LessThan11~3_combout\ & \Objekten|LessThan13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~58_combout\,
	datab => \Objekten|Add4~56_combout\,
	datac => \Objekten|LessThan11~3_combout\,
	datad => \Objekten|LessThan13~4_combout\,
	combout => \Objekten|LessThan11~4_combout\);

-- Location: LCCOMB_X36_Y28_N6
\Objekten|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan9~0_combout\ = (\Objekten|CircleCoord1.x\(0) & (\Objekten|Add4~0_combout\ & \Objekten|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(0),
	datac => \Objekten|Add4~0_combout\,
	datad => \Objekten|Add4~2_combout\,
	combout => \Objekten|LessThan9~0_combout\);

-- Location: LCCOMB_X36_Y28_N24
\Objekten|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan9~1_combout\ = (\Objekten|LessThan9~0_combout\) # ((\Objekten|Add4~6_combout\) # ((\Objekten|Add4~4_combout\) # (\Objekten|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan9~0_combout\,
	datab => \Objekten|Add4~6_combout\,
	datac => \Objekten|Add4~4_combout\,
	datad => \Objekten|Add4~8_combout\,
	combout => \Objekten|LessThan9~1_combout\);

-- Location: LCCOMB_X36_Y28_N18
\Objekten|LessThan9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan9~2_combout\ = (\Objekten|Add4~12_combout\) # ((\Objekten|Add4~14_combout\) # ((\Objekten|Add4~10_combout\ & \Objekten|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~12_combout\,
	datab => \Objekten|Add4~10_combout\,
	datac => \Objekten|Add4~14_combout\,
	datad => \Objekten|LessThan9~1_combout\,
	combout => \Objekten|LessThan9~2_combout\);

-- Location: LCCOMB_X32_Y30_N24
\Objekten|LessThan8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan8~7_combout\ = (!\Objekten|Add5~8_combout\ & (((!\Objekten|Add5~4_combout\ & !\Objekten|Add5~2_combout\)) # (!\Objekten|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~8_combout\,
	datab => \Objekten|Add5~4_combout\,
	datac => \Objekten|Add5~2_combout\,
	datad => \Objekten|Add5~6_combout\,
	combout => \Objekten|LessThan8~7_combout\);

-- Location: LCCOMB_X32_Y30_N30
\Objekten|LessThan8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan8~8_combout\ = (!\Objekten|Add5~10_combout\ & (!\Objekten|Add5~14_combout\ & !\Objekten|Add5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~10_combout\,
	datac => \Objekten|Add5~14_combout\,
	datad => \Objekten|Add5~12_combout\,
	combout => \Objekten|LessThan8~8_combout\);

-- Location: LCCOMB_X35_Y28_N2
\Objekten|LessThan8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan8~6_combout\ = (!\Objekten|Add5~16_combout\ & (!\Objekten|Add5~58_combout\ & (\Objekten|LessThan8~4_combout\ & \Objekten|LessThan8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~16_combout\,
	datab => \Objekten|Add5~58_combout\,
	datac => \Objekten|LessThan8~4_combout\,
	datad => \Objekten|LessThan8~5_combout\,
	combout => \Objekten|LessThan8~6_combout\);

-- Location: LCCOMB_X35_Y28_N18
\Objekten|coloursProcess~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|coloursProcess~5_combout\ = (\Objekten|Add5~60_combout\) # ((\Objekten|LessThan8~7_combout\ & (\Objekten|LessThan8~8_combout\ & \Objekten|LessThan8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan8~7_combout\,
	datab => \Objekten|Add5~60_combout\,
	datac => \Objekten|LessThan8~8_combout\,
	datad => \Objekten|LessThan8~6_combout\,
	combout => \Objekten|coloursProcess~5_combout\);

-- Location: LCCOMB_X35_Y28_N26
\Objekten|coloursProcess~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|coloursProcess~7_combout\ = (\Objekten|coloursProcess~5_combout\) # ((!\Objekten|Add4~60_combout\ & ((\Objekten|LessThan9~2_combout\) # (!\Objekten|LessThan11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~60_combout\,
	datab => \Objekten|LessThan11~4_combout\,
	datac => \Objekten|LessThan9~2_combout\,
	datad => \Objekten|coloursProcess~5_combout\,
	combout => \Objekten|coloursProcess~7_combout\);

-- Location: LCCOMB_X35_Y28_N12
\Objekten|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan9~3_combout\ = (!\Objekten|Add4~60_combout\ & ((\Objekten|LessThan9~2_combout\) # (!\Objekten|LessThan11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|LessThan9~2_combout\,
	datac => \Objekten|Add4~60_combout\,
	datad => \Objekten|LessThan11~4_combout\,
	combout => \Objekten|LessThan9~3_combout\);

-- Location: LCCOMB_X36_Y28_N2
\Objekten|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan11~1_combout\ = (\Objekten|Add4~8_combout\) # ((\Objekten|Add4~4_combout\ & (!\Objekten|LessThan11~0_combout\ & \Objekten|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~4_combout\,
	datab => \Objekten|Add4~8_combout\,
	datac => \Objekten|LessThan11~0_combout\,
	datad => \Objekten|Add4~6_combout\,
	combout => \Objekten|LessThan11~1_combout\);

-- Location: LCCOMB_X36_Y28_N16
\Objekten|LessThan11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan11~2_combout\ = (\Objekten|Add4~14_combout\ & ((\Objekten|Add4~12_combout\) # ((\Objekten|Add4~10_combout\ & \Objekten|LessThan11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~12_combout\,
	datab => \Objekten|Add4~10_combout\,
	datac => \Objekten|Add4~14_combout\,
	datad => \Objekten|LessThan11~1_combout\,
	combout => \Objekten|LessThan11~2_combout\);

-- Location: LCCOMB_X35_Y28_N14
\Objekten|Circle1Colour[1][3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour[1][3]~3_combout\ = (\Objekten|Add5~60_combout\) # ((!\Objekten|Add4~60_combout\ & ((\Objekten|LessThan11~2_combout\) # (!\Objekten|LessThan11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add4~60_combout\,
	datab => \Objekten|LessThan11~2_combout\,
	datac => \Objekten|Add5~60_combout\,
	datad => \Objekten|LessThan11~4_combout\,
	combout => \Objekten|Circle1Colour[1][3]~3_combout\);

-- Location: LCCOMB_X32_Y30_N8
\Objekten|Circle1Colour[1][3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour[1][3]~0_combout\ = (\Objekten|Add5~6_combout\) # ((\Objekten|Add5~0_combout\ & (\Objekten|CircleCoord1.x\(0) & \Objekten|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~0_combout\,
	datab => \Objekten|CircleCoord1.x\(0),
	datac => \Objekten|Add5~2_combout\,
	datad => \Objekten|Add5~6_combout\,
	combout => \Objekten|Circle1Colour[1][3]~0_combout\);

-- Location: LCCOMB_X32_Y30_N22
\Objekten|Circle1Colour[1][3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour[1][3]~1_combout\ = (\Objekten|Add5~10_combout\) # ((\Objekten|Add5~8_combout\ & ((\Objekten|Add5~4_combout\) # (\Objekten|Circle1Colour[1][3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~8_combout\,
	datab => \Objekten|Add5~4_combout\,
	datac => \Objekten|Circle1Colour[1][3]~0_combout\,
	datad => \Objekten|Add5~10_combout\,
	combout => \Objekten|Circle1Colour[1][3]~1_combout\);

-- Location: LCCOMB_X35_Y28_N0
\Objekten|Circle1Colour[1][3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour[1][3]~2_combout\ = (\Objekten|LessThan8~6_combout\ & (((!\Objekten|Add5~12_combout\ & !\Objekten|Circle1Colour[1][3]~1_combout\)) # (!\Objekten|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add5~14_combout\,
	datab => \Objekten|Add5~12_combout\,
	datac => \Objekten|Circle1Colour[1][3]~1_combout\,
	datad => \Objekten|LessThan8~6_combout\,
	combout => \Objekten|Circle1Colour[1][3]~2_combout\);

-- Location: LCCOMB_X35_Y28_N20
\Objekten|Circle1Colour[1][3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour[1][3]~4_combout\ = (\Objekten|LessThan9~3_combout\ & (((\Objekten|Circle1Colour[1][3]~3_combout\) # (\Objekten|Circle1Colour[1][3]~2_combout\)))) # (!\Objekten|LessThan9~3_combout\ & (\Objekten|coloursProcess~5_combout\ & 
-- ((\Objekten|Circle1Colour[1][3]~3_combout\) # (\Objekten|Circle1Colour[1][3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan9~3_combout\,
	datab => \Objekten|coloursProcess~5_combout\,
	datac => \Objekten|Circle1Colour[1][3]~3_combout\,
	datad => \Objekten|Circle1Colour[1][3]~2_combout\,
	combout => \Objekten|Circle1Colour[1][3]~4_combout\);

-- Location: LCCOMB_X35_Y28_N16
\Objekten|Circle1Colour~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour~10_combout\ = ((\Objekten|Circle1Colour~9_combout\ & \Objekten|Circle1Colour[1][3]~4_combout\)) # (!\Objekten|coloursProcess~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|Circle1Colour~9_combout\,
	datac => \Objekten|coloursProcess~7_combout\,
	datad => \Objekten|Circle1Colour[1][3]~4_combout\,
	combout => \Objekten|Circle1Colour~10_combout\);

-- Location: FF_X35_Y28_N17
\Objekten|Circle1Colour[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Circle1Colour~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|Circle1Colour[0][3]~q\);

-- Location: LCCOMB_X29_Y36_N2
\Objekten|BovenCirkel|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~1_cout\ = CARRY(!yCord(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yCord(0),
	datad => VCC,
	cout => \Objekten|BovenCirkel|Add1~1_cout\);

-- Location: LCCOMB_X29_Y36_N4
\Objekten|BovenCirkel|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~2_combout\ = (yCord(1) & ((\Objekten|BovenCirkel|Add1~1_cout\) # (GND))) # (!yCord(1) & (!\Objekten|BovenCirkel|Add1~1_cout\))
-- \Objekten|BovenCirkel|Add1~3\ = CARRY((yCord(1)) # (!\Objekten|BovenCirkel|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(1),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add1~1_cout\,
	combout => \Objekten|BovenCirkel|Add1~2_combout\,
	cout => \Objekten|BovenCirkel|Add1~3\);

-- Location: LCCOMB_X29_Y36_N6
\Objekten|BovenCirkel|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~4_combout\ = (yCord(2) & (!\Objekten|BovenCirkel|Add1~3\ & VCC)) # (!yCord(2) & (\Objekten|BovenCirkel|Add1~3\ $ (GND)))
-- \Objekten|BovenCirkel|Add1~5\ = CARRY((!yCord(2) & !\Objekten|BovenCirkel|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(2),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add1~3\,
	combout => \Objekten|BovenCirkel|Add1~4_combout\,
	cout => \Objekten|BovenCirkel|Add1~5\);

-- Location: LCCOMB_X29_Y36_N8
\Objekten|BovenCirkel|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~6_combout\ = (yCord(3) & ((\Objekten|BovenCirkel|Add1~5\) # (GND))) # (!yCord(3) & (!\Objekten|BovenCirkel|Add1~5\))
-- \Objekten|BovenCirkel|Add1~7\ = CARRY((yCord(3)) # (!\Objekten|BovenCirkel|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(3),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add1~5\,
	combout => \Objekten|BovenCirkel|Add1~6_combout\,
	cout => \Objekten|BovenCirkel|Add1~7\);

-- Location: LCCOMB_X29_Y36_N10
\Objekten|BovenCirkel|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~8_combout\ = (yCord(4) & (\Objekten|BovenCirkel|Add1~7\ $ (GND))) # (!yCord(4) & ((GND) # (!\Objekten|BovenCirkel|Add1~7\)))
-- \Objekten|BovenCirkel|Add1~9\ = CARRY((!\Objekten|BovenCirkel|Add1~7\) # (!yCord(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(4),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add1~7\,
	combout => \Objekten|BovenCirkel|Add1~8_combout\,
	cout => \Objekten|BovenCirkel|Add1~9\);

-- Location: LCCOMB_X29_Y36_N12
\Objekten|BovenCirkel|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~10_combout\ = (yCord(5) & ((\Objekten|BovenCirkel|Add1~9\) # (GND))) # (!yCord(5) & (!\Objekten|BovenCirkel|Add1~9\))
-- \Objekten|BovenCirkel|Add1~11\ = CARRY((yCord(5)) # (!\Objekten|BovenCirkel|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(5),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add1~9\,
	combout => \Objekten|BovenCirkel|Add1~10_combout\,
	cout => \Objekten|BovenCirkel|Add1~11\);

-- Location: LCCOMB_X29_Y36_N14
\Objekten|BovenCirkel|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~12_combout\ = (yCord(6) & (\Objekten|BovenCirkel|Add1~11\ $ (GND))) # (!yCord(6) & ((GND) # (!\Objekten|BovenCirkel|Add1~11\)))
-- \Objekten|BovenCirkel|Add1~13\ = CARRY((!\Objekten|BovenCirkel|Add1~11\) # (!yCord(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(6),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add1~11\,
	combout => \Objekten|BovenCirkel|Add1~12_combout\,
	cout => \Objekten|BovenCirkel|Add1~13\);

-- Location: LCCOMB_X29_Y36_N16
\Objekten|BovenCirkel|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~14_combout\ = (yCord(7) & ((\Objekten|BovenCirkel|Add1~13\) # (GND))) # (!yCord(7) & (!\Objekten|BovenCirkel|Add1~13\))
-- \Objekten|BovenCirkel|Add1~15\ = CARRY((yCord(7)) # (!\Objekten|BovenCirkel|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(7),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add1~13\,
	combout => \Objekten|BovenCirkel|Add1~14_combout\,
	cout => \Objekten|BovenCirkel|Add1~15\);

-- Location: LCCOMB_X29_Y36_N18
\Objekten|BovenCirkel|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~16_combout\ = (yCord(8) & (!\Objekten|BovenCirkel|Add1~15\ & VCC)) # (!yCord(8) & (\Objekten|BovenCirkel|Add1~15\ $ (GND)))
-- \Objekten|BovenCirkel|Add1~17\ = CARRY((!yCord(8) & !\Objekten|BovenCirkel|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(8),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add1~15\,
	combout => \Objekten|BovenCirkel|Add1~16_combout\,
	cout => \Objekten|BovenCirkel|Add1~17\);

-- Location: LCCOMB_X29_Y36_N20
\Objekten|BovenCirkel|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~18_combout\ = (yCord(9) & ((\Objekten|BovenCirkel|Add1~17\) # (GND))) # (!yCord(9) & (!\Objekten|BovenCirkel|Add1~17\))
-- \Objekten|BovenCirkel|Add1~19\ = CARRY((yCord(9)) # (!\Objekten|BovenCirkel|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(9),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add1~17\,
	combout => \Objekten|BovenCirkel|Add1~18_combout\,
	cout => \Objekten|BovenCirkel|Add1~19\);

-- Location: LCCOMB_X29_Y36_N22
\Objekten|BovenCirkel|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~20_combout\ = \Objekten|BovenCirkel|Add1~19\ $ (GND)
-- \Objekten|BovenCirkel|Add1~21\ = CARRY(!\Objekten|BovenCirkel|Add1~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add1~19\,
	combout => \Objekten|BovenCirkel|Add1~20_combout\,
	cout => \Objekten|BovenCirkel|Add1~21\);

-- Location: LCCOMB_X29_Y36_N24
\Objekten|BovenCirkel|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add1~22_combout\ = !\Objekten|BovenCirkel|Add1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Objekten|BovenCirkel|Add1~21\,
	combout => \Objekten|BovenCirkel|Add1~22_combout\);

-- Location: DSPMULT_X28_Y36_N0
\Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|BovenCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X28_Y36_N2
\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X29_Y30_N0
\Objekten|BovenCirkel|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~0_combout\ = (xCord(0) & (\Objekten|CircleCoord1.x\(0) $ (VCC))) # (!xCord(0) & ((\Objekten|CircleCoord1.x\(0)) # (GND)))
-- \Objekten|BovenCirkel|Add0~1\ = CARRY((\Objekten|CircleCoord1.x\(0)) # (!xCord(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xCord(0),
	datab => \Objekten|CircleCoord1.x\(0),
	datad => VCC,
	combout => \Objekten|BovenCirkel|Add0~0_combout\,
	cout => \Objekten|BovenCirkel|Add0~1\);

-- Location: LCCOMB_X29_Y30_N2
\Objekten|BovenCirkel|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~2_combout\ = (\Objekten|CircleCoord1.x\(1) & ((xCord(1) & (!\Objekten|BovenCirkel|Add0~1\)) # (!xCord(1) & (\Objekten|BovenCirkel|Add0~1\ & VCC)))) # (!\Objekten|CircleCoord1.x\(1) & ((xCord(1) & ((\Objekten|BovenCirkel|Add0~1\) 
-- # (GND))) # (!xCord(1) & (!\Objekten|BovenCirkel|Add0~1\))))
-- \Objekten|BovenCirkel|Add0~3\ = CARRY((\Objekten|CircleCoord1.x\(1) & (xCord(1) & !\Objekten|BovenCirkel|Add0~1\)) # (!\Objekten|CircleCoord1.x\(1) & ((xCord(1)) # (!\Objekten|BovenCirkel|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(1),
	datab => xCord(1),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~1\,
	combout => \Objekten|BovenCirkel|Add0~2_combout\,
	cout => \Objekten|BovenCirkel|Add0~3\);

-- Location: LCCOMB_X29_Y30_N4
\Objekten|BovenCirkel|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~4_combout\ = ((xCord(2) $ (\Objekten|CircleCoord1.x\(2) $ (!\Objekten|BovenCirkel|Add0~3\)))) # (GND)
-- \Objekten|BovenCirkel|Add0~5\ = CARRY((xCord(2) & (!\Objekten|CircleCoord1.x\(2) & !\Objekten|BovenCirkel|Add0~3\)) # (!xCord(2) & ((!\Objekten|BovenCirkel|Add0~3\) # (!\Objekten|CircleCoord1.x\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(2),
	datab => \Objekten|CircleCoord1.x\(2),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~3\,
	combout => \Objekten|BovenCirkel|Add0~4_combout\,
	cout => \Objekten|BovenCirkel|Add0~5\);

-- Location: LCCOMB_X29_Y30_N6
\Objekten|BovenCirkel|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~6_combout\ = (\Objekten|CircleCoord1.x\(3) & ((xCord(3) & (!\Objekten|BovenCirkel|Add0~5\)) # (!xCord(3) & (\Objekten|BovenCirkel|Add0~5\ & VCC)))) # (!\Objekten|CircleCoord1.x\(3) & ((xCord(3) & ((\Objekten|BovenCirkel|Add0~5\) 
-- # (GND))) # (!xCord(3) & (!\Objekten|BovenCirkel|Add0~5\))))
-- \Objekten|BovenCirkel|Add0~7\ = CARRY((\Objekten|CircleCoord1.x\(3) & (xCord(3) & !\Objekten|BovenCirkel|Add0~5\)) # (!\Objekten|CircleCoord1.x\(3) & ((xCord(3)) # (!\Objekten|BovenCirkel|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(3),
	datab => xCord(3),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~5\,
	combout => \Objekten|BovenCirkel|Add0~6_combout\,
	cout => \Objekten|BovenCirkel|Add0~7\);

-- Location: LCCOMB_X29_Y30_N8
\Objekten|BovenCirkel|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~8_combout\ = ((xCord(4) $ (\Objekten|CircleCoord1.x\(4) $ (\Objekten|BovenCirkel|Add0~7\)))) # (GND)
-- \Objekten|BovenCirkel|Add0~9\ = CARRY((xCord(4) & (\Objekten|CircleCoord1.x\(4) & !\Objekten|BovenCirkel|Add0~7\)) # (!xCord(4) & ((\Objekten|CircleCoord1.x\(4)) # (!\Objekten|BovenCirkel|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(4),
	datab => \Objekten|CircleCoord1.x\(4),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~7\,
	combout => \Objekten|BovenCirkel|Add0~8_combout\,
	cout => \Objekten|BovenCirkel|Add0~9\);

-- Location: LCCOMB_X29_Y30_N10
\Objekten|BovenCirkel|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~10_combout\ = (\Objekten|CircleCoord1.x\(5) & ((xCord(5) & ((\Objekten|BovenCirkel|Add0~9\) # (GND))) # (!xCord(5) & (!\Objekten|BovenCirkel|Add0~9\)))) # (!\Objekten|CircleCoord1.x\(5) & ((xCord(5) & 
-- (!\Objekten|BovenCirkel|Add0~9\)) # (!xCord(5) & (\Objekten|BovenCirkel|Add0~9\ & VCC))))
-- \Objekten|BovenCirkel|Add0~11\ = CARRY((\Objekten|CircleCoord1.x\(5) & ((xCord(5)) # (!\Objekten|BovenCirkel|Add0~9\))) # (!\Objekten|CircleCoord1.x\(5) & (xCord(5) & !\Objekten|BovenCirkel|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(5),
	datab => xCord(5),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~9\,
	combout => \Objekten|BovenCirkel|Add0~10_combout\,
	cout => \Objekten|BovenCirkel|Add0~11\);

-- Location: LCCOMB_X29_Y30_N12
\Objekten|BovenCirkel|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~12_combout\ = ((\Objekten|CircleCoord1.x\(6) $ (xCord(6) $ (!\Objekten|BovenCirkel|Add0~11\)))) # (GND)
-- \Objekten|BovenCirkel|Add0~13\ = CARRY((\Objekten|CircleCoord1.x\(6) & (!xCord(6) & !\Objekten|BovenCirkel|Add0~11\)) # (!\Objekten|CircleCoord1.x\(6) & ((!\Objekten|BovenCirkel|Add0~11\) # (!xCord(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(6),
	datab => xCord(6),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~11\,
	combout => \Objekten|BovenCirkel|Add0~12_combout\,
	cout => \Objekten|BovenCirkel|Add0~13\);

-- Location: LCCOMB_X29_Y30_N14
\Objekten|BovenCirkel|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~14_combout\ = (xCord(7) & ((\Objekten|CircleCoord1.x\(7) & (!\Objekten|BovenCirkel|Add0~13\)) # (!\Objekten|CircleCoord1.x\(7) & ((\Objekten|BovenCirkel|Add0~13\) # (GND))))) # (!xCord(7) & ((\Objekten|CircleCoord1.x\(7) & 
-- (\Objekten|BovenCirkel|Add0~13\ & VCC)) # (!\Objekten|CircleCoord1.x\(7) & (!\Objekten|BovenCirkel|Add0~13\))))
-- \Objekten|BovenCirkel|Add0~15\ = CARRY((xCord(7) & ((!\Objekten|BovenCirkel|Add0~13\) # (!\Objekten|CircleCoord1.x\(7)))) # (!xCord(7) & (!\Objekten|CircleCoord1.x\(7) & !\Objekten|BovenCirkel|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(7),
	datab => \Objekten|CircleCoord1.x\(7),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~13\,
	combout => \Objekten|BovenCirkel|Add0~14_combout\,
	cout => \Objekten|BovenCirkel|Add0~15\);

-- Location: LCCOMB_X29_Y30_N16
\Objekten|BovenCirkel|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~16_combout\ = ((xCord(8) $ (\Objekten|CircleCoord1.x\(8) $ (\Objekten|BovenCirkel|Add0~15\)))) # (GND)
-- \Objekten|BovenCirkel|Add0~17\ = CARRY((xCord(8) & (\Objekten|CircleCoord1.x\(8) & !\Objekten|BovenCirkel|Add0~15\)) # (!xCord(8) & ((\Objekten|CircleCoord1.x\(8)) # (!\Objekten|BovenCirkel|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(8),
	datab => \Objekten|CircleCoord1.x\(8),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~15\,
	combout => \Objekten|BovenCirkel|Add0~16_combout\,
	cout => \Objekten|BovenCirkel|Add0~17\);

-- Location: LCCOMB_X29_Y30_N18
\Objekten|BovenCirkel|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~18_combout\ = (\Objekten|CircleCoord1.x\(9) & ((xCord(9) & (!\Objekten|BovenCirkel|Add0~17\)) # (!xCord(9) & (\Objekten|BovenCirkel|Add0~17\ & VCC)))) # (!\Objekten|CircleCoord1.x\(9) & ((xCord(9) & 
-- ((\Objekten|BovenCirkel|Add0~17\) # (GND))) # (!xCord(9) & (!\Objekten|BovenCirkel|Add0~17\))))
-- \Objekten|BovenCirkel|Add0~19\ = CARRY((\Objekten|CircleCoord1.x\(9) & (xCord(9) & !\Objekten|BovenCirkel|Add0~17\)) # (!\Objekten|CircleCoord1.x\(9) & ((xCord(9)) # (!\Objekten|BovenCirkel|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(9),
	datab => xCord(9),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~17\,
	combout => \Objekten|BovenCirkel|Add0~18_combout\,
	cout => \Objekten|BovenCirkel|Add0~19\);

-- Location: LCCOMB_X29_Y30_N20
\Objekten|BovenCirkel|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~20_combout\ = (\Objekten|CircleCoord1.x\(10) & ((GND) # (!\Objekten|BovenCirkel|Add0~19\))) # (!\Objekten|CircleCoord1.x\(10) & (\Objekten|BovenCirkel|Add0~19\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~21\ = CARRY((\Objekten|CircleCoord1.x\(10)) # (!\Objekten|BovenCirkel|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(10),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~19\,
	combout => \Objekten|BovenCirkel|Add0~20_combout\,
	cout => \Objekten|BovenCirkel|Add0~21\);

-- Location: LCCOMB_X29_Y30_N22
\Objekten|BovenCirkel|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~22_combout\ = (\Objekten|CircleCoord1.x\(11) & (\Objekten|BovenCirkel|Add0~21\ & VCC)) # (!\Objekten|CircleCoord1.x\(11) & (!\Objekten|BovenCirkel|Add0~21\))
-- \Objekten|BovenCirkel|Add0~23\ = CARRY((!\Objekten|CircleCoord1.x\(11) & !\Objekten|BovenCirkel|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(11),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~21\,
	combout => \Objekten|BovenCirkel|Add0~22_combout\,
	cout => \Objekten|BovenCirkel|Add0~23\);

-- Location: LCCOMB_X29_Y30_N24
\Objekten|BovenCirkel|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~24_combout\ = (\Objekten|CircleCoord1.x\(12) & ((GND) # (!\Objekten|BovenCirkel|Add0~23\))) # (!\Objekten|CircleCoord1.x\(12) & (\Objekten|BovenCirkel|Add0~23\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~25\ = CARRY((\Objekten|CircleCoord1.x\(12)) # (!\Objekten|BovenCirkel|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(12),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~23\,
	combout => \Objekten|BovenCirkel|Add0~24_combout\,
	cout => \Objekten|BovenCirkel|Add0~25\);

-- Location: LCCOMB_X29_Y30_N26
\Objekten|BovenCirkel|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~26_combout\ = (\Objekten|CircleCoord1.x\(13) & (\Objekten|BovenCirkel|Add0~25\ & VCC)) # (!\Objekten|CircleCoord1.x\(13) & (!\Objekten|BovenCirkel|Add0~25\))
-- \Objekten|BovenCirkel|Add0~27\ = CARRY((!\Objekten|CircleCoord1.x\(13) & !\Objekten|BovenCirkel|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(13),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~25\,
	combout => \Objekten|BovenCirkel|Add0~26_combout\,
	cout => \Objekten|BovenCirkel|Add0~27\);

-- Location: LCCOMB_X29_Y30_N28
\Objekten|BovenCirkel|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~28_combout\ = (\Objekten|CircleCoord1.x\(14) & ((GND) # (!\Objekten|BovenCirkel|Add0~27\))) # (!\Objekten|CircleCoord1.x\(14) & (\Objekten|BovenCirkel|Add0~27\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~29\ = CARRY((\Objekten|CircleCoord1.x\(14)) # (!\Objekten|BovenCirkel|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(14),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~27\,
	combout => \Objekten|BovenCirkel|Add0~28_combout\,
	cout => \Objekten|BovenCirkel|Add0~29\);

-- Location: LCCOMB_X29_Y30_N30
\Objekten|BovenCirkel|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~30_combout\ = (\Objekten|CircleCoord1.x\(15) & (\Objekten|BovenCirkel|Add0~29\ & VCC)) # (!\Objekten|CircleCoord1.x\(15) & (!\Objekten|BovenCirkel|Add0~29\))
-- \Objekten|BovenCirkel|Add0~31\ = CARRY((!\Objekten|CircleCoord1.x\(15) & !\Objekten|BovenCirkel|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(15),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~29\,
	combout => \Objekten|BovenCirkel|Add0~30_combout\,
	cout => \Objekten|BovenCirkel|Add0~31\);

-- Location: LCCOMB_X29_Y29_N0
\Objekten|BovenCirkel|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~32_combout\ = (\Objekten|CircleCoord1.x\(16) & ((GND) # (!\Objekten|BovenCirkel|Add0~31\))) # (!\Objekten|CircleCoord1.x\(16) & (\Objekten|BovenCirkel|Add0~31\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~33\ = CARRY((\Objekten|CircleCoord1.x\(16)) # (!\Objekten|BovenCirkel|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(16),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~31\,
	combout => \Objekten|BovenCirkel|Add0~32_combout\,
	cout => \Objekten|BovenCirkel|Add0~33\);

-- Location: LCCOMB_X29_Y29_N2
\Objekten|BovenCirkel|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~34_combout\ = (\Objekten|CircleCoord1.x\(17) & (\Objekten|BovenCirkel|Add0~33\ & VCC)) # (!\Objekten|CircleCoord1.x\(17) & (!\Objekten|BovenCirkel|Add0~33\))
-- \Objekten|BovenCirkel|Add0~35\ = CARRY((!\Objekten|CircleCoord1.x\(17) & !\Objekten|BovenCirkel|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(17),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~33\,
	combout => \Objekten|BovenCirkel|Add0~34_combout\,
	cout => \Objekten|BovenCirkel|Add0~35\);

-- Location: DSPMULT_X28_Y35_N0
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X28_Y35_N2
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X27_Y36_N0
\Objekten|BovenCirkel|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~0_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(0) & (yCord(0) $ (VCC))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(0) & (yCord(0) & VCC))
-- \Objekten|BovenCirkel|Add2~1\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(0) & yCord(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(0),
	datab => yCord(0),
	datad => VCC,
	combout => \Objekten|BovenCirkel|Add2~0_combout\,
	cout => \Objekten|BovenCirkel|Add2~1\);

-- Location: LCCOMB_X27_Y36_N2
\Objekten|BovenCirkel|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~2_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(1) & (!\Objekten|BovenCirkel|Add2~1\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(1) & ((\Objekten|BovenCirkel|Add2~1\) # (GND)))
-- \Objekten|BovenCirkel|Add2~3\ = CARRY((!\Objekten|BovenCirkel|Add2~1\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(1),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~1\,
	combout => \Objekten|BovenCirkel|Add2~2_combout\,
	cout => \Objekten|BovenCirkel|Add2~3\);

-- Location: LCCOMB_X27_Y36_N4
\Objekten|BovenCirkel|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~4_combout\ = ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(2) $ (!\Objekten|BovenCirkel|Add2~3\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~5\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(2)) # (!\Objekten|BovenCirkel|Add2~3\))) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\ & (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(2) & !\Objekten|BovenCirkel|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(2),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~3\,
	combout => \Objekten|BovenCirkel|Add2~4_combout\,
	cout => \Objekten|BovenCirkel|Add2~5\);

-- Location: LCCOMB_X27_Y36_N6
\Objekten|BovenCirkel|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~6_combout\ = (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(3) & (\Objekten|BovenCirkel|Add2~5\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(3) & (!\Objekten|BovenCirkel|Add2~5\)))) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(3) & (!\Objekten|BovenCirkel|Add2~5\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(3) & ((\Objekten|BovenCirkel|Add2~5\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~7\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(3) & !\Objekten|BovenCirkel|Add2~5\)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((!\Objekten|BovenCirkel|Add2~5\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(3),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~5\,
	combout => \Objekten|BovenCirkel|Add2~6_combout\,
	cout => \Objekten|BovenCirkel|Add2~7\);

-- Location: LCCOMB_X27_Y36_N8
\Objekten|BovenCirkel|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~8_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(4) $ (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\ $ (!\Objekten|BovenCirkel|Add2~7\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~9\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(4) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\) # (!\Objekten|BovenCirkel|Add2~7\))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(4) & 
-- (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\ & !\Objekten|BovenCirkel|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(4),
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~7\,
	combout => \Objekten|BovenCirkel|Add2~8_combout\,
	cout => \Objekten|BovenCirkel|Add2~9\);

-- Location: LCCOMB_X27_Y36_N10
\Objekten|BovenCirkel|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~10_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(5) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ & (\Objekten|BovenCirkel|Add2~9\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\Objekten|BovenCirkel|Add2~9\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(5) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ & 
-- (!\Objekten|BovenCirkel|Add2~9\)) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ & ((\Objekten|BovenCirkel|Add2~9\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~11\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(5) & (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ & !\Objekten|BovenCirkel|Add2~9\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(5) & 
-- ((!\Objekten|BovenCirkel|Add2~9\) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(5),
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~9\,
	combout => \Objekten|BovenCirkel|Add2~10_combout\,
	cout => \Objekten|BovenCirkel|Add2~11\);

-- Location: LCCOMB_X27_Y36_N12
\Objekten|BovenCirkel|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~12_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(6) $ (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\ $ (!\Objekten|BovenCirkel|Add2~11\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~13\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(6) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\) # (!\Objekten|BovenCirkel|Add2~11\))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(6) 
-- & (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\ & !\Objekten|BovenCirkel|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(6),
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~11\,
	combout => \Objekten|BovenCirkel|Add2~12_combout\,
	cout => \Objekten|BovenCirkel|Add2~13\);

-- Location: LCCOMB_X27_Y36_N14
\Objekten|BovenCirkel|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~14_combout\ = (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(7) & (\Objekten|BovenCirkel|Add2~13\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(7) & (!\Objekten|BovenCirkel|Add2~13\)))) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(7) & (!\Objekten|BovenCirkel|Add2~13\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(7) & ((\Objekten|BovenCirkel|Add2~13\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~15\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(7) & !\Objekten|BovenCirkel|Add2~13\)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((!\Objekten|BovenCirkel|Add2~13\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(7),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~13\,
	combout => \Objekten|BovenCirkel|Add2~14_combout\,
	cout => \Objekten|BovenCirkel|Add2~15\);

-- Location: LCCOMB_X27_Y36_N16
\Objekten|BovenCirkel|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~16_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(8) $ (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\ $ (!\Objekten|BovenCirkel|Add2~15\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~17\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(8) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\) # (!\Objekten|BovenCirkel|Add2~15\))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(8) 
-- & (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\ & !\Objekten|BovenCirkel|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(8),
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~15\,
	combout => \Objekten|BovenCirkel|Add2~16_combout\,
	cout => \Objekten|BovenCirkel|Add2~17\);

-- Location: LCCOMB_X27_Y36_N18
\Objekten|BovenCirkel|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~18_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(9) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ & (\Objekten|BovenCirkel|Add2~17\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\Objekten|BovenCirkel|Add2~17\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(9) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ & 
-- (!\Objekten|BovenCirkel|Add2~17\)) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ & ((\Objekten|BovenCirkel|Add2~17\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~19\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(9) & (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\Objekten|BovenCirkel|Add2~17\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(9) & 
-- ((!\Objekten|BovenCirkel|Add2~17\) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(9),
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~17\,
	combout => \Objekten|BovenCirkel|Add2~18_combout\,
	cout => \Objekten|BovenCirkel|Add2~19\);

-- Location: LCCOMB_X27_Y36_N20
\Objekten|BovenCirkel|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~20_combout\ = ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(10) $ (!\Objekten|BovenCirkel|Add2~19\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~21\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(10)) # (!\Objekten|BovenCirkel|Add2~19\))) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\ & (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(10) & !\Objekten|BovenCirkel|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(10),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~19\,
	combout => \Objekten|BovenCirkel|Add2~20_combout\,
	cout => \Objekten|BovenCirkel|Add2~21\);

-- Location: LCCOMB_X27_Y36_N22
\Objekten|BovenCirkel|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~22_combout\ = (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(11) & (\Objekten|BovenCirkel|Add2~21\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(11) & (!\Objekten|BovenCirkel|Add2~21\)))) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(11) & 
-- (!\Objekten|BovenCirkel|Add2~21\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(11) & ((\Objekten|BovenCirkel|Add2~21\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~23\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(11) & !\Objekten|BovenCirkel|Add2~21\)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((!\Objekten|BovenCirkel|Add2~21\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(11),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~21\,
	combout => \Objekten|BovenCirkel|Add2~22_combout\,
	cout => \Objekten|BovenCirkel|Add2~23\);

-- Location: LCCOMB_X26_Y35_N8
\Objekten|BovenCirkel|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~0_combout\ = (\Objekten|BovenCirkel|Add2~14_combout\ & (\Objekten|BovenCirkel|Add2~16_combout\ & \Objekten|BovenCirkel|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|BovenCirkel|Add2~14_combout\,
	datac => \Objekten|BovenCirkel|Add2~16_combout\,
	datad => \Objekten|BovenCirkel|Add2~12_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y36_N16
\Objekten|BovenCirkel|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~1_combout\ = (\Objekten|BovenCirkel|Add2~6_combout\) # ((\Objekten|BovenCirkel|Add2~4_combout\ & ((\Objekten|BovenCirkel|Add2~0_combout\) # (\Objekten|BovenCirkel|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Add2~0_combout\,
	datab => \Objekten|BovenCirkel|Add2~6_combout\,
	datac => \Objekten|BovenCirkel|Add2~4_combout\,
	datad => \Objekten|BovenCirkel|Add2~2_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y35_N18
\Objekten|BovenCirkel|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~2_combout\ = (\Objekten|BovenCirkel|LessThan0~0_combout\ & ((\Objekten|BovenCirkel|Add2~10_combout\) # ((\Objekten|BovenCirkel|Add2~8_combout\) # (\Objekten|BovenCirkel|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Add2~10_combout\,
	datab => \Objekten|BovenCirkel|Add2~8_combout\,
	datac => \Objekten|BovenCirkel|LessThan0~0_combout\,
	datad => \Objekten|BovenCirkel|LessThan0~1_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y35_N12
\Objekten|BovenCirkel|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~3_combout\ = (\Objekten|BovenCirkel|Add2~22_combout\ & ((\Objekten|BovenCirkel|LessThan0~2_combout\) # ((\Objekten|BovenCirkel|Add2~18_combout\) # (\Objekten|BovenCirkel|Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Add2~22_combout\,
	datab => \Objekten|BovenCirkel|LessThan0~2_combout\,
	datac => \Objekten|BovenCirkel|Add2~18_combout\,
	datad => \Objekten|BovenCirkel|Add2~20_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y29_N4
\Objekten|BovenCirkel|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~36_combout\ = (\Objekten|CircleCoord1.x\(18) & ((GND) # (!\Objekten|BovenCirkel|Add0~35\))) # (!\Objekten|CircleCoord1.x\(18) & (\Objekten|BovenCirkel|Add0~35\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~37\ = CARRY((\Objekten|CircleCoord1.x\(18)) # (!\Objekten|BovenCirkel|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(18),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~35\,
	combout => \Objekten|BovenCirkel|Add0~36_combout\,
	cout => \Objekten|BovenCirkel|Add0~37\);

-- Location: LCCOMB_X29_Y29_N6
\Objekten|BovenCirkel|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~38_combout\ = (\Objekten|CircleCoord1.x\(19) & (\Objekten|BovenCirkel|Add0~37\ & VCC)) # (!\Objekten|CircleCoord1.x\(19) & (!\Objekten|BovenCirkel|Add0~37\))
-- \Objekten|BovenCirkel|Add0~39\ = CARRY((!\Objekten|CircleCoord1.x\(19) & !\Objekten|BovenCirkel|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(19),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~37\,
	combout => \Objekten|BovenCirkel|Add0~38_combout\,
	cout => \Objekten|BovenCirkel|Add0~39\);

-- Location: LCCOMB_X29_Y29_N8
\Objekten|BovenCirkel|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~40_combout\ = (\Objekten|CircleCoord1.x\(20) & ((GND) # (!\Objekten|BovenCirkel|Add0~39\))) # (!\Objekten|CircleCoord1.x\(20) & (\Objekten|BovenCirkel|Add0~39\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~41\ = CARRY((\Objekten|CircleCoord1.x\(20)) # (!\Objekten|BovenCirkel|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(20),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~39\,
	combout => \Objekten|BovenCirkel|Add0~40_combout\,
	cout => \Objekten|BovenCirkel|Add0~41\);

-- Location: LCCOMB_X29_Y29_N10
\Objekten|BovenCirkel|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~42_combout\ = (\Objekten|CircleCoord1.x\(21) & (\Objekten|BovenCirkel|Add0~41\ & VCC)) # (!\Objekten|CircleCoord1.x\(21) & (!\Objekten|BovenCirkel|Add0~41\))
-- \Objekten|BovenCirkel|Add0~43\ = CARRY((!\Objekten|CircleCoord1.x\(21) & !\Objekten|BovenCirkel|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(21),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~41\,
	combout => \Objekten|BovenCirkel|Add0~42_combout\,
	cout => \Objekten|BovenCirkel|Add0~43\);

-- Location: LCCOMB_X29_Y29_N12
\Objekten|BovenCirkel|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~44_combout\ = (\Objekten|CircleCoord1.x\(22) & ((GND) # (!\Objekten|BovenCirkel|Add0~43\))) # (!\Objekten|CircleCoord1.x\(22) & (\Objekten|BovenCirkel|Add0~43\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~45\ = CARRY((\Objekten|CircleCoord1.x\(22)) # (!\Objekten|BovenCirkel|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(22),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~43\,
	combout => \Objekten|BovenCirkel|Add0~44_combout\,
	cout => \Objekten|BovenCirkel|Add0~45\);

-- Location: LCCOMB_X29_Y29_N14
\Objekten|BovenCirkel|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~46_combout\ = (\Objekten|CircleCoord1.x\(23) & (\Objekten|BovenCirkel|Add0~45\ & VCC)) # (!\Objekten|CircleCoord1.x\(23) & (!\Objekten|BovenCirkel|Add0~45\))
-- \Objekten|BovenCirkel|Add0~47\ = CARRY((!\Objekten|CircleCoord1.x\(23) & !\Objekten|BovenCirkel|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(23),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~45\,
	combout => \Objekten|BovenCirkel|Add0~46_combout\,
	cout => \Objekten|BovenCirkel|Add0~47\);

-- Location: LCCOMB_X29_Y29_N16
\Objekten|BovenCirkel|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~48_combout\ = (\Objekten|CircleCoord1.x\(24) & ((GND) # (!\Objekten|BovenCirkel|Add0~47\))) # (!\Objekten|CircleCoord1.x\(24) & (\Objekten|BovenCirkel|Add0~47\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~49\ = CARRY((\Objekten|CircleCoord1.x\(24)) # (!\Objekten|BovenCirkel|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(24),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~47\,
	combout => \Objekten|BovenCirkel|Add0~48_combout\,
	cout => \Objekten|BovenCirkel|Add0~49\);

-- Location: LCCOMB_X29_Y29_N18
\Objekten|BovenCirkel|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~50_combout\ = (\Objekten|CircleCoord1.x\(25) & (\Objekten|BovenCirkel|Add0~49\ & VCC)) # (!\Objekten|CircleCoord1.x\(25) & (!\Objekten|BovenCirkel|Add0~49\))
-- \Objekten|BovenCirkel|Add0~51\ = CARRY((!\Objekten|CircleCoord1.x\(25) & !\Objekten|BovenCirkel|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(25),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~49\,
	combout => \Objekten|BovenCirkel|Add0~50_combout\,
	cout => \Objekten|BovenCirkel|Add0~51\);

-- Location: LCCOMB_X29_Y29_N20
\Objekten|BovenCirkel|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~52_combout\ = (\Objekten|CircleCoord1.x\(26) & ((GND) # (!\Objekten|BovenCirkel|Add0~51\))) # (!\Objekten|CircleCoord1.x\(26) & (\Objekten|BovenCirkel|Add0~51\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~53\ = CARRY((\Objekten|CircleCoord1.x\(26)) # (!\Objekten|BovenCirkel|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(26),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~51\,
	combout => \Objekten|BovenCirkel|Add0~52_combout\,
	cout => \Objekten|BovenCirkel|Add0~53\);

-- Location: LCCOMB_X29_Y29_N22
\Objekten|BovenCirkel|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~54_combout\ = (\Objekten|CircleCoord1.x\(27) & (\Objekten|BovenCirkel|Add0~53\ & VCC)) # (!\Objekten|CircleCoord1.x\(27) & (!\Objekten|BovenCirkel|Add0~53\))
-- \Objekten|BovenCirkel|Add0~55\ = CARRY((!\Objekten|CircleCoord1.x\(27) & !\Objekten|BovenCirkel|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(27),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~53\,
	combout => \Objekten|BovenCirkel|Add0~54_combout\,
	cout => \Objekten|BovenCirkel|Add0~55\);

-- Location: LCCOMB_X29_Y29_N24
\Objekten|BovenCirkel|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~56_combout\ = (\Objekten|CircleCoord1.x\(28) & ((GND) # (!\Objekten|BovenCirkel|Add0~55\))) # (!\Objekten|CircleCoord1.x\(28) & (\Objekten|BovenCirkel|Add0~55\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~57\ = CARRY((\Objekten|CircleCoord1.x\(28)) # (!\Objekten|BovenCirkel|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(28),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~55\,
	combout => \Objekten|BovenCirkel|Add0~56_combout\,
	cout => \Objekten|BovenCirkel|Add0~57\);

-- Location: LCCOMB_X29_Y29_N26
\Objekten|BovenCirkel|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~58_combout\ = (\Objekten|CircleCoord1.x\(29) & (\Objekten|BovenCirkel|Add0~57\ & VCC)) # (!\Objekten|CircleCoord1.x\(29) & (!\Objekten|BovenCirkel|Add0~57\))
-- \Objekten|BovenCirkel|Add0~59\ = CARRY((!\Objekten|CircleCoord1.x\(29) & !\Objekten|BovenCirkel|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(29),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~57\,
	combout => \Objekten|BovenCirkel|Add0~58_combout\,
	cout => \Objekten|BovenCirkel|Add0~59\);

-- Location: LCCOMB_X29_Y29_N28
\Objekten|BovenCirkel|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~60_combout\ = (\Objekten|CircleCoord1.x\(30) & ((GND) # (!\Objekten|BovenCirkel|Add0~59\))) # (!\Objekten|CircleCoord1.x\(30) & (\Objekten|BovenCirkel|Add0~59\ $ (GND)))
-- \Objekten|BovenCirkel|Add0~61\ = CARRY((\Objekten|CircleCoord1.x\(30)) # (!\Objekten|BovenCirkel|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord1.x\(30),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add0~59\,
	combout => \Objekten|BovenCirkel|Add0~60_combout\,
	cout => \Objekten|BovenCirkel|Add0~61\);

-- Location: LCCOMB_X29_Y29_N30
\Objekten|BovenCirkel|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add0~62_combout\ = \Objekten|CircleCoord1.x\(31) $ (!\Objekten|BovenCirkel|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(31),
	cin => \Objekten|BovenCirkel|Add0~61\,
	combout => \Objekten|BovenCirkel|Add0~62_combout\);

-- Location: DSPMULT_X28_Y32_N0
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X28_Y32_N2
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: DSPMULT_X28_Y31_N0
\Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|BovenCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X28_Y31_N2
\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X29_Y31_N4
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~0_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~dataout\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~dataout\ $ (VCC))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~dataout\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~dataout\ & VCC))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~1\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~dataout\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~dataout\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~dataout\,
	datad => VCC,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~0_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~1\);

-- Location: LCCOMB_X29_Y31_N6
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~2_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~1\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~1\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ 
-- & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~1\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~1\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~3\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~1\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~1\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~1\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~2_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~3\);

-- Location: LCCOMB_X29_Y31_N8
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~4_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~3\)))) # 
-- (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~5\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~3\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~3\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~4_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~5\);

-- Location: LCCOMB_X29_Y31_N10
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~6_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~5\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~5\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ 
-- & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~5\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~5\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~7\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~5\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~5\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~5\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~6_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~7\);

-- Location: LCCOMB_X29_Y31_N12
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~8_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~7\)))) # 
-- (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~9\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~7\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~7\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~8_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~9\);

-- Location: LCCOMB_X29_Y31_N14
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~10_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~9\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~9\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ 
-- & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~9\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~9\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~11\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~9\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~9\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~9\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~10_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~11\);

-- Location: LCCOMB_X29_Y31_N16
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~12_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~11\)))) # 
-- (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~13\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~11\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~11\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~12_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~13\);

-- Location: LCCOMB_X29_Y31_N18
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~14_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~13\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~13\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ 
-- & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~13\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~13\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~15\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~13\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~13\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~13\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~14_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~15\);

-- Location: LCCOMB_X29_Y31_N20
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~16_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~15\)))) # 
-- (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~17\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~15\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~15\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~16_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~17\);

-- Location: LCCOMB_X29_Y31_N22
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~18_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~17\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~17\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ 
-- & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~17\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~17\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~19\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~17\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~17\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~17\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~18_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~19\);

-- Location: LCCOMB_X29_Y31_N24
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~20_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~19\)))) # 
-- (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~21\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~19\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~19\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~20_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~21\);

-- Location: LCCOMB_X29_Y31_N26
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~22_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~21\ & VCC)) 
-- # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~21\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~21\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~21\) # 
-- (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~23\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~21\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~21\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~21\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~22_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~23\);

-- Location: LCCOMB_X29_Y31_N28
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~24_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~23\)))) # 
-- (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~25\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~23\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~23\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~24_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~25\);

-- Location: LCCOMB_X29_Y31_N30
\Objekten|BovenCirkel|Mult0|auto_generated|op_2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_2~26_combout\ = \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT13\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~25\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out6~DATAOUT13\,
	datad => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out4~DATAOUT13\,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~25\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~26_combout\);

-- Location: LCCOMB_X29_Y35_N2
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~0_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~0_combout\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~0_combout\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~1\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~0_combout\ & \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~0_combout\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~0_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X29_Y35_N4
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~2_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~2_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~1\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~1\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~2_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~1\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~1\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~3\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~2_combout\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~1\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~2_combout\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~1\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~2_combout\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~1\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~2_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X29_Y35_N6
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~4_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~4_combout\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~5\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~4_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~3\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~4_combout\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~4_combout\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~3\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~4_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X29_Y35_N8
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~6_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~6_combout\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~5\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~6_combout\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~5\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~6_combout\ & 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~5\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~6_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~7\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~6_combout\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~5\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~5\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~5\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~6_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X29_Y35_N10
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~8_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~8_combout\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~9\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~8_combout\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~7\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~8_combout\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~7\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~8_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X29_Y35_N12
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~10_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~10_combout\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~9\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~10_combout\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~9\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~10_combout\ & 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~9\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~10_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~11\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~10_combout\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~9\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~9\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~9\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~10_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X29_Y35_N14
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~12_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~12_combout\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~11\)))) # 
-- (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~13\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~12_combout\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~11\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~12_combout\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~11\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~12_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X29_Y35_N16
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~14_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~14_combout\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~13\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~14_combout\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~13\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~14_combout\ & 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~13\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~14_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~13\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~15\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~14_combout\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~13\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~13\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~14_combout\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~13\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~14_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X29_Y35_N18
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~16_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~16_combout\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~15\)))) # 
-- (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~17\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~16_combout\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~15\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~16_combout\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~16_combout\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~15\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~16_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X29_Y35_N20
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~18_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~18_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~17\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~17\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~18_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ 
-- & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~17\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~17\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~19\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~18_combout\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~17\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~18_combout\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~17\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~18_combout\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~17\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~18_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X29_Y35_N22
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~20_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~20_combout\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~19\)))) # 
-- (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~21\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~20_combout\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~19\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~20_combout\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~20_combout\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~19\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~20_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X29_Y35_N24
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~22_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~22_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~21\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~21\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~22_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ 
-- & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~21\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~21\) # (GND)))))
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~23\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~22_combout\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~21\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~22_combout\ & ((!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~21\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~22_combout\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~21\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~22_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X29_Y35_N26
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~24_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~24_combout\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\ $ (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~23\)))) # 
-- (GND)
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~25\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_2~24_combout\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~23\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_2~24_combout\ & (\Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\ & !\Objekten|BovenCirkel|Mult0|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~24_combout\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~23\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~24_combout\,
	cout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~25\);

-- Location: LCCOMB_X29_Y35_N28
\Objekten|BovenCirkel|Mult0|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Mult0|auto_generated|op_1~26_combout\ = \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT31\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~25\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|op_2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => \Objekten|BovenCirkel|Mult0|auto_generated|op_2~26_combout\,
	cin => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~25\,
	combout => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X27_Y36_N24
\Objekten|BovenCirkel|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~24_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(12) $ (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\ $ (!\Objekten|BovenCirkel|Add2~23\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~25\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(12) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\) # (!\Objekten|BovenCirkel|Add2~23\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(12) & (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\ & !\Objekten|BovenCirkel|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(12),
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~23\,
	combout => \Objekten|BovenCirkel|Add2~24_combout\,
	cout => \Objekten|BovenCirkel|Add2~25\);

-- Location: LCCOMB_X27_Y36_N26
\Objekten|BovenCirkel|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~26_combout\ = (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(13) & (\Objekten|BovenCirkel|Add2~25\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(13) & (!\Objekten|BovenCirkel|Add2~25\)))) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(13) & 
-- (!\Objekten|BovenCirkel|Add2~25\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(13) & ((\Objekten|BovenCirkel|Add2~25\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~27\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(13) & !\Objekten|BovenCirkel|Add2~25\)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((!\Objekten|BovenCirkel|Add2~25\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(13),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~25\,
	combout => \Objekten|BovenCirkel|Add2~26_combout\,
	cout => \Objekten|BovenCirkel|Add2~27\);

-- Location: LCCOMB_X27_Y36_N28
\Objekten|BovenCirkel|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~28_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(14) $ (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\ $ (!\Objekten|BovenCirkel|Add2~27\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~29\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(14) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\) # (!\Objekten|BovenCirkel|Add2~27\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(14) & (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\ & !\Objekten|BovenCirkel|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(14),
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~27\,
	combout => \Objekten|BovenCirkel|Add2~28_combout\,
	cout => \Objekten|BovenCirkel|Add2~29\);

-- Location: LCCOMB_X27_Y36_N30
\Objekten|BovenCirkel|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~30_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(15) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ & (\Objekten|BovenCirkel|Add2~29\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\Objekten|BovenCirkel|Add2~29\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(15) & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\Objekten|BovenCirkel|Add2~29\)) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\Objekten|BovenCirkel|Add2~29\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~31\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(15) & (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ & !\Objekten|BovenCirkel|Add2~29\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(15) 
-- & ((!\Objekten|BovenCirkel|Add2~29\) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(15),
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~29\,
	combout => \Objekten|BovenCirkel|Add2~30_combout\,
	cout => \Objekten|BovenCirkel|Add2~31\);

-- Location: LCCOMB_X27_Y35_N0
\Objekten|BovenCirkel|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~32_combout\ = ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(16) $ (!\Objekten|BovenCirkel|Add2~31\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~33\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(16)) # (!\Objekten|BovenCirkel|Add2~31\))) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\ & (\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(16) & !\Objekten|BovenCirkel|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(16),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~31\,
	combout => \Objekten|BovenCirkel|Add2~32_combout\,
	cout => \Objekten|BovenCirkel|Add2~33\);

-- Location: LCCOMB_X27_Y35_N2
\Objekten|BovenCirkel|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~34_combout\ = (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(17) & (\Objekten|BovenCirkel|Add2~33\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(17) & (!\Objekten|BovenCirkel|Add2~33\)))) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(17) & 
-- (!\Objekten|BovenCirkel|Add2~33\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(17) & ((\Objekten|BovenCirkel|Add2~33\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~35\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(17) & !\Objekten|BovenCirkel|Add2~33\)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((!\Objekten|BovenCirkel|Add2~33\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|w569w\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|w569w\(17),
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~33\,
	combout => \Objekten|BovenCirkel|Add2~34_combout\,
	cout => \Objekten|BovenCirkel|Add2~35\);

-- Location: LCCOMB_X27_Y35_N4
\Objekten|BovenCirkel|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~36_combout\ = ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~0_combout\ $ (!\Objekten|BovenCirkel|Add2~35\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~37\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~0_combout\) # (!\Objekten|BovenCirkel|Add2~35\))) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~0_combout\ & !\Objekten|BovenCirkel|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~35\,
	combout => \Objekten|BovenCirkel|Add2~36_combout\,
	cout => \Objekten|BovenCirkel|Add2~37\);

-- Location: LCCOMB_X27_Y35_N6
\Objekten|BovenCirkel|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~38_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~2_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\Objekten|BovenCirkel|Add2~37\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\Objekten|BovenCirkel|Add2~37\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~2_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\Objekten|BovenCirkel|Add2~37\)) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\Objekten|BovenCirkel|Add2~37\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~39\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~2_combout\ & (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ & !\Objekten|BovenCirkel|Add2~37\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~2_combout\ & ((!\Objekten|BovenCirkel|Add2~37\) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~2_combout\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~37\,
	combout => \Objekten|BovenCirkel|Add2~38_combout\,
	cout => \Objekten|BovenCirkel|Add2~39\);

-- Location: LCCOMB_X27_Y35_N8
\Objekten|BovenCirkel|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~40_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~4_combout\ $ (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\ $ (!\Objekten|BovenCirkel|Add2~39\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~41\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~4_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\) # (!\Objekten|BovenCirkel|Add2~39\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~4_combout\ & (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\Objekten|BovenCirkel|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~4_combout\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~39\,
	combout => \Objekten|BovenCirkel|Add2~40_combout\,
	cout => \Objekten|BovenCirkel|Add2~41\);

-- Location: LCCOMB_X27_Y35_N10
\Objekten|BovenCirkel|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~42_combout\ = (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~6_combout\ & (\Objekten|BovenCirkel|Add2~41\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~6_combout\ & (!\Objekten|BovenCirkel|Add2~41\)))) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~6_combout\ & 
-- (!\Objekten|BovenCirkel|Add2~41\)) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~6_combout\ & ((\Objekten|BovenCirkel|Add2~41\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~43\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~6_combout\ & !\Objekten|BovenCirkel|Add2~41\)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((!\Objekten|BovenCirkel|Add2~41\) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~41\,
	combout => \Objekten|BovenCirkel|Add2~42_combout\,
	cout => \Objekten|BovenCirkel|Add2~43\);

-- Location: LCCOMB_X27_Y35_N12
\Objekten|BovenCirkel|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~44_combout\ = ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~8_combout\ $ (!\Objekten|BovenCirkel|Add2~43\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~45\ = CARRY((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~8_combout\) # (!\Objekten|BovenCirkel|Add2~43\))) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\ & (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~8_combout\ & !\Objekten|BovenCirkel|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datab => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~43\,
	combout => \Objekten|BovenCirkel|Add2~44_combout\,
	cout => \Objekten|BovenCirkel|Add2~45\);

-- Location: LCCOMB_X27_Y35_N14
\Objekten|BovenCirkel|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~46_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~10_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Objekten|BovenCirkel|Add2~45\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Objekten|BovenCirkel|Add2~45\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~10_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\Objekten|BovenCirkel|Add2~45\)) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|BovenCirkel|Add2~45\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~47\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~10_combout\ & (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\Objekten|BovenCirkel|Add2~45\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~10_combout\ & ((!\Objekten|BovenCirkel|Add2~45\) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~10_combout\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~45\,
	combout => \Objekten|BovenCirkel|Add2~46_combout\,
	cout => \Objekten|BovenCirkel|Add2~47\);

-- Location: LCCOMB_X27_Y35_N16
\Objekten|BovenCirkel|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~48_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~12_combout\ $ (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (!\Objekten|BovenCirkel|Add2~47\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~49\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~12_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\) # (!\Objekten|BovenCirkel|Add2~47\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~12_combout\ & (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\Objekten|BovenCirkel|Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~12_combout\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~47\,
	combout => \Objekten|BovenCirkel|Add2~48_combout\,
	cout => \Objekten|BovenCirkel|Add2~49\);

-- Location: LCCOMB_X27_Y35_N18
\Objekten|BovenCirkel|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~50_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~14_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Objekten|BovenCirkel|Add2~49\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Objekten|BovenCirkel|Add2~49\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~14_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\Objekten|BovenCirkel|Add2~49\)) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|BovenCirkel|Add2~49\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~51\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~14_combout\ & (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\Objekten|BovenCirkel|Add2~49\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~14_combout\ & ((!\Objekten|BovenCirkel|Add2~49\) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~14_combout\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~49\,
	combout => \Objekten|BovenCirkel|Add2~50_combout\,
	cout => \Objekten|BovenCirkel|Add2~51\);

-- Location: LCCOMB_X27_Y35_N20
\Objekten|BovenCirkel|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~52_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~16_combout\ $ (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (!\Objekten|BovenCirkel|Add2~51\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~53\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~16_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\) # (!\Objekten|BovenCirkel|Add2~51\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~16_combout\ & (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\Objekten|BovenCirkel|Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~16_combout\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~51\,
	combout => \Objekten|BovenCirkel|Add2~52_combout\,
	cout => \Objekten|BovenCirkel|Add2~53\);

-- Location: LCCOMB_X27_Y35_N22
\Objekten|BovenCirkel|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~54_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~18_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Objekten|BovenCirkel|Add2~53\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Objekten|BovenCirkel|Add2~53\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~18_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\Objekten|BovenCirkel|Add2~53\)) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|BovenCirkel|Add2~53\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~55\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~18_combout\ & (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\Objekten|BovenCirkel|Add2~53\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~18_combout\ & ((!\Objekten|BovenCirkel|Add2~53\) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~18_combout\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~53\,
	combout => \Objekten|BovenCirkel|Add2~54_combout\,
	cout => \Objekten|BovenCirkel|Add2~55\);

-- Location: LCCOMB_X27_Y35_N24
\Objekten|BovenCirkel|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~56_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~20_combout\ $ (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (!\Objekten|BovenCirkel|Add2~55\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~57\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~20_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\) # (!\Objekten|BovenCirkel|Add2~55\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~20_combout\ & (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\Objekten|BovenCirkel|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~20_combout\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~55\,
	combout => \Objekten|BovenCirkel|Add2~56_combout\,
	cout => \Objekten|BovenCirkel|Add2~57\);

-- Location: LCCOMB_X27_Y35_N26
\Objekten|BovenCirkel|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~58_combout\ = (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~22_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Objekten|BovenCirkel|Add2~57\ & VCC)) # 
-- (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Objekten|BovenCirkel|Add2~57\)))) # (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~22_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\Objekten|BovenCirkel|Add2~57\)) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|BovenCirkel|Add2~57\) # (GND)))))
-- \Objekten|BovenCirkel|Add2~59\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~22_combout\ & (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\Objekten|BovenCirkel|Add2~57\)) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~22_combout\ & ((!\Objekten|BovenCirkel|Add2~57\) # (!\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~22_combout\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~57\,
	combout => \Objekten|BovenCirkel|Add2~58_combout\,
	cout => \Objekten|BovenCirkel|Add2~59\);

-- Location: LCCOMB_X27_Y35_N28
\Objekten|BovenCirkel|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~60_combout\ = ((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~24_combout\ $ (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (!\Objekten|BovenCirkel|Add2~59\)))) # (GND)
-- \Objekten|BovenCirkel|Add2~61\ = CARRY((\Objekten|BovenCirkel|Mult0|auto_generated|op_1~24_combout\ & ((\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\) # (!\Objekten|BovenCirkel|Add2~59\))) # 
-- (!\Objekten|BovenCirkel|Mult0|auto_generated|op_1~24_combout\ & (\Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\Objekten|BovenCirkel|Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~24_combout\,
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Objekten|BovenCirkel|Add2~59\,
	combout => \Objekten|BovenCirkel|Add2~60_combout\,
	cout => \Objekten|BovenCirkel|Add2~61\);

-- Location: LCCOMB_X27_Y35_N30
\Objekten|BovenCirkel|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|Add2~62_combout\ = \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\Objekten|BovenCirkel|Add2~61\ $ (\Objekten|BovenCirkel|Mult0|auto_generated|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|BovenCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => \Objekten|BovenCirkel|Mult0|auto_generated|op_1~26_combout\,
	cin => \Objekten|BovenCirkel|Add2~61\,
	combout => \Objekten|BovenCirkel|Add2~62_combout\);

-- Location: LCCOMB_X26_Y35_N10
\Objekten|BovenCirkel|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~7_combout\ = (\Objekten|BovenCirkel|Add2~46_combout\) # ((\Objekten|BovenCirkel|Add2~42_combout\) # ((\Objekten|BovenCirkel|Add2~44_combout\) # (\Objekten|BovenCirkel|Add2~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Add2~46_combout\,
	datab => \Objekten|BovenCirkel|Add2~42_combout\,
	datac => \Objekten|BovenCirkel|Add2~44_combout\,
	datad => \Objekten|BovenCirkel|Add2~40_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~7_combout\);

-- Location: LCCOMB_X26_Y35_N28
\Objekten|BovenCirkel|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~8_combout\ = (\Objekten|BovenCirkel|Add2~54_combout\) # ((\Objekten|BovenCirkel|Add2~48_combout\) # ((\Objekten|BovenCirkel|Add2~52_combout\) # (\Objekten|BovenCirkel|Add2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Add2~54_combout\,
	datab => \Objekten|BovenCirkel|Add2~48_combout\,
	datac => \Objekten|BovenCirkel|Add2~52_combout\,
	datad => \Objekten|BovenCirkel|Add2~50_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~8_combout\);

-- Location: LCCOMB_X26_Y35_N4
\Objekten|BovenCirkel|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~6_combout\ = (\Objekten|BovenCirkel|Add2~36_combout\) # ((\Objekten|BovenCirkel|Add2~34_combout\) # ((\Objekten|BovenCirkel|Add2~32_combout\) # (\Objekten|BovenCirkel|Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Add2~36_combout\,
	datab => \Objekten|BovenCirkel|Add2~34_combout\,
	datac => \Objekten|BovenCirkel|Add2~32_combout\,
	datad => \Objekten|BovenCirkel|Add2~38_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~6_combout\);

-- Location: LCCOMB_X29_Y36_N28
\Objekten|BovenCirkel|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~5_combout\ = (\Objekten|BovenCirkel|Add2~30_combout\) # ((\Objekten|BovenCirkel|Add2~26_combout\) # ((\Objekten|BovenCirkel|Add2~24_combout\) # (\Objekten|BovenCirkel|Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|Add2~30_combout\,
	datab => \Objekten|BovenCirkel|Add2~26_combout\,
	datac => \Objekten|BovenCirkel|Add2~24_combout\,
	datad => \Objekten|BovenCirkel|Add2~28_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~5_combout\);

-- Location: LCCOMB_X26_Y35_N22
\Objekten|BovenCirkel|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~9_combout\ = (\Objekten|BovenCirkel|LessThan0~7_combout\) # ((\Objekten|BovenCirkel|LessThan0~8_combout\) # ((\Objekten|BovenCirkel|LessThan0~6_combout\) # (\Objekten|BovenCirkel|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|LessThan0~7_combout\,
	datab => \Objekten|BovenCirkel|LessThan0~8_combout\,
	datac => \Objekten|BovenCirkel|LessThan0~6_combout\,
	datad => \Objekten|BovenCirkel|LessThan0~5_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~9_combout\);

-- Location: LCCOMB_X26_Y35_N2
\Objekten|BovenCirkel|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~4_combout\ = (\Objekten|BovenCirkel|Add2~60_combout\) # ((\Objekten|BovenCirkel|Add2~56_combout\) # (\Objekten|BovenCirkel|Add2~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|BovenCirkel|Add2~60_combout\,
	datac => \Objekten|BovenCirkel|Add2~56_combout\,
	datad => \Objekten|BovenCirkel|Add2~58_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~4_combout\);

-- Location: LCCOMB_X26_Y35_N24
\Objekten|BovenCirkel|LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|BovenCirkel|LessThan0~10_combout\ = (!\Objekten|BovenCirkel|Add2~62_combout\ & ((\Objekten|BovenCirkel|LessThan0~3_combout\) # ((\Objekten|BovenCirkel|LessThan0~9_combout\) # (\Objekten|BovenCirkel|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|LessThan0~3_combout\,
	datab => \Objekten|BovenCirkel|Add2~62_combout\,
	datac => \Objekten|BovenCirkel|LessThan0~9_combout\,
	datad => \Objekten|BovenCirkel|LessThan0~4_combout\,
	combout => \Objekten|BovenCirkel|LessThan0~10_combout\);

-- Location: LCCOMB_X45_Y31_N12
\Objekten|CircleToRight2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CircleToRight2~0_combout\ = !\Objekten|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Objekten|Add2~0_combout\,
	combout => \Objekten|CircleToRight2~0_combout\);

-- Location: FF_X45_Y31_N13
\Objekten|CircleToRight2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|CircleToRight2~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleToRight2~q\);

-- Location: LCCOMB_X45_Y31_N10
\Objekten|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~1_combout\ = (\Objekten|CircleCoord1.x\(0)) # (\Objekten|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Objekten|CircleCoord1.x\(0),
	datad => \Objekten|Add2~0_combout\,
	combout => \Objekten|Add2~1_combout\);

-- Location: LCCOMB_X45_Y31_N8
\Objekten|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~2_combout\ = (\Objekten|CircleCoord1.x\(0) & \Objekten|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Objekten|CircleCoord1.x\(0),
	datad => \Objekten|Add2~0_combout\,
	combout => \Objekten|Add2~2_combout\);

-- Location: LCCOMB_X43_Y31_N0
\Objekten|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~4_cout\ = CARRY((\Objekten|Add2~2_combout\ & \Objekten|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~2_combout\,
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cout => \Objekten|Add2~4_cout\);

-- Location: LCCOMB_X43_Y31_N2
\Objekten|Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~5_combout\ = (\Objekten|Add2~1_combout\ & ((\Objekten|CircleCoord2.x\(1) & (\Objekten|Add2~4_cout\ & VCC)) # (!\Objekten|CircleCoord2.x\(1) & (!\Objekten|Add2~4_cout\)))) # (!\Objekten|Add2~1_combout\ & ((\Objekten|CircleCoord2.x\(1) & 
-- (!\Objekten|Add2~4_cout\)) # (!\Objekten|CircleCoord2.x\(1) & ((\Objekten|Add2~4_cout\) # (GND)))))
-- \Objekten|Add2~6\ = CARRY((\Objekten|Add2~1_combout\ & (!\Objekten|CircleCoord2.x\(1) & !\Objekten|Add2~4_cout\)) # (!\Objekten|Add2~1_combout\ & ((!\Objekten|Add2~4_cout\) # (!\Objekten|CircleCoord2.x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~1_combout\,
	datab => \Objekten|CircleCoord2.x\(1),
	datad => VCC,
	cin => \Objekten|Add2~4_cout\,
	combout => \Objekten|Add2~5_combout\,
	cout => \Objekten|Add2~6\);

-- Location: FF_X43_Y31_N3
\Objekten|CircleCoord2.x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~5_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(1));

-- Location: LCCOMB_X43_Y31_N4
\Objekten|Add2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~7_combout\ = ((\Objekten|Add2~0_combout\ $ (\Objekten|CircleCoord2.x\(2) $ (\Objekten|Add2~6\)))) # (GND)
-- \Objekten|Add2~8\ = CARRY((\Objekten|Add2~0_combout\ & ((!\Objekten|Add2~6\) # (!\Objekten|CircleCoord2.x\(2)))) # (!\Objekten|Add2~0_combout\ & (!\Objekten|CircleCoord2.x\(2) & !\Objekten|Add2~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(2),
	datad => VCC,
	cin => \Objekten|Add2~6\,
	combout => \Objekten|Add2~7_combout\,
	cout => \Objekten|Add2~8\);

-- Location: LCCOMB_X41_Y31_N4
\Objekten|CircleCoord2.x[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CircleCoord2.x[2]~2_combout\ = !\Objekten|Add2~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Objekten|Add2~7_combout\,
	combout => \Objekten|CircleCoord2.x[2]~2_combout\);

-- Location: FF_X42_Y31_N29
\Objekten|CircleCoord2.x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	asdata => \Objekten|CircleCoord2.x[2]~2_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(2));

-- Location: LCCOMB_X43_Y31_N6
\Objekten|Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~9_combout\ = (\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(3) & (!\Objekten|Add2~8\)) # (!\Objekten|CircleCoord2.x\(3) & (\Objekten|Add2~8\ & VCC)))) # (!\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(3) & 
-- ((\Objekten|Add2~8\) # (GND))) # (!\Objekten|CircleCoord2.x\(3) & (!\Objekten|Add2~8\))))
-- \Objekten|Add2~10\ = CARRY((\Objekten|Add2~0_combout\ & (\Objekten|CircleCoord2.x\(3) & !\Objekten|Add2~8\)) # (!\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(3)) # (!\Objekten|Add2~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(3),
	datad => VCC,
	cin => \Objekten|Add2~8\,
	combout => \Objekten|Add2~9_combout\,
	cout => \Objekten|Add2~10\);

-- Location: LCCOMB_X41_Y31_N6
\Objekten|CircleCoord2.x[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CircleCoord2.x[3]~1_combout\ = !\Objekten|Add2~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Objekten|Add2~9_combout\,
	combout => \Objekten|CircleCoord2.x[3]~1_combout\);

-- Location: FF_X42_Y31_N31
\Objekten|CircleCoord2.x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	asdata => \Objekten|CircleCoord2.x[3]~1_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(3));

-- Location: LCCOMB_X43_Y31_N8
\Objekten|Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~11_combout\ = ((\Objekten|Add2~0_combout\ $ (\Objekten|CircleCoord2.x\(4) $ (\Objekten|Add2~10\)))) # (GND)
-- \Objekten|Add2~12\ = CARRY((\Objekten|Add2~0_combout\ & ((!\Objekten|Add2~10\) # (!\Objekten|CircleCoord2.x\(4)))) # (!\Objekten|Add2~0_combout\ & (!\Objekten|CircleCoord2.x\(4) & !\Objekten|Add2~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(4),
	datad => VCC,
	cin => \Objekten|Add2~10\,
	combout => \Objekten|Add2~11_combout\,
	cout => \Objekten|Add2~12\);

-- Location: LCCOMB_X43_Y32_N24
\Objekten|CircleCoord2.x[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CircleCoord2.x[4]~0_combout\ = !\Objekten|Add2~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Objekten|Add2~11_combout\,
	combout => \Objekten|CircleCoord2.x[4]~0_combout\);

-- Location: FF_X43_Y31_N5
\Objekten|CircleCoord2.x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	asdata => \Objekten|CircleCoord2.x[4]~0_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(4));

-- Location: LCCOMB_X43_Y31_N10
\Objekten|Add2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~13_combout\ = (\Objekten|CircleCoord2.x\(5) & ((\Objekten|Add2~0_combout\ & (\Objekten|Add2~12\ & VCC)) # (!\Objekten|Add2~0_combout\ & (!\Objekten|Add2~12\)))) # (!\Objekten|CircleCoord2.x\(5) & ((\Objekten|Add2~0_combout\ & 
-- (!\Objekten|Add2~12\)) # (!\Objekten|Add2~0_combout\ & ((\Objekten|Add2~12\) # (GND)))))
-- \Objekten|Add2~14\ = CARRY((\Objekten|CircleCoord2.x\(5) & (!\Objekten|Add2~0_combout\ & !\Objekten|Add2~12\)) # (!\Objekten|CircleCoord2.x\(5) & ((!\Objekten|Add2~12\) # (!\Objekten|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(5),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~12\,
	combout => \Objekten|Add2~13_combout\,
	cout => \Objekten|Add2~14\);

-- Location: FF_X43_Y31_N11
\Objekten|CircleCoord2.x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~13_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(5));

-- Location: LCCOMB_X43_Y31_N12
\Objekten|Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~15_combout\ = ((\Objekten|CircleCoord2.x\(6) $ (\Objekten|Add2~0_combout\ $ (!\Objekten|Add2~14\)))) # (GND)
-- \Objekten|Add2~16\ = CARRY((\Objekten|CircleCoord2.x\(6) & ((\Objekten|Add2~0_combout\) # (!\Objekten|Add2~14\))) # (!\Objekten|CircleCoord2.x\(6) & (\Objekten|Add2~0_combout\ & !\Objekten|Add2~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(6),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~14\,
	combout => \Objekten|Add2~15_combout\,
	cout => \Objekten|Add2~16\);

-- Location: FF_X43_Y31_N13
\Objekten|CircleCoord2.x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~15_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(6));

-- Location: LCCOMB_X43_Y31_N14
\Objekten|Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~17_combout\ = (\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(7) & (\Objekten|Add2~16\ & VCC)) # (!\Objekten|CircleCoord2.x\(7) & (!\Objekten|Add2~16\)))) # (!\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(7) & 
-- (!\Objekten|Add2~16\)) # (!\Objekten|CircleCoord2.x\(7) & ((\Objekten|Add2~16\) # (GND)))))
-- \Objekten|Add2~18\ = CARRY((\Objekten|Add2~0_combout\ & (!\Objekten|CircleCoord2.x\(7) & !\Objekten|Add2~16\)) # (!\Objekten|Add2~0_combout\ & ((!\Objekten|Add2~16\) # (!\Objekten|CircleCoord2.x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(7),
	datad => VCC,
	cin => \Objekten|Add2~16\,
	combout => \Objekten|Add2~17_combout\,
	cout => \Objekten|Add2~18\);

-- Location: FF_X43_Y31_N15
\Objekten|CircleCoord2.x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~17_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(7));

-- Location: LCCOMB_X43_Y31_N16
\Objekten|Add2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~19_combout\ = ((\Objekten|Add2~0_combout\ $ (\Objekten|CircleCoord2.x\(8) $ (!\Objekten|Add2~18\)))) # (GND)
-- \Objekten|Add2~20\ = CARRY((\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(8)) # (!\Objekten|Add2~18\))) # (!\Objekten|Add2~0_combout\ & (\Objekten|CircleCoord2.x\(8) & !\Objekten|Add2~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(8),
	datad => VCC,
	cin => \Objekten|Add2~18\,
	combout => \Objekten|Add2~19_combout\,
	cout => \Objekten|Add2~20\);

-- Location: FF_X43_Y31_N17
\Objekten|CircleCoord2.x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~19_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(8));

-- Location: LCCOMB_X43_Y31_N18
\Objekten|Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~21_combout\ = (\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(9) & (!\Objekten|Add2~20\)) # (!\Objekten|CircleCoord2.x\(9) & (\Objekten|Add2~20\ & VCC)))) # (!\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(9) & 
-- ((\Objekten|Add2~20\) # (GND))) # (!\Objekten|CircleCoord2.x\(9) & (!\Objekten|Add2~20\))))
-- \Objekten|Add2~22\ = CARRY((\Objekten|Add2~0_combout\ & (\Objekten|CircleCoord2.x\(9) & !\Objekten|Add2~20\)) # (!\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(9)) # (!\Objekten|Add2~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(9),
	datad => VCC,
	cin => \Objekten|Add2~20\,
	combout => \Objekten|Add2~21_combout\,
	cout => \Objekten|Add2~22\);

-- Location: LCCOMB_X45_Y31_N30
\Objekten|CircleCoord2.x[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CircleCoord2.x[9]~3_combout\ = !\Objekten|Add2~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Objekten|Add2~21_combout\,
	combout => \Objekten|CircleCoord2.x[9]~3_combout\);

-- Location: FF_X44_Y31_N25
\Objekten|CircleCoord2.x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	asdata => \Objekten|CircleCoord2.x[9]~3_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(9));

-- Location: LCCOMB_X43_Y31_N20
\Objekten|Add2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~23_combout\ = ((\Objekten|Add2~0_combout\ $ (\Objekten|CircleCoord2.x\(10) $ (!\Objekten|Add2~22\)))) # (GND)
-- \Objekten|Add2~24\ = CARRY((\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(10)) # (!\Objekten|Add2~22\))) # (!\Objekten|Add2~0_combout\ & (\Objekten|CircleCoord2.x\(10) & !\Objekten|Add2~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(10),
	datad => VCC,
	cin => \Objekten|Add2~22\,
	combout => \Objekten|Add2~23_combout\,
	cout => \Objekten|Add2~24\);

-- Location: FF_X43_Y31_N21
\Objekten|CircleCoord2.x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~23_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(10));

-- Location: LCCOMB_X43_Y31_N22
\Objekten|Add2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~25_combout\ = (\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(11) & (\Objekten|Add2~24\ & VCC)) # (!\Objekten|CircleCoord2.x\(11) & (!\Objekten|Add2~24\)))) # (!\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(11) & 
-- (!\Objekten|Add2~24\)) # (!\Objekten|CircleCoord2.x\(11) & ((\Objekten|Add2~24\) # (GND)))))
-- \Objekten|Add2~26\ = CARRY((\Objekten|Add2~0_combout\ & (!\Objekten|CircleCoord2.x\(11) & !\Objekten|Add2~24\)) # (!\Objekten|Add2~0_combout\ & ((!\Objekten|Add2~24\) # (!\Objekten|CircleCoord2.x\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(11),
	datad => VCC,
	cin => \Objekten|Add2~24\,
	combout => \Objekten|Add2~25_combout\,
	cout => \Objekten|Add2~26\);

-- Location: FF_X43_Y31_N23
\Objekten|CircleCoord2.x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~25_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(11));

-- Location: LCCOMB_X43_Y31_N24
\Objekten|Add2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~27_combout\ = ((\Objekten|CircleCoord2.x\(12) $ (\Objekten|Add2~0_combout\ $ (!\Objekten|Add2~26\)))) # (GND)
-- \Objekten|Add2~28\ = CARRY((\Objekten|CircleCoord2.x\(12) & ((\Objekten|Add2~0_combout\) # (!\Objekten|Add2~26\))) # (!\Objekten|CircleCoord2.x\(12) & (\Objekten|Add2~0_combout\ & !\Objekten|Add2~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(12),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~26\,
	combout => \Objekten|Add2~27_combout\,
	cout => \Objekten|Add2~28\);

-- Location: FF_X43_Y31_N25
\Objekten|CircleCoord2.x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~27_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(12));

-- Location: LCCOMB_X43_Y31_N26
\Objekten|Add2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~29_combout\ = (\Objekten|CircleCoord2.x\(13) & ((\Objekten|Add2~0_combout\ & (\Objekten|Add2~28\ & VCC)) # (!\Objekten|Add2~0_combout\ & (!\Objekten|Add2~28\)))) # (!\Objekten|CircleCoord2.x\(13) & ((\Objekten|Add2~0_combout\ & 
-- (!\Objekten|Add2~28\)) # (!\Objekten|Add2~0_combout\ & ((\Objekten|Add2~28\) # (GND)))))
-- \Objekten|Add2~30\ = CARRY((\Objekten|CircleCoord2.x\(13) & (!\Objekten|Add2~0_combout\ & !\Objekten|Add2~28\)) # (!\Objekten|CircleCoord2.x\(13) & ((!\Objekten|Add2~28\) # (!\Objekten|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(13),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~28\,
	combout => \Objekten|Add2~29_combout\,
	cout => \Objekten|Add2~30\);

-- Location: FF_X43_Y31_N27
\Objekten|CircleCoord2.x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~29_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(13));

-- Location: LCCOMB_X43_Y31_N28
\Objekten|Add2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~31_combout\ = ((\Objekten|CircleCoord2.x\(14) $ (\Objekten|Add2~0_combout\ $ (!\Objekten|Add2~30\)))) # (GND)
-- \Objekten|Add2~32\ = CARRY((\Objekten|CircleCoord2.x\(14) & ((\Objekten|Add2~0_combout\) # (!\Objekten|Add2~30\))) # (!\Objekten|CircleCoord2.x\(14) & (\Objekten|Add2~0_combout\ & !\Objekten|Add2~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(14),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~30\,
	combout => \Objekten|Add2~31_combout\,
	cout => \Objekten|Add2~32\);

-- Location: FF_X43_Y31_N29
\Objekten|CircleCoord2.x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~31_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(14));

-- Location: LCCOMB_X43_Y31_N30
\Objekten|Add2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~33_combout\ = (\Objekten|CircleCoord2.x\(15) & ((\Objekten|Add2~0_combout\ & (\Objekten|Add2~32\ & VCC)) # (!\Objekten|Add2~0_combout\ & (!\Objekten|Add2~32\)))) # (!\Objekten|CircleCoord2.x\(15) & ((\Objekten|Add2~0_combout\ & 
-- (!\Objekten|Add2~32\)) # (!\Objekten|Add2~0_combout\ & ((\Objekten|Add2~32\) # (GND)))))
-- \Objekten|Add2~34\ = CARRY((\Objekten|CircleCoord2.x\(15) & (!\Objekten|Add2~0_combout\ & !\Objekten|Add2~32\)) # (!\Objekten|CircleCoord2.x\(15) & ((!\Objekten|Add2~32\) # (!\Objekten|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(15),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~32\,
	combout => \Objekten|Add2~33_combout\,
	cout => \Objekten|Add2~34\);

-- Location: FF_X43_Y31_N31
\Objekten|CircleCoord2.x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~33_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(15));

-- Location: LCCOMB_X43_Y30_N0
\Objekten|Add2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~35_combout\ = ((\Objekten|Add2~0_combout\ $ (\Objekten|CircleCoord2.x\(16) $ (!\Objekten|Add2~34\)))) # (GND)
-- \Objekten|Add2~36\ = CARRY((\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(16)) # (!\Objekten|Add2~34\))) # (!\Objekten|Add2~0_combout\ & (\Objekten|CircleCoord2.x\(16) & !\Objekten|Add2~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(16),
	datad => VCC,
	cin => \Objekten|Add2~34\,
	combout => \Objekten|Add2~35_combout\,
	cout => \Objekten|Add2~36\);

-- Location: FF_X43_Y30_N1
\Objekten|CircleCoord2.x[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~35_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(16));

-- Location: LCCOMB_X43_Y30_N2
\Objekten|Add2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~37_combout\ = (\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(17) & (\Objekten|Add2~36\ & VCC)) # (!\Objekten|CircleCoord2.x\(17) & (!\Objekten|Add2~36\)))) # (!\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(17) & 
-- (!\Objekten|Add2~36\)) # (!\Objekten|CircleCoord2.x\(17) & ((\Objekten|Add2~36\) # (GND)))))
-- \Objekten|Add2~38\ = CARRY((\Objekten|Add2~0_combout\ & (!\Objekten|CircleCoord2.x\(17) & !\Objekten|Add2~36\)) # (!\Objekten|Add2~0_combout\ & ((!\Objekten|Add2~36\) # (!\Objekten|CircleCoord2.x\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(17),
	datad => VCC,
	cin => \Objekten|Add2~36\,
	combout => \Objekten|Add2~37_combout\,
	cout => \Objekten|Add2~38\);

-- Location: FF_X43_Y30_N3
\Objekten|CircleCoord2.x[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~37_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(17));

-- Location: LCCOMB_X43_Y30_N4
\Objekten|Add2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~39_combout\ = ((\Objekten|Add2~0_combout\ $ (\Objekten|CircleCoord2.x\(18) $ (!\Objekten|Add2~38\)))) # (GND)
-- \Objekten|Add2~40\ = CARRY((\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(18)) # (!\Objekten|Add2~38\))) # (!\Objekten|Add2~0_combout\ & (\Objekten|CircleCoord2.x\(18) & !\Objekten|Add2~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(18),
	datad => VCC,
	cin => \Objekten|Add2~38\,
	combout => \Objekten|Add2~39_combout\,
	cout => \Objekten|Add2~40\);

-- Location: FF_X43_Y30_N5
\Objekten|CircleCoord2.x[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~39_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(18));

-- Location: LCCOMB_X45_Y31_N18
\Objekten|CoordinateInRectangle~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~5_combout\ = (!\Objekten|CircleCoord2.x\(15) & (!\Objekten|CircleCoord2.x\(17) & (!\Objekten|CircleCoord2.x\(18) & !\Objekten|CircleCoord2.x\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(15),
	datab => \Objekten|CircleCoord2.x\(17),
	datac => \Objekten|CircleCoord2.x\(18),
	datad => \Objekten|CircleCoord2.x\(16),
	combout => \Objekten|CoordinateInRectangle~5_combout\);

-- Location: LCCOMB_X45_Y31_N28
\Objekten|CoordinateInRectangle~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~6_combout\ = (!\Objekten|CircleCoord2.x\(13) & (!\Objekten|CircleCoord2.x\(11) & (!\Objekten|CircleCoord2.x\(14) & !\Objekten|CircleCoord2.x\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(13),
	datab => \Objekten|CircleCoord2.x\(11),
	datac => \Objekten|CircleCoord2.x\(14),
	datad => \Objekten|CircleCoord2.x\(12),
	combout => \Objekten|CoordinateInRectangle~6_combout\);

-- Location: LCCOMB_X45_Y31_N22
\Objekten|CoordinateInRectangle~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~7_combout\ = (!\Objekten|CircleCoord2.x\(10) & \Objekten|CoordinateInRectangle~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Objekten|CircleCoord2.x\(10),
	datad => \Objekten|CoordinateInRectangle~6_combout\,
	combout => \Objekten|CoordinateInRectangle~7_combout\);

-- Location: LCCOMB_X45_Y31_N26
\Objekten|CoordinateInRectangle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~0_combout\ = (!\Objekten|CircleCoord2.x\(31) & ((\Objekten|CircleCoord2.x\(9)) # ((!\Objekten|CircleCoord2.x\(8) & !\Objekten|CircleCoord2.x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(8),
	datab => \Objekten|CircleCoord2.x\(7),
	datac => \Objekten|CircleCoord2.x\(31),
	datad => \Objekten|CircleCoord2.x\(9),
	combout => \Objekten|CoordinateInRectangle~0_combout\);

-- Location: LCCOMB_X43_Y30_N6
\Objekten|Add2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~41_combout\ = (\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(19) & (\Objekten|Add2~40\ & VCC)) # (!\Objekten|CircleCoord2.x\(19) & (!\Objekten|Add2~40\)))) # (!\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(19) & 
-- (!\Objekten|Add2~40\)) # (!\Objekten|CircleCoord2.x\(19) & ((\Objekten|Add2~40\) # (GND)))))
-- \Objekten|Add2~42\ = CARRY((\Objekten|Add2~0_combout\ & (!\Objekten|CircleCoord2.x\(19) & !\Objekten|Add2~40\)) # (!\Objekten|Add2~0_combout\ & ((!\Objekten|Add2~40\) # (!\Objekten|CircleCoord2.x\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(19),
	datad => VCC,
	cin => \Objekten|Add2~40\,
	combout => \Objekten|Add2~41_combout\,
	cout => \Objekten|Add2~42\);

-- Location: FF_X43_Y30_N7
\Objekten|CircleCoord2.x[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~41_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(19));

-- Location: LCCOMB_X43_Y30_N8
\Objekten|Add2~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~43_combout\ = ((\Objekten|Add2~0_combout\ $ (\Objekten|CircleCoord2.x\(20) $ (!\Objekten|Add2~42\)))) # (GND)
-- \Objekten|Add2~44\ = CARRY((\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(20)) # (!\Objekten|Add2~42\))) # (!\Objekten|Add2~0_combout\ & (\Objekten|CircleCoord2.x\(20) & !\Objekten|Add2~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(20),
	datad => VCC,
	cin => \Objekten|Add2~42\,
	combout => \Objekten|Add2~43_combout\,
	cout => \Objekten|Add2~44\);

-- Location: FF_X43_Y30_N9
\Objekten|CircleCoord2.x[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~43_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(20));

-- Location: LCCOMB_X43_Y30_N10
\Objekten|Add2~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~45_combout\ = (\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(21) & (\Objekten|Add2~44\ & VCC)) # (!\Objekten|CircleCoord2.x\(21) & (!\Objekten|Add2~44\)))) # (!\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(21) & 
-- (!\Objekten|Add2~44\)) # (!\Objekten|CircleCoord2.x\(21) & ((\Objekten|Add2~44\) # (GND)))))
-- \Objekten|Add2~46\ = CARRY((\Objekten|Add2~0_combout\ & (!\Objekten|CircleCoord2.x\(21) & !\Objekten|Add2~44\)) # (!\Objekten|Add2~0_combout\ & ((!\Objekten|Add2~44\) # (!\Objekten|CircleCoord2.x\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(21),
	datad => VCC,
	cin => \Objekten|Add2~44\,
	combout => \Objekten|Add2~45_combout\,
	cout => \Objekten|Add2~46\);

-- Location: FF_X43_Y30_N11
\Objekten|CircleCoord2.x[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~45_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(21));

-- Location: LCCOMB_X43_Y30_N12
\Objekten|Add2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~47_combout\ = ((\Objekten|Add2~0_combout\ $ (\Objekten|CircleCoord2.x\(22) $ (!\Objekten|Add2~46\)))) # (GND)
-- \Objekten|Add2~48\ = CARRY((\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(22)) # (!\Objekten|Add2~46\))) # (!\Objekten|Add2~0_combout\ & (\Objekten|CircleCoord2.x\(22) & !\Objekten|Add2~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(22),
	datad => VCC,
	cin => \Objekten|Add2~46\,
	combout => \Objekten|Add2~47_combout\,
	cout => \Objekten|Add2~48\);

-- Location: FF_X43_Y30_N13
\Objekten|CircleCoord2.x[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~47_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(22));

-- Location: LCCOMB_X45_Y30_N0
\Objekten|CoordinateInRectangle~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~3_combout\ = (!\Objekten|CircleCoord2.x\(21) & (!\Objekten|CircleCoord2.x\(22) & (!\Objekten|CircleCoord2.x\(20) & !\Objekten|CircleCoord2.x\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(21),
	datab => \Objekten|CircleCoord2.x\(22),
	datac => \Objekten|CircleCoord2.x\(20),
	datad => \Objekten|CircleCoord2.x\(19),
	combout => \Objekten|CoordinateInRectangle~3_combout\);

-- Location: LCCOMB_X43_Y30_N14
\Objekten|Add2~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~49_combout\ = (\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(23) & (\Objekten|Add2~48\ & VCC)) # (!\Objekten|CircleCoord2.x\(23) & (!\Objekten|Add2~48\)))) # (!\Objekten|Add2~0_combout\ & ((\Objekten|CircleCoord2.x\(23) & 
-- (!\Objekten|Add2~48\)) # (!\Objekten|CircleCoord2.x\(23) & ((\Objekten|Add2~48\) # (GND)))))
-- \Objekten|Add2~50\ = CARRY((\Objekten|Add2~0_combout\ & (!\Objekten|CircleCoord2.x\(23) & !\Objekten|Add2~48\)) # (!\Objekten|Add2~0_combout\ & ((!\Objekten|Add2~48\) # (!\Objekten|CircleCoord2.x\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add2~0_combout\,
	datab => \Objekten|CircleCoord2.x\(23),
	datad => VCC,
	cin => \Objekten|Add2~48\,
	combout => \Objekten|Add2~49_combout\,
	cout => \Objekten|Add2~50\);

-- Location: FF_X43_Y30_N15
\Objekten|CircleCoord2.x[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~49_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(23));

-- Location: LCCOMB_X43_Y30_N16
\Objekten|Add2~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~51_combout\ = ((\Objekten|CircleCoord2.x\(24) $ (\Objekten|Add2~0_combout\ $ (!\Objekten|Add2~50\)))) # (GND)
-- \Objekten|Add2~52\ = CARRY((\Objekten|CircleCoord2.x\(24) & ((\Objekten|Add2~0_combout\) # (!\Objekten|Add2~50\))) # (!\Objekten|CircleCoord2.x\(24) & (\Objekten|Add2~0_combout\ & !\Objekten|Add2~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(24),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~50\,
	combout => \Objekten|Add2~51_combout\,
	cout => \Objekten|Add2~52\);

-- Location: FF_X43_Y30_N17
\Objekten|CircleCoord2.x[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~51_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(24));

-- Location: LCCOMB_X43_Y30_N18
\Objekten|Add2~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~53_combout\ = (\Objekten|CircleCoord2.x\(25) & ((\Objekten|Add2~0_combout\ & (\Objekten|Add2~52\ & VCC)) # (!\Objekten|Add2~0_combout\ & (!\Objekten|Add2~52\)))) # (!\Objekten|CircleCoord2.x\(25) & ((\Objekten|Add2~0_combout\ & 
-- (!\Objekten|Add2~52\)) # (!\Objekten|Add2~0_combout\ & ((\Objekten|Add2~52\) # (GND)))))
-- \Objekten|Add2~54\ = CARRY((\Objekten|CircleCoord2.x\(25) & (!\Objekten|Add2~0_combout\ & !\Objekten|Add2~52\)) # (!\Objekten|CircleCoord2.x\(25) & ((!\Objekten|Add2~52\) # (!\Objekten|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(25),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~52\,
	combout => \Objekten|Add2~53_combout\,
	cout => \Objekten|Add2~54\);

-- Location: FF_X43_Y30_N19
\Objekten|CircleCoord2.x[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~53_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(25));

-- Location: LCCOMB_X43_Y30_N20
\Objekten|Add2~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~55_combout\ = ((\Objekten|CircleCoord2.x\(26) $ (\Objekten|Add2~0_combout\ $ (!\Objekten|Add2~54\)))) # (GND)
-- \Objekten|Add2~56\ = CARRY((\Objekten|CircleCoord2.x\(26) & ((\Objekten|Add2~0_combout\) # (!\Objekten|Add2~54\))) # (!\Objekten|CircleCoord2.x\(26) & (\Objekten|Add2~0_combout\ & !\Objekten|Add2~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(26),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~54\,
	combout => \Objekten|Add2~55_combout\,
	cout => \Objekten|Add2~56\);

-- Location: FF_X43_Y30_N21
\Objekten|CircleCoord2.x[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~55_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(26));

-- Location: LCCOMB_X45_Y30_N22
\Objekten|CoordinateInRectangle~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~2_combout\ = (!\Objekten|CircleCoord2.x\(26) & (!\Objekten|CircleCoord2.x\(24) & (!\Objekten|CircleCoord2.x\(23) & !\Objekten|CircleCoord2.x\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(26),
	datab => \Objekten|CircleCoord2.x\(24),
	datac => \Objekten|CircleCoord2.x\(23),
	datad => \Objekten|CircleCoord2.x\(25),
	combout => \Objekten|CoordinateInRectangle~2_combout\);

-- Location: LCCOMB_X43_Y30_N22
\Objekten|Add2~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~57_combout\ = (\Objekten|CircleCoord2.x\(27) & ((\Objekten|Add2~0_combout\ & (\Objekten|Add2~56\ & VCC)) # (!\Objekten|Add2~0_combout\ & (!\Objekten|Add2~56\)))) # (!\Objekten|CircleCoord2.x\(27) & ((\Objekten|Add2~0_combout\ & 
-- (!\Objekten|Add2~56\)) # (!\Objekten|Add2~0_combout\ & ((\Objekten|Add2~56\) # (GND)))))
-- \Objekten|Add2~58\ = CARRY((\Objekten|CircleCoord2.x\(27) & (!\Objekten|Add2~0_combout\ & !\Objekten|Add2~56\)) # (!\Objekten|CircleCoord2.x\(27) & ((!\Objekten|Add2~56\) # (!\Objekten|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(27),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~56\,
	combout => \Objekten|Add2~57_combout\,
	cout => \Objekten|Add2~58\);

-- Location: FF_X43_Y30_N23
\Objekten|CircleCoord2.x[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~57_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(27));

-- Location: LCCOMB_X43_Y30_N24
\Objekten|Add2~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~59_combout\ = ((\Objekten|CircleCoord2.x\(28) $ (\Objekten|Add2~0_combout\ $ (!\Objekten|Add2~58\)))) # (GND)
-- \Objekten|Add2~60\ = CARRY((\Objekten|CircleCoord2.x\(28) & ((\Objekten|Add2~0_combout\) # (!\Objekten|Add2~58\))) # (!\Objekten|CircleCoord2.x\(28) & (\Objekten|Add2~0_combout\ & !\Objekten|Add2~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(28),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~58\,
	combout => \Objekten|Add2~59_combout\,
	cout => \Objekten|Add2~60\);

-- Location: FF_X43_Y30_N25
\Objekten|CircleCoord2.x[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~59_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(28));

-- Location: LCCOMB_X43_Y30_N26
\Objekten|Add2~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~61_combout\ = (\Objekten|CircleCoord2.x\(29) & ((\Objekten|Add2~0_combout\ & (\Objekten|Add2~60\ & VCC)) # (!\Objekten|Add2~0_combout\ & (!\Objekten|Add2~60\)))) # (!\Objekten|CircleCoord2.x\(29) & ((\Objekten|Add2~0_combout\ & 
-- (!\Objekten|Add2~60\)) # (!\Objekten|Add2~0_combout\ & ((\Objekten|Add2~60\) # (GND)))))
-- \Objekten|Add2~62\ = CARRY((\Objekten|CircleCoord2.x\(29) & (!\Objekten|Add2~0_combout\ & !\Objekten|Add2~60\)) # (!\Objekten|CircleCoord2.x\(29) & ((!\Objekten|Add2~60\) # (!\Objekten|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(29),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~60\,
	combout => \Objekten|Add2~61_combout\,
	cout => \Objekten|Add2~62\);

-- Location: FF_X43_Y30_N27
\Objekten|CircleCoord2.x[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~61_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(29));

-- Location: LCCOMB_X43_Y30_N28
\Objekten|Add2~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~63_combout\ = ((\Objekten|CircleCoord2.x\(30) $ (\Objekten|Add2~0_combout\ $ (!\Objekten|Add2~62\)))) # (GND)
-- \Objekten|Add2~64\ = CARRY((\Objekten|CircleCoord2.x\(30) & ((\Objekten|Add2~0_combout\) # (!\Objekten|Add2~62\))) # (!\Objekten|CircleCoord2.x\(30) & (\Objekten|Add2~0_combout\ & !\Objekten|Add2~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(30),
	datab => \Objekten|Add2~0_combout\,
	datad => VCC,
	cin => \Objekten|Add2~62\,
	combout => \Objekten|Add2~63_combout\,
	cout => \Objekten|Add2~64\);

-- Location: FF_X43_Y30_N29
\Objekten|CircleCoord2.x[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~63_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(30));

-- Location: LCCOMB_X45_Y30_N16
\Objekten|CoordinateInRectangle~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~1_combout\ = (!\Objekten|CircleCoord2.x\(29) & (!\Objekten|CircleCoord2.x\(30) & (!\Objekten|CircleCoord2.x\(28) & !\Objekten|CircleCoord2.x\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(29),
	datab => \Objekten|CircleCoord2.x\(30),
	datac => \Objekten|CircleCoord2.x\(28),
	datad => \Objekten|CircleCoord2.x\(27),
	combout => \Objekten|CoordinateInRectangle~1_combout\);

-- Location: LCCOMB_X45_Y31_N24
\Objekten|CoordinateInRectangle~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|CoordinateInRectangle~4_combout\ = (\Objekten|CoordinateInRectangle~0_combout\ & (\Objekten|CoordinateInRectangle~3_combout\ & (\Objekten|CoordinateInRectangle~2_combout\ & \Objekten|CoordinateInRectangle~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CoordinateInRectangle~0_combout\,
	datab => \Objekten|CoordinateInRectangle~3_combout\,
	datac => \Objekten|CoordinateInRectangle~2_combout\,
	datad => \Objekten|CoordinateInRectangle~1_combout\,
	combout => \Objekten|CoordinateInRectangle~4_combout\);

-- Location: LCCOMB_X45_Y31_N20
\Objekten|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~0_combout\ = \Objekten|CircleToRight2~q\ $ (((\Objekten|CoordinateInRectangle~5_combout\ & (\Objekten|CoordinateInRectangle~7_combout\ & \Objekten|CoordinateInRectangle~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleToRight2~q\,
	datab => \Objekten|CoordinateInRectangle~5_combout\,
	datac => \Objekten|CoordinateInRectangle~7_combout\,
	datad => \Objekten|CoordinateInRectangle~4_combout\,
	combout => \Objekten|Add2~0_combout\);

-- Location: LCCOMB_X43_Y30_N30
\Objekten|Add2~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add2~65_combout\ = \Objekten|CircleCoord2.x\(31) $ (\Objekten|Add2~64\ $ (\Objekten|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(31),
	datad => \Objekten|Add2~0_combout\,
	cin => \Objekten|Add2~64\,
	combout => \Objekten|Add2~65_combout\);

-- Location: FF_X43_Y30_N31
\Objekten|CircleCoord2.x[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Add2~65_combout\,
	clrn => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|CircleCoord2.x\(31));

-- Location: LCCOMB_X44_Y31_N2
\Objekten|Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~0_combout\ = \Objekten|CircleCoord2.x\(1) $ (VCC)
-- \Objekten|Add7~1\ = CARRY(\Objekten|CircleCoord2.x\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(1),
	datad => VCC,
	combout => \Objekten|Add7~0_combout\,
	cout => \Objekten|Add7~1\);

-- Location: LCCOMB_X44_Y31_N4
\Objekten|Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~2_combout\ = (\Objekten|CircleCoord2.x\(2) & ((\Objekten|Add7~1\) # (GND))) # (!\Objekten|CircleCoord2.x\(2) & (!\Objekten|Add7~1\))
-- \Objekten|Add7~3\ = CARRY((\Objekten|CircleCoord2.x\(2)) # (!\Objekten|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(2),
	datad => VCC,
	cin => \Objekten|Add7~1\,
	combout => \Objekten|Add7~2_combout\,
	cout => \Objekten|Add7~3\);

-- Location: LCCOMB_X44_Y31_N6
\Objekten|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~4_combout\ = (\Objekten|CircleCoord2.x\(3) & (!\Objekten|Add7~3\ & VCC)) # (!\Objekten|CircleCoord2.x\(3) & (\Objekten|Add7~3\ $ (GND)))
-- \Objekten|Add7~5\ = CARRY((!\Objekten|CircleCoord2.x\(3) & !\Objekten|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(3),
	datad => VCC,
	cin => \Objekten|Add7~3\,
	combout => \Objekten|Add7~4_combout\,
	cout => \Objekten|Add7~5\);

-- Location: LCCOMB_X44_Y31_N8
\Objekten|Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~6_combout\ = (\Objekten|CircleCoord2.x\(4) & (!\Objekten|Add7~5\)) # (!\Objekten|CircleCoord2.x\(4) & (\Objekten|Add7~5\ & VCC))
-- \Objekten|Add7~7\ = CARRY((\Objekten|CircleCoord2.x\(4) & !\Objekten|Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(4),
	datad => VCC,
	cin => \Objekten|Add7~5\,
	combout => \Objekten|Add7~6_combout\,
	cout => \Objekten|Add7~7\);

-- Location: LCCOMB_X44_Y31_N10
\Objekten|Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~8_combout\ = (\Objekten|CircleCoord2.x\(5) & ((GND) # (!\Objekten|Add7~7\))) # (!\Objekten|CircleCoord2.x\(5) & (\Objekten|Add7~7\ $ (GND)))
-- \Objekten|Add7~9\ = CARRY((\Objekten|CircleCoord2.x\(5)) # (!\Objekten|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(5),
	datad => VCC,
	cin => \Objekten|Add7~7\,
	combout => \Objekten|Add7~8_combout\,
	cout => \Objekten|Add7~9\);

-- Location: LCCOMB_X44_Y31_N12
\Objekten|Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~10_combout\ = (\Objekten|CircleCoord2.x\(6) & (!\Objekten|Add7~9\)) # (!\Objekten|CircleCoord2.x\(6) & ((\Objekten|Add7~9\) # (GND)))
-- \Objekten|Add7~11\ = CARRY((!\Objekten|Add7~9\) # (!\Objekten|CircleCoord2.x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(6),
	datad => VCC,
	cin => \Objekten|Add7~9\,
	combout => \Objekten|Add7~10_combout\,
	cout => \Objekten|Add7~11\);

-- Location: LCCOMB_X44_Y31_N14
\Objekten|Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~12_combout\ = (\Objekten|CircleCoord2.x\(7) & (\Objekten|Add7~11\ $ (GND))) # (!\Objekten|CircleCoord2.x\(7) & (!\Objekten|Add7~11\ & VCC))
-- \Objekten|Add7~13\ = CARRY((\Objekten|CircleCoord2.x\(7) & !\Objekten|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(7),
	datad => VCC,
	cin => \Objekten|Add7~11\,
	combout => \Objekten|Add7~12_combout\,
	cout => \Objekten|Add7~13\);

-- Location: LCCOMB_X44_Y31_N16
\Objekten|Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~14_combout\ = (\Objekten|CircleCoord2.x\(8) & (!\Objekten|Add7~13\)) # (!\Objekten|CircleCoord2.x\(8) & ((\Objekten|Add7~13\) # (GND)))
-- \Objekten|Add7~15\ = CARRY((!\Objekten|Add7~13\) # (!\Objekten|CircleCoord2.x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(8),
	datad => VCC,
	cin => \Objekten|Add7~13\,
	combout => \Objekten|Add7~14_combout\,
	cout => \Objekten|Add7~15\);

-- Location: LCCOMB_X44_Y31_N18
\Objekten|Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~16_combout\ = (\Objekten|CircleCoord2.x\(9) & (!\Objekten|Add7~15\ & VCC)) # (!\Objekten|CircleCoord2.x\(9) & (\Objekten|Add7~15\ $ (GND)))
-- \Objekten|Add7~17\ = CARRY((!\Objekten|CircleCoord2.x\(9) & !\Objekten|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(9),
	datad => VCC,
	cin => \Objekten|Add7~15\,
	combout => \Objekten|Add7~16_combout\,
	cout => \Objekten|Add7~17\);

-- Location: LCCOMB_X44_Y31_N20
\Objekten|Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~18_combout\ = (\Objekten|CircleCoord2.x\(10) & (!\Objekten|Add7~17\)) # (!\Objekten|CircleCoord2.x\(10) & ((\Objekten|Add7~17\) # (GND)))
-- \Objekten|Add7~19\ = CARRY((!\Objekten|Add7~17\) # (!\Objekten|CircleCoord2.x\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(10),
	datad => VCC,
	cin => \Objekten|Add7~17\,
	combout => \Objekten|Add7~18_combout\,
	cout => \Objekten|Add7~19\);

-- Location: LCCOMB_X44_Y31_N22
\Objekten|Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~20_combout\ = (\Objekten|CircleCoord2.x\(11) & (\Objekten|Add7~19\ $ (GND))) # (!\Objekten|CircleCoord2.x\(11) & (!\Objekten|Add7~19\ & VCC))
-- \Objekten|Add7~21\ = CARRY((\Objekten|CircleCoord2.x\(11) & !\Objekten|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(11),
	datad => VCC,
	cin => \Objekten|Add7~19\,
	combout => \Objekten|Add7~20_combout\,
	cout => \Objekten|Add7~21\);

-- Location: LCCOMB_X44_Y31_N24
\Objekten|Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~22_combout\ = (\Objekten|CircleCoord2.x\(12) & (!\Objekten|Add7~21\)) # (!\Objekten|CircleCoord2.x\(12) & ((\Objekten|Add7~21\) # (GND)))
-- \Objekten|Add7~23\ = CARRY((!\Objekten|Add7~21\) # (!\Objekten|CircleCoord2.x\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(12),
	datad => VCC,
	cin => \Objekten|Add7~21\,
	combout => \Objekten|Add7~22_combout\,
	cout => \Objekten|Add7~23\);

-- Location: LCCOMB_X44_Y31_N26
\Objekten|Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~24_combout\ = (\Objekten|CircleCoord2.x\(13) & (\Objekten|Add7~23\ $ (GND))) # (!\Objekten|CircleCoord2.x\(13) & (!\Objekten|Add7~23\ & VCC))
-- \Objekten|Add7~25\ = CARRY((\Objekten|CircleCoord2.x\(13) & !\Objekten|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(13),
	datad => VCC,
	cin => \Objekten|Add7~23\,
	combout => \Objekten|Add7~24_combout\,
	cout => \Objekten|Add7~25\);

-- Location: LCCOMB_X44_Y31_N28
\Objekten|Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~26_combout\ = (\Objekten|CircleCoord2.x\(14) & (!\Objekten|Add7~25\)) # (!\Objekten|CircleCoord2.x\(14) & ((\Objekten|Add7~25\) # (GND)))
-- \Objekten|Add7~27\ = CARRY((!\Objekten|Add7~25\) # (!\Objekten|CircleCoord2.x\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(14),
	datad => VCC,
	cin => \Objekten|Add7~25\,
	combout => \Objekten|Add7~26_combout\,
	cout => \Objekten|Add7~27\);

-- Location: LCCOMB_X44_Y31_N30
\Objekten|Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~28_combout\ = (\Objekten|CircleCoord2.x\(15) & (\Objekten|Add7~27\ $ (GND))) # (!\Objekten|CircleCoord2.x\(15) & (!\Objekten|Add7~27\ & VCC))
-- \Objekten|Add7~29\ = CARRY((\Objekten|CircleCoord2.x\(15) & !\Objekten|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(15),
	datad => VCC,
	cin => \Objekten|Add7~27\,
	combout => \Objekten|Add7~28_combout\,
	cout => \Objekten|Add7~29\);

-- Location: LCCOMB_X44_Y30_N0
\Objekten|Add7~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~30_combout\ = (\Objekten|CircleCoord2.x\(16) & (!\Objekten|Add7~29\)) # (!\Objekten|CircleCoord2.x\(16) & ((\Objekten|Add7~29\) # (GND)))
-- \Objekten|Add7~31\ = CARRY((!\Objekten|Add7~29\) # (!\Objekten|CircleCoord2.x\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(16),
	datad => VCC,
	cin => \Objekten|Add7~29\,
	combout => \Objekten|Add7~30_combout\,
	cout => \Objekten|Add7~31\);

-- Location: LCCOMB_X44_Y30_N2
\Objekten|Add7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~32_combout\ = (\Objekten|CircleCoord2.x\(17) & (\Objekten|Add7~31\ $ (GND))) # (!\Objekten|CircleCoord2.x\(17) & (!\Objekten|Add7~31\ & VCC))
-- \Objekten|Add7~33\ = CARRY((\Objekten|CircleCoord2.x\(17) & !\Objekten|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(17),
	datad => VCC,
	cin => \Objekten|Add7~31\,
	combout => \Objekten|Add7~32_combout\,
	cout => \Objekten|Add7~33\);

-- Location: LCCOMB_X44_Y30_N4
\Objekten|Add7~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~34_combout\ = (\Objekten|CircleCoord2.x\(18) & (!\Objekten|Add7~33\)) # (!\Objekten|CircleCoord2.x\(18) & ((\Objekten|Add7~33\) # (GND)))
-- \Objekten|Add7~35\ = CARRY((!\Objekten|Add7~33\) # (!\Objekten|CircleCoord2.x\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(18),
	datad => VCC,
	cin => \Objekten|Add7~33\,
	combout => \Objekten|Add7~34_combout\,
	cout => \Objekten|Add7~35\);

-- Location: LCCOMB_X44_Y30_N6
\Objekten|Add7~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~36_combout\ = (\Objekten|CircleCoord2.x\(19) & (\Objekten|Add7~35\ $ (GND))) # (!\Objekten|CircleCoord2.x\(19) & (!\Objekten|Add7~35\ & VCC))
-- \Objekten|Add7~37\ = CARRY((\Objekten|CircleCoord2.x\(19) & !\Objekten|Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(19),
	datad => VCC,
	cin => \Objekten|Add7~35\,
	combout => \Objekten|Add7~36_combout\,
	cout => \Objekten|Add7~37\);

-- Location: LCCOMB_X44_Y30_N8
\Objekten|Add7~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~38_combout\ = (\Objekten|CircleCoord2.x\(20) & (!\Objekten|Add7~37\)) # (!\Objekten|CircleCoord2.x\(20) & ((\Objekten|Add7~37\) # (GND)))
-- \Objekten|Add7~39\ = CARRY((!\Objekten|Add7~37\) # (!\Objekten|CircleCoord2.x\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(20),
	datad => VCC,
	cin => \Objekten|Add7~37\,
	combout => \Objekten|Add7~38_combout\,
	cout => \Objekten|Add7~39\);

-- Location: LCCOMB_X44_Y30_N10
\Objekten|Add7~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~40_combout\ = (\Objekten|CircleCoord2.x\(21) & (\Objekten|Add7~39\ $ (GND))) # (!\Objekten|CircleCoord2.x\(21) & (!\Objekten|Add7~39\ & VCC))
-- \Objekten|Add7~41\ = CARRY((\Objekten|CircleCoord2.x\(21) & !\Objekten|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(21),
	datad => VCC,
	cin => \Objekten|Add7~39\,
	combout => \Objekten|Add7~40_combout\,
	cout => \Objekten|Add7~41\);

-- Location: LCCOMB_X44_Y30_N12
\Objekten|Add7~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~42_combout\ = (\Objekten|CircleCoord2.x\(22) & (!\Objekten|Add7~41\)) # (!\Objekten|CircleCoord2.x\(22) & ((\Objekten|Add7~41\) # (GND)))
-- \Objekten|Add7~43\ = CARRY((!\Objekten|Add7~41\) # (!\Objekten|CircleCoord2.x\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(22),
	datad => VCC,
	cin => \Objekten|Add7~41\,
	combout => \Objekten|Add7~42_combout\,
	cout => \Objekten|Add7~43\);

-- Location: LCCOMB_X44_Y30_N14
\Objekten|Add7~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~44_combout\ = (\Objekten|CircleCoord2.x\(23) & (\Objekten|Add7~43\ $ (GND))) # (!\Objekten|CircleCoord2.x\(23) & (!\Objekten|Add7~43\ & VCC))
-- \Objekten|Add7~45\ = CARRY((\Objekten|CircleCoord2.x\(23) & !\Objekten|Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(23),
	datad => VCC,
	cin => \Objekten|Add7~43\,
	combout => \Objekten|Add7~44_combout\,
	cout => \Objekten|Add7~45\);

-- Location: LCCOMB_X44_Y30_N16
\Objekten|Add7~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~46_combout\ = (\Objekten|CircleCoord2.x\(24) & (!\Objekten|Add7~45\)) # (!\Objekten|CircleCoord2.x\(24) & ((\Objekten|Add7~45\) # (GND)))
-- \Objekten|Add7~47\ = CARRY((!\Objekten|Add7~45\) # (!\Objekten|CircleCoord2.x\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(24),
	datad => VCC,
	cin => \Objekten|Add7~45\,
	combout => \Objekten|Add7~46_combout\,
	cout => \Objekten|Add7~47\);

-- Location: LCCOMB_X44_Y30_N18
\Objekten|Add7~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~48_combout\ = (\Objekten|CircleCoord2.x\(25) & (\Objekten|Add7~47\ $ (GND))) # (!\Objekten|CircleCoord2.x\(25) & (!\Objekten|Add7~47\ & VCC))
-- \Objekten|Add7~49\ = CARRY((\Objekten|CircleCoord2.x\(25) & !\Objekten|Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(25),
	datad => VCC,
	cin => \Objekten|Add7~47\,
	combout => \Objekten|Add7~48_combout\,
	cout => \Objekten|Add7~49\);

-- Location: LCCOMB_X44_Y30_N20
\Objekten|Add7~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~50_combout\ = (\Objekten|CircleCoord2.x\(26) & (!\Objekten|Add7~49\)) # (!\Objekten|CircleCoord2.x\(26) & ((\Objekten|Add7~49\) # (GND)))
-- \Objekten|Add7~51\ = CARRY((!\Objekten|Add7~49\) # (!\Objekten|CircleCoord2.x\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(26),
	datad => VCC,
	cin => \Objekten|Add7~49\,
	combout => \Objekten|Add7~50_combout\,
	cout => \Objekten|Add7~51\);

-- Location: LCCOMB_X44_Y30_N22
\Objekten|Add7~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~52_combout\ = (\Objekten|CircleCoord2.x\(27) & (\Objekten|Add7~51\ $ (GND))) # (!\Objekten|CircleCoord2.x\(27) & (!\Objekten|Add7~51\ & VCC))
-- \Objekten|Add7~53\ = CARRY((\Objekten|CircleCoord2.x\(27) & !\Objekten|Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(27),
	datad => VCC,
	cin => \Objekten|Add7~51\,
	combout => \Objekten|Add7~52_combout\,
	cout => \Objekten|Add7~53\);

-- Location: LCCOMB_X44_Y30_N24
\Objekten|Add7~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~54_combout\ = (\Objekten|CircleCoord2.x\(28) & (!\Objekten|Add7~53\)) # (!\Objekten|CircleCoord2.x\(28) & ((\Objekten|Add7~53\) # (GND)))
-- \Objekten|Add7~55\ = CARRY((!\Objekten|Add7~53\) # (!\Objekten|CircleCoord2.x\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(28),
	datad => VCC,
	cin => \Objekten|Add7~53\,
	combout => \Objekten|Add7~54_combout\,
	cout => \Objekten|Add7~55\);

-- Location: LCCOMB_X44_Y30_N26
\Objekten|Add7~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~56_combout\ = (\Objekten|CircleCoord2.x\(29) & (\Objekten|Add7~55\ $ (GND))) # (!\Objekten|CircleCoord2.x\(29) & (!\Objekten|Add7~55\ & VCC))
-- \Objekten|Add7~57\ = CARRY((\Objekten|CircleCoord2.x\(29) & !\Objekten|Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(29),
	datad => VCC,
	cin => \Objekten|Add7~55\,
	combout => \Objekten|Add7~56_combout\,
	cout => \Objekten|Add7~57\);

-- Location: LCCOMB_X44_Y30_N28
\Objekten|Add7~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~58_combout\ = (\Objekten|CircleCoord2.x\(30) & (!\Objekten|Add7~57\)) # (!\Objekten|CircleCoord2.x\(30) & ((\Objekten|Add7~57\) # (GND)))
-- \Objekten|Add7~59\ = CARRY((!\Objekten|Add7~57\) # (!\Objekten|CircleCoord2.x\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(30),
	datad => VCC,
	cin => \Objekten|Add7~57\,
	combout => \Objekten|Add7~58_combout\,
	cout => \Objekten|Add7~59\);

-- Location: LCCOMB_X44_Y30_N30
\Objekten|Add7~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add7~60_combout\ = \Objekten|Add7~59\ $ (!\Objekten|CircleCoord2.x\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Objekten|CircleCoord2.x\(31),
	cin => \Objekten|Add7~59\,
	combout => \Objekten|Add7~60_combout\);

-- Location: LCCOMB_X42_Y31_N2
\Objekten|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~0_combout\ = \Objekten|CircleCoord2.x\(1) $ (VCC)
-- \Objekten|Add6~1\ = CARRY(\Objekten|CircleCoord2.x\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(1),
	datad => VCC,
	combout => \Objekten|Add6~0_combout\,
	cout => \Objekten|Add6~1\);

-- Location: LCCOMB_X42_Y31_N4
\Objekten|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~2_combout\ = (\Objekten|CircleCoord2.x\(2) & (!\Objekten|Add6~1\)) # (!\Objekten|CircleCoord2.x\(2) & (\Objekten|Add6~1\ & VCC))
-- \Objekten|Add6~3\ = CARRY((\Objekten|CircleCoord2.x\(2) & !\Objekten|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(2),
	datad => VCC,
	cin => \Objekten|Add6~1\,
	combout => \Objekten|Add6~2_combout\,
	cout => \Objekten|Add6~3\);

-- Location: LCCOMB_X42_Y31_N6
\Objekten|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~4_combout\ = (\Objekten|CircleCoord2.x\(3) & (\Objekten|Add6~3\ $ (GND))) # (!\Objekten|CircleCoord2.x\(3) & ((GND) # (!\Objekten|Add6~3\)))
-- \Objekten|Add6~5\ = CARRY((!\Objekten|Add6~3\) # (!\Objekten|CircleCoord2.x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(3),
	datad => VCC,
	cin => \Objekten|Add6~3\,
	combout => \Objekten|Add6~4_combout\,
	cout => \Objekten|Add6~5\);

-- Location: LCCOMB_X42_Y31_N8
\Objekten|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~6_combout\ = (\Objekten|CircleCoord2.x\(4) & ((\Objekten|Add6~5\) # (GND))) # (!\Objekten|CircleCoord2.x\(4) & (!\Objekten|Add6~5\))
-- \Objekten|Add6~7\ = CARRY((\Objekten|CircleCoord2.x\(4)) # (!\Objekten|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(4),
	datad => VCC,
	cin => \Objekten|Add6~5\,
	combout => \Objekten|Add6~6_combout\,
	cout => \Objekten|Add6~7\);

-- Location: LCCOMB_X42_Y31_N10
\Objekten|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~8_combout\ = (\Objekten|CircleCoord2.x\(5) & (\Objekten|Add6~7\ $ (GND))) # (!\Objekten|CircleCoord2.x\(5) & (!\Objekten|Add6~7\ & VCC))
-- \Objekten|Add6~9\ = CARRY((\Objekten|CircleCoord2.x\(5) & !\Objekten|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(5),
	datad => VCC,
	cin => \Objekten|Add6~7\,
	combout => \Objekten|Add6~8_combout\,
	cout => \Objekten|Add6~9\);

-- Location: LCCOMB_X42_Y31_N12
\Objekten|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~10_combout\ = (\Objekten|CircleCoord2.x\(6) & (\Objekten|Add6~9\ & VCC)) # (!\Objekten|CircleCoord2.x\(6) & (!\Objekten|Add6~9\))
-- \Objekten|Add6~11\ = CARRY((!\Objekten|CircleCoord2.x\(6) & !\Objekten|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(6),
	datad => VCC,
	cin => \Objekten|Add6~9\,
	combout => \Objekten|Add6~10_combout\,
	cout => \Objekten|Add6~11\);

-- Location: LCCOMB_X42_Y31_N14
\Objekten|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~12_combout\ = (\Objekten|CircleCoord2.x\(7) & ((GND) # (!\Objekten|Add6~11\))) # (!\Objekten|CircleCoord2.x\(7) & (\Objekten|Add6~11\ $ (GND)))
-- \Objekten|Add6~13\ = CARRY((\Objekten|CircleCoord2.x\(7)) # (!\Objekten|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(7),
	datad => VCC,
	cin => \Objekten|Add6~11\,
	combout => \Objekten|Add6~12_combout\,
	cout => \Objekten|Add6~13\);

-- Location: LCCOMB_X42_Y31_N16
\Objekten|Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~14_combout\ = (\Objekten|CircleCoord2.x\(8) & (\Objekten|Add6~13\ & VCC)) # (!\Objekten|CircleCoord2.x\(8) & (!\Objekten|Add6~13\))
-- \Objekten|Add6~15\ = CARRY((!\Objekten|CircleCoord2.x\(8) & !\Objekten|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(8),
	datad => VCC,
	cin => \Objekten|Add6~13\,
	combout => \Objekten|Add6~14_combout\,
	cout => \Objekten|Add6~15\);

-- Location: LCCOMB_X42_Y31_N18
\Objekten|Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~16_combout\ = (\Objekten|CircleCoord2.x\(9) & (\Objekten|Add6~15\ $ (GND))) # (!\Objekten|CircleCoord2.x\(9) & ((GND) # (!\Objekten|Add6~15\)))
-- \Objekten|Add6~17\ = CARRY((!\Objekten|Add6~15\) # (!\Objekten|CircleCoord2.x\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(9),
	datad => VCC,
	cin => \Objekten|Add6~15\,
	combout => \Objekten|Add6~16_combout\,
	cout => \Objekten|Add6~17\);

-- Location: LCCOMB_X42_Y31_N20
\Objekten|Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~18_combout\ = (\Objekten|CircleCoord2.x\(10) & (\Objekten|Add6~17\ & VCC)) # (!\Objekten|CircleCoord2.x\(10) & (!\Objekten|Add6~17\))
-- \Objekten|Add6~19\ = CARRY((!\Objekten|CircleCoord2.x\(10) & !\Objekten|Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(10),
	datad => VCC,
	cin => \Objekten|Add6~17\,
	combout => \Objekten|Add6~18_combout\,
	cout => \Objekten|Add6~19\);

-- Location: LCCOMB_X42_Y31_N22
\Objekten|Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~20_combout\ = (\Objekten|CircleCoord2.x\(11) & ((GND) # (!\Objekten|Add6~19\))) # (!\Objekten|CircleCoord2.x\(11) & (\Objekten|Add6~19\ $ (GND)))
-- \Objekten|Add6~21\ = CARRY((\Objekten|CircleCoord2.x\(11)) # (!\Objekten|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(11),
	datad => VCC,
	cin => \Objekten|Add6~19\,
	combout => \Objekten|Add6~20_combout\,
	cout => \Objekten|Add6~21\);

-- Location: LCCOMB_X42_Y31_N24
\Objekten|Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~22_combout\ = (\Objekten|CircleCoord2.x\(12) & (\Objekten|Add6~21\ & VCC)) # (!\Objekten|CircleCoord2.x\(12) & (!\Objekten|Add6~21\))
-- \Objekten|Add6~23\ = CARRY((!\Objekten|CircleCoord2.x\(12) & !\Objekten|Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(12),
	datad => VCC,
	cin => \Objekten|Add6~21\,
	combout => \Objekten|Add6~22_combout\,
	cout => \Objekten|Add6~23\);

-- Location: LCCOMB_X42_Y31_N26
\Objekten|Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~24_combout\ = (\Objekten|CircleCoord2.x\(13) & ((GND) # (!\Objekten|Add6~23\))) # (!\Objekten|CircleCoord2.x\(13) & (\Objekten|Add6~23\ $ (GND)))
-- \Objekten|Add6~25\ = CARRY((\Objekten|CircleCoord2.x\(13)) # (!\Objekten|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(13),
	datad => VCC,
	cin => \Objekten|Add6~23\,
	combout => \Objekten|Add6~24_combout\,
	cout => \Objekten|Add6~25\);

-- Location: LCCOMB_X42_Y31_N28
\Objekten|Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~26_combout\ = (\Objekten|CircleCoord2.x\(14) & (\Objekten|Add6~25\ & VCC)) # (!\Objekten|CircleCoord2.x\(14) & (!\Objekten|Add6~25\))
-- \Objekten|Add6~27\ = CARRY((!\Objekten|CircleCoord2.x\(14) & !\Objekten|Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(14),
	datad => VCC,
	cin => \Objekten|Add6~25\,
	combout => \Objekten|Add6~26_combout\,
	cout => \Objekten|Add6~27\);

-- Location: LCCOMB_X42_Y31_N30
\Objekten|Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~28_combout\ = (\Objekten|CircleCoord2.x\(15) & ((GND) # (!\Objekten|Add6~27\))) # (!\Objekten|CircleCoord2.x\(15) & (\Objekten|Add6~27\ $ (GND)))
-- \Objekten|Add6~29\ = CARRY((\Objekten|CircleCoord2.x\(15)) # (!\Objekten|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(15),
	datad => VCC,
	cin => \Objekten|Add6~27\,
	combout => \Objekten|Add6~28_combout\,
	cout => \Objekten|Add6~29\);

-- Location: LCCOMB_X42_Y30_N0
\Objekten|Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~30_combout\ = (\Objekten|CircleCoord2.x\(16) & (\Objekten|Add6~29\ & VCC)) # (!\Objekten|CircleCoord2.x\(16) & (!\Objekten|Add6~29\))
-- \Objekten|Add6~31\ = CARRY((!\Objekten|CircleCoord2.x\(16) & !\Objekten|Add6~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(16),
	datad => VCC,
	cin => \Objekten|Add6~29\,
	combout => \Objekten|Add6~30_combout\,
	cout => \Objekten|Add6~31\);

-- Location: LCCOMB_X42_Y30_N2
\Objekten|Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~32_combout\ = (\Objekten|CircleCoord2.x\(17) & ((GND) # (!\Objekten|Add6~31\))) # (!\Objekten|CircleCoord2.x\(17) & (\Objekten|Add6~31\ $ (GND)))
-- \Objekten|Add6~33\ = CARRY((\Objekten|CircleCoord2.x\(17)) # (!\Objekten|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(17),
	datad => VCC,
	cin => \Objekten|Add6~31\,
	combout => \Objekten|Add6~32_combout\,
	cout => \Objekten|Add6~33\);

-- Location: LCCOMB_X42_Y30_N4
\Objekten|Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~34_combout\ = (\Objekten|CircleCoord2.x\(18) & (\Objekten|Add6~33\ & VCC)) # (!\Objekten|CircleCoord2.x\(18) & (!\Objekten|Add6~33\))
-- \Objekten|Add6~35\ = CARRY((!\Objekten|CircleCoord2.x\(18) & !\Objekten|Add6~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(18),
	datad => VCC,
	cin => \Objekten|Add6~33\,
	combout => \Objekten|Add6~34_combout\,
	cout => \Objekten|Add6~35\);

-- Location: LCCOMB_X42_Y30_N6
\Objekten|Add6~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~36_combout\ = (\Objekten|CircleCoord2.x\(19) & ((GND) # (!\Objekten|Add6~35\))) # (!\Objekten|CircleCoord2.x\(19) & (\Objekten|Add6~35\ $ (GND)))
-- \Objekten|Add6~37\ = CARRY((\Objekten|CircleCoord2.x\(19)) # (!\Objekten|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(19),
	datad => VCC,
	cin => \Objekten|Add6~35\,
	combout => \Objekten|Add6~36_combout\,
	cout => \Objekten|Add6~37\);

-- Location: LCCOMB_X42_Y30_N8
\Objekten|Add6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~38_combout\ = (\Objekten|CircleCoord2.x\(20) & (\Objekten|Add6~37\ & VCC)) # (!\Objekten|CircleCoord2.x\(20) & (!\Objekten|Add6~37\))
-- \Objekten|Add6~39\ = CARRY((!\Objekten|CircleCoord2.x\(20) & !\Objekten|Add6~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(20),
	datad => VCC,
	cin => \Objekten|Add6~37\,
	combout => \Objekten|Add6~38_combout\,
	cout => \Objekten|Add6~39\);

-- Location: LCCOMB_X42_Y30_N10
\Objekten|Add6~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~40_combout\ = (\Objekten|CircleCoord2.x\(21) & ((GND) # (!\Objekten|Add6~39\))) # (!\Objekten|CircleCoord2.x\(21) & (\Objekten|Add6~39\ $ (GND)))
-- \Objekten|Add6~41\ = CARRY((\Objekten|CircleCoord2.x\(21)) # (!\Objekten|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(21),
	datad => VCC,
	cin => \Objekten|Add6~39\,
	combout => \Objekten|Add6~40_combout\,
	cout => \Objekten|Add6~41\);

-- Location: LCCOMB_X42_Y30_N12
\Objekten|Add6~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~42_combout\ = (\Objekten|CircleCoord2.x\(22) & (\Objekten|Add6~41\ & VCC)) # (!\Objekten|CircleCoord2.x\(22) & (!\Objekten|Add6~41\))
-- \Objekten|Add6~43\ = CARRY((!\Objekten|CircleCoord2.x\(22) & !\Objekten|Add6~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(22),
	datad => VCC,
	cin => \Objekten|Add6~41\,
	combout => \Objekten|Add6~42_combout\,
	cout => \Objekten|Add6~43\);

-- Location: LCCOMB_X42_Y30_N14
\Objekten|Add6~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~44_combout\ = (\Objekten|CircleCoord2.x\(23) & ((GND) # (!\Objekten|Add6~43\))) # (!\Objekten|CircleCoord2.x\(23) & (\Objekten|Add6~43\ $ (GND)))
-- \Objekten|Add6~45\ = CARRY((\Objekten|CircleCoord2.x\(23)) # (!\Objekten|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(23),
	datad => VCC,
	cin => \Objekten|Add6~43\,
	combout => \Objekten|Add6~44_combout\,
	cout => \Objekten|Add6~45\);

-- Location: LCCOMB_X42_Y30_N16
\Objekten|Add6~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~46_combout\ = (\Objekten|CircleCoord2.x\(24) & (\Objekten|Add6~45\ & VCC)) # (!\Objekten|CircleCoord2.x\(24) & (!\Objekten|Add6~45\))
-- \Objekten|Add6~47\ = CARRY((!\Objekten|CircleCoord2.x\(24) & !\Objekten|Add6~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(24),
	datad => VCC,
	cin => \Objekten|Add6~45\,
	combout => \Objekten|Add6~46_combout\,
	cout => \Objekten|Add6~47\);

-- Location: LCCOMB_X42_Y30_N18
\Objekten|Add6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~48_combout\ = (\Objekten|CircleCoord2.x\(25) & ((GND) # (!\Objekten|Add6~47\))) # (!\Objekten|CircleCoord2.x\(25) & (\Objekten|Add6~47\ $ (GND)))
-- \Objekten|Add6~49\ = CARRY((\Objekten|CircleCoord2.x\(25)) # (!\Objekten|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(25),
	datad => VCC,
	cin => \Objekten|Add6~47\,
	combout => \Objekten|Add6~48_combout\,
	cout => \Objekten|Add6~49\);

-- Location: LCCOMB_X42_Y30_N20
\Objekten|Add6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~50_combout\ = (\Objekten|CircleCoord2.x\(26) & (\Objekten|Add6~49\ & VCC)) # (!\Objekten|CircleCoord2.x\(26) & (!\Objekten|Add6~49\))
-- \Objekten|Add6~51\ = CARRY((!\Objekten|CircleCoord2.x\(26) & !\Objekten|Add6~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(26),
	datad => VCC,
	cin => \Objekten|Add6~49\,
	combout => \Objekten|Add6~50_combout\,
	cout => \Objekten|Add6~51\);

-- Location: LCCOMB_X42_Y30_N22
\Objekten|Add6~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~52_combout\ = (\Objekten|CircleCoord2.x\(27) & ((GND) # (!\Objekten|Add6~51\))) # (!\Objekten|CircleCoord2.x\(27) & (\Objekten|Add6~51\ $ (GND)))
-- \Objekten|Add6~53\ = CARRY((\Objekten|CircleCoord2.x\(27)) # (!\Objekten|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(27),
	datad => VCC,
	cin => \Objekten|Add6~51\,
	combout => \Objekten|Add6~52_combout\,
	cout => \Objekten|Add6~53\);

-- Location: LCCOMB_X42_Y30_N24
\Objekten|Add6~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~54_combout\ = (\Objekten|CircleCoord2.x\(28) & (\Objekten|Add6~53\ & VCC)) # (!\Objekten|CircleCoord2.x\(28) & (!\Objekten|Add6~53\))
-- \Objekten|Add6~55\ = CARRY((!\Objekten|CircleCoord2.x\(28) & !\Objekten|Add6~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(28),
	datad => VCC,
	cin => \Objekten|Add6~53\,
	combout => \Objekten|Add6~54_combout\,
	cout => \Objekten|Add6~55\);

-- Location: LCCOMB_X42_Y30_N26
\Objekten|Add6~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~56_combout\ = (\Objekten|CircleCoord2.x\(29) & ((GND) # (!\Objekten|Add6~55\))) # (!\Objekten|CircleCoord2.x\(29) & (\Objekten|Add6~55\ $ (GND)))
-- \Objekten|Add6~57\ = CARRY((\Objekten|CircleCoord2.x\(29)) # (!\Objekten|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(29),
	datad => VCC,
	cin => \Objekten|Add6~55\,
	combout => \Objekten|Add6~56_combout\,
	cout => \Objekten|Add6~57\);

-- Location: LCCOMB_X42_Y30_N28
\Objekten|Add6~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~58_combout\ = (\Objekten|CircleCoord2.x\(30) & (\Objekten|Add6~57\ & VCC)) # (!\Objekten|CircleCoord2.x\(30) & (!\Objekten|Add6~57\))
-- \Objekten|Add6~59\ = CARRY((!\Objekten|CircleCoord2.x\(30) & !\Objekten|Add6~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(30),
	datad => VCC,
	cin => \Objekten|Add6~57\,
	combout => \Objekten|Add6~58_combout\,
	cout => \Objekten|Add6~59\);

-- Location: LCCOMB_X42_Y30_N30
\Objekten|Add6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Add6~60_combout\ = \Objekten|CircleCoord2.x\(31) $ (\Objekten|Add6~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(31),
	cin => \Objekten|Add6~59\,
	combout => \Objekten|Add6~60_combout\);

-- Location: LCCOMB_X41_Y31_N0
\Objekten|LessThan17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan17~0_combout\ = (!\Objekten|Add6~0_combout\ & !\Objekten|Add6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add6~0_combout\,
	datad => \Objekten|Add6~2_combout\,
	combout => \Objekten|LessThan17~0_combout\);

-- Location: LCCOMB_X41_Y31_N16
\Objekten|LessThan19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan19~6_combout\ = (\Objekten|CircleCoord1.x\(0)) # ((\Objekten|Add6~8_combout\) # ((\Objekten|Add6~6_combout\) # (\Objekten|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(0),
	datab => \Objekten|Add6~8_combout\,
	datac => \Objekten|Add6~6_combout\,
	datad => \Objekten|Add6~4_combout\,
	combout => \Objekten|LessThan19~6_combout\);

-- Location: LCCOMB_X41_Y31_N22
\Objekten|LessThan19~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan19~7_combout\ = (\Objekten|Add6~12_combout\ & (((\Objekten|Add6~10_combout\) # (\Objekten|LessThan19~6_combout\)) # (!\Objekten|LessThan17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan17~0_combout\,
	datab => \Objekten|Add6~12_combout\,
	datac => \Objekten|Add6~10_combout\,
	datad => \Objekten|LessThan19~6_combout\,
	combout => \Objekten|LessThan19~7_combout\);

-- Location: LCCOMB_X41_Y31_N24
\Objekten|LessThan19~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan19~8_combout\ = (\Objekten|Add6~16_combout\ & ((\Objekten|LessThan19~7_combout\) # (\Objekten|Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|Add6~16_combout\,
	datac => \Objekten|LessThan19~7_combout\,
	datad => \Objekten|Add6~14_combout\,
	combout => \Objekten|LessThan19~8_combout\);

-- Location: LCCOMB_X41_Y30_N30
\Objekten|LessThan19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan19~5_combout\ = (!\Objekten|Add6~50_combout\ & (!\Objekten|Add6~52_combout\ & (!\Objekten|Add6~54_combout\ & !\Objekten|Add6~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add6~50_combout\,
	datab => \Objekten|Add6~52_combout\,
	datac => \Objekten|Add6~54_combout\,
	datad => \Objekten|Add6~56_combout\,
	combout => \Objekten|LessThan19~5_combout\);

-- Location: LCCOMB_X42_Y31_N0
\Objekten|LessThan19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan19~0_combout\ = (!\Objekten|Add6~20_combout\ & (!\Objekten|Add6~18_combout\ & (!\Objekten|Add6~24_combout\ & !\Objekten|Add6~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add6~20_combout\,
	datab => \Objekten|Add6~18_combout\,
	datac => \Objekten|Add6~24_combout\,
	datad => \Objekten|Add6~22_combout\,
	combout => \Objekten|LessThan19~0_combout\);

-- Location: LCCOMB_X41_Y29_N24
\Objekten|LessThan19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan19~2_combout\ = (!\Objekten|Add6~34_combout\ & (!\Objekten|Add6~36_combout\ & (!\Objekten|Add6~38_combout\ & !\Objekten|Add6~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add6~34_combout\,
	datab => \Objekten|Add6~36_combout\,
	datac => \Objekten|Add6~38_combout\,
	datad => \Objekten|Add6~40_combout\,
	combout => \Objekten|LessThan19~2_combout\);

-- Location: LCCOMB_X42_Y29_N12
\Objekten|LessThan19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan19~1_combout\ = (!\Objekten|Add6~26_combout\ & (!\Objekten|Add6~28_combout\ & (!\Objekten|Add6~32_combout\ & !\Objekten|Add6~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add6~26_combout\,
	datab => \Objekten|Add6~28_combout\,
	datac => \Objekten|Add6~32_combout\,
	datad => \Objekten|Add6~30_combout\,
	combout => \Objekten|LessThan19~1_combout\);

-- Location: LCCOMB_X41_Y30_N8
\Objekten|LessThan19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan19~3_combout\ = (!\Objekten|Add6~42_combout\ & (!\Objekten|Add6~46_combout\ & (!\Objekten|Add6~44_combout\ & !\Objekten|Add6~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add6~42_combout\,
	datab => \Objekten|Add6~46_combout\,
	datac => \Objekten|Add6~44_combout\,
	datad => \Objekten|Add6~48_combout\,
	combout => \Objekten|LessThan19~3_combout\);

-- Location: LCCOMB_X41_Y29_N2
\Objekten|LessThan19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan19~4_combout\ = (\Objekten|LessThan19~0_combout\ & (\Objekten|LessThan19~2_combout\ & (\Objekten|LessThan19~1_combout\ & \Objekten|LessThan19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan19~0_combout\,
	datab => \Objekten|LessThan19~2_combout\,
	datac => \Objekten|LessThan19~1_combout\,
	datad => \Objekten|LessThan19~3_combout\,
	combout => \Objekten|LessThan19~4_combout\);

-- Location: LCCOMB_X41_Y29_N26
\Objekten|LessThan19~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan19~9_combout\ = (\Objekten|LessThan19~8_combout\) # ((\Objekten|Add6~58_combout\) # ((!\Objekten|LessThan19~4_combout\) # (!\Objekten|LessThan19~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan19~8_combout\,
	datab => \Objekten|Add6~58_combout\,
	datac => \Objekten|LessThan19~5_combout\,
	datad => \Objekten|LessThan19~4_combout\,
	combout => \Objekten|LessThan19~9_combout\);

-- Location: LCCOMB_X44_Y29_N8
\Objekten|Circle2Colour~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour~5_combout\ = ((!\Objekten|Add7~4_combout\) # (!\Objekten|Add7~2_combout\)) # (!\Objekten|Add7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~0_combout\,
	datac => \Objekten|Add7~2_combout\,
	datad => \Objekten|Add7~4_combout\,
	combout => \Objekten|Circle2Colour~5_combout\);

-- Location: LCCOMB_X44_Y29_N30
\Objekten|Circle2Colour~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour~6_combout\ = ((!\Objekten|Add7~8_combout\ & (\Objekten|Circle2Colour~5_combout\ & !\Objekten|Add7~6_combout\))) # (!\Objekten|Add7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~10_combout\,
	datab => \Objekten|Add7~8_combout\,
	datac => \Objekten|Circle2Colour~5_combout\,
	datad => \Objekten|Add7~6_combout\,
	combout => \Objekten|Circle2Colour~6_combout\);

-- Location: LCCOMB_X44_Y29_N28
\Objekten|Circle2Colour~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour~7_combout\ = ((!\Objekten|Add7~12_combout\ & (\Objekten|Circle2Colour~6_combout\ & !\Objekten|Add7~14_combout\))) # (!\Objekten|Add7~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~12_combout\,
	datab => \Objekten|Add7~16_combout\,
	datac => \Objekten|Circle2Colour~6_combout\,
	datad => \Objekten|Add7~14_combout\,
	combout => \Objekten|Circle2Colour~7_combout\);

-- Location: LCCOMB_X45_Y30_N14
\Objekten|LessThan14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan14~9_combout\ = (!\Objekten|Add7~56_combout\ & (!\Objekten|Add7~50_combout\ & (!\Objekten|Add7~54_combout\ & !\Objekten|Add7~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~56_combout\,
	datab => \Objekten|Add7~50_combout\,
	datac => \Objekten|Add7~54_combout\,
	datad => \Objekten|Add7~52_combout\,
	combout => \Objekten|LessThan14~9_combout\);

-- Location: LCCOMB_X44_Y31_N0
\Objekten|LessThan14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan14~0_combout\ = (!\Objekten|Add7~24_combout\ & (!\Objekten|Add7~22_combout\ & (!\Objekten|Add7~20_combout\ & !\Objekten|Add7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~24_combout\,
	datab => \Objekten|Add7~22_combout\,
	datac => \Objekten|Add7~20_combout\,
	datad => \Objekten|Add7~18_combout\,
	combout => \Objekten|LessThan14~0_combout\);

-- Location: LCCOMB_X45_Y29_N4
\Objekten|LessThan14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan14~1_combout\ = (!\Objekten|Add7~26_combout\ & (!\Objekten|Add7~30_combout\ & (!\Objekten|Add7~32_combout\ & !\Objekten|Add7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~26_combout\,
	datab => \Objekten|Add7~30_combout\,
	datac => \Objekten|Add7~32_combout\,
	datad => \Objekten|Add7~28_combout\,
	combout => \Objekten|LessThan14~1_combout\);

-- Location: LCCOMB_X45_Y30_N24
\Objekten|LessThan14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan14~2_combout\ = (!\Objekten|Add7~38_combout\ & (!\Objekten|Add7~36_combout\ & (!\Objekten|Add7~34_combout\ & !\Objekten|Add7~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~38_combout\,
	datab => \Objekten|Add7~36_combout\,
	datac => \Objekten|Add7~34_combout\,
	datad => \Objekten|Add7~40_combout\,
	combout => \Objekten|LessThan14~2_combout\);

-- Location: LCCOMB_X45_Y30_N30
\Objekten|LessThan14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan14~3_combout\ = (!\Objekten|Add7~44_combout\ & (!\Objekten|Add7~42_combout\ & (!\Objekten|Add7~46_combout\ & !\Objekten|Add7~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~44_combout\,
	datab => \Objekten|Add7~42_combout\,
	datac => \Objekten|Add7~46_combout\,
	datad => \Objekten|Add7~48_combout\,
	combout => \Objekten|LessThan14~3_combout\);

-- Location: LCCOMB_X41_Y29_N6
\Objekten|LessThan14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan14~4_combout\ = (\Objekten|LessThan14~0_combout\ & (\Objekten|LessThan14~1_combout\ & (\Objekten|LessThan14~2_combout\ & \Objekten|LessThan14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan14~0_combout\,
	datab => \Objekten|LessThan14~1_combout\,
	datac => \Objekten|LessThan14~2_combout\,
	datad => \Objekten|LessThan14~3_combout\,
	combout => \Objekten|LessThan14~4_combout\);

-- Location: LCCOMB_X41_Y29_N28
\Objekten|Circle2Colour~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour~8_combout\ = (!\Objekten|Add7~58_combout\ & (\Objekten|Circle2Colour~7_combout\ & (\Objekten|LessThan14~9_combout\ & \Objekten|LessThan14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~58_combout\,
	datab => \Objekten|Circle2Colour~7_combout\,
	datac => \Objekten|LessThan14~9_combout\,
	datad => \Objekten|LessThan14~4_combout\,
	combout => \Objekten|Circle2Colour~8_combout\);

-- Location: LCCOMB_X41_Y29_N4
\Objekten|Circle2Colour~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour~9_combout\ = (\Objekten|Add7~60_combout\) # ((\Objekten|Circle2Colour~8_combout\) # ((!\Objekten|Add6~60_combout\ & \Objekten|LessThan19~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~60_combout\,
	datab => \Objekten|Add6~60_combout\,
	datac => \Objekten|LessThan19~9_combout\,
	datad => \Objekten|Circle2Colour~8_combout\,
	combout => \Objekten|Circle2Colour~9_combout\);

-- Location: LCCOMB_X41_Y31_N2
\Objekten|LessThan15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan15~0_combout\ = (\Objekten|Add6~0_combout\ & (\Objekten|CircleCoord1.x\(0) & \Objekten|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add6~0_combout\,
	datac => \Objekten|CircleCoord1.x\(0),
	datad => \Objekten|Add6~2_combout\,
	combout => \Objekten|LessThan15~0_combout\);

-- Location: LCCOMB_X41_Y31_N12
\Objekten|LessThan15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan15~1_combout\ = (\Objekten|Add6~4_combout\) # ((\Objekten|Add6~6_combout\) # ((\Objekten|Add6~8_combout\) # (\Objekten|LessThan15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add6~4_combout\,
	datab => \Objekten|Add6~6_combout\,
	datac => \Objekten|Add6~8_combout\,
	datad => \Objekten|LessThan15~0_combout\,
	combout => \Objekten|LessThan15~1_combout\);

-- Location: LCCOMB_X41_Y31_N30
\Objekten|LessThan15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan15~2_combout\ = (\Objekten|Add6~12_combout\) # ((\Objekten|Add6~14_combout\) # ((\Objekten|LessThan15~1_combout\ & \Objekten|Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan15~1_combout\,
	datab => \Objekten|Add6~12_combout\,
	datac => \Objekten|Add6~10_combout\,
	datad => \Objekten|Add6~14_combout\,
	combout => \Objekten|LessThan15~2_combout\);

-- Location: LCCOMB_X41_Y29_N0
\Objekten|LessThan17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan17~3_combout\ = (\Objekten|LessThan19~5_combout\ & (!\Objekten|Add6~58_combout\ & (!\Objekten|Add6~16_combout\ & \Objekten|LessThan19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan19~5_combout\,
	datab => \Objekten|Add6~58_combout\,
	datac => \Objekten|Add6~16_combout\,
	datad => \Objekten|LessThan19~4_combout\,
	combout => \Objekten|LessThan17~3_combout\);

-- Location: LCCOMB_X44_Y29_N18
\Objekten|LessThan14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan14~8_combout\ = (!\Objekten|Add7~14_combout\ & (!\Objekten|Add7~10_combout\ & !\Objekten|Add7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|Add7~14_combout\,
	datac => \Objekten|Add7~10_combout\,
	datad => \Objekten|Add7~12_combout\,
	combout => \Objekten|LessThan14~8_combout\);

-- Location: LCCOMB_X44_Y29_N12
\Objekten|LessThan14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan14~7_combout\ = (!\Objekten|Add7~8_combout\ & (((!\Objekten|Add7~4_combout\ & !\Objekten|Add7~2_combout\)) # (!\Objekten|Add7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~4_combout\,
	datab => \Objekten|Add7~6_combout\,
	datac => \Objekten|Add7~2_combout\,
	datad => \Objekten|Add7~8_combout\,
	combout => \Objekten|LessThan14~7_combout\);

-- Location: LCCOMB_X45_Y30_N28
\Objekten|LessThan14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan14~5_combout\ = (!\Objekten|Add7~16_combout\ & (!\Objekten|Add7~50_combout\ & (!\Objekten|Add7~52_combout\ & !\Objekten|Add7~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~16_combout\,
	datab => \Objekten|Add7~50_combout\,
	datac => \Objekten|Add7~52_combout\,
	datad => \Objekten|Add7~54_combout\,
	combout => \Objekten|LessThan14~5_combout\);

-- Location: LCCOMB_X41_Y29_N20
\Objekten|LessThan14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan14~6_combout\ = (!\Objekten|Add7~58_combout\ & (!\Objekten|Add7~56_combout\ & (\Objekten|LessThan14~5_combout\ & \Objekten|LessThan14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~58_combout\,
	datab => \Objekten|Add7~56_combout\,
	datac => \Objekten|LessThan14~5_combout\,
	datad => \Objekten|LessThan14~4_combout\,
	combout => \Objekten|LessThan14~6_combout\);

-- Location: LCCOMB_X41_Y29_N18
\Objekten|coloursProcess~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|coloursProcess~4_combout\ = (\Objekten|Add7~60_combout\) # ((\Objekten|LessThan14~8_combout\ & (\Objekten|LessThan14~7_combout\ & \Objekten|LessThan14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~60_combout\,
	datab => \Objekten|LessThan14~8_combout\,
	datac => \Objekten|LessThan14~7_combout\,
	datad => \Objekten|LessThan14~6_combout\,
	combout => \Objekten|coloursProcess~4_combout\);

-- Location: LCCOMB_X41_Y29_N22
\Objekten|coloursProcess~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|coloursProcess~6_combout\ = (\Objekten|coloursProcess~4_combout\) # ((!\Objekten|Add6~60_combout\ & ((\Objekten|LessThan15~2_combout\) # (!\Objekten|LessThan17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan15~2_combout\,
	datab => \Objekten|LessThan17~3_combout\,
	datac => \Objekten|Add6~60_combout\,
	datad => \Objekten|coloursProcess~4_combout\,
	combout => \Objekten|coloursProcess~6_combout\);

-- Location: LCCOMB_X41_Y31_N10
\Objekten|LessThan17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan17~1_combout\ = (\Objekten|Add6~8_combout\) # ((\Objekten|Add6~4_combout\ & (\Objekten|Add6~6_combout\ & !\Objekten|LessThan17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add6~4_combout\,
	datab => \Objekten|Add6~6_combout\,
	datac => \Objekten|Add6~8_combout\,
	datad => \Objekten|LessThan17~0_combout\,
	combout => \Objekten|LessThan17~1_combout\);

-- Location: LCCOMB_X41_Y31_N28
\Objekten|LessThan17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan17~2_combout\ = (\Objekten|Add6~14_combout\ & ((\Objekten|Add6~12_combout\) # ((\Objekten|LessThan17~1_combout\ & \Objekten|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan17~1_combout\,
	datab => \Objekten|Add6~12_combout\,
	datac => \Objekten|Add6~10_combout\,
	datad => \Objekten|Add6~14_combout\,
	combout => \Objekten|LessThan17~2_combout\);

-- Location: LCCOMB_X41_Y29_N10
\Objekten|Circle2Colour[0][3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour[0][3]~3_combout\ = (\Objekten|Add7~60_combout\) # ((!\Objekten|Add6~60_combout\ & ((\Objekten|LessThan17~2_combout\) # (!\Objekten|LessThan17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~60_combout\,
	datab => \Objekten|LessThan17~2_combout\,
	datac => \Objekten|Add6~60_combout\,
	datad => \Objekten|LessThan17~3_combout\,
	combout => \Objekten|Circle2Colour[0][3]~3_combout\);

-- Location: LCCOMB_X41_Y29_N8
\Objekten|LessThan15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|LessThan15~3_combout\ = (!\Objekten|Add6~60_combout\ & ((\Objekten|LessThan15~2_combout\) # (!\Objekten|LessThan17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|LessThan15~2_combout\,
	datac => \Objekten|Add6~60_combout\,
	datad => \Objekten|LessThan17~3_combout\,
	combout => \Objekten|LessThan15~3_combout\);

-- Location: LCCOMB_X44_Y29_N4
\Objekten|Circle2Colour[0][3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour[0][3]~0_combout\ = (\Objekten|Add7~6_combout\) # ((\Objekten|Add7~2_combout\ & (\Objekten|CircleCoord1.x\(0) & \Objekten|Add7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~2_combout\,
	datab => \Objekten|CircleCoord1.x\(0),
	datac => \Objekten|Add7~0_combout\,
	datad => \Objekten|Add7~6_combout\,
	combout => \Objekten|Circle2Colour[0][3]~0_combout\);

-- Location: LCCOMB_X44_Y29_N14
\Objekten|Circle2Colour[0][3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour[0][3]~1_combout\ = (\Objekten|Add7~10_combout\) # ((\Objekten|Add7~8_combout\ & ((\Objekten|Circle2Colour[0][3]~0_combout\) # (\Objekten|Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Add7~10_combout\,
	datab => \Objekten|Circle2Colour[0][3]~0_combout\,
	datac => \Objekten|Add7~4_combout\,
	datad => \Objekten|Add7~8_combout\,
	combout => \Objekten|Circle2Colour[0][3]~1_combout\);

-- Location: LCCOMB_X41_Y29_N14
\Objekten|Circle2Colour[0][3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour[0][3]~2_combout\ = (\Objekten|LessThan14~6_combout\ & (((!\Objekten|Circle2Colour[0][3]~1_combout\ & !\Objekten|Add7~12_combout\)) # (!\Objekten|Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Circle2Colour[0][3]~1_combout\,
	datab => \Objekten|Add7~12_combout\,
	datac => \Objekten|Add7~14_combout\,
	datad => \Objekten|LessThan14~6_combout\,
	combout => \Objekten|Circle2Colour[0][3]~2_combout\);

-- Location: LCCOMB_X41_Y29_N16
\Objekten|Circle2Colour[0][3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour[0][3]~4_combout\ = (\Objekten|Circle2Colour[0][3]~3_combout\ & ((\Objekten|LessThan15~3_combout\) # ((\Objekten|coloursProcess~4_combout\)))) # (!\Objekten|Circle2Colour[0][3]~3_combout\ & (\Objekten|Circle2Colour[0][3]~2_combout\ 
-- & ((\Objekten|LessThan15~3_combout\) # (\Objekten|coloursProcess~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Circle2Colour[0][3]~3_combout\,
	datab => \Objekten|LessThan15~3_combout\,
	datac => \Objekten|Circle2Colour[0][3]~2_combout\,
	datad => \Objekten|coloursProcess~4_combout\,
	combout => \Objekten|Circle2Colour[0][3]~4_combout\);

-- Location: LCCOMB_X41_Y29_N12
\Objekten|Circle2Colour~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour~10_combout\ = ((\Objekten|Circle2Colour~9_combout\ & \Objekten|Circle2Colour[0][3]~4_combout\)) # (!\Objekten|coloursProcess~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|Circle2Colour~9_combout\,
	datac => \Objekten|coloursProcess~6_combout\,
	datad => \Objekten|Circle2Colour[0][3]~4_combout\,
	combout => \Objekten|Circle2Colour~10_combout\);

-- Location: FF_X41_Y29_N13
\Objekten|Circle2Colour[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Circle2Colour~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|Circle2Colour[0][3]~q\);

-- Location: LCCOMB_X46_Y31_N0
\Objekten|OnderCirkel|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~0_combout\ = (\Objekten|CircleCoord1.x\(0) & ((GND) # (!xCord(0)))) # (!\Objekten|CircleCoord1.x\(0) & (xCord(0) $ (GND)))
-- \Objekten|OnderCirkel|Add0~1\ = CARRY((\Objekten|CircleCoord1.x\(0)) # (!xCord(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord1.x\(0),
	datab => xCord(0),
	datad => VCC,
	combout => \Objekten|OnderCirkel|Add0~0_combout\,
	cout => \Objekten|OnderCirkel|Add0~1\);

-- Location: LCCOMB_X46_Y31_N2
\Objekten|OnderCirkel|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~2_combout\ = (xCord(1) & ((\Objekten|CircleCoord2.x\(1) & (!\Objekten|OnderCirkel|Add0~1\)) # (!\Objekten|CircleCoord2.x\(1) & ((\Objekten|OnderCirkel|Add0~1\) # (GND))))) # (!xCord(1) & ((\Objekten|CircleCoord2.x\(1) & 
-- (\Objekten|OnderCirkel|Add0~1\ & VCC)) # (!\Objekten|CircleCoord2.x\(1) & (!\Objekten|OnderCirkel|Add0~1\))))
-- \Objekten|OnderCirkel|Add0~3\ = CARRY((xCord(1) & ((!\Objekten|OnderCirkel|Add0~1\) # (!\Objekten|CircleCoord2.x\(1)))) # (!xCord(1) & (!\Objekten|CircleCoord2.x\(1) & !\Objekten|OnderCirkel|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(1),
	datab => \Objekten|CircleCoord2.x\(1),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~1\,
	combout => \Objekten|OnderCirkel|Add0~2_combout\,
	cout => \Objekten|OnderCirkel|Add0~3\);

-- Location: LCCOMB_X46_Y31_N4
\Objekten|OnderCirkel|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~4_combout\ = ((xCord(2) $ (\Objekten|CircleCoord2.x\(2) $ (!\Objekten|OnderCirkel|Add0~3\)))) # (GND)
-- \Objekten|OnderCirkel|Add0~5\ = CARRY((xCord(2) & (!\Objekten|CircleCoord2.x\(2) & !\Objekten|OnderCirkel|Add0~3\)) # (!xCord(2) & ((!\Objekten|OnderCirkel|Add0~3\) # (!\Objekten|CircleCoord2.x\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(2),
	datab => \Objekten|CircleCoord2.x\(2),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~3\,
	combout => \Objekten|OnderCirkel|Add0~4_combout\,
	cout => \Objekten|OnderCirkel|Add0~5\);

-- Location: LCCOMB_X46_Y31_N6
\Objekten|OnderCirkel|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~6_combout\ = (xCord(3) & ((\Objekten|CircleCoord2.x\(3) & ((\Objekten|OnderCirkel|Add0~5\) # (GND))) # (!\Objekten|CircleCoord2.x\(3) & (!\Objekten|OnderCirkel|Add0~5\)))) # (!xCord(3) & ((\Objekten|CircleCoord2.x\(3) & 
-- (!\Objekten|OnderCirkel|Add0~5\)) # (!\Objekten|CircleCoord2.x\(3) & (\Objekten|OnderCirkel|Add0~5\ & VCC))))
-- \Objekten|OnderCirkel|Add0~7\ = CARRY((xCord(3) & ((\Objekten|CircleCoord2.x\(3)) # (!\Objekten|OnderCirkel|Add0~5\))) # (!xCord(3) & (\Objekten|CircleCoord2.x\(3) & !\Objekten|OnderCirkel|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(3),
	datab => \Objekten|CircleCoord2.x\(3),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~5\,
	combout => \Objekten|OnderCirkel|Add0~6_combout\,
	cout => \Objekten|OnderCirkel|Add0~7\);

-- Location: LCCOMB_X46_Y31_N8
\Objekten|OnderCirkel|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~8_combout\ = ((\Objekten|CircleCoord2.x\(4) $ (xCord(4) $ (!\Objekten|OnderCirkel|Add0~7\)))) # (GND)
-- \Objekten|OnderCirkel|Add0~9\ = CARRY((\Objekten|CircleCoord2.x\(4) & (!xCord(4) & !\Objekten|OnderCirkel|Add0~7\)) # (!\Objekten|CircleCoord2.x\(4) & ((!\Objekten|OnderCirkel|Add0~7\) # (!xCord(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(4),
	datab => xCord(4),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~7\,
	combout => \Objekten|OnderCirkel|Add0~8_combout\,
	cout => \Objekten|OnderCirkel|Add0~9\);

-- Location: LCCOMB_X46_Y31_N10
\Objekten|OnderCirkel|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~10_combout\ = (xCord(5) & ((\Objekten|CircleCoord2.x\(5) & (!\Objekten|OnderCirkel|Add0~9\)) # (!\Objekten|CircleCoord2.x\(5) & ((\Objekten|OnderCirkel|Add0~9\) # (GND))))) # (!xCord(5) & ((\Objekten|CircleCoord2.x\(5) & 
-- (\Objekten|OnderCirkel|Add0~9\ & VCC)) # (!\Objekten|CircleCoord2.x\(5) & (!\Objekten|OnderCirkel|Add0~9\))))
-- \Objekten|OnderCirkel|Add0~11\ = CARRY((xCord(5) & ((!\Objekten|OnderCirkel|Add0~9\) # (!\Objekten|CircleCoord2.x\(5)))) # (!xCord(5) & (!\Objekten|CircleCoord2.x\(5) & !\Objekten|OnderCirkel|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xCord(5),
	datab => \Objekten|CircleCoord2.x\(5),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~9\,
	combout => \Objekten|OnderCirkel|Add0~10_combout\,
	cout => \Objekten|OnderCirkel|Add0~11\);

-- Location: LCCOMB_X46_Y31_N12
\Objekten|OnderCirkel|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~12_combout\ = ((\Objekten|CircleCoord2.x\(6) $ (xCord(6) $ (\Objekten|OnderCirkel|Add0~11\)))) # (GND)
-- \Objekten|OnderCirkel|Add0~13\ = CARRY((\Objekten|CircleCoord2.x\(6) & ((!\Objekten|OnderCirkel|Add0~11\) # (!xCord(6)))) # (!\Objekten|CircleCoord2.x\(6) & (!xCord(6) & !\Objekten|OnderCirkel|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(6),
	datab => xCord(6),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~11\,
	combout => \Objekten|OnderCirkel|Add0~12_combout\,
	cout => \Objekten|OnderCirkel|Add0~13\);

-- Location: LCCOMB_X46_Y31_N14
\Objekten|OnderCirkel|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~14_combout\ = (\Objekten|CircleCoord2.x\(7) & ((xCord(7) & (!\Objekten|OnderCirkel|Add0~13\)) # (!xCord(7) & (\Objekten|OnderCirkel|Add0~13\ & VCC)))) # (!\Objekten|CircleCoord2.x\(7) & ((xCord(7) & 
-- ((\Objekten|OnderCirkel|Add0~13\) # (GND))) # (!xCord(7) & (!\Objekten|OnderCirkel|Add0~13\))))
-- \Objekten|OnderCirkel|Add0~15\ = CARRY((\Objekten|CircleCoord2.x\(7) & (xCord(7) & !\Objekten|OnderCirkel|Add0~13\)) # (!\Objekten|CircleCoord2.x\(7) & ((xCord(7)) # (!\Objekten|OnderCirkel|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(7),
	datab => xCord(7),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~13\,
	combout => \Objekten|OnderCirkel|Add0~14_combout\,
	cout => \Objekten|OnderCirkel|Add0~15\);

-- Location: LCCOMB_X46_Y31_N16
\Objekten|OnderCirkel|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~16_combout\ = ((\Objekten|CircleCoord2.x\(8) $ (xCord(8) $ (\Objekten|OnderCirkel|Add0~15\)))) # (GND)
-- \Objekten|OnderCirkel|Add0~17\ = CARRY((\Objekten|CircleCoord2.x\(8) & ((!\Objekten|OnderCirkel|Add0~15\) # (!xCord(8)))) # (!\Objekten|CircleCoord2.x\(8) & (!xCord(8) & !\Objekten|OnderCirkel|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(8),
	datab => xCord(8),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~15\,
	combout => \Objekten|OnderCirkel|Add0~16_combout\,
	cout => \Objekten|OnderCirkel|Add0~17\);

-- Location: LCCOMB_X46_Y31_N18
\Objekten|OnderCirkel|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~18_combout\ = (\Objekten|CircleCoord2.x\(9) & ((xCord(9) & ((\Objekten|OnderCirkel|Add0~17\) # (GND))) # (!xCord(9) & (!\Objekten|OnderCirkel|Add0~17\)))) # (!\Objekten|CircleCoord2.x\(9) & ((xCord(9) & 
-- (!\Objekten|OnderCirkel|Add0~17\)) # (!xCord(9) & (\Objekten|OnderCirkel|Add0~17\ & VCC))))
-- \Objekten|OnderCirkel|Add0~19\ = CARRY((\Objekten|CircleCoord2.x\(9) & ((xCord(9)) # (!\Objekten|OnderCirkel|Add0~17\))) # (!\Objekten|CircleCoord2.x\(9) & (xCord(9) & !\Objekten|OnderCirkel|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(9),
	datab => xCord(9),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~17\,
	combout => \Objekten|OnderCirkel|Add0~18_combout\,
	cout => \Objekten|OnderCirkel|Add0~19\);

-- Location: LCCOMB_X46_Y31_N20
\Objekten|OnderCirkel|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~20_combout\ = (\Objekten|CircleCoord2.x\(10) & ((GND) # (!\Objekten|OnderCirkel|Add0~19\))) # (!\Objekten|CircleCoord2.x\(10) & (\Objekten|OnderCirkel|Add0~19\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~21\ = CARRY((\Objekten|CircleCoord2.x\(10)) # (!\Objekten|OnderCirkel|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(10),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~19\,
	combout => \Objekten|OnderCirkel|Add0~20_combout\,
	cout => \Objekten|OnderCirkel|Add0~21\);

-- Location: LCCOMB_X46_Y31_N22
\Objekten|OnderCirkel|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~22_combout\ = (\Objekten|CircleCoord2.x\(11) & (\Objekten|OnderCirkel|Add0~21\ & VCC)) # (!\Objekten|CircleCoord2.x\(11) & (!\Objekten|OnderCirkel|Add0~21\))
-- \Objekten|OnderCirkel|Add0~23\ = CARRY((!\Objekten|CircleCoord2.x\(11) & !\Objekten|OnderCirkel|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(11),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~21\,
	combout => \Objekten|OnderCirkel|Add0~22_combout\,
	cout => \Objekten|OnderCirkel|Add0~23\);

-- Location: LCCOMB_X46_Y31_N24
\Objekten|OnderCirkel|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~24_combout\ = (\Objekten|CircleCoord2.x\(12) & ((GND) # (!\Objekten|OnderCirkel|Add0~23\))) # (!\Objekten|CircleCoord2.x\(12) & (\Objekten|OnderCirkel|Add0~23\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~25\ = CARRY((\Objekten|CircleCoord2.x\(12)) # (!\Objekten|OnderCirkel|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(12),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~23\,
	combout => \Objekten|OnderCirkel|Add0~24_combout\,
	cout => \Objekten|OnderCirkel|Add0~25\);

-- Location: LCCOMB_X46_Y31_N26
\Objekten|OnderCirkel|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~26_combout\ = (\Objekten|CircleCoord2.x\(13) & (\Objekten|OnderCirkel|Add0~25\ & VCC)) # (!\Objekten|CircleCoord2.x\(13) & (!\Objekten|OnderCirkel|Add0~25\))
-- \Objekten|OnderCirkel|Add0~27\ = CARRY((!\Objekten|CircleCoord2.x\(13) & !\Objekten|OnderCirkel|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(13),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~25\,
	combout => \Objekten|OnderCirkel|Add0~26_combout\,
	cout => \Objekten|OnderCirkel|Add0~27\);

-- Location: LCCOMB_X46_Y31_N28
\Objekten|OnderCirkel|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~28_combout\ = (\Objekten|CircleCoord2.x\(14) & ((GND) # (!\Objekten|OnderCirkel|Add0~27\))) # (!\Objekten|CircleCoord2.x\(14) & (\Objekten|OnderCirkel|Add0~27\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~29\ = CARRY((\Objekten|CircleCoord2.x\(14)) # (!\Objekten|OnderCirkel|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(14),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~27\,
	combout => \Objekten|OnderCirkel|Add0~28_combout\,
	cout => \Objekten|OnderCirkel|Add0~29\);

-- Location: LCCOMB_X46_Y31_N30
\Objekten|OnderCirkel|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~30_combout\ = (\Objekten|CircleCoord2.x\(15) & (\Objekten|OnderCirkel|Add0~29\ & VCC)) # (!\Objekten|CircleCoord2.x\(15) & (!\Objekten|OnderCirkel|Add0~29\))
-- \Objekten|OnderCirkel|Add0~31\ = CARRY((!\Objekten|CircleCoord2.x\(15) & !\Objekten|OnderCirkel|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(15),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~29\,
	combout => \Objekten|OnderCirkel|Add0~30_combout\,
	cout => \Objekten|OnderCirkel|Add0~31\);

-- Location: LCCOMB_X46_Y30_N0
\Objekten|OnderCirkel|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~32_combout\ = (\Objekten|CircleCoord2.x\(16) & ((GND) # (!\Objekten|OnderCirkel|Add0~31\))) # (!\Objekten|CircleCoord2.x\(16) & (\Objekten|OnderCirkel|Add0~31\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~33\ = CARRY((\Objekten|CircleCoord2.x\(16)) # (!\Objekten|OnderCirkel|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(16),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~31\,
	combout => \Objekten|OnderCirkel|Add0~32_combout\,
	cout => \Objekten|OnderCirkel|Add0~33\);

-- Location: LCCOMB_X46_Y30_N2
\Objekten|OnderCirkel|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~34_combout\ = (\Objekten|CircleCoord2.x\(17) & (\Objekten|OnderCirkel|Add0~33\ & VCC)) # (!\Objekten|CircleCoord2.x\(17) & (!\Objekten|OnderCirkel|Add0~33\))
-- \Objekten|OnderCirkel|Add0~35\ = CARRY((!\Objekten|CircleCoord2.x\(17) & !\Objekten|OnderCirkel|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(17),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~33\,
	combout => \Objekten|OnderCirkel|Add0~34_combout\,
	cout => \Objekten|OnderCirkel|Add0~35\);

-- Location: DSPMULT_X48_Y32_N0
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y32_N2
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X49_Y36_N8
\Objekten|OnderCirkel|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~1_cout\ = CARRY(!yCord(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yCord(0),
	datad => VCC,
	cout => \Objekten|OnderCirkel|Add1~1_cout\);

-- Location: LCCOMB_X49_Y36_N10
\Objekten|OnderCirkel|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~2_combout\ = (yCord(1) & ((\Objekten|OnderCirkel|Add1~1_cout\) # (GND))) # (!yCord(1) & (!\Objekten|OnderCirkel|Add1~1_cout\))
-- \Objekten|OnderCirkel|Add1~3\ = CARRY((yCord(1)) # (!\Objekten|OnderCirkel|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(1),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add1~1_cout\,
	combout => \Objekten|OnderCirkel|Add1~2_combout\,
	cout => \Objekten|OnderCirkel|Add1~3\);

-- Location: LCCOMB_X49_Y36_N12
\Objekten|OnderCirkel|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~4_combout\ = (yCord(2) & (!\Objekten|OnderCirkel|Add1~3\ & VCC)) # (!yCord(2) & (\Objekten|OnderCirkel|Add1~3\ $ (GND)))
-- \Objekten|OnderCirkel|Add1~5\ = CARRY((!yCord(2) & !\Objekten|OnderCirkel|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(2),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add1~3\,
	combout => \Objekten|OnderCirkel|Add1~4_combout\,
	cout => \Objekten|OnderCirkel|Add1~5\);

-- Location: LCCOMB_X49_Y36_N14
\Objekten|OnderCirkel|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~6_combout\ = (yCord(3) & ((\Objekten|OnderCirkel|Add1~5\) # (GND))) # (!yCord(3) & (!\Objekten|OnderCirkel|Add1~5\))
-- \Objekten|OnderCirkel|Add1~7\ = CARRY((yCord(3)) # (!\Objekten|OnderCirkel|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(3),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add1~5\,
	combout => \Objekten|OnderCirkel|Add1~6_combout\,
	cout => \Objekten|OnderCirkel|Add1~7\);

-- Location: LCCOMB_X49_Y36_N16
\Objekten|OnderCirkel|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~8_combout\ = (yCord(4) & (\Objekten|OnderCirkel|Add1~7\ $ (GND))) # (!yCord(4) & ((GND) # (!\Objekten|OnderCirkel|Add1~7\)))
-- \Objekten|OnderCirkel|Add1~9\ = CARRY((!\Objekten|OnderCirkel|Add1~7\) # (!yCord(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(4),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add1~7\,
	combout => \Objekten|OnderCirkel|Add1~8_combout\,
	cout => \Objekten|OnderCirkel|Add1~9\);

-- Location: LCCOMB_X49_Y36_N18
\Objekten|OnderCirkel|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~10_combout\ = (yCord(5) & ((\Objekten|OnderCirkel|Add1~9\) # (GND))) # (!yCord(5) & (!\Objekten|OnderCirkel|Add1~9\))
-- \Objekten|OnderCirkel|Add1~11\ = CARRY((yCord(5)) # (!\Objekten|OnderCirkel|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(5),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add1~9\,
	combout => \Objekten|OnderCirkel|Add1~10_combout\,
	cout => \Objekten|OnderCirkel|Add1~11\);

-- Location: LCCOMB_X49_Y36_N20
\Objekten|OnderCirkel|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~12_combout\ = (yCord(6) & (!\Objekten|OnderCirkel|Add1~11\ & VCC)) # (!yCord(6) & (\Objekten|OnderCirkel|Add1~11\ $ (GND)))
-- \Objekten|OnderCirkel|Add1~13\ = CARRY((!yCord(6) & !\Objekten|OnderCirkel|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(6),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add1~11\,
	combout => \Objekten|OnderCirkel|Add1~12_combout\,
	cout => \Objekten|OnderCirkel|Add1~13\);

-- Location: LCCOMB_X49_Y36_N22
\Objekten|OnderCirkel|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~14_combout\ = (yCord(7) & (!\Objekten|OnderCirkel|Add1~13\)) # (!yCord(7) & (\Objekten|OnderCirkel|Add1~13\ & VCC))
-- \Objekten|OnderCirkel|Add1~15\ = CARRY((yCord(7) & !\Objekten|OnderCirkel|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(7),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add1~13\,
	combout => \Objekten|OnderCirkel|Add1~14_combout\,
	cout => \Objekten|OnderCirkel|Add1~15\);

-- Location: LCCOMB_X49_Y36_N24
\Objekten|OnderCirkel|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~16_combout\ = (yCord(8) & (\Objekten|OnderCirkel|Add1~15\ $ (GND))) # (!yCord(8) & ((GND) # (!\Objekten|OnderCirkel|Add1~15\)))
-- \Objekten|OnderCirkel|Add1~17\ = CARRY((!\Objekten|OnderCirkel|Add1~15\) # (!yCord(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yCord(8),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add1~15\,
	combout => \Objekten|OnderCirkel|Add1~16_combout\,
	cout => \Objekten|OnderCirkel|Add1~17\);

-- Location: LCCOMB_X49_Y36_N26
\Objekten|OnderCirkel|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~18_combout\ = (yCord(9) & ((\Objekten|OnderCirkel|Add1~17\) # (GND))) # (!yCord(9) & (!\Objekten|OnderCirkel|Add1~17\))
-- \Objekten|OnderCirkel|Add1~19\ = CARRY((yCord(9)) # (!\Objekten|OnderCirkel|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yCord(9),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add1~17\,
	combout => \Objekten|OnderCirkel|Add1~18_combout\,
	cout => \Objekten|OnderCirkel|Add1~19\);

-- Location: LCCOMB_X49_Y36_N28
\Objekten|OnderCirkel|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~20_combout\ = \Objekten|OnderCirkel|Add1~19\ $ (GND)
-- \Objekten|OnderCirkel|Add1~21\ = CARRY(!\Objekten|OnderCirkel|Add1~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add1~19\,
	combout => \Objekten|OnderCirkel|Add1~20_combout\,
	cout => \Objekten|OnderCirkel|Add1~21\);

-- Location: LCCOMB_X49_Y36_N30
\Objekten|OnderCirkel|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add1~22_combout\ = !\Objekten|OnderCirkel|Add1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Objekten|OnderCirkel|Add1~21\,
	combout => \Objekten|OnderCirkel|Add1~22_combout\);

-- Location: DSPMULT_X48_Y36_N0
\Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|OnderCirkel|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y36_N2
\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X47_Y36_N0
\Objekten|OnderCirkel|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~0_combout\ = (yCord(0) & (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(0) $ (VCC))) # (!yCord(0) & (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(0) & VCC))
-- \Objekten|OnderCirkel|Add2~1\ = CARRY((yCord(0) & \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yCord(0),
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(0),
	datad => VCC,
	combout => \Objekten|OnderCirkel|Add2~0_combout\,
	cout => \Objekten|OnderCirkel|Add2~1\);

-- Location: LCCOMB_X47_Y36_N2
\Objekten|OnderCirkel|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~2_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(1) & (!\Objekten|OnderCirkel|Add2~1\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(1) & ((\Objekten|OnderCirkel|Add2~1\) # (GND)))
-- \Objekten|OnderCirkel|Add2~3\ = CARRY((!\Objekten|OnderCirkel|Add2~1\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(1),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~1\,
	combout => \Objekten|OnderCirkel|Add2~2_combout\,
	cout => \Objekten|OnderCirkel|Add2~3\);

-- Location: LCCOMB_X47_Y36_N4
\Objekten|OnderCirkel|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~4_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(2) $ (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\ $ (!\Objekten|OnderCirkel|Add2~3\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~5\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(2) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\) # (!\Objekten|OnderCirkel|Add2~3\))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(2) & 
-- (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\ & !\Objekten|OnderCirkel|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(2),
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~3\,
	combout => \Objekten|OnderCirkel|Add2~4_combout\,
	cout => \Objekten|OnderCirkel|Add2~5\);

-- Location: LCCOMB_X47_Y36_N6
\Objekten|OnderCirkel|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~6_combout\ = (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(3) & (\Objekten|OnderCirkel|Add2~5\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(3) & (!\Objekten|OnderCirkel|Add2~5\)))) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(3) & (!\Objekten|OnderCirkel|Add2~5\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(3) & ((\Objekten|OnderCirkel|Add2~5\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~7\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(3) & !\Objekten|OnderCirkel|Add2~5\)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((!\Objekten|OnderCirkel|Add2~5\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(3),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~5\,
	combout => \Objekten|OnderCirkel|Add2~6_combout\,
	cout => \Objekten|OnderCirkel|Add2~7\);

-- Location: LCCOMB_X47_Y36_N8
\Objekten|OnderCirkel|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~8_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(4) $ (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\ $ (!\Objekten|OnderCirkel|Add2~7\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~9\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(4) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\) # (!\Objekten|OnderCirkel|Add2~7\))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(4) & 
-- (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\ & !\Objekten|OnderCirkel|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(4),
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~7\,
	combout => \Objekten|OnderCirkel|Add2~8_combout\,
	cout => \Objekten|OnderCirkel|Add2~9\);

-- Location: LCCOMB_X47_Y36_N10
\Objekten|OnderCirkel|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~10_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(5) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ & (\Objekten|OnderCirkel|Add2~9\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\Objekten|OnderCirkel|Add2~9\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(5) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ & 
-- (!\Objekten|OnderCirkel|Add2~9\)) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ & ((\Objekten|OnderCirkel|Add2~9\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~11\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(5) & (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\ & !\Objekten|OnderCirkel|Add2~9\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(5) & 
-- ((!\Objekten|OnderCirkel|Add2~9\) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(5),
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~9\,
	combout => \Objekten|OnderCirkel|Add2~10_combout\,
	cout => \Objekten|OnderCirkel|Add2~11\);

-- Location: LCCOMB_X47_Y36_N12
\Objekten|OnderCirkel|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~12_combout\ = ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(6) $ (!\Objekten|OnderCirkel|Add2~11\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~13\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(6)) # (!\Objekten|OnderCirkel|Add2~11\))) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\ & (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(6) & !\Objekten|OnderCirkel|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(6),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~11\,
	combout => \Objekten|OnderCirkel|Add2~12_combout\,
	cout => \Objekten|OnderCirkel|Add2~13\);

-- Location: LCCOMB_X47_Y36_N14
\Objekten|OnderCirkel|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~14_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(7) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ & (\Objekten|OnderCirkel|Add2~13\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\Objekten|OnderCirkel|Add2~13\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(7) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ & 
-- (!\Objekten|OnderCirkel|Add2~13\)) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\Objekten|OnderCirkel|Add2~13\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~15\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(7) & (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\ & !\Objekten|OnderCirkel|Add2~13\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(7) & 
-- ((!\Objekten|OnderCirkel|Add2~13\) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(7),
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~13\,
	combout => \Objekten|OnderCirkel|Add2~14_combout\,
	cout => \Objekten|OnderCirkel|Add2~15\);

-- Location: LCCOMB_X47_Y36_N16
\Objekten|OnderCirkel|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~16_combout\ = ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(8) $ (!\Objekten|OnderCirkel|Add2~15\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~17\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(8)) # (!\Objekten|OnderCirkel|Add2~15\))) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\ & (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(8) & !\Objekten|OnderCirkel|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(8),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~15\,
	combout => \Objekten|OnderCirkel|Add2~16_combout\,
	cout => \Objekten|OnderCirkel|Add2~17\);

-- Location: LCCOMB_X47_Y36_N18
\Objekten|OnderCirkel|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~18_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(9) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ & (\Objekten|OnderCirkel|Add2~17\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\Objekten|OnderCirkel|Add2~17\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(9) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ & 
-- (!\Objekten|OnderCirkel|Add2~17\)) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ & ((\Objekten|OnderCirkel|Add2~17\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~19\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(9) & (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\Objekten|OnderCirkel|Add2~17\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(9) & 
-- ((!\Objekten|OnderCirkel|Add2~17\) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(9),
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~17\,
	combout => \Objekten|OnderCirkel|Add2~18_combout\,
	cout => \Objekten|OnderCirkel|Add2~19\);

-- Location: LCCOMB_X47_Y36_N20
\Objekten|OnderCirkel|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~20_combout\ = ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(10) $ (!\Objekten|OnderCirkel|Add2~19\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~21\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(10)) # (!\Objekten|OnderCirkel|Add2~19\))) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\ & (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(10) & !\Objekten|OnderCirkel|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(10),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~19\,
	combout => \Objekten|OnderCirkel|Add2~20_combout\,
	cout => \Objekten|OnderCirkel|Add2~21\);

-- Location: LCCOMB_X49_Y36_N6
\Objekten|OnderCirkel|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|LessThan0~1_combout\ = (\Objekten|OnderCirkel|Add2~6_combout\) # ((\Objekten|OnderCirkel|Add2~4_combout\ & ((\Objekten|OnderCirkel|Add2~2_combout\) # (\Objekten|OnderCirkel|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Add2~4_combout\,
	datab => \Objekten|OnderCirkel|Add2~6_combout\,
	datac => \Objekten|OnderCirkel|Add2~2_combout\,
	datad => \Objekten|OnderCirkel|Add2~0_combout\,
	combout => \Objekten|OnderCirkel|LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y36_N0
\Objekten|OnderCirkel|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|LessThan0~0_combout\ = (\Objekten|OnderCirkel|Add2~14_combout\ & (\Objekten|OnderCirkel|Add2~16_combout\ & \Objekten|OnderCirkel|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|OnderCirkel|Add2~14_combout\,
	datac => \Objekten|OnderCirkel|Add2~16_combout\,
	datad => \Objekten|OnderCirkel|Add2~12_combout\,
	combout => \Objekten|OnderCirkel|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y36_N4
\Objekten|OnderCirkel|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|LessThan0~2_combout\ = (\Objekten|OnderCirkel|LessThan0~0_combout\ & ((\Objekten|OnderCirkel|LessThan0~1_combout\) # ((\Objekten|OnderCirkel|Add2~8_combout\) # (\Objekten|OnderCirkel|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|LessThan0~1_combout\,
	datab => \Objekten|OnderCirkel|Add2~8_combout\,
	datac => \Objekten|OnderCirkel|Add2~10_combout\,
	datad => \Objekten|OnderCirkel|LessThan0~0_combout\,
	combout => \Objekten|OnderCirkel|LessThan0~2_combout\);

-- Location: LCCOMB_X47_Y36_N22
\Objekten|OnderCirkel|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~22_combout\ = (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(11) & (\Objekten|OnderCirkel|Add2~21\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(11) & (!\Objekten|OnderCirkel|Add2~21\)))) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(11) & 
-- (!\Objekten|OnderCirkel|Add2~21\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(11) & ((\Objekten|OnderCirkel|Add2~21\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~23\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(11) & !\Objekten|OnderCirkel|Add2~21\)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((!\Objekten|OnderCirkel|Add2~21\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(11),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~21\,
	combout => \Objekten|OnderCirkel|Add2~22_combout\,
	cout => \Objekten|OnderCirkel|Add2~23\);

-- Location: LCCOMB_X49_Y36_N2
\Objekten|OnderCirkel|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|LessThan0~3_combout\ = (\Objekten|OnderCirkel|Add2~22_combout\ & ((\Objekten|OnderCirkel|Add2~18_combout\) # ((\Objekten|OnderCirkel|Add2~20_combout\) # (\Objekten|OnderCirkel|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Add2~18_combout\,
	datab => \Objekten|OnderCirkel|Add2~20_combout\,
	datac => \Objekten|OnderCirkel|LessThan0~2_combout\,
	datad => \Objekten|OnderCirkel|Add2~22_combout\,
	combout => \Objekten|OnderCirkel|LessThan0~3_combout\);

-- Location: LCCOMB_X46_Y30_N4
\Objekten|OnderCirkel|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~36_combout\ = (\Objekten|CircleCoord2.x\(18) & ((GND) # (!\Objekten|OnderCirkel|Add0~35\))) # (!\Objekten|CircleCoord2.x\(18) & (\Objekten|OnderCirkel|Add0~35\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~37\ = CARRY((\Objekten|CircleCoord2.x\(18)) # (!\Objekten|OnderCirkel|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(18),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~35\,
	combout => \Objekten|OnderCirkel|Add0~36_combout\,
	cout => \Objekten|OnderCirkel|Add0~37\);

-- Location: LCCOMB_X46_Y30_N6
\Objekten|OnderCirkel|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~38_combout\ = (\Objekten|CircleCoord2.x\(19) & (\Objekten|OnderCirkel|Add0~37\ & VCC)) # (!\Objekten|CircleCoord2.x\(19) & (!\Objekten|OnderCirkel|Add0~37\))
-- \Objekten|OnderCirkel|Add0~39\ = CARRY((!\Objekten|CircleCoord2.x\(19) & !\Objekten|OnderCirkel|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(19),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~37\,
	combout => \Objekten|OnderCirkel|Add0~38_combout\,
	cout => \Objekten|OnderCirkel|Add0~39\);

-- Location: LCCOMB_X46_Y30_N8
\Objekten|OnderCirkel|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~40_combout\ = (\Objekten|CircleCoord2.x\(20) & ((GND) # (!\Objekten|OnderCirkel|Add0~39\))) # (!\Objekten|CircleCoord2.x\(20) & (\Objekten|OnderCirkel|Add0~39\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~41\ = CARRY((\Objekten|CircleCoord2.x\(20)) # (!\Objekten|OnderCirkel|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(20),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~39\,
	combout => \Objekten|OnderCirkel|Add0~40_combout\,
	cout => \Objekten|OnderCirkel|Add0~41\);

-- Location: LCCOMB_X46_Y30_N10
\Objekten|OnderCirkel|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~42_combout\ = (\Objekten|CircleCoord2.x\(21) & (\Objekten|OnderCirkel|Add0~41\ & VCC)) # (!\Objekten|CircleCoord2.x\(21) & (!\Objekten|OnderCirkel|Add0~41\))
-- \Objekten|OnderCirkel|Add0~43\ = CARRY((!\Objekten|CircleCoord2.x\(21) & !\Objekten|OnderCirkel|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(21),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~41\,
	combout => \Objekten|OnderCirkel|Add0~42_combout\,
	cout => \Objekten|OnderCirkel|Add0~43\);

-- Location: LCCOMB_X46_Y30_N12
\Objekten|OnderCirkel|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~44_combout\ = (\Objekten|CircleCoord2.x\(22) & ((GND) # (!\Objekten|OnderCirkel|Add0~43\))) # (!\Objekten|CircleCoord2.x\(22) & (\Objekten|OnderCirkel|Add0~43\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~45\ = CARRY((\Objekten|CircleCoord2.x\(22)) # (!\Objekten|OnderCirkel|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(22),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~43\,
	combout => \Objekten|OnderCirkel|Add0~44_combout\,
	cout => \Objekten|OnderCirkel|Add0~45\);

-- Location: LCCOMB_X46_Y30_N14
\Objekten|OnderCirkel|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~46_combout\ = (\Objekten|CircleCoord2.x\(23) & (\Objekten|OnderCirkel|Add0~45\ & VCC)) # (!\Objekten|CircleCoord2.x\(23) & (!\Objekten|OnderCirkel|Add0~45\))
-- \Objekten|OnderCirkel|Add0~47\ = CARRY((!\Objekten|CircleCoord2.x\(23) & !\Objekten|OnderCirkel|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(23),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~45\,
	combout => \Objekten|OnderCirkel|Add0~46_combout\,
	cout => \Objekten|OnderCirkel|Add0~47\);

-- Location: LCCOMB_X46_Y30_N16
\Objekten|OnderCirkel|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~48_combout\ = (\Objekten|CircleCoord2.x\(24) & ((GND) # (!\Objekten|OnderCirkel|Add0~47\))) # (!\Objekten|CircleCoord2.x\(24) & (\Objekten|OnderCirkel|Add0~47\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~49\ = CARRY((\Objekten|CircleCoord2.x\(24)) # (!\Objekten|OnderCirkel|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(24),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~47\,
	combout => \Objekten|OnderCirkel|Add0~48_combout\,
	cout => \Objekten|OnderCirkel|Add0~49\);

-- Location: LCCOMB_X46_Y30_N18
\Objekten|OnderCirkel|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~50_combout\ = (\Objekten|CircleCoord2.x\(25) & (\Objekten|OnderCirkel|Add0~49\ & VCC)) # (!\Objekten|CircleCoord2.x\(25) & (!\Objekten|OnderCirkel|Add0~49\))
-- \Objekten|OnderCirkel|Add0~51\ = CARRY((!\Objekten|CircleCoord2.x\(25) & !\Objekten|OnderCirkel|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(25),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~49\,
	combout => \Objekten|OnderCirkel|Add0~50_combout\,
	cout => \Objekten|OnderCirkel|Add0~51\);

-- Location: LCCOMB_X46_Y30_N20
\Objekten|OnderCirkel|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~52_combout\ = (\Objekten|CircleCoord2.x\(26) & ((GND) # (!\Objekten|OnderCirkel|Add0~51\))) # (!\Objekten|CircleCoord2.x\(26) & (\Objekten|OnderCirkel|Add0~51\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~53\ = CARRY((\Objekten|CircleCoord2.x\(26)) # (!\Objekten|OnderCirkel|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(26),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~51\,
	combout => \Objekten|OnderCirkel|Add0~52_combout\,
	cout => \Objekten|OnderCirkel|Add0~53\);

-- Location: LCCOMB_X46_Y30_N22
\Objekten|OnderCirkel|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~54_combout\ = (\Objekten|CircleCoord2.x\(27) & (\Objekten|OnderCirkel|Add0~53\ & VCC)) # (!\Objekten|CircleCoord2.x\(27) & (!\Objekten|OnderCirkel|Add0~53\))
-- \Objekten|OnderCirkel|Add0~55\ = CARRY((!\Objekten|CircleCoord2.x\(27) & !\Objekten|OnderCirkel|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|CircleCoord2.x\(27),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~53\,
	combout => \Objekten|OnderCirkel|Add0~54_combout\,
	cout => \Objekten|OnderCirkel|Add0~55\);

-- Location: LCCOMB_X46_Y30_N24
\Objekten|OnderCirkel|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~56_combout\ = (\Objekten|CircleCoord2.x\(28) & ((GND) # (!\Objekten|OnderCirkel|Add0~55\))) # (!\Objekten|CircleCoord2.x\(28) & (\Objekten|OnderCirkel|Add0~55\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~57\ = CARRY((\Objekten|CircleCoord2.x\(28)) # (!\Objekten|OnderCirkel|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(28),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~55\,
	combout => \Objekten|OnderCirkel|Add0~56_combout\,
	cout => \Objekten|OnderCirkel|Add0~57\);

-- Location: LCCOMB_X46_Y30_N26
\Objekten|OnderCirkel|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~58_combout\ = (\Objekten|CircleCoord2.x\(29) & (\Objekten|OnderCirkel|Add0~57\ & VCC)) # (!\Objekten|CircleCoord2.x\(29) & (!\Objekten|OnderCirkel|Add0~57\))
-- \Objekten|OnderCirkel|Add0~59\ = CARRY((!\Objekten|CircleCoord2.x\(29) & !\Objekten|OnderCirkel|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(29),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~57\,
	combout => \Objekten|OnderCirkel|Add0~58_combout\,
	cout => \Objekten|OnderCirkel|Add0~59\);

-- Location: LCCOMB_X46_Y30_N28
\Objekten|OnderCirkel|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~60_combout\ = (\Objekten|CircleCoord2.x\(30) & ((GND) # (!\Objekten|OnderCirkel|Add0~59\))) # (!\Objekten|CircleCoord2.x\(30) & (\Objekten|OnderCirkel|Add0~59\ $ (GND)))
-- \Objekten|OnderCirkel|Add0~61\ = CARRY((\Objekten|CircleCoord2.x\(30)) # (!\Objekten|OnderCirkel|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|CircleCoord2.x\(30),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add0~59\,
	combout => \Objekten|OnderCirkel|Add0~60_combout\,
	cout => \Objekten|OnderCirkel|Add0~61\);

-- Location: LCCOMB_X46_Y30_N30
\Objekten|OnderCirkel|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add0~62_combout\ = \Objekten|OnderCirkel|Add0~61\ $ (!\Objekten|CircleCoord2.x\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Objekten|CircleCoord2.x\(31),
	cin => \Objekten|OnderCirkel|Add0~61\,
	combout => \Objekten|OnderCirkel|Add0~62_combout\);

-- Location: DSPMULT_X48_Y31_N0
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y31_N2
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: DSPMULT_X48_Y30_N0
\Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|OnderCirkel|Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y30_N2
\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X47_Y31_N2
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~0_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~dataout\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~dataout\ $ (VCC))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~dataout\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~dataout\ & VCC))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~1\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~dataout\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~dataout\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~0_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~1\);

-- Location: LCCOMB_X47_Y31_N4
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~2_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~1\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~1\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ 
-- & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~1\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~1\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~3\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~1\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~1\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT1\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT1\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~1\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~2_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~3\);

-- Location: LCCOMB_X47_Y31_N6
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~4_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~3\)))) # 
-- (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~5\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~3\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT2\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT2\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~3\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~4_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~5\);

-- Location: LCCOMB_X47_Y31_N8
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~6_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~5\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~5\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ 
-- & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~5\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~5\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~7\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~5\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~5\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT3\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~5\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~6_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~7\);

-- Location: LCCOMB_X47_Y31_N10
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~8_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~7\)))) # 
-- (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~9\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~7\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT4\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT4\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~7\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~8_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~9\);

-- Location: LCCOMB_X47_Y31_N12
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~10_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~9\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~9\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ 
-- & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~9\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~9\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~11\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~9\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~9\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT5\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~9\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~10_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~11\);

-- Location: LCCOMB_X47_Y31_N14
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~12_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~11\)))) # 
-- (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~13\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~11\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT6\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT6\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~11\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~12_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~13\);

-- Location: LCCOMB_X47_Y31_N16
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~14_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~13\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~13\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ 
-- & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~13\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~13\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~15\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~13\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~13\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT7\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~13\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~14_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~15\);

-- Location: LCCOMB_X47_Y31_N18
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~16_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~15\)))) # 
-- (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~17\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~15\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT8\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT8\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~15\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~16_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~17\);

-- Location: LCCOMB_X47_Y31_N20
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~18_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~17\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~17\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ 
-- & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~17\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~17\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~19\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~17\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~17\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT9\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT9\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~17\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~18_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~19\);

-- Location: LCCOMB_X47_Y31_N22
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~20_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~19\)))) # 
-- (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~21\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~19\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT10\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~19\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~20_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~21\);

-- Location: LCCOMB_X47_Y31_N24
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~22_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~21\ & VCC)) 
-- # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~21\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~21\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~21\) # 
-- (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~23\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~21\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~21\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT11\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT11\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~21\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~22_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~23\);

-- Location: LCCOMB_X47_Y31_N26
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~24_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~23\)))) # 
-- (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~25\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~23\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT12\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~23\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~24_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~25\);

-- Location: LCCOMB_X47_Y31_N28
\Objekten|OnderCirkel|Mult0|auto_generated|op_2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_2~26_combout\ = \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT13\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~25\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out6~DATAOUT13\,
	datad => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out4~DATAOUT13\,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~25\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~26_combout\);

-- Location: LCCOMB_X47_Y32_N2
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~0_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~0_combout\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~0_combout\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~1\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~0_combout\ & \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~0_combout\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~0_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X47_Y32_N4
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~2_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~2_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~1\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~1\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~2_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~1\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~1\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~3\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~2_combout\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~1\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~2_combout\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~1\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~2_combout\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~1\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~2_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X47_Y32_N6
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~4_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~4_combout\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~5\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~4_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~3\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~4_combout\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~4_combout\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~3\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~4_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X47_Y32_N8
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~6_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~6_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~5\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~5\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~6_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~5\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~7\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~6_combout\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~5\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~6_combout\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~5\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~6_combout\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~5\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~6_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X47_Y32_N10
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~8_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~8_combout\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~9\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~8_combout\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~7\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~8_combout\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~7\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~8_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X47_Y32_N12
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~10_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~10_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~9\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~9\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~10_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ 
-- & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~9\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~11\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~10_combout\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~9\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~10_combout\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~9\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~10_combout\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~9\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~10_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X47_Y32_N14
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~12_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~12_combout\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~11\)))) # 
-- (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~13\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~12_combout\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~11\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~12_combout\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~11\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~12_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X47_Y32_N16
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~14_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~14_combout\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~13\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~14_combout\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~13\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~14_combout\ & 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~13\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~14_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~13\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~15\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~14_combout\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~13\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~13\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~14_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~13\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~14_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X47_Y32_N18
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~16_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~16_combout\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~15\)))) # 
-- (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~17\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~16_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~15\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~16_combout\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~16_combout\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~15\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~16_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X47_Y32_N20
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~18_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~18_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~17\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~17\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~18_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ 
-- & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~17\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~17\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~19\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~18_combout\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~17\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~18_combout\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~17\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~18_combout\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~17\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~18_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X47_Y32_N22
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~20_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~20_combout\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~19\)))) # 
-- (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~21\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~20_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~19\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~20_combout\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~20_combout\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~19\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~20_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X47_Y32_N24
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~22_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~22_combout\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~21\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~22_combout\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~21\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~22_combout\ & 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~21\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~22_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~21\) # (GND)))))
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~23\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~22_combout\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~21\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~21\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~22_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~21\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~22_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X47_Y32_N26
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~24_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~24_combout\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\ $ (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~23\)))) # 
-- (GND)
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~25\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_2~24_combout\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~23\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_2~24_combout\ & (\Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\ & !\Objekten|OnderCirkel|Mult0|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~24_combout\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~23\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~24_combout\,
	cout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~25\);

-- Location: LCCOMB_X47_Y32_N28
\Objekten|OnderCirkel|Mult0|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Mult0|auto_generated|op_1~26_combout\ = \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT31\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~25\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => \Objekten|OnderCirkel|Mult0|auto_generated|op_2~26_combout\,
	cin => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~25\,
	combout => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X47_Y36_N24
\Objekten|OnderCirkel|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~24_combout\ = ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(12) $ (!\Objekten|OnderCirkel|Add2~23\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~25\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(12)) # (!\Objekten|OnderCirkel|Add2~23\))) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\ & (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(12) & !\Objekten|OnderCirkel|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(12),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~23\,
	combout => \Objekten|OnderCirkel|Add2~24_combout\,
	cout => \Objekten|OnderCirkel|Add2~25\);

-- Location: LCCOMB_X47_Y36_N26
\Objekten|OnderCirkel|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~26_combout\ = (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(13) & (\Objekten|OnderCirkel|Add2~25\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(13) & (!\Objekten|OnderCirkel|Add2~25\)))) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(13) & 
-- (!\Objekten|OnderCirkel|Add2~25\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(13) & ((\Objekten|OnderCirkel|Add2~25\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~27\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(13) & !\Objekten|OnderCirkel|Add2~25\)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((!\Objekten|OnderCirkel|Add2~25\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(13),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~25\,
	combout => \Objekten|OnderCirkel|Add2~26_combout\,
	cout => \Objekten|OnderCirkel|Add2~27\);

-- Location: LCCOMB_X47_Y36_N28
\Objekten|OnderCirkel|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~28_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(14) $ (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\ $ (!\Objekten|OnderCirkel|Add2~27\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~29\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(14) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\) # (!\Objekten|OnderCirkel|Add2~27\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(14) & (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\ & !\Objekten|OnderCirkel|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(14),
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~27\,
	combout => \Objekten|OnderCirkel|Add2~28_combout\,
	cout => \Objekten|OnderCirkel|Add2~29\);

-- Location: LCCOMB_X47_Y36_N30
\Objekten|OnderCirkel|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~30_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(15) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ & (\Objekten|OnderCirkel|Add2~29\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\Objekten|OnderCirkel|Add2~29\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(15) & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\Objekten|OnderCirkel|Add2~29\)) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\Objekten|OnderCirkel|Add2~29\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~31\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(15) & (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\ & !\Objekten|OnderCirkel|Add2~29\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(15) 
-- & ((!\Objekten|OnderCirkel|Add2~29\) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(15),
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~29\,
	combout => \Objekten|OnderCirkel|Add2~30_combout\,
	cout => \Objekten|OnderCirkel|Add2~31\);

-- Location: LCCOMB_X47_Y35_N0
\Objekten|OnderCirkel|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~32_combout\ = ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(16) $ (!\Objekten|OnderCirkel|Add2~31\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~33\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(16)) # (!\Objekten|OnderCirkel|Add2~31\))) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\ & (\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(16) & !\Objekten|OnderCirkel|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(16),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~31\,
	combout => \Objekten|OnderCirkel|Add2~32_combout\,
	cout => \Objekten|OnderCirkel|Add2~33\);

-- Location: LCCOMB_X47_Y35_N2
\Objekten|OnderCirkel|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~34_combout\ = (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(17) & (\Objekten|OnderCirkel|Add2~33\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(17) & (!\Objekten|OnderCirkel|Add2~33\)))) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(17) & 
-- (!\Objekten|OnderCirkel|Add2~33\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(17) & ((\Objekten|OnderCirkel|Add2~33\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~35\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(17) & !\Objekten|OnderCirkel|Add2~33\)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((!\Objekten|OnderCirkel|Add2~33\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|w569w\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|w569w\(17),
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~33\,
	combout => \Objekten|OnderCirkel|Add2~34_combout\,
	cout => \Objekten|OnderCirkel|Add2~35\);

-- Location: LCCOMB_X47_Y35_N4
\Objekten|OnderCirkel|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~36_combout\ = ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~0_combout\ $ (!\Objekten|OnderCirkel|Add2~35\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~37\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~0_combout\) # (!\Objekten|OnderCirkel|Add2~35\))) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~0_combout\ & !\Objekten|OnderCirkel|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~35\,
	combout => \Objekten|OnderCirkel|Add2~36_combout\,
	cout => \Objekten|OnderCirkel|Add2~37\);

-- Location: LCCOMB_X47_Y35_N6
\Objekten|OnderCirkel|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~38_combout\ = (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~2_combout\ & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\Objekten|OnderCirkel|Add2~37\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\Objekten|OnderCirkel|Add2~37\)))) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~2_combout\ & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\Objekten|OnderCirkel|Add2~37\)) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\Objekten|OnderCirkel|Add2~37\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~39\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~2_combout\ & (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\ & !\Objekten|OnderCirkel|Add2~37\)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~2_combout\ & ((!\Objekten|OnderCirkel|Add2~37\) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~2_combout\,
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~37\,
	combout => \Objekten|OnderCirkel|Add2~38_combout\,
	cout => \Objekten|OnderCirkel|Add2~39\);

-- Location: LCCOMB_X47_Y35_N8
\Objekten|OnderCirkel|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~40_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~4_combout\ $ (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\ $ (!\Objekten|OnderCirkel|Add2~39\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~41\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~4_combout\ & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\) # (!\Objekten|OnderCirkel|Add2~39\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~4_combout\ & (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\Objekten|OnderCirkel|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~4_combout\,
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~39\,
	combout => \Objekten|OnderCirkel|Add2~40_combout\,
	cout => \Objekten|OnderCirkel|Add2~41\);

-- Location: LCCOMB_X47_Y35_N10
\Objekten|OnderCirkel|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~42_combout\ = (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~6_combout\ & (\Objekten|OnderCirkel|Add2~41\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~6_combout\ & (!\Objekten|OnderCirkel|Add2~41\)))) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~6_combout\ & 
-- (!\Objekten|OnderCirkel|Add2~41\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~6_combout\ & ((\Objekten|OnderCirkel|Add2~41\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~43\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~6_combout\ & !\Objekten|OnderCirkel|Add2~41\)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((!\Objekten|OnderCirkel|Add2~41\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~41\,
	combout => \Objekten|OnderCirkel|Add2~42_combout\,
	cout => \Objekten|OnderCirkel|Add2~43\);

-- Location: LCCOMB_X47_Y35_N12
\Objekten|OnderCirkel|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~44_combout\ = ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~8_combout\ $ (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\ $ (!\Objekten|OnderCirkel|Add2~43\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~45\ = CARRY((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~8_combout\ & ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\) # (!\Objekten|OnderCirkel|Add2~43\))) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~8_combout\ & (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\ & !\Objekten|OnderCirkel|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~8_combout\,
	datab => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~43\,
	combout => \Objekten|OnderCirkel|Add2~44_combout\,
	cout => \Objekten|OnderCirkel|Add2~45\);

-- Location: LCCOMB_X47_Y35_N14
\Objekten|OnderCirkel|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~46_combout\ = (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~10_combout\ & (\Objekten|OnderCirkel|Add2~45\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~10_combout\ & (!\Objekten|OnderCirkel|Add2~45\)))) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~10_combout\ & 
-- (!\Objekten|OnderCirkel|Add2~45\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~10_combout\ & ((\Objekten|OnderCirkel|Add2~45\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~47\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~10_combout\ & !\Objekten|OnderCirkel|Add2~45\)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((!\Objekten|OnderCirkel|Add2~45\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~45\,
	combout => \Objekten|OnderCirkel|Add2~46_combout\,
	cout => \Objekten|OnderCirkel|Add2~47\);

-- Location: LCCOMB_X47_Y35_N16
\Objekten|OnderCirkel|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~48_combout\ = ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~12_combout\ $ (!\Objekten|OnderCirkel|Add2~47\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~49\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~12_combout\) # (!\Objekten|OnderCirkel|Add2~47\))) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~12_combout\ & !\Objekten|OnderCirkel|Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~47\,
	combout => \Objekten|OnderCirkel|Add2~48_combout\,
	cout => \Objekten|OnderCirkel|Add2~49\);

-- Location: LCCOMB_X47_Y35_N18
\Objekten|OnderCirkel|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~50_combout\ = (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~14_combout\ & (\Objekten|OnderCirkel|Add2~49\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~14_combout\ & (!\Objekten|OnderCirkel|Add2~49\)))) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~14_combout\ & 
-- (!\Objekten|OnderCirkel|Add2~49\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~14_combout\ & ((\Objekten|OnderCirkel|Add2~49\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~51\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~14_combout\ & !\Objekten|OnderCirkel|Add2~49\)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((!\Objekten|OnderCirkel|Add2~49\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~49\,
	combout => \Objekten|OnderCirkel|Add2~50_combout\,
	cout => \Objekten|OnderCirkel|Add2~51\);

-- Location: LCCOMB_X47_Y35_N20
\Objekten|OnderCirkel|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~52_combout\ = ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~16_combout\ $ (!\Objekten|OnderCirkel|Add2~51\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~53\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~16_combout\) # (!\Objekten|OnderCirkel|Add2~51\))) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~16_combout\ & !\Objekten|OnderCirkel|Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~51\,
	combout => \Objekten|OnderCirkel|Add2~52_combout\,
	cout => \Objekten|OnderCirkel|Add2~53\);

-- Location: LCCOMB_X47_Y35_N22
\Objekten|OnderCirkel|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~54_combout\ = (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~18_combout\ & (\Objekten|OnderCirkel|Add2~53\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~18_combout\ & (!\Objekten|OnderCirkel|Add2~53\)))) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~18_combout\ & 
-- (!\Objekten|OnderCirkel|Add2~53\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~18_combout\ & ((\Objekten|OnderCirkel|Add2~53\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~55\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~18_combout\ & !\Objekten|OnderCirkel|Add2~53\)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((!\Objekten|OnderCirkel|Add2~53\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~53\,
	combout => \Objekten|OnderCirkel|Add2~54_combout\,
	cout => \Objekten|OnderCirkel|Add2~55\);

-- Location: LCCOMB_X47_Y35_N24
\Objekten|OnderCirkel|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~56_combout\ = ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~20_combout\ $ (!\Objekten|OnderCirkel|Add2~55\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~57\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~20_combout\) # (!\Objekten|OnderCirkel|Add2~55\))) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~20_combout\ & !\Objekten|OnderCirkel|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~55\,
	combout => \Objekten|OnderCirkel|Add2~56_combout\,
	cout => \Objekten|OnderCirkel|Add2~57\);

-- Location: LCCOMB_X47_Y35_N26
\Objekten|OnderCirkel|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~58_combout\ = (\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~22_combout\ & (\Objekten|OnderCirkel|Add2~57\ & VCC)) # 
-- (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~22_combout\ & (!\Objekten|OnderCirkel|Add2~57\)))) # (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~22_combout\ & 
-- (!\Objekten|OnderCirkel|Add2~57\)) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~22_combout\ & ((\Objekten|OnderCirkel|Add2~57\) # (GND)))))
-- \Objekten|OnderCirkel|Add2~59\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~22_combout\ & !\Objekten|OnderCirkel|Add2~57\)) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((!\Objekten|OnderCirkel|Add2~57\) # (!\Objekten|OnderCirkel|Mult0|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~57\,
	combout => \Objekten|OnderCirkel|Add2~58_combout\,
	cout => \Objekten|OnderCirkel|Add2~59\);

-- Location: LCCOMB_X47_Y35_N28
\Objekten|OnderCirkel|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~60_combout\ = ((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~24_combout\ $ (!\Objekten|OnderCirkel|Add2~59\)))) # (GND)
-- \Objekten|OnderCirkel|Add2~61\ = CARRY((\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Objekten|OnderCirkel|Mult0|auto_generated|op_1~24_combout\) # (!\Objekten|OnderCirkel|Add2~59\))) # 
-- (!\Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~24_combout\ & !\Objekten|OnderCirkel|Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \Objekten|OnderCirkel|Add2~59\,
	combout => \Objekten|OnderCirkel|Add2~60_combout\,
	cout => \Objekten|OnderCirkel|Add2~61\);

-- Location: LCCOMB_X47_Y35_N30
\Objekten|OnderCirkel|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|Add2~62_combout\ = \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (\Objekten|OnderCirkel|Add2~61\ $ (\Objekten|OnderCirkel|Mult0|auto_generated|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => \Objekten|OnderCirkel|Mult0|auto_generated|op_1~26_combout\,
	cin => \Objekten|OnderCirkel|Add2~61\,
	combout => \Objekten|OnderCirkel|Add2~62_combout\);

-- Location: LCCOMB_X46_Y35_N10
\Objekten|OnderCirkel|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|LessThan0~6_combout\ = (\Objekten|OnderCirkel|Add2~42_combout\) # ((\Objekten|OnderCirkel|Add2~44_combout\) # ((\Objekten|OnderCirkel|Add2~40_combout\) # (\Objekten|OnderCirkel|Add2~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Add2~42_combout\,
	datab => \Objekten|OnderCirkel|Add2~44_combout\,
	datac => \Objekten|OnderCirkel|Add2~40_combout\,
	datad => \Objekten|OnderCirkel|Add2~46_combout\,
	combout => \Objekten|OnderCirkel|LessThan0~6_combout\);

-- Location: LCCOMB_X46_Y35_N28
\Objekten|OnderCirkel|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|LessThan0~5_combout\ = (\Objekten|OnderCirkel|Add2~38_combout\) # ((\Objekten|OnderCirkel|Add2~36_combout\) # ((\Objekten|OnderCirkel|Add2~32_combout\) # (\Objekten|OnderCirkel|Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Add2~38_combout\,
	datab => \Objekten|OnderCirkel|Add2~36_combout\,
	datac => \Objekten|OnderCirkel|Add2~32_combout\,
	datad => \Objekten|OnderCirkel|Add2~34_combout\,
	combout => \Objekten|OnderCirkel|LessThan0~5_combout\);

-- Location: LCCOMB_X46_Y35_N4
\Objekten|OnderCirkel|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|LessThan0~7_combout\ = (\Objekten|OnderCirkel|Add2~54_combout\) # ((\Objekten|OnderCirkel|Add2~50_combout\) # ((\Objekten|OnderCirkel|Add2~52_combout\) # (\Objekten|OnderCirkel|Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Add2~54_combout\,
	datab => \Objekten|OnderCirkel|Add2~50_combout\,
	datac => \Objekten|OnderCirkel|Add2~52_combout\,
	datad => \Objekten|OnderCirkel|Add2~48_combout\,
	combout => \Objekten|OnderCirkel|LessThan0~7_combout\);

-- Location: LCCOMB_X46_Y36_N8
\Objekten|OnderCirkel|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|LessThan0~4_combout\ = (\Objekten|OnderCirkel|Add2~24_combout\) # ((\Objekten|OnderCirkel|Add2~28_combout\) # ((\Objekten|OnderCirkel|Add2~30_combout\) # (\Objekten|OnderCirkel|Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Add2~24_combout\,
	datab => \Objekten|OnderCirkel|Add2~28_combout\,
	datac => \Objekten|OnderCirkel|Add2~30_combout\,
	datad => \Objekten|OnderCirkel|Add2~26_combout\,
	combout => \Objekten|OnderCirkel|LessThan0~4_combout\);

-- Location: LCCOMB_X46_Y35_N30
\Objekten|OnderCirkel|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|LessThan0~8_combout\ = (\Objekten|OnderCirkel|LessThan0~6_combout\) # ((\Objekten|OnderCirkel|LessThan0~5_combout\) # ((\Objekten|OnderCirkel|LessThan0~7_combout\) # (\Objekten|OnderCirkel|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|LessThan0~6_combout\,
	datab => \Objekten|OnderCirkel|LessThan0~5_combout\,
	datac => \Objekten|OnderCirkel|LessThan0~7_combout\,
	datad => \Objekten|OnderCirkel|LessThan0~4_combout\,
	combout => \Objekten|OnderCirkel|LessThan0~8_combout\);

-- Location: LCCOMB_X46_Y35_N12
\Objekten|OnderCirkel|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|OnderCirkel|LessThan0~9_combout\ = (\Objekten|OnderCirkel|Add2~58_combout\) # ((\Objekten|OnderCirkel|Add2~60_combout\) # ((\Objekten|OnderCirkel|LessThan0~8_combout\) # (\Objekten|OnderCirkel|Add2~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|OnderCirkel|Add2~58_combout\,
	datab => \Objekten|OnderCirkel|Add2~60_combout\,
	datac => \Objekten|OnderCirkel|LessThan0~8_combout\,
	datad => \Objekten|OnderCirkel|Add2~56_combout\,
	combout => \Objekten|OnderCirkel|LessThan0~9_combout\);

-- Location: LCCOMB_X46_Y35_N18
\VGA_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~0_combout\ = (\Objekten|BovenCirkel|LessThan0~10_combout\ & ((\Objekten|OnderCirkel|Add2~62_combout\) # ((!\Objekten|OnderCirkel|LessThan0~3_combout\ & !\Objekten|OnderCirkel|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|BovenCirkel|LessThan0~10_combout\,
	datab => \Objekten|OnderCirkel|LessThan0~3_combout\,
	datac => \Objekten|OnderCirkel|Add2~62_combout\,
	datad => \Objekten|OnderCirkel|LessThan0~9_combout\,
	combout => \VGA_B~0_combout\);

-- Location: LCCOMB_X41_Y34_N20
\VGA_R~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_R~1_combout\ = (\Objekten|Circle1Colour[0][3]~q\ & (((\Objekten|Circle2Colour[0][3]~q\ & \VGA_B~0_combout\)) # (!\Objekten|BovenCirkel|LessThan0~10_combout\))) # (!\Objekten|Circle1Colour[0][3]~q\ & (((\Objekten|Circle2Colour[0][3]~q\ & 
-- \VGA_B~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Circle1Colour[0][3]~q\,
	datab => \Objekten|BovenCirkel|LessThan0~10_combout\,
	datac => \Objekten|Circle2Colour[0][3]~q\,
	datad => \VGA_B~0_combout\,
	combout => \VGA_R~1_combout\);

-- Location: LCCOMB_X40_Y34_N8
\Objekten|DrawLeftRect|active~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawLeftRect|active~0_combout\ = (xCord(3)) # ((xCord(2) & ((xCord(4)) # (xCord(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xCord(3),
	datab => xCord(2),
	datac => xCord(4),
	datad => xCord(1),
	combout => \Objekten|DrawLeftRect|active~0_combout\);

-- Location: LCCOMB_X40_Y34_N30
\Objekten|DrawLeftRect|active~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawLeftRect|active~1_combout\ = (xCord(6) & (!xCord(4) & (!\Objekten|DrawLeftRect|active~0_combout\ & !xCord(5)))) # (!xCord(6) & ((xCord(5)) # ((xCord(4) & \Objekten|DrawLeftRect|active~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xCord(4),
	datab => \Objekten|DrawLeftRect|active~0_combout\,
	datac => xCord(6),
	datad => xCord(5),
	combout => \Objekten|DrawLeftRect|active~1_combout\);

-- Location: LCCOMB_X41_Y34_N4
\Objekten|DrawLeftRect|active~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|DrawLeftRect|active~2_combout\ = (\Objekten|DrawLeftRect|active~1_combout\ & (!xCord(9) & (!xCord(8) & \Objekten|DrawRightRect|active~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|DrawLeftRect|active~1_combout\,
	datab => xCord(9),
	datac => xCord(8),
	datad => \Objekten|DrawRightRect|active~3_combout\,
	combout => \Objekten|DrawLeftRect|active~2_combout\);

-- Location: LCCOMB_X41_Y34_N22
\VGA_R~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_R~2_combout\ = (\SW[4]~input_o\ & ((\Objekten|DrawLeftRect|active~2_combout\) # ((!\VGA_R~0_combout\ & \VGA_R~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_R~0_combout\,
	datab => \VGA_R~1_combout\,
	datac => \Objekten|DrawLeftRect|active~2_combout\,
	datad => \SW[4]~input_o\,
	combout => \VGA_R~2_combout\);

-- Location: LCCOMB_X41_Y34_N12
\VGA_G~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_G~0_combout\ = (\SW[3]~input_o\ & ((\Objekten|DrawMiddleRect|active~3_combout\) # (!\Objekten|DrawRightRect|active~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|DrawRightRect|active~7_combout\,
	datac => \SW[3]~input_o\,
	datad => \Objekten|DrawMiddleRect|active~3_combout\,
	combout => \VGA_G~0_combout\);

-- Location: LCCOMB_X41_Y29_N30
\Objekten|Circle2Colour~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle2Colour~11_combout\ = (\Objekten|Circle2Colour[0][3]~4_combout\ & (\Objekten|Circle2Colour~9_combout\)) # (!\Objekten|Circle2Colour[0][3]~4_combout\ & ((\Objekten|coloursProcess~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|Circle2Colour~9_combout\,
	datac => \Objekten|coloursProcess~6_combout\,
	datad => \Objekten|Circle2Colour[0][3]~4_combout\,
	combout => \Objekten|Circle2Colour~11_combout\);

-- Location: FF_X41_Y29_N31
\Objekten|Circle2Colour[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Circle2Colour~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|Circle2Colour[1][3]~q\);

-- Location: LCCOMB_X35_Y28_N22
\Objekten|Circle1Colour~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Objekten|Circle1Colour~11_combout\ = (\Objekten|Circle1Colour[1][3]~4_combout\ & (\Objekten|Circle1Colour~9_combout\)) # (!\Objekten|Circle1Colour[1][3]~4_combout\ & ((\Objekten|coloursProcess~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|Circle1Colour~9_combout\,
	datac => \Objekten|coloursProcess~7_combout\,
	datad => \Objekten|Circle1Colour[1][3]~4_combout\,
	combout => \Objekten|Circle1Colour~11_combout\);

-- Location: FF_X35_Y28_N23
\Objekten|Circle1Colour[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Circle1Colour~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|Circle1Colour[1][3]~q\);

-- Location: LCCOMB_X41_Y34_N14
\VGA_G~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_G~1_combout\ = (\Objekten|Circle2Colour[1][3]~q\ & ((\VGA_B~0_combout\) # ((!\Objekten|BovenCirkel|LessThan0~10_combout\ & \Objekten|Circle1Colour[1][3]~q\)))) # (!\Objekten|Circle2Colour[1][3]~q\ & (!\Objekten|BovenCirkel|LessThan0~10_combout\ & 
-- (\Objekten|Circle1Colour[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Circle2Colour[1][3]~q\,
	datab => \Objekten|BovenCirkel|LessThan0~10_combout\,
	datac => \Objekten|Circle1Colour[1][3]~q\,
	datad => \VGA_B~0_combout\,
	combout => \VGA_G~1_combout\);

-- Location: LCCOMB_X41_Y34_N24
\VGA_G~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_G~2_combout\ = (\VGA_G~0_combout\ & (!\Objekten|DrawLeftRect|active~2_combout\ & ((\VGA_G~1_combout\) # (\Objekten|DrawMiddleRect|active~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_G~0_combout\,
	datab => \VGA_G~1_combout\,
	datac => \Objekten|DrawLeftRect|active~2_combout\,
	datad => \Objekten|DrawMiddleRect|active~3_combout\,
	combout => \VGA_G~2_combout\);

-- Location: FF_X41_Y29_N17
\Objekten|Circle2Colour[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Circle2Colour[0][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|Circle2Colour[2][3]~q\);

-- Location: LCCOMB_X41_Y34_N18
\VGA_B~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~1_combout\ = (!\Objekten|DrawMiddleRect|active~3_combout\ & (!\Objekten|DrawLeftRect|active~2_combout\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Objekten|DrawMiddleRect|active~3_combout\,
	datac => \Objekten|DrawLeftRect|active~2_combout\,
	datad => \SW[2]~input_o\,
	combout => \VGA_B~1_combout\);

-- Location: FF_X35_Y28_N21
\Objekten|Circle1Colour[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RefreshOrFreeze~clkctrl_outclk\,
	d => \Objekten|Circle1Colour[1][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Objekten|Circle1Colour[2][3]~q\);

-- Location: LCCOMB_X41_Y34_N8
\VGA_B~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~2_combout\ = (\VGA_B~1_combout\ & ((\Objekten|DrawRightRect|active~7_combout\) # ((\Objekten|Circle1Colour[2][3]~q\ & !\Objekten|BovenCirkel|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Circle1Colour[2][3]~q\,
	datab => \Objekten|DrawRightRect|active~7_combout\,
	datac => \Objekten|BovenCirkel|LessThan0~10_combout\,
	datad => \VGA_B~1_combout\,
	combout => \VGA_B~2_combout\);

-- Location: LCCOMB_X41_Y34_N26
\VGA_B~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~3_combout\ = (\VGA_B~2_combout\) # ((\Objekten|Circle2Colour[2][3]~q\ & (\VGA_B~1_combout\ & \VGA_B~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Objekten|Circle2Colour[2][3]~q\,
	datab => \VGA_B~1_combout\,
	datac => \VGA_B~2_combout\,
	datad => \VGA_B~0_combout\,
	combout => \VGA_B~3_combout\);

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
END structure;


