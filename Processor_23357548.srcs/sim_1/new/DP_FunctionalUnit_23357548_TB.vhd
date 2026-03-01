----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okray
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_FunctionalUnit_23357548_TB - Sim
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


entity DP_FunctionalUnit_23357548_TB is
--  Port ( );
end DP_FunctionalUnit_23357548_TB;

architecture Sim of DP_FunctionalUnit_23357548_TB is
COMPONENT DP_FunctionalUnit_23357548
              PORT (
             B : in std_logic_vector (31 downto 0);
             A : in std_logic_vector (31 downto 0);
             FS : in std_logic_vector (4 downto 0);
             C : out std_logic;
             F : out std_logic_vector (31 downto 0);
             N : out std_logic;
             Z : out std_logic;
             V : out std_logic         
              );
END COMPONENT;
        
        --input signals
        signal B_TB : std_logic_vector(31 downto 0);
        signal A_TB : std_logic_vector(31 downto 0);
        signal FS_TB : std_logic_vector(4 downto 0);
        
        --output signals
        signal C_TB : std_logic;
        signal F_TB : std_logic_vector(31 downto 0);
        signal N_TB: std_logic;
        signal Z_TB : std_logic;
        signal V_TB : std_logic;
        
            
              

-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_FunctionalUnit_23357548  PORT MAP (
        B => B_TB,
        A => A_TB,
        FS => FS_TB,
        C => C_TB,
        F => F_TB,
        N => N_TB,
        Z => Z_TB,
        V => V_TB   
       );
       
       
         stim_proc: process  --since my stud id ends in 8, we do the 15 cases
         begin               --for that number
         --F is the output(result) and FS is a "00000" where
         --depending in the bit set to 1 will do a specific operation!
         --A is a number of 32 bits and B as well
         
         A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "01100"; --CASE A A XOR B
         wait for 500 ns;
         
         
          A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "01110"; --CASE B 1's c A (NOT A)
          wait for 500 ns;
         
          
          A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "01010"; --CASE C A OR B
          wait for 500 ns;
         
          
        A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "00001"; --CASE D A + 1
          wait for 500 ns;
         
         
       A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "01000"; --CASE E A AND B
          wait for 500 ns;
         
          
        A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "00111"; --CASE F A 
          wait for 500 ns;
         
         
      A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "00110"; --CASE G A - 1
          wait for 500 ns;
         
          
          A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "10100"; --CASE H srB
          wait for 500 ns;
         
          
         A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "00101"; --CASE I A + 1's c B + 1
          wait for 500 ns;
         
          
        A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "10000"; --CASE J B
          wait for 500 ns;
         
          
         A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "00100"; --CASE K A + 1's c B
          wait for 500 ns;
         
          
         A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "11000"; --CASE L slB
          wait for 500 ns;
         
          
         A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "00011"; --CASE M A + B + 1
          wait for 500 ns;
         
          
        A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "00010"; --CASE M A + B 
          wait for 500 ns;
         
          
         A_TB <= x"0000000C";
         B_TB <= x"0000000E";
         FS_TB <= "00000"; --CASE M A 
          wait for 500 ns;
      
      
         end process;


end Sim;
