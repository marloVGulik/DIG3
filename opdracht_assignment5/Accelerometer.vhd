 ------- Opdracht 5 / Assignment 5 DSDL practicum
 ------- Altera DE10-Lite
 ------- ir drs E.J Boks, HAN Embedded Systems Engineering. https://ese.han.nl

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
LIBRARY work;
use work.SevenSegmentDriver.all;

-------------------------------------------------------------
ENTITY Accelerometer IS
	PORT (MAX10_CLK1_50 : IN  		STD_LOGIC;
			GSENSOR_SCLK  : BUFFER 	STD_LOGIC;
			GSENSOR_SDI   : BUFFER 	STD_LOGIC;
			GSENSOR_SDO   : IN  		STD_LOGIC;
			GSENSOR_CS_N  : BUFFER 	STD_LOGIC;
			GSENSOR_INT   : IN STD_LOGIC_VECTOR(2 downto 1);
			KEY 	: IN STD_LOGIC_VECTOR(1 downto 0);
			SW 	: in std_logic_vector(9 DOWNTO 0);
			LEDR  : OUT		STD_LOGIC_VECTOR (9 DOWNTO 0);
			GPIO : OUT STD_LOGIC_VECTOR(36 downto 0);
			HEX0 : out std_logic_vector(7 DOWNTO 0);  -- SSD0 (meest rechter)
			HEX1 : out std_logic_vector(7 DOWNTO 0);  -- SSD1
			HEX2 : out std_logic_vector(7 DOWNTO 0);  -- SSD2
			HEX3 : out std_logic_vector(7 DOWNTO 0);  -- SSD3
			HEX4 : out std_logic_vector(7 DOWNTO 0);  -- SSD4
			HEX5 : out std_logic_vector(7 DOWNTO 0)); -- SSD5 (meest linker)
END Accelerometer;
-------------------------------------------------------------
ARCHITECTURE main OF Accelerometer IS

	TYPE state IS (idle,wr_setup,wr_addr,wr_data,wr_close,wait_rd,rd_setup,rd_addr,rd_data,rd_close,wait_int);
	signal prState	: state := idle;
	signal nxState	: state := idle;
	
	type Axis is (xaxis,yaxis,zaxis); 
	subtype Acceleration is integer range -4096 to 4095;
	type AccVektorType is array (Axis) of Acceleration;
	type AccDataValuesType is array(Axis) of std_logic_vector(12 downto 0);
	
	constant dataNumBits: integer := (6*8);
	signal accData : STD_LOGIC_VECTOR (dataNumBits-1 downto 0);
	
	signal accDataValues : AccDataValuesType;
	signal accVektor : AccVektorType;
	
	signal sclk : std_logic;
	signal sclk90 : std_logic; -- ask yourself : what is this signal opposed to sclk and why is it here?
	
	
	-- SPI : MS bit goes first = standard
	
	-- init data voor register 0x2c .. 0x3e
	-- last two bits are : write + multiple bytes
	constant adresNumBits : integer := 8;
	constant initAddress : std_logic_vector(adresNumBits-1 downto 0) := "01" & "101100"; --
	-- acc data come from registers 0x32 .. 0x37
	-- last two bits are : read + multiple bytes
	constant dataAdress  : std_logic_vector(adresNumBits-1 downto 0) := "11" & "110010";
	
	-- These are the init values for the ADXL345 from 0x2e onward. 
	constant initNumBits: integer := (6*8);
	signal initValues : STD_LOGIC_VECTOR (initNumBits-1 DOWNTO 0);
	
	shared variable i : natural range 0 to dataNumBits;
	signal timer : natural range 0 to dataNumBits;
	
	type DigitsType is array(1 to 6) of integer range -99 to 99;
	signal digits : DigitsType;
	
	COMPONENT Five_MHz_clock
		PORT (areset	: IN  STD_LOGIC  := '0';
				inclk0	: IN  STD_LOGIC  := '0';
				c0			: OUT STD_LOGIC  ;
				c1			: OUT STD_LOGIC  ;
				locked	: OUT STD_LOGIC );
	END COMPONENT;
	
BEGIN
					
	-- ADXL345 signalen naar GPIO voor Salaeae logic analyzer
	GPIO(0) <= GSENSOR_CS_N;
	GPIO(1) <= GSENSOR_SCLK;
	GPIO(2) <= GSENSOR_SDO;
	GPIO(3) <= GSENSOR_SDI;
	GPIO(4) <= GSENSOR_INT(1);
	GPIO(5) <= GSENSOR_INT(2);
	GPIO(36 downto 6) <= (others => '0');
	
	-- From the ADXL345 datasheet.
