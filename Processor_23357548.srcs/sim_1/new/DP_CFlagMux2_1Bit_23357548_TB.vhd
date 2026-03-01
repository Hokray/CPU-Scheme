----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_CFlagMux2_1Bit_23357548_TB - Sim
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


entity DP_CFlagMux2_1Bit_23357548_TB is
--  Port ( );
end DP_CFlagMux2_1Bit_23357548_TB;

architecture Sim of DP_CFlagMux2_1Bit_23357548_TB is

COMPONENT DP_CFlagMux2_1Bit_23357548 
                PORT (
                       C_ALU : in STD_LOGIC;
                       C_Shift : in STD_LOGIC;
                       FS4 : in STD_LOGIC;
                       C : out STD_LOGIC              
                );
END COMPONENT;

          signal C_ALU_TB : std_logic := '0';
          signal C_Shift_TB : std_logic := '0';
          signal FS4_TB : std_logic := '0';
          signal C_TB : std_logic;
          
          
-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_CFlagMux2_1Bit_23357548  PORT MAP (
        C_ALU => C_ALU_TB,
        C_Shift => C_Shift_TB,
       FS4 => FS4_TB,
        C => C_TB
       );
       
       
         stim_proc: process 
         begin
         
         C_ALU_TB <= '0';
         C_Shift_TB <= '0';
         FS4_TB <= '0';          --CASE A
         wait for 100 ns;
         
         C_ALU_TB <= '0';
         C_Shift_TB <= '0';
         FS4_TB <= '1';          --CASE B
          wait for 100 ns;
         
         C_ALU_TB <= '0';
         C_Shift_TB <= '1';
         FS4_TB <= '0';          --CASE C
          wait for 100 ns;
         
         C_ALU_TB <= '0';
         C_Shift_TB <= '1';
         FS4_TB <= '1';          --CASE D
          wait for 100 ns;
          
            C_ALU_TB <= '1';
         C_Shift_TB <= '0';
         FS4_TB <= '0';          --CASE E
          wait for 100 ns;
          
            C_ALU_TB <= '1';
         C_Shift_TB <= '0';
         FS4_TB <= '1';          --CASE F
          wait for 100 ns;
          
            C_ALU_TB <= '1';
         C_Shift_TB <= '1';
         FS4_TB <= '0';          --CASE G
          wait for 100 ns;
          
            C_ALU_TB <= '1';
         C_Shift_TB <= '1';
         FS4_TB <= '1';          --CASE H
          wait for 100 ns;
         
         
         
         
         
         
         
         
         end process;


end Sim;
