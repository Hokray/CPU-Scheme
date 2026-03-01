----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_SignExtend_23357548_TB - Sim
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


entity CPU_SignExtend_23357548_TB is
--  Port ( );
end CPU_SignExtend_23357548_TB;

architecture Sim of CPU_SignExtend_23357548_TB is

COMPONENT CPU_SignExtend_23357548 PORT (
                 Input : in std_logic_vector(7 downto 0);
       Output : out std_logic_vector(31 downto 0) 
          );
END COMPONENT;

signal Input_TB : std_logic_vector(7 downto 0);
signal Output_TB : std_logic_vector(31 downto 0);




-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C"; 

begin

    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_SignExtend_23357548 PORT MAP (
        Input => Input_TB,
        Output => Output_TB
       );

         stim_proc: process
   begin

Input_TB <= "00000000";
wait for 100 ns; --case A

Input_TB <= "00110000";
wait for 100 ns; --case B

Input_TB <= "00000000";
wait for 100 ns; --case C

Input_TB <= "11010000";
wait for 100 ns; --case D

    
    end process;
end Sim;