--	Table 7. Typical Current Consumption vs. Data Rate
--	Output Data Rate (Hz) Bandwidth (Hz) Rate Code IDD (μA) 
--	3200 1600 1111 140 
--	1600 800 1110 90
--	800 400 1101 140
--	400 200 1100 140
--	200 100 1011 140
--	100 50 1010 140
--	50 25 1001 90
--	25 12.5 1000 60
--	12.5 6.25 0111 50
--	6.25 3.13 0110 45
--	3.13 1.56 0101 40
--	1.56 0.78 0100 34
--	0.78 0.39 0011 23
--	0.39 0.20 0010 23
--	0.20 0.10 0001 23 
--	0.10 0.05 0000 2

-- Fill the initValues vector with initialisation values for registers 0x2c and onwards through to 0x31;
-- initValues <= To be filled in by the student.
— Verwijder deze assert bij bewerking code / Remove this message when editing the code.
assert false
report “Beste student, Dit deel van de software ontbreekt/This part of the software is missing.”
severity failure;
																							
	
	-----------------------PPL--------------------------------
	PPL : Five_MHz_clock PORT MAP (not KEY(0), MAX10_CLK1_50, sclk90,sclk, OPEN);

	
	-----------------Lower section of FSM---------------------
	PROCESS (sclk,KEY)

	BEGIN
-- Maak de lower section kompleet / make complete the lower section. 
— Verwijder deze assert bij bewerking code / Remove this message when editing the code.
assert false
report “Beste student, Dit deel van de software ontbreekt/This part of the software is missing.”
severity failure;

	END PROCESS;
	
	-----------------Upper section of FSM---------------------
	PROCESS (prState, sclk90,KEY, GSENSOR_INT)
		variable ledstand: boolean := false;
	BEGIN
	
		CASE prState IS
			WHEN idle =>
— Verwijder deze assert bij bewerking code / Remove this message when editing the code.
assert false
report “Beste student, Dit deel van de software ontbreekt/This part of the software is missing.”
severity failure;
			WHEN wr_setup =>
-- maak de case kompleet / make the case complete.
— Verwijder deze assert bij bewerking code / Remove this message when editing the code.
assert false
report “Beste student, Dit deel van de software ontbreekt/This part of the software is missing.”
severity failure;
		END CASE;
				
		case ledstand is
			when false => LEDR(0) <= '0';
			when true  => LEDR(0) <= '1';
		end case;
						
						
				
	END PROCESS;
	
		-- incoming accData has MSbyte and LSByte swapped in order.
		-- swap them back here.
		accDataValues(xAxis) <= ( accData(dataNumBits-9 downto dataNumBits-13) & accData(dataNumBits-1 downto dataNumBits-8) );
		-- Vul accDataValues ook voor y en z assen / Fill accDataValues also for y and z axes.
— Verwijder deze assert bij bewerking code / Remove this message when editing the code.
assert false
report “Beste student, Dit deel van de software ontbreekt/This part of the software is missing.”
severity failure;
		accVektor <= ( conv_integer(accDataValues(xAxis)),
							conv_integer(accDataValues(yAxis)), 
							conv_integer(accDataValues(zAxis)) );
							
	----------------------------------------------------------
	
	-- full res mode ==> 4 mg / LSB ==> 1g = 250 
	-- divide by 250/10 = 265 to show 0..9 for 0 .. 1g
							
	digits(1) <= abs ((2*accVektor(xaxis))/5) rem 10;
	digits(2) <= (2*accVektor(xaxis))/50;

	-- Doe hetzelfde voor de y en z assen / Do the same for y and z axes.
— Verwijder deze assert bij bewerking code / Remove this message when editing the code.
assert false
report “Beste student, Dit deel van de software ontbreekt/This part of the software is missing.”
severity failure;

	HEX0 <= integer_to_ssd(digits(1),true);
	HEX1 <= integer_to_ssd(digits(2),true);
	
-- Doe het zelfde voor de y en z 7Seg. / Do the same for the y and z 7Seg.
-- Laat ook op de individuele LEDs de x as zien / show the x axis on the individuaL LEDS.
— Verwijder deze assert bij bewerking code / Remove this message when editing the code.
assert false
report “Beste student, Dit deel van de software ontbreekt/This part of the software is missing.”
severity failure;
	
END ARCHITECTURE;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
Stoptijd:2022-11-09 18:07:41


