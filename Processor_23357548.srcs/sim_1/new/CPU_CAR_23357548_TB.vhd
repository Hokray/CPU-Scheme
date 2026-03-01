----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_CAR_23357548_TB - Sim
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CPU_CAR_23357548_TB is
--  Port ( );
end CPU_CAR_23357548_TB;

architecture Sim of CPU_CAR_23357548_TB is

COMPONENT CPU_CAR_23357548 PORT (
                  Address : in std_logic_vector(19 downto 0);
        Clock : in std_logic;
        LoadAdd : in std_logic;
        Reset : in std_logic;
        CMAdd : out std_logic_vector(19 downto 0)   
          );
END COMPONENT;

signal Address_TB : std_logic_vector(19 downto 0);
signal Clock_TB : std_logic := '0';
signal LoadAdd_TB : std_logic := '0';
signal Reset_TB : std_logic := '0';
signal CMAdd_TB : std_logic_vector(19 downto 0);




-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 400ns;   


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_CAR_23357548 PORT MAP (
        Address => Address_TB,
        Clock => Clock_TB,
        LoadAdd => LoadAdd_TB,
        Reset => Reset_TB,
        CMAdd => CMAdd_TB
       );
       
       Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin
   
    Address_TB <= X"00030" after PERIOD/4;  
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
      Address_TB <= X"00030" after PERIOD/4;  
     wait until Clock_TB'event and Clock_TB='1'; --case B
     
     
      Address_TB <= X"00030" after PERIOD/4;  
      Reset_TB <= '1' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case C
     
      Address_TB <= X"00030" after PERIOD/4;  
      Reset_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case D
     
      Address_TB <= X"00030" after PERIOD/4;  
      Reset_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case E
     
      Address_TB <= X"00030" after PERIOD/4;  
      Reset_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case F
     
      Address_TB <= X"00030" after PERIOD/4;  
      Reset_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case G
     
      Address_TB <= X"00030" after PERIOD/4;  
      LoadAdd_TB <= '1' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case H
     
      Address_TB <= X"00030" after PERIOD/4;  
      LoadAdd_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case I
    
    end process;
end Sim;
