----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_FullAdder_23357548_TB - Sim
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



entity DP_FullAdder_23357548_TB is
--  Port ( );
end DP_FullAdder_23357548_TB;

architecture Sim of DP_FullAdder_23357548_TB is

    COMPONENT DP_FullAdder_23357548 
      Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        C_IN : in STD_logic;
        C_OUT : out STD_logic;
        SUM : out STD_Logic  
        );  
     END COMPONENT;
     
     --input signals
    signal A_TB : STD_logic;
    signal B_TB : std_logic;
    signal C_IN_TB : std_logic;
    --output signals
    signal C_OUT_TB : std_logic;
    signal SUM_TB : std_logic;
    
    -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_FullAdder_23357548 PORT MAP (
        A => A_TB,
        B => B_TB,
        C_IN => C_IN_TB,
        C_OUT => C_OUT_TB,
        SUM => SUM_TB
       );
       
     stim_proc: process
   begin
   A_TB <= '0';
   B_TB <= '0';
   C_IN_TB <= '1';  --CASE A
   wait for 50ns;
   
    A_TB <= '0';
   B_TB <= '1';
   C_IN_TB <= '0';  --CASE B
     wait for 50ns;
   
    A_TB <= '0';
   B_TB <= '1';
   C_IN_TB <= '1';  --CASE C
     wait for 50ns;
   
    A_TB <= '1';
   B_TB <= '0';
   C_IN_TB <= '0';  --CASE D
     wait for 50ns;
   
    A_TB <= '1';
   B_TB <= '0';
   C_IN_TB <= '1';  --CASE E
     wait for 50ns;
   
    A_TB <= '1';
   B_TB <= '1';
   C_IN_TB <= '0';  --CASE F
     wait for 50ns;
     
       A_TB <= '1';
   B_TB <= '1';
   C_IN_TB <= '1';  --CASE G
     wait for 50ns;  
   end process;

end Sim;
