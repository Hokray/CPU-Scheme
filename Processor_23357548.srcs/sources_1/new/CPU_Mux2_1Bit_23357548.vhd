----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okray
-- 
-- Create Date: 10/26/2025 03:09:29 PM
-- Design Name: 
-- Module Name: DP_RippleCarryAdder32Bit_23357548 - Behavioral
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


entity CPU_Mux2_1Bit_23357548 is
    Port (
          ln0 : in std_logic;
          ln1 : in std_logic;
          Sel : in std_logic;
          Z : out std_logic
    
         );
end CPU_Mux2_1Bit_23357548;

architecture Behavioral of CPU_Mux2_1Bit_23357548 is
        signal and1 : std_logic;
        signal and2 : std_logic;
        signal not_sel : std_logic;




             --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
   

begin
    not_sel <= not Sel;

    and1 <= ln0 AND not_sel after AND_gate_delay;
    and2 <= ln1 AND Sel after AND_gate_delay;
    Z <= and1 OR and2 after OR_gate_delay;

end Behavioral; --CPU_Mux2_1Bit FINISHED (SCHEMATIC THE SAME)