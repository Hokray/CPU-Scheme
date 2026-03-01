----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_DFlipFlop_Qnot_23357548_TB - Sim
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


entity CPU_DFlipFlop_Qnot_23357548_TB is
--  Port ( );
end CPU_DFlipFlop_Qnot_23357548_TB;

 architecture Sim of CPU_DFlipFlop_Qnot_23357548_TB is


COMPONENT CPU_DFlipFlop_Q_not_23357548 PORT (
           D : in STD_LOGIC;
           Reset:  in STD_LOGIC;
           Clock : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_not : out STD_LOGIC
          );
END COMPONENT;

signal D_TB : std_logic := '0';
signal Reset_TB : std_logic := '0';
signal Clock_TB : std_logic := '0';
signal Q_TB : std_logic := '0';
signal Q_not_TB : std_logic := '1';

-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 200ns;   


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_DFlipFlop_Q_not_23357548 PORT MAP (
        D => D_TB,
        Reset => Reset_TB,
        Clock => Clock_TB,
        Q => Q_TB,
        Q_not => Q_not_TB
       );
       
       Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin
   
   wait until Clock_TB'event and Clock_TB='1';

    D_TB <= '0' AFTER PERIOD/4;
    Reset_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case A
       
     D_TB <= '0' AFTER PERIOD/4;
    Reset_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case B  
    
     D_TB <= '1' AFTER PERIOD/4;
    Reset_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case C
    
      D_TB <= '0' AFTER PERIOD/4;
    Reset_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case D
    
      D_TB <= '1' AFTER PERIOD/4;
    Reset_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case E
    
      D_TB <= '0' AFTER PERIOD/4;
    Reset_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case F
    
      D_TB <= '1' AFTER PERIOD/4;
    Reset_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case G
    
    
    
    
    end process;
end Sim;
