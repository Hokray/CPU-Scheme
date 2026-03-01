----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2025 04:42:51 PM
-- Design Name: 
-- Module Name: RF_DestReg_Decoder_23357548_TB - Sim
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

entity RF_DestReg_Decoder_23357548_TB is
--  we don't need ports 
end RF_DestReg_Decoder_23357548_TB;

architecture Sim of RF_DestReg_Decoder_23357548_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT RF_DestReg_Decoder_23357548
    Port (
        A : in  STD_LOGIC_VECTOR(3 downto 0);  
        Q00, Q01, Q02, Q03, Q04, Q05, Q06, Q07,
        Q08, Q09, Q10, Q11, Q12, Q13, Q14, Q15 : out STD_LOGIC
    );
    END COMPONENT;

   --Inputs Signals 
   signal A_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
   --Output Signal   
   signal Q00_TB, Q01_TB, Q02_TB, Q03_TB : STD_LOGIC := '0';
   signal Q04_TB, Q05_TB, Q06_TB, Q07_TB : STD_LOGIC := '0';
   signal Q08_TB, Q09_TB, Q10_TB, Q11_TB : STD_LOGIC := '0';
   signal Q12_TB, Q13_TB : STD_LOGIC := '0';
   signal Q14_TB, Q15_TB : STD_LOGIC := '0';
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";   

begin

   -- Instantiate the Unit Under Test (UUT)
   uut: RF_DestReg_Decoder_23357548 PORT MAP (
          A => A_TB, 
          Q00 => Q00_TB, 
         Q01 => Q01_TB, 
         Q02 => Q02_TB, 
         Q03 => Q03_TB, 
         Q04 => Q04_TB, 
         Q05 => Q05_TB, 
          Q06 => Q06_TB, 
          Q07 => Q07_TB, 
          Q08 => Q08_TB, 
          Q09 => Q09_TB, 
         Q10 => Q10_TB, 
          Q11 => Q11_TB, 
          Q12 => Q12_TB, 
           Q13 => Q13_TB, 
          Q14 => Q14_TB, 
         Q15 => Q15_TB 
        );

  stim_proc: process
   begin		

    A_TB <= "0000"; --CASE A
    wait for 60 ns;
    

    A_TB <= "0001"; --CASE B
    wait for 60 ns;
    

    A_TB <= "0010"; --CASE C
    wait for 60 ns;
    
   
    A_TB <= "0011"; --CASE D
    wait for 60 ns;
    
     A_TB <= "0100"; --cASE E
    wait for 60 ns;
    
     A_TB <= "0101"; --cASE F
    wait for 60 ns;
    
     A_TB <= "0110"; --case G
    wait for 60 ns;
    
     A_TB <= "0111"; --cASE H
    wait for 60 ns;
    
     A_TB <= "1000"; --CASE I
    wait for 60 ns;
    
     A_TB <= "1001"; --CASE J
    wait for 60 ns;
    
     A_TB <= "1010"; --CASE K
    wait for 60 ns;
    
     A_TB <= "1011"; --CASE L
    wait for 60 ns;
    
     A_TB <= "1100"; --CASE M
    wait for 60 ns;
    
     A_TB <= "1101"; --CAE N
    wait for 60 ns;
    
     A_TB <= "1110"; --CASE O
    wait for 60 ns;
    
     A_TB <= "1111"; --CASE P
    wait for 60 ns;	      
   end process;
   
   
end Sim;
