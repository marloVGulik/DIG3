 ------- Opdracht 1 / Assignment 1 DSDL/DIG3 practicum
 ------- Altera DE10-Lite
 ------- ir drs E.J Boks, HAN Embedded Systems Engineering. https://ese.han.nl
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.SevenSegmentDriver.all;

-----------------------------------------


entity toplevel is

	PORT ( SW : in std_logic_vector(9 DOWNTO 0);     -- switches
			 KEY : in std_logic_vector(1 downto 0);    -- drukknoppen
			 LEDR : out std_logic_vector(9 DOWNTO 0);  -- rode leds
			 HEX0 : out std_logic_vector(7 DOWNTO 0);  -- SSD0 (meest rechter)
			 HEX1 : out std_logic_vector(7 DOWNTO 0);  -- SSD1
			 HEX2 : out std_logic_vector(7 DOWNTO 0);  -- SSD2
			 HEX3 : out std_logic_vector(7 DOWNTO 0)); -- SSD3
end entity;

----------

architecture toplevel_arch of toplevel is  
signal getal : natural range 0 to 1024;
signal digit0 : natural range 0 to 9;
signal digit1 : natural range 0 to 9;
signal digit2 : natural range 0 to 9;
signal digit3 : natural range 0 to 9;
signal doReverse : boolean;
constant testdigit : std_logic_vector(0 to 6) := "0000000";

begin

	doReverse <= true when ('1'=KEY(0)) else false;
	
	LEDR <= SW;
	
	-- mapping van de getallen op de standard driver
	getal <= conv_integer(SW);
	
	digit0 <= getal rem 10;
	HEX0 <= integer_to_ssd(digit0,doReverse);
	
	digit1 <= (getal/10) rem 10;
	HEX1 <= integer_to_ssd(digit1,doReverse);
	
	digit2 <= (getal/100) rem 10;
	HEX2 <= integer_to_ssd(digit2,doReverse);
	
	digit3 <= (getal/1000) rem 10;
	HEX3 <= integer_to_ssd(digit3,doReverse);
		
end architecture;
