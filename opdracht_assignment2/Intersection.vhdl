------- Opdracht 2 / Assignment 2 DSDL practicum
------- Altera DE10-Lite
------- ir drs E.J Boks, HAN Embedded Systems Engineering. https://ese.han.nl
------- Top Level bestand/file

-- Pedroni voorbeeld 6.6 op bladzijde 166
-- Enigzins aangepast om te koppelen aan HW pinnen van de MAX10 op het DE10-Lite bord.

-- Opdracht / Assignment details : 
--      	Koppel standby aan SW0 en LED0
-- 		Koppel testmode aan SW1 end LED1
--			Koppel tijdverloop aan LED9 

library ieee;
use ieee.std_logic_1164.all;
use work.Assignment2Package.all;

entity Intersection is

  port(ADC_CLK_10 : in std_logic;
       KEY : in std_logic_vector(1 downto 0);
       SW : in STD_LOGIC_VECTOR(9 DOWNTO 0);
       HEX0 : out std_logic_vector(7 downto 0) := "11111111"; -- linker licht
       HEX1 : out std_logic_vector(7 downto 0) := "11111111"; -- rechter licht
       LEDR : out std_logic_vector(9 downto 0));
  
end entity Intersection;

architecture Intersection_behav of Intersection is

  -- Signals that provide the derived clock signals.
  signal trafficClock : std_logic;
  signal secondsClock,fiveHzClock : std_logic;
  
  constant green : natural  := 0;
  constant orange : natural := green+1;
  constant red : natural   := orange+1;
  
  -- Signals that are linked to buttons/switches etc
  signal stop : std_logic;
  signal stdby : std_logic := '0';
  signal test : std_logic := '0';
  
  -- There are two traffic lights.
  signal vk1,vk2 : std_logic_vector(2 downto 0);
  
  --- Clock Delay component  (Generic+PLL clock delay)
  component combinedClockDelay is

    generic(desiredClock: integer := 60);  -- 12 kHz
    
    port 
      (
        clk,rst : in std_logic;
        pllClock : out std_logic
	 );
	 
	 

  end component;
  
  -- Traffic Light Controller component
  component tlc IS
    GENERIC ( 
      timeRG: POSITIVE := 1800;  --30s with 60Hz clock  
      timeRY: POSITIVE := 300;  --5s with 60Hz clock
      timeGR: POSITIVE := 2700;  --45s with 60Hz clock
      timeYR: POSITIVE := 300;  --5s with 60Hz clock
      timeTEST: POSITIVE := 60;  --1s with 60Hz clock
      timeMAX: POSITIVE := 2700); --max of all above
    
    PORT (
      clk, stby, test: IN STD_LOGIC;
      r1, r2, y1, y2, g1, g2: OUT STD_LOGIC );
  END component;

begin
  -- koppel eigen namen aan board SSD pinnen, klok en reset pinnen.
  stdby <= sw(0);
  test <= sw(1);
  stop <= '1' when (KEY(1) = '0' AND test = '1') else '0';
  
  -- Gebruik de componenten om klokvertragers aan te maken: 1 Hz, 5 Hz en 60 Hz.
  trafficClockEntity : ENTITY work.genericClockDelay GENERIC MAP (30, 10000000) PORT MAP (
	 ADC_CLK_10,
	 stop,
	 trafficClock
  );
  second1Entity : ENTITY work.genericClockDelay GENERIC MAP (1, 10000000) PORT MAP (
	 ADC_CLK_10,
	 stop,
	 secondsClock
  );
  second5Entity : ENTITY work.genericClockDelay GENERIC MAP (5, 10000000) PORT MAP (
	 ADC_CLK_10,
	 stop,
	 fiveHzClock
  );
  
  -- Gebruik de tlc component om de verkeerslicht toestandmachine te gebruiken.
  light1 : ENTITY work.tlc PORT MAP (
	 trafficClock, stdby, test,
	 r1 => vk1(0), y1 => vk1(1), g1 => vk1(2)
  );
  light2 : ENTITY work.tlc PORT MAP (
	 trafficClock, stdby, test,
	 r2 => vk2(0), y2 => vk2(1), g2 => vk2(2)
  );
  
  -- Koppel de tlc uitgangen aan de juiste 7S leds. 
  HEX0(0) <= NOT vk1(0);
  HEX0(6) <= NOT vk1(1) WHEN stdby = '0' ELSE secondsClock;
  HEX0(3) <= NOT vk1(2);
  
  HEX1(0) <= NOT vk2(0);
  HEX1(6) <= NOT vk2(1) WHEN stdby = '0' ELSE secondsClock;
  HEX1(3) <= NOT vk2(2);
  
  
  -- Gebruik de gewone LEDs om trage klokken zichtbaar te maken.
  LEDR(0) <= stdby;
  LEDR(1) <= test;
  LEDR(9) <= fiveHzClock WHEN test = '1' ELSE secondsClock;
  
  -- Schakel de niet gebruikte LEDs en 7S elementen uit. -- Gedaan in initialisatie
  
  -- Link signals to buttons/switches/HEX display pins etc. 
  -- Use the components to create clock delays: 1 Hz, 5 Hz and 60 Hz.
  -- Use the tlc component to use the traffic light state machine.
  -- Connect the tlc outputs to the correct 7S LEDs.
  -- Use the regular LEDs to visualize slow clocks.
  -- Turn off the unused LEDs and 7S elements.
	
-- Verwijder deze assert bij bewerking code / Remove this message when editing the code.

  
end architecture;

