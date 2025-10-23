 ------- ESE DSDL practicum
 ------- Altera DE10-Lite
 ------- ir drs E.J Boks, HAN Embedded Systems Engineering. https://ese.han.nl
 
 ------- Voltooi alle code hier onder / Complete all code below
 
-- 7 segment decoder  
-- input: 4-bit number 0 to F  
-- output: 7 led segments  
 
LIBRARY ieee; 
use ieee.std_logic_1164.all; 

package SevenSegmentDriver is
	
	---- Input : This is the number that must be converted to std_logic.
	---- reverseNecessary : Dou you want the output in normal (Little Endian)  or in reversed order (Big Endian)?
	function integer_to_ssd(signal input : integer;
	                        reverseNecessary : boolean) return std_logic_vector;

	function reverseVector(a: in std_logic_vector) return std_logic_vector;
	
	


	
end SevenSegmentDriver;
 
 
package body SevenSegmentDriver is
 

 function integer_to_ssd(signal input : integer;
                         reverseNecessary : boolean) return std_logic_vector
	is variable output: std_logic_vector(7 downto 0);
	

begin
	
	case input is
		when 0 => output := "11000000";
		when 1 => output :=  "11111001";
		when 2 => output :=  "10100100";
		when 3 => output :=  "10110000";
		when 4 => output :=  "10011001";
		when 5 => output :=  "10010010";
		when 6 => output :=  "10000010";
		when 7 => output :=  "11111000";
		when 8 => output :=  "10000000";
		when 9 => output :=  "10010000";
		when 10 => output :=  "10001000";
		when 11 => output :=  "10000011";
		when 12 => output :=  "11000110";
		when 13 => output :=  "10100001";
		when 14 => output :=  "10000110";
		when 15 => output :=  "10001110";
		when others => output :=  "11111110";
		
	end case;
	
	if not reverseNecessary then
		return reverseVector(output);
	else 
		return output;
	end if;
	
	
end integer_to_ssd;


	function reverseVector(a: in std_logic_vector)
		return std_logic_vector is
	variable result: std_logic_vector(a'RANGE);
	alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
begin
  for i in aa'RANGE loop
    result(i) := aa(i);
  end loop;
  return result;
end function; -- function reverse_any_vector



end SevenSegmentDriver;

-----------------------------------------

 
  
