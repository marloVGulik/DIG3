 ------- Opdracht 4 / Assignment 4 DSDL practicum
 ------- Altera DE10-Lite
 ------- Gebruik een scherm met standaard VGA 640x480, 60Hz ==> 25 MHz klok
 ------- ir drs E.J Boks, HAN Embedded Systems Engineering. https://ese.han.nl

 
-------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use work.Assignment4Package.all;
-------------------------------------------------

ENTITY VGA_controller IS
	GENERIC (
		Ha: INTEGER := 96; --Hpulse
		Hb: INTEGER := 144; --Hpulse+HBP
		Hc: INTEGER := 784; --Hpulse+HBP+Hactive
		Hd: INTEGER := 800; --Hpulse+HBP+Hactive+HFP
		Va: INTEGER := 2; --Vpulse
		Vb: INTEGER := 35; --Vpulse+VBP
		Vc: INTEGER := 515; --Vpulse+VBP+Vactive
		Vd: INTEGER := 525 --Vpulse+VBP+Vactive+VFP
	);
		
	PORT (
		MAX10CLK150 : IN std_logic;
		KEY : in std_logic_vector(1 downto 0);
	   SW: IN std_logic_vector(4 downto 0);
		LEDR : out std_logic_vector(9 downto 0);
		VGA_HS, VGA_VS: out std_logic;
		VGA_R, VGA_G, VGA_B			: OUT std_logic_vector(3 DOWNTO 0));
END VGA_controller;

-------------------------------------------------

ARCHITECTURE VGA_controllerImplementatie OF VGA_controller IS

	COMPONENT ObjectsOnScreen IS		
	
	port(	vgaCoord	:	in	Coordinate;
			rst		:	in std_logic;
			Refresh	:	in	std_logic;
			RGB      :  out RGBType);
			
	END COMPONENT;
	
	COMPONENT klok IS
	PORT
	(
		areset		: IN std_logic  := '0';
		inclk0		: IN std_logic  := '0';
		c0		: OUT std_logic ;
		locked		: OUT std_logic 
	);
	END COMPONENT;

	signal pixelclk,pixelclkGoed : std_logic;
	
	signal vgaCoords	 : Coordinate;
	signal RGB	 :	RGBType;
		
	signal rst 		 : std_logic;
	signal RefreshOrFreeze : std_logic;
	SIGNAL Refresh  : std_logic := '0';

	
	signal onOff,redsWhitech, greensWhitech, bluesWhitech: std_logic;
	SIGNAL Hactive, Vactive: std_logic;
BEGIN

	-- koppeling van de schakelaars en knoppen
	onOff <= SW(0);
	rst <= KEY(0) and onOff;
	RefreshOrFreeze <= Refresh and KEY(1);
	
	redsWhitech <= SW(4);
	greensWhitech <= SW(3);
	bluesWhitech <= SW(2);
	
	
	LEDR <= (9=>(pixelclkGoed and onOff), 
				4=> (redsWhitech and onOff), 
				3=> (greensWhitech  and onOff),
				2=> (bluesWhitech  and onOff),
				0=> onOff, 
				others => '0');
	
--	LEDR(8 downto 5) <= (others => '0');
--	LEDR(4) <=  and onOff;
--	LEDR(3) <= greensWhitech  and onOff;
--	LEDR(2) <= bluesWhitech  and onOff;
--	LEDR(1) <= '0';
--	LEDR(0) <= onOff;
	
	
	---------------------------------------------
	---- Part 0 : The clock : pixel clock (50MHz->25MHz)
	---------------------------------------------
	clock25M : klok port map(areset=>not onOff, inclk0=> MAX10CLK150, c0=>pixelclk, locked=>pixelclkGoed);
		
	---------------------------------------
	--Part 1: CONTROL GENERATOR
	---------------------------------------------
	
	--Horizontal signals generation
	PROCESS (onOff,pixelclk)
-- Verwijder deze assert bij bewerking code / Remove this message when editing the code.
		 VARIABLE Hcount: INTEGER RANGE 0 TO Hd;
	begin
	if onOff = '1' then
		if( pixelclk'event and pixelclk = '1') then
				Hcount := Hcount + 1;
				IF (Hcount=Ha) THEN
					VGA_HS <= '1';
				ELSIF (Hcount=Hb) THEN
					Hactive <= '1';
				ELSIF (Hcount=Hc) THEN
					Hactive <= '0';
				ELSIF (Hcount=Hd) THEN
					VGA_HS <= '0';
					Hcount := 0;
				END IF;
		end if;
	end if;
	END PROCESS;
	
	--Vertical signals generation
	PROCESS(onOff,VGA_HS)
		 VARIABLE Vcount: INTEGER RANGE 0 TO Vd;
-- Verwijder deze assert bij bewerking code / Remove this message when editing the code.
	begin
	if onoff = '1' then
			 IF (VGA_HS'EVENT AND VGA_HS='0') THEN
				Vcount := Vcount + 1;
				 IF (Vcount=Va) THEN
					VGA_VS <= '1';
				 ELSIF (Vcount=Vb) THEN
					Vactive <= '1';
				 ELSIF (Vcount=Vc) THEN
					Vactive <= '0';
				 ELSIF (Vcount=Vd) THEN
					VGA_VS <= '0';
					Vcount := 0;
				 END IF;
			 END IF;
		end if;
		
	END PROCESS;
	
	--Display enable generation
	-- dena <= Hactive AND Vactive;
	
	---------------------------------------------
	--Part 2: IMAGE GENERATOR
	---------------------------------------------
	PROCESS (Hactive, Vactive,  VGA_HS, VGA_VS, pixelclk, 
			   bluesWhitech, redsWhitech, greensWhitech,
				RGB)
		VARIABLE xCord: INTEGER RANGE 0 TO Hd; -- Counter for the x coördinate
		VARIABLE yCord: INTEGER RANGE 0 TO Vd; -- Counter for the y coördinate
	BEGIN
	
		IF (pixelclk'EVENT AND pixelclk='1') THEN
			IF (Hactive='1') THEN -- Horizontal line isn't done yet
				xCord := xCord + 1;
			ELSE -- The horizontal line is filled
				xCord := 0; -- Make the xCord 0 again
			END IF;
		END IF;
		IF (VGA_HS'EVENT AND VGA_HS='1') THEN
				IF (Vactive='1') THEN -- There is one horizontal line
					Refresh <= '0';
					yCord := yCord + 1;
				ELSE
					Refresh <= '1';  -- elke 60 Hz
					yCord := 0;
				END IF;
		END IF;
		
		vgaCoords.x <= xCord;
		vgaCoords.y <= yCord;
		
		IF (greensWhitech = '1') THEN
			VGA_G <= RGB(Gindex);
		ELSE
			VGA_G <= (others => '0');
		END IF;
		
		IF (redsWhitech = '1') THEN
			VGA_R <= RGB(Rindex);
		ELSE
			VGA_R <= (others => '0');
		END IF;
		
		IF (bluesWhitech = '1') THEN
			VGA_B <= RGB(Bindex);
		ELSE
			VGA_B <= (others => '0');
		END IF;

	END PROCESS;
	
Objekten : ObjectsOnScreen port map(vgaCoords, rst, RefreshOrFreeze, RGB);
	
END VGA_controllerImplementatie;
-------------------------------------------------

