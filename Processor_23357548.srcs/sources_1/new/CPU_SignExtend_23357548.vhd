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


entity CPU_SignExtend_23357548 is
  Port (
       Input : in std_logic_vector(7 downto 0);
       Output : out std_logic_vector(31 downto 0) 
        );
end CPU_SignExtend_23357548;

architecture Behavioral of CPU_SignExtend_23357548 is

COMPONENT CPU_Mux2_32Bit_23357548 
     Port ( 
            ln0 : in std_logic_vector(31 downto 0);
            ln1 : in std_logic_vector(31 downto 0);
            Sel : in std_logic;
            Z : out std_logic_vector(31 downto 0)   
           );
END COMPONENT;


  --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
    
signal zeroExtended : std_logic_vector(31 downto 0);
signal signExtended : std_logic_vector(31 downto 0);



begin

zeroExtended <= (31 downto 8 => '0') & Input; --take the first 8 bits


signExtended <= (31 downto 8 => '1') & Input; --take the first 8 bits

SignExtend : CPU_Mux2_32Bit_23357548 PORT MAP (
            ln0 => zeroExtended,
            ln1 => signExtended,
            Sel => Input(7), --sign bit?
            Z => Output  
            );
end Behavioral;