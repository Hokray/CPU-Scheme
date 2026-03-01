----------------------------------------------------------------------------------
-- Company: 
-- Engineer: hAKAN oKRAY
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


entity DP_ShifterCFlagMux2_1Bit_23357548 is
    Port ( 
           LSB : in std_logic;
           S2 : in std_logic;
           S1 : in std_logic;
           MSB : in std_logic;
           C : out std_logic        
          );
end DP_ShifterCFlagMux2_1Bit_23357548;

architecture Behavioral of DP_ShifterCFlagMux2_1Bit_23357548 is
signal and0 : std_logic;
signal and1 : std_logic;
signal and2 : std_logic;
signal and3 : std_logic;

signal notS2 : std_logic;
signal notS1 : std_logic;


     --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
begin
notS2 <= not S2;
notS1 <= not S1;

and0 <= notS2 AND S1 after AND_gate_delay;
and1 <= S2 AND notS1 after AND_gate_delay;

and2 <= and0 AND LSB after AND_gate_delay;
and3 <= and1 AND MSB after AND_gate_delay;

C <= and2 OR and3 after OR_gate_delay;

end Behavioral; --DP_ShifterCFlagMux2_1Bit FINISHED (SAME AS SCHEMATIC!)