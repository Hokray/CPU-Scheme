----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_ZeroFill_23357548_TB - Sim
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



entity CPU_ZeroFill_23357548_TB is
--  Port ( );
end CPU_ZeroFill_23357548_TB;

architecture Sim of CPU_ZeroFill_23357548_TB is

COMPONENT CPU_ZeroFill_23357548 PORT (
                  SB : in std_logic_vector(3 downto 0);
        MuxB : out std_logic_vector(31 downto 0)   
          );
END COMPONENT;

signal SB_TB : std_logic_vector(3 downto 0);
signal MuxB_TB : std_logic_vector(31 downto 0);



-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C"; 


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_ZeroFill_23357548 PORT MAP (
        SB => SB_TB,
        MuxB => MuxB_TB
       );
       

       
         stim_proc: process
   begin

    SB_TB <= "1111";
    wait for 100 ns; --case A
    
      SB_TB <= "0000";
    wait for 100 ns; --case B
    
      SB_TB <= "0101";
    wait for 100 ns; --case C
    
      SB_TB <= "1010";
    wait for 100 ns; --case D

    end process;
end Sim;
