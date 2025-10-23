------- Opdracht 3/ Assignment 3 DSDL practicum
------- Altera DE10-Lite
------- ir drs E.J Boks, HAN Embedded Systems Engineering. https://ese.han.nl
 
------- Voltooi alle code hier onder / Complete all code below

library ieee; 
use ieee.std_logic_1164.all; 
use work.SevenSegmentDriver.all;
use work.Assignment2Package.all;
use work.Assignment3Package.all;

entity CircularShiftAssignment is

	generic(NumberOfSSDs : positive :=6);

		port(ADC_CLK_10 : in std_logic;
			  KEY : in std_logic_vector(1 downto 0);
			  SW  : in std_logic_vector(9 downto 0);
			  LEDR : out std_logic_vector(9 downto 0);
			  HEX0 : out std_logic_vector(0 to 7);  -- SSD0 (meest rechter)
			  HEX1 : out std_logic_vector(0 to 7);
			  HEX2 : out std_logic_vector(0 to 7);
			  HEX3 : out std_logic_vector(0 to 7);
			  HEX4 : out std_logic_vector(0 to 7);
			  HEX5 : out std_logic_vector(0 to 7)); -- SSD1
end entity;


architecture CircularShiftAssignmentArch of CircularShiftAssignment is
	constant LoadButton : natural := 0;
	constant RotationDirectionButton : natural := 1;
	
	subtype Rotor is std_logic_vector(0 to 5);
	constant loadPattern : Rotor := (0=>'0', others => '1');
	
	signal rst,load : std_logic;
	signal active : std_logic;
	
	signal startButton,pauseButton : std_logic;
	signal bothButtons : std_logic;
	signal rotationClock : std_logic;
	
	type RotationType is (AntiClockWise,ClockWise);
	signal rotationDirection : RotationType;
	signal rotationSwitch : std_logic;
		
	--subtype RotationSegments is std_logic_vector(0 to ((Rotor'Length*NumberOfSSDs)-1));
	subtype RotationSegments is std_logic_vector(0 to (Rotor'Length-1));
	
	signal ssdSegments : RotationSegments;
	signal ssdBuffer : RotationSegments;
	
	signal tmpSegment : std_logic_vector(0 to Rotor'Length);
	
begin

-- Aanwijzingen : 
-- Koppel de signalen aan de schakelaars/knoppen zoals je wilt.
startButton <= not KEY(0);
pauseButton <= not KEY(1);
bothButtons <= startButton NOR pauseButton;

load <= SW(2);
rotationSwitch <= SW(1);
rotationDirection <= ClockWise when (rotationSwitch = '0') else AntiClockWise;

LEDR(0) <= rotationSwitch;
LEDR(1) <= SW(1);
LEDR(9) <= rotationClock;
			 
flippertje : entity work.opdr3flipflop port map (clk=>bothButtons,d=>startButton,q=>active);

-- Instantieer een vertrager om de rotatie zichtbaar te maken voor het menselijk oog.
vertrager : entity work.genericClockDelay generic map (10, 10000000) port map (ADC_CLK_10, active, rotationClock);

-- Gebruik de circshift om een roterend element in de buffer te plaatsen. Gebruik for .. generate hier voor.
--shiftelementgenerator : for i in 0 to (NumberOfSSDs-1) generate 
--	shifters : entity work.circshift port map(clk=>rotationClock, load=>load, d=>loadPattern, q=>ssdBuffer((Rotor'Length*i) to (Rotor'Length*(i+1))-1));
--end generate shiftelementgenerator;
shifter : entity work.circshift port map(clk=>rotationClock, load=>load, d=>loadPattern, q=>ssdBuffer);


-- Koppel de buffer aan de segmenten register op basis de draairichting. 
-- ssdSegments <=  ssdBuffer(ssdBuffer'range'reverse_range);
reverseelementgenerator : for i in 0 to (ssdBuffer'high) generate
	ssdSegments(i) <= ssdBuffer(ssdBuffer'high - i);
end generate reverseelementgenerator;

-- koppel de segmenten registers aan de HEX segmenten daar waar van toepassing.
--HEX0 <= ((ssdSegments((Rotor'Length*0) to ((Rotor'Length*1)-1))) when (rotationDirection = AntiClockwise) else (ssdBuffer(Rotor'Length*0 to ((Rotor'Length*1)-1)))) & "11";
HEX0 <= (ssdSegments(ssdSegments'range) & "11") when (rotationDirection = AntiClockwise) else (ssdBuffer(ssdBuffer'range) & "11") when SW(0) else "11111111";
HEX1 <= (ssdSegments(ssdSegments'range) & "11") when (rotationDirection = AntiClockwise) else (ssdBuffer(ssdBuffer'range) & "11") when SW(0) else "11111111";
HEX2 <= (ssdSegments(ssdSegments'range) & "11") when (rotationDirection = AntiClockwise) else (ssdBuffer(ssdBuffer'range) & "11") when SW(0) else "11111111";
HEX3 <= (ssdSegments(ssdSegments'range) & "11") when (rotationDirection = AntiClockwise) else (ssdBuffer(ssdBuffer'range) & "11") when SW(0) else "11111111";
HEX4 <= (ssdSegments(ssdSegments'range) & "11") when (rotationDirection = AntiClockwise) else (ssdBuffer(ssdBuffer'range) & "11") when SW(0) else "11111111";
HEX5 <= (ssdSegments(ssdSegments'range) & "11") when (rotationDirection = AntiClockwise) else (ssdBuffer(ssdBuffer'range) & "11") when SW(0) else "11111111";


-- Gebruik LEDs om operationele staat en reset aan te geven.

-- Schakel de ongebruikte LEDs uit.


-- Clues :
-- Link the signals to the switches/buttons as you like.
-- Instance a retarder to make the rotation visible to the human eye.
-- Use the circshift to place a rotating element in the buffer. Use for .. generate for this.
-- Link the buffer to the segment register based on the direction of rotation.
-- link the segment registers to the HEX segments where applicable.
-- Use LEDs to indicate operational state and reset.
-- Turn off the unused LEDs.

end architecture;


