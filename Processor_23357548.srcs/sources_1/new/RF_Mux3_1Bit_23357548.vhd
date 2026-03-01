----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okan okray
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


entity RF_Mux3_1Bit_23357548 is
      Port (
           I0 : in std_logic;
           I1 : in std_logic;
           A : in std_logic_vector (1 downto 0);
           I2 : in std_logic;
           Z : out std_logic          
            );
end RF_Mux3_1Bit_23357548;

architecture Behavioral of RF_Mux3_1Bit_23357548 is
signal and0 : std_logic;
signal and1 : std_logic;
signal and2 : std_logic;
signal and3 : std_logic;
signal and4 : std_logic;
signal and5 : std_logic;
signal or0 : std_logic;

signal notA0: std_logic;
signal notA1 : std_logic;

 --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1



begin
notA0 <= not A(0);
notA1 <= not A(1);

and0 <= notA0 AND notA1 after AND_gate_delay;
and1 <= notA0 AND A(1) after AND_gate_delay;

and2 <= and0 AND I0 after AND_gate_delay;
and3 <= and4 AND I1 after AND_gate_delay;
and4 <= A(0) AND notA1 after AND_gate_delay;

and5 <= and1 AND I2 after AND_gate_delay;
or0 <= and2 OR and3 after OR_gate_delay;

Z <= or0 OR and5 after OR_gate_delay;

end Behavioral; --RF_Mux3_1Bit FINISHED (SAME AS SCHEMATIC!)