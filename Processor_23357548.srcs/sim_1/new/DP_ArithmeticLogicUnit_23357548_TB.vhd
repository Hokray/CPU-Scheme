----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_ArithmeticLogicUnit_23357548_TB - Sim
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


entity DP_ArithmeticLogicUnit_23357548_TB is
--  Port ( );
end DP_ArithmeticLogicUnit_23357548_TB;

architecture Sim of DP_ArithmeticLogicUnit_23357548_TB is

COMPONENT DP_ArithmeticLogicUnit_23357548
            PORT (
             A : in std_logic_vector(31 downto 0);
              C_IN : in std_logic;
              B : in std_logic_vector(31 downto 0);
              S0 : in std_logic;
              S1 : in std_logic;
              S2 : in std_logic;
              C : out std_logic;
              V : out std_logic;
              G : out std_logic_vector(31 downto 0)                    
            );
END COMPONENT;
        
        signal A_TB : std_logic_vector(31 downto 0);
        signal C_IN_TB : std_logic;
        signal B_TB : std_logic_vector(31 downto 0);
        signal S0_TB : std_logic;
        signal S1_TB : std_logic;
        signal S2_TB : std_logic;
        signal C_TB : std_logic;
        signal V_TB : std_logic;
        signal G_TB : std_logic_vector(31 downto 0);
        
        

-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_ArithmeticLogicUnit_23357548 PORT MAP (
       A => A_TB,
       C_IN => C_IN_TB,
       B => B_TB,
       S0 => S0_TB,
       S1 => S1_TB,
       S2 => S2_TB,
       C => C_TB,
       V => V_TB,
       G => G_TB
       );
       
       
         stim_proc: process --CHECK THIS TIMING DIAGRAM, NOT SURE IF ITS RIGHT!
         begin
         
         A_TB <= x"0164686C";
         C_IN_TB <= '0';
         B_TB <= x"0000000C";
         S0_TB <= '0';
         S1_TB <= '0';
         S2_TB <= '0';    --CASE A
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '1';
         B_TB <= x"0000000C";
         S0_TB <= '0';
         S1_TB <= '0';
         S2_TB <= '0';    --CASE B
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '0';
         B_TB <= x"0000000C";
         S0_TB <= '1';
         S1_TB <= '0';
         S2_TB <= '0';    --CASE C
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '1';
         B_TB <= x"0000000C";
         S0_TB <= '1';
         S1_TB <= '0';
         S2_TB <= '0';    --CASE D
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '0';
         B_TB <= x"0000000C";
         S0_TB <= '0';
         S1_TB <= '1';
         S2_TB <= '0';    --CASE E
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '1';
         B_TB <= x"0000000C";
         S0_TB <= '0';
         S1_TB <= '1';
         S2_TB <= '0';    --CASE F
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '0';
         B_TB <= x"0000000C";
         S0_TB <= '1';
         S1_TB <= '1';
         S2_TB <= '0';    --CASE G
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '1';
         B_TB <= x"0000000C";
         S0_TB <= '1';
         S1_TB <= '1';
         S2_TB <= '0';    --CASE H
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '0';
         B_TB <= x"0000000C";
         S0_TB <= '0';
         S1_TB <= '0';
         S2_TB <= '1';    --CASE I
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '0';
         B_TB <= x"0000000C";
         S0_TB <= '1';
         S1_TB <= '0';
         S2_TB <= '1';    --CASE J
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '0';
         B_TB <= x"0000000C";
         S0_TB <= '0';
         S1_TB <= '1';
         S2_TB <= '1';    --CASE K
         wait for 200 ns;
         
          A_TB <= x"0164686C";
         C_IN_TB <= '0';
         B_TB <= x"0000000C";
         S0_TB <= '1';
         S1_TB <= '1';
         S2_TB <= '1';    --CASE L
         wait for 200 ns;
         
         
         
         
         
         
         end process;


end Sim;
