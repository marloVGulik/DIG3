-------------------------------------------------------------------------------
--
-- Title       : TestBench
-- Design      : Opdracht2
-- Author      : Marlo van Gulik
-- Company     : HAN
--
-------------------------------------------------------------------------------
--
-- File        : C:/Users/Marlo van Gulik/Documents/School/Y2/dig/lab/VHDL/opdracht_assignment2/simulatie/src/TestBench.vhd
-- Generated   : hu Sep 19 13:22:19 2024T
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
--{entity {TestBench} architecture {TestBench}}

	
library ieee;
use ieee.std_logic_1164.all;
use work.Assignment2Package.all;


entity TestBench is
end TestBench;

--}} End of automatically maintained section

architecture TestBench of TestBench is	   
signal clk,rst,uitklok : std_logic := '0';
begin

	-- Enter your statements here -- 
	dut : genericClockDelay generic map(1, 4) port map(clk,rst,uitklok);
	
	-- stimulus 
	
	clk <= not clk after 20ns;
	rst <= '1'after 10 ns, '0' after 100 ns;
	
	
end TestBench;
