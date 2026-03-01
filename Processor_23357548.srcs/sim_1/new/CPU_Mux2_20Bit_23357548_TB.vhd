----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_Mux2_20Bit_23357548_TB - Sim
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


entity CPU_Mux2_20Bit_23357548_TB is
--  Port ( );
end CPU_Mux2_20Bit_23357548_TB;

architecture Sim of CPU_Mux2_20Bit_23357548_TB is

COMPONENT CPU_Mux2_20Bit_23357548 PORT (
                      ln0 : in std_logic_vector(19 downto 0);
            ln1 : in std_logic_vector(19 downto 0);
            Sel : in std_logic;  
            Z : out std_logic_vector(19 downto 0)
          );
END COMPONENT;

signal ln0_TB : std_logic_vector(19 downto 0);
signal ln1_TB : std_logic_vector(19 downto 0);
signal Sel_TB : std_logic;
signal Z_TB : std_logic_vector(19 downto 0);

-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C"; 

begin

    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_Mux2_20Bit_23357548 PORT MAP (
        ln0 => ln0_TB,
        ln1 => ln1_TB,
        Sel => Sel_TB,
        Z => Z_TB
       );

         stim_proc: process
   begin

    ln0_TB <= X"00000";
    ln1_TB <= X"00000";
    Sel_TB <= '0';
    wait for 200 ns; --case A
    
    ln0_TB <= X"FFFFF";
    ln1_TB <= X"00000";
    Sel_TB <= '0';
    wait for 200 ns; --case B
    
    ln0_TB <= X"00000";
    ln1_TB <= X"00000";
    Sel_TB <= '0';
    wait for 200 ns; --case C
    
    ln0_TB <= X"3AB54";
    ln1_TB <= X"00000";
    Sel_TB <= '0';
    wait for 200 ns; --case D
    
        ln0_TB <= X"00000";
    ln1_TB <= X"00000";
    Sel_TB <= '0';
    wait for 200 ns; --case E
    
    ln0_TB <= X"00000";
    ln1_TB <= X"00000";
    Sel_TB <= '1';
    wait for 200 ns; --case F
    
     ln0_TB <= X"00000";
    ln1_TB <= X"FFFFF";
    Sel_TB <= '1';
    wait for 200 ns; --case G
    
     ln0_TB <= X"00000";
    ln1_TB <= X"00000";
    Sel_TB <= '1';
    wait for 200 ns; --case H
    
     ln0_TB <= X"00000";
    ln1_TB <= X"3AB54";
    Sel_TB <= '1';
    wait for 200 ns; --case I
    
      ln0_TB <= X"00000";
    ln1_TB <= X"00000";
    Sel_TB <= '1';
    wait for 200 ns; --case J
    
    end process;
end Sim;
