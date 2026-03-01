----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_SingleBit_LogicCircuit_23357548_TB - Sim
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



entity DP_SingleBit_LogicCircuit_23357548_TB is
--  Port ( );
end DP_SingleBit_LogicCircuit_23357548_TB;

architecture Sim of DP_SingleBit_LogicCircuit_23357548_TB is
    COMPONENT DP_SingleBit_LogicCircuit_23357548
            PORT (
          A : in std_logic;
          B : in std_logic;
          S0 : in std_logic;
          S1 : in std_logic;
          G : out std_logic        
            );
END COMPONENT;

      signal  A_TB : std_logic;
    signal    B_TB : std_logic;
    signal    S0_TB : std_logic;
     signal   S1_TB : std_logic;
     signal   G_TB : std_logic;
        


 -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_SingleBit_LogicCircuit_23357548 PORT MAP (
        A => A_TB,
        B => B_TB,
        S0 => S0_TB,
        S1 => S1_TB,
        G => G_TB
       );
       
       
         stim_proc: process 
         begin
         A_TB <= '0';
         B_TB <= '0';
         S0_TB <= '0';
         S1_TB <= '0';        --CASE A
         wait for 100 ns;
         
           A_TB <= '1';
         B_TB <= '0';
         S0_TB <= '0';
         S1_TB <= '0';       --CASE B
         wait for 100 ns;
         
           A_TB <= '0';
         B_TB <= '1';
         S0_TB <= '0';
         S1_TB <= '0';        --CASE C
         wait for 100 ns;
         
           A_TB <= '1';
         B_TB <= '1';
         S0_TB <= '0';
         S1_TB <= '0';       --CASE D
         wait for 100 ns;
         
           A_TB <= '0';
         B_TB <= '0';
         S0_TB <= '1';
         S1_TB <= '0';        --CASE E
         wait for 100 ns;
         
           A_TB <= '1';
         B_TB <= '0';
         S0_TB <= '1';
         S1_TB <= '0';       --CASE F
         wait for 100 ns;
         
           A_TB <= '0';
         B_TB <= '1';
         S0_TB <= '1';
         S1_TB <= '0';         --CASE G
         wait for 100 ns;
         
           A_TB <= '1';
         B_TB <= '1';
         S0_TB <= '1';
         S1_TB <= '0';       --CASE H
         wait for 100 ns;
         
           A_TB <= '0';
         B_TB <= '0';
         S0_TB <= '0';
         S1_TB <= '1';        --CASE I
         wait for 100 ns;
         
           A_TB <= '1';
         B_TB <= '0';
         S0_TB <= '0';
         S1_TB <= '1';       --CASE J
         wait for 100 ns;
         
           A_TB <= '0';
         B_TB <= '1';
         S0_TB <= '0';
         S1_TB <= '1';        --CASE K
         wait for 100 ns;
         
           A_TB <= '1';
         B_TB <= '1';
         S0_TB <= '0';
         S1_TB <= '1';         --CASE L
         wait for 100 ns;
         
           A_TB <= '0';
         B_TB <= '0';
         S0_TB <= '1';
         S1_TB <= '1';         --CASE M
         wait for 100 ns;
         
           A_TB <= '1';
         B_TB <= '0';
         S0_TB <= '1';
         S1_TB <= '1';  --CASE N
         wait for 100 ns;
         
           A_TB <= '0';
         B_TB <= '1';
         S0_TB <= '1';
         S1_TB <= '1';       --CASE O
         wait for 100 ns;
         
           A_TB <= '1';
         B_TB <= '1';
         S0_TB <= '1';
         S1_TB <= '1';        --CASE P
         wait for 100 ns;
        
         
         end process;


end Sim;
