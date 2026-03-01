----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_32Bit_LogicCircuit_23357548_TB - Sim
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



entity DP_32Bit_LogicCircuit_23357548_TB is
--  Port ( );
end DP_32Bit_LogicCircuit_23357548_TB;

 architecture Sim of DP_32Bit_LogicCircuit_23357548_TB is

COMPONENT DP_32Bit_LogicCircuit_23357548
                PORT (
          A : in std_logic_vector(31 downto 0);
          B : in std_logic_vector(31 downto 0);
          S0 : in std_logic;
          S1 : in std_logic;
          G : out std_logic_vector(31 downto 0)                
                );
END COMPONENT;                
    signal  A_TB : std_logic_vector(31 downto 0);
    signal    B_TB : std_logic_vector(31 downto 0);
    signal    S0_TB : std_logic;
     signal   S1_TB : std_logic;
     signal   G_TB : std_logic_vector(31 downto 0);

-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_32Bit_LogicCircuit_23357548 PORT MAP (
        A => A_TB,
        B => B_TB,
        S0 => S0_TB,
        S1 => S1_TB,
        G => G_TB
       );
       
       
         stim_proc: process 
         begin
         A_TB <= x"0164686C";
         B_TB <= x"0000000C"; --12 in decimal
         S0_TB <= '0';
         S1_TB <= '0';
         wait for 150 ns; --case A (AND)
         
          A_TB <= x"0164686C";
         B_TB <= x"0000000C"; --12 in decimal
         S0_TB <= '1';
         S1_TB <= '0';
         wait for 150 ns; --case B (OR)
         
          A_TB <= x"0164686C";
         B_TB <= x"0000000C"; --12 in decimal
         S0_TB <= '0';
         S1_TB <= '1';
         wait for 150 ns; --case C (XOR)
         
          A_TB <= x"0164686C";
         B_TB <= x"0000000C"; --12 in decimal
         S0_TB <= '1';
         S1_TB <= '1';
         wait for 150 ns;  --case D (NOT)
        
         end process;




end Sim;
