------- Opdracht 3/ Assignment 3 DSDL practicum
------- Altera DE10-Lite
------- ir drs E.J Boks, HAN Embedded Systems Engineering. https://ese.han.nl
------- Bibliotheek met alle components die in dit projekt worden gebruikt
------- Library with all components that are used in this project.

library ieee; 
use ieee.std_logic_1164.all; 


package Assignment3Package is

	component circshift is

	generic(NumberOfElements : natural := 6);
		
	port(clk,load : in std_logic;
	     d: in std_logic_vector(0 to NumberOfElements-1);
             q: buffer std_logic_vector(0 to NumberOfElements-1));
		  
	end component;

end Assignment3Package;
	

package body Assignment3Package is	

end Assignment3Package;


------- Opdracht 3/ Assignment 3 DSDL practicum
------- Altera DE10-Lite
------- ir drs E.J Boks, HAN Embedded Systems Engineering. https://ese.han.nl
------- Voorbeeld 8.2 uit het boek van Pedroni
------- Example 8.2 from Pedroni's book


----------- De multiplexer ----------------
library ieee; 
use ieee.std_logic_1164.all; 
entity opdr3Mux is
	port(a,b,sel : in std_logic;
	     x: out std_logic);
end entity;

architecture opdr3MuxArch of opdr3Mux is
begin
	x <= a when sel = '1' else b;
  
end architecture;



------------- de flip flop ----------------
library ieee; 
use ieee.std_logic_1164.all; 
entity opdr3flipflop is
	port(d,clk: in std_logic;
		  q: out std_logic);
end entity;

architecture opdr3flipfloparch of opdr3flipflop is
begin

  -- Construct a flip flop.
	process (clk)
		variable sSaved : std_logic;
	begin
		if rising_edge(clk) then
			sSaved := d;
		else 
			q <= sSaved;
		end if;
		
	end process;
        
end architecture;


--------- De hoofd code -----------
library ieee; 
use ieee.std_logic_1164.all; 
entity circshift is

	generic(NumberOfElements : natural := 6);
		
	port(clk,load : in std_logic;
	     d: in std_logic_vector(0 to NumberOfElements-1);
		  q: buffer std_logic_vector(0 to NumberOfElements-1));
		  
end entity;

architecture circshiftarch of circshift is
	
	constant AEgrens : natural := NumberOfElements-1;
	
	subtype roteerder is std_logic_vector(0 to AEGrens);
	
	signal rot: roteerder;
	
	component opdr3Mux is
	port(
		a,b,sel: in std_logic;
		x: out std_logic
	);
	end component;
	
	component opdr3flipflop is
	port(d,clk: in std_logic;
		  q: out std_logic);
	end component;
	
	subtype rotatiedataout is std_logic_vector(0 to NumberOfElements);
	signal rotatieout: rotatiedataout;
	
begin

	assert NumberOfElements > 1 
		report "NumberOfElements moet minimaal 2 zijn" 
		severity failure; -- minimaal 2 elementen !
		
   -- de eerste opdr3Mux heeft een afwijkend patroon
	startopdr3Mux : opdr3Mux port map(a=>q(AEgrens),b=>d(0),sel=>load,x=>rot(0));
	
	-- gebruik for .. generate om de rest van de opdr3Muxen te maken
	maakopdr3Muxen : for i in 1 to AEgrens generate
		opdr3Muxen : opdr3Mux port map (a=>q(i-1),b=>d(i),sel=>load,x=>rot(i));
	end generate maakopdr3Muxen;

        -- Generate the required flip flops using for .. generate with the correct mapping.
	maakflipflops : for i in 1 to NumberOfElements generate
		flipflopjes : opdr3flipflop port map (d=>rotatieout(i),clk=>clk,q=>rotatieout(i));
	end generate maakflipflops;

	
end architecture;
