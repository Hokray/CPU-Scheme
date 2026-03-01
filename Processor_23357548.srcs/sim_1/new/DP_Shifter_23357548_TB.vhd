----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_Shifter_23357548_TB - Sim
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


entity DP_Shifter_23357548_TB is
--  Port ( );
end DP_Shifter_23357548_TB;

architecture Sim of DP_Shifter_23357548_TB is

COMPONENT DP_Shifter_23357548
            PORT (
                  B : in std_logic_vector (31 downto 0);
            S1 : in std_logic;
            S2 : in std_logic;
            G : out std_logic_vector (31 downto 0);
            C : out std_logic   
            );
END COMPONENT;
    
    signal B_TB : std_logic_vector (31 downto 0);
    signal S1_TB : std_logic;
    signal S2_TB : std_logic;
    signal G_TB : std_logic_vector(31 downto 0);
    signal C_TB : std_logic;

-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_Shifter_23357548 PORT MAP (
        B => B_TB,
        S1 => S1_TB,
        S2 => S2_TB,
        G => G_TB,
        C => C_TB
       );
       
       
         stim_proc: process 
         begin
         
         B_TB <= x"0164686C";
         S1_TB <= '0';
         S2_TB <= '0';
         wait for 150 ns; --case A
         
           B_TB <= x"0164686C";
         S1_TB <= '1';
         S2_TB <= '0';
         wait for 150 ns; --cASE B
         
           B_TB <= x"0164686C";
         S1_TB <= '0';
         S2_TB <= '1';
         wait for 150 ns; --case C
         
           B_TB <= x"00000001";
         S1_TB <= '1';
         S2_TB <= '0';
         wait for 150 ns; --case D
         
           B_TB <= x"F0000000";
         S1_TB <= '0';
         S2_TB <= '1';
         wait for 150 ns; --case E
   
         end process;


end Sim;
