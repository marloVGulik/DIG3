------- Opdracht 4/ Assignment 3 DSDL practicum
------- Altera DE10-Lite
------- ir drs E.J Boks, HAN Embedded Systems Engineering. https://ese.han.nl
------- Bibliotheek met alle components die in dit projekt worden gebruikt
------- Library Whiteh all components that are used in this assignment.

-- De rechthoek als basisvorm.
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

package Assignment4Package is

constant RIndex : integer := 0;
constant GIndex : integer := 1;
constant BIndex : integer := 2;

type RGBType is array(0 to 2) of std_logic_vector(3 downto 0);

constant Red 	: RGBType  := ("1111","0000","0000");  -- Rood
constant Green : RGBType := ("0000","1111","0000");   -- Groen
constant Blue 	: RGBType := ("0000","0000","1111");	-- Blauw
constant White	: RGBType := ("1111","1111","1111");	-- Wit
constant Black : RGBType := ("0000","0000","0000");	-- Zwart


-- Defineer dit type. Kijk in de rest van de VHDL code wat het type moet bevatten.
-- Define this type. Look in the rest of the VHDL code to see what the type should contain.

type Coordinate is record
	x: integer;
	y: integer;
end record;
	
-- Defineer dit type. Kijk in de rest van de VHDL code wat het type moet bevatten.
-- Define this type. Look in the rest of the VHDL code to see what the type should contain.

type Rectangle is record
	p: Coordinate;
	w: integer;
	h: integer;
end record;

-- Defineer dit type. Kijk in de rest van de VHDL code wat het type moet bevatten.
-- Define this type. Look in the rest of the VHDL code to see what the type should contain.
type Circle is record
	p: Coordinate;
	r: integer;
end record;
	
-- Deze funktie bepaalt of een koordinaat die gegeven is, binnen een geplaatste rechthoek valt of niet.
-- This function determines whether a given coordinate falls within a placed rectangle or not.
function CoordinateInRectangle(coord: in coordinate;doos: in Rectangle) return boolean;
	
-- Deze funktie bepaalt een 4 bits kleurcodering op basis van een 0-100% percentage dat als integer gegeven wordt.
-- This function determines a 4 bit color coding based on a 0-100% percentage given as an integer.
function ColourComputation(percentage : in integer) return std_logic_vector;

-- Deze component tekent een rechthoek op het scherm.
-- This component draws a rectangle on the screen.
component DrawRectangle is	

	generic(	rect: Rectangle := ((1,2),10,10)); 
		port(	coord	:	in coordinate;
				active :	out boolean);
end component;
		
-- Deze component tekent een cirkel op het scherm.
-- This component draws a circle on the screen.	
component DrawCircle is		

		generic(radius :  in integer := 10);

		port(coord	:	in coordinate;
			  centre	:	coordinate;		
			  active	:	out boolean);
			  
end component;

end package;

package body Assignment4Package is

function CoordinateInRectangle(coord: in coordinate; doos: in Rectangle) return boolean is
	variable result : boolean;
begin
		return (coord.x >= doos.p.x) and
               (coord.x < (doos.p.x + doos.w)) and
               (coord.y >= doos.p.y) and
               (coord.y < (doos.p.y + doos.h));
end function;

function ColourComputation(percentage : in integer) return std_logic_vector is
	variable result: std_logic_vector(3 downto 0);
begin

-- Implementeer een funktie die de inkomende percentage waarde omzet naar een 4bit VGA waarde.
-- Implement a function that converts the incoming percentage value to a 4bit VGA value.
-- Verwijder deze assert bij bewerking code / Remove this message when editing the code.
	case percentage is
		when 0 to 6 => result := "0000";
		when 7 to 12 => result := "0001";
		when 13 to 18 => result := "0010";
		when 19 to 25 => result := "0011";
		when 26 to 31 => result := "0100";
		when 32 to 37 => result := "0101";
		when 38 to 44 => result := "0110";
		when 45 to 50 => result := "0111";
		when 51 to 56 => result := "1000";
		when 57 to 62 => result := "1001";
		when 63 to 69 => result := "1010";
		when 70 to 75 => result := "1011";
		when 76 to 81 => result := "1100";
		when 82 to 88 => result := "1101";
		when 89 to 94 => result := "1110";
		when 95 to 100 => result := "1111";
		when others => result := "0000";
	end case;
	return(result);
end function;	

end Assignment4Package;



	
library ieee;
use ieee.std_logic_1164.all;
use work.Assignment4Package.all;

entity DrawRectangle is		

		generic(	rect: Rectangle := ((1,2),10,10)); 
		port(	coord	:	in coordinate;
				active :	out boolean);
end;

architecture ShowPixels of DrawRectangle is
begin

-- De rechthoek tekenfunktie werkt als volgt :
-- is de koordinaat binnen de rechthoek ==> active = true, anders active = false.
-- Implementeer hier het tekenen van een rechthoek. 
-- Gebruik De CoordinateInRectangle funktie om dit zo simpel mogelijk te maken.

-- The rectangle drawing function works as follows :
-- is the coordinate within the rectangle ==> active = true, otherwise active = false.
-- Implement drawing a rectangle here.
-- Use the CoordinateInRectangle function to make this as simple as possible.

-- Verwijder deze assert bij bewerking code / Remove this message when editing the code.
	active <= CoordinateInRectangle(coord,rect);
end;




library ieee;
use ieee.std_logic_1164.all;
use work.Assignment4Package.all;

entity DrawCircle is		

		generic( radius :  in integer := 10);
		
		port(coord	:	in coordinate;
			  centre	:	coordinate;		
			  active	:	out boolean);
end;

architecture ShowCircle of DrawCircle is
	constant straalKwadraat : integer := radius*radius;
begin

-- De cirkel als basisvorm. 
-- De cirkel tekenfunktie werkt als volgt :
-- is de koordinaat binnen de cirkel ==> active = true, anders active = false.
-- Implementeer hier het tekenen van een cirkel. 

-- The circle as a basic shape.
-- The circle drawing function works as follows :
-- is the coordinate within the circle ==> active = true, otherwise active = false.
-- Implement drawing a circle here.

-- Verwijder deze assert bij bewerking code / Remove this message when editing the code.
--	dx = (coord.x - circle.p.x);
--	dy = (coord.y - circle.p.y);
--	
--	distSq = (dx*dx+dy+dy);
--	
--	if (distSq <= straalKwadraat) then
--		active <= true;
--	else
--		active <= false;
--	end if;
	active <= true when
		straalKwadraat >= (centre.x - coord.x)*(centre.x - coord.x)+(centre.y - coord.y)*(centre.y - coord.y)
	else false;
end;



