-------------------------------------------------------------------------------
--
-- Title       : testbench
-- Design      : assignment3
-- Author      : Marlo van Gulik
-- Company     : HAN
--
-------------------------------------------------------------------------------
--
-- File        : C:/Users/Marlo van Gulik/Documents/School/Y2/dig/lab/VHDL/opdracht_assignment3/assignment3sim/assignment3/src/testbench.vhd
-- Generated   : Thu Oct  3 10:09:00 2024
-- From        : Interface description file
-- By          : ItfToHdl ver. 1.0
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--    and may be overwritten
--{entity {testbench} architecture {testbench}}

library ieee;
use ieee.std_logic_1164.all;
use work.Assignment3Package.all;

entity testbench is
end testbench;

--}} End of automatically maintained section

architecture testbench of testbench is 	 
	signal clk, load, rst : std_logic := '0';
	subtype RotationSegments is std_logic_vector(0 to 5);
	
	signal ssdSegments : RotationSegments := "011111";
	signal ssdBuffer : RotationSegments := "000000";
begin
	tb : circshift port map (clk, load, ssdSegments, ssdBuffer);
	clk <= not clk after 20ns;
	rst <= '1' after 10ns, '0' after 50ns;
	load <= '1' after 10ns, '0' after 100ns;
end testbench;
