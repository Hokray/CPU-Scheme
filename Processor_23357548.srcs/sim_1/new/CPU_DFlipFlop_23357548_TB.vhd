----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_DFlipFlop_23357548_TB - Sim
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

entity CPU_DFlipFlop_23357548_TB is
--  we don't need ports
end CPU_DFlipFlop_23357548_TB;

architecture Sim of CPU_DFlipFlop_23357548_TB is
   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT RF_DFlipFlop_23357548
    Port ( CLK, D, RESET : in STD_LOGIC;
           Q : out STD_LOGIC);
    END COMPONENT;
   --Inputs Signals 
   signal CLK_TB, D_TB, RESET_TB : STD_LOGIC := '0';
   --Output Signal   
   signal Q_TB : STD_LOGIC := '0';
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 200ns;  

begin

   -- Instantiate the Unit Under Test (UUT)
   uut: RF_DFlipFlop_23357548 PORT MAP (
          CLK => CLK_TB,
          D => D_TB,
          RESET => RESET_TB,
          Q => Q_TB        
        );
        
   Clk_TB <= not CLK_TB after PERIOD/2;
    
       stim_proc: process --only use process in sim files
   begin
   
   wait until CLK_TB'event and CLK_TB='1';
   
   Reset_TB <= '1' after PERIOD/4;
   wait until CLK_TB'event and CLK_TB='1'; --case A
   
    Reset_TB <= '0' after PERIOD/4;
   wait until CLK_TB'event and CLK_TB='1'; --case B
   
    D_TB <= '1' after PERIOD/4;
   wait until CLK_TB'event and CLK_TB='1'; --case C
   
    D_TB <= '0' after PERIOD/4;
   wait until CLK_TB'event and CLK_TB='1'; --case D
   
    Reset_TB <= '0' after PERIOD/4;
   wait until CLK_TB'event and CLK_TB='1'; --case E
   
    D_TB <= '1' after PERIOD/4;
   wait until CLK_TB'event and CLK_TB='1'; --case F
   
    D_TB <= '1' after PERIOD/4;
   wait until CLK_TB'event and CLK_TB='1'; --case G
   
    D_TB <= '0' after PERIOD/4;
   wait until CLK_TB'event and CLK_TB='1'; --case H
   
    Reset_TB <= '1' after PERIOD/4;
   wait until CLK_TB'event and CLK_TB='1'; --case I
   
   
   end process;
end Sim;
