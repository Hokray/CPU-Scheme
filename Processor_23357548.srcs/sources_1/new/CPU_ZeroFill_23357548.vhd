----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2025 01:20:28 AM
-- Design Name: 
-- Module Name: CPU_PC_23357548 - Behavioral
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


entity CPU_ZeroFill_23357548 is
  Port (
        SB : in std_logic_vector(3 downto 0);
        MuxB : out std_logic_vector(31 downto 0)   
         );
end CPU_ZeroFill_23357548;

architecture Behavioral of CPU_ZeroFill_23357548 is

begin
MuxB <= (31 downto 4 => '0') & SB; --CHECK THIS, connecting only the 4 LSB



end Behavioral;