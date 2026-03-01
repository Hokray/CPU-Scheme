----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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


entity DP_SingleBit_LogicCircuit_23357548 is
    Port ( 
          A : in std_logic;
          B : in std_logic;
          S0 : in std_logic;
          S1 : in std_logic;
          G : out std_logic      
          );
end DP_SingleBit_LogicCircuit_23357548;

architecture Behavioral of DP_SingleBit_LogicCircuit_23357548 is
signal and0 : std_logic;
signal or0 : std_logic;
signal xor0 : std_logic;
signal and1 : std_logic;
signal and2 : std_logic;
signal and3 : std_logic;
signal and4 : std_logic;

signal and5 : std_logic;
signal and6 : std_logic;
signal and7 : std_logic;
signal and8 : std_logic;

signal or1 : std_logic;
signal or2 : std_logic;

signal not0 : std_logic;
signal not1 : std_logic;
signal notA : std_logic;




  --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1

begin
notA <= not A;

and0 <= A AND B after AND_gate_delay;
or0 <= A OR B after OR_gate_delay;
xor0 <= A xor B after XOR_gate_delay;

not0 <= not S0 after not_gate_delay;
not1 <= not S1 after not_gate_delay;
and1 <= not1 AND S0 after AND_gate_delay;
and2 <= not1 AND not0 after AND_gate_delay;
and3 <= S1 AND not0 after AND_gate_delay;
and4 <= S1 AND S0 after AND_gate_delay;

and5 <= and2 AND and0 after AND_gate_delay;
and6 <= and1 AND or0 after AND_gate_delay;
and7 <= and3 AND xor0 after AND_gate_delay;
and8 <= and4 AND notA after AND_gate_delay;

or1 <= and5 OR and6 after OR_gate_delay;
or2 <= and7 OR and8 after OR_gate_delay;

G <= or1 OR or2 after OR_gate_delay;


end Behavioral; --DP_SingleBit_logiccircuit FINISHED (SAME AS SCHEMATIc, ithink!)