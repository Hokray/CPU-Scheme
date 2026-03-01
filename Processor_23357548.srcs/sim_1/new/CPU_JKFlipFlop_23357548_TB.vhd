----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_JKFlipFlop_23357548_TB - Sim
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



entity CPU_JKFlipFlop_23357548_TB is
--  Port ( );
end CPU_JKFlipFlop_23357548_TB;

architecture Sim of CPU_JKFlipFlop_23357548_TB is

COMPONENT CPU_JKFlipFlop_23357548 PORT (
            K : in std_logic;
        J : in std_logic;
        Clock : in std_logic;
        Reset : in std_logic;
        Q : out std_logic;
        Q_not : out std_logic
  
          );
END COMPONENT;

signal K_TB : std_logic := '0';
signal J_TB : std_logic := '0';
signal Clock_TB : std_logic := '0';
signal Reset_TB : std_logic := '0';
signal Q_TB : std_logic := '0';
signal Q_not_TB : std_logic := '1';



-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 400ns;   


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_JKFlipFlop_23357548 PORT MAP (
        K => K_TB,
        J => J_TB,
        Clock => Clock_TB,
        Reset => Reset_TB,
        Q => Q_TB,
        Q_not => Q_not_TB
       );
       
       Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin
     wait until Clock_TB'event and Clock_TB='1';

    Reset_TB <= '1' after PERIOD/4;
    J_TB <= '0' after PERIOD/4;
    K_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
      Reset_TB <= '0' after PERIOD/4;
    J_TB <= '1' after PERIOD/4;
    K_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case B
     
      Reset_TB <= '0' after PERIOD/4;
    J_TB <= '0' after PERIOD/4;
    K_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case C
     
      Reset_TB <= '0' after PERIOD/4;
    J_TB <= '0' after PERIOD/4;
    K_TB <= '1' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case D
     
      Reset_TB <= '0' after PERIOD/4;
    J_TB <= '0' after PERIOD/4;
    K_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case E
     
      Reset_TB <= '0' after PERIOD/4;
    J_TB <= '1' after PERIOD/4;
    K_TB <= '1' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case F
     
      Reset_TB <= '0' after PERIOD/4;
    J_TB <= '0' after PERIOD/4;
    K_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case G
     
    
    end process;
end Sim;
