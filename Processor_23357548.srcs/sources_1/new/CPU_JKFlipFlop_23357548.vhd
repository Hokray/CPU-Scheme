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


entity CPU_JKFlipFlop_23357548 is
  Port (
        K : in std_logic;
        J : in std_logic;
        Clock : in std_logic;
        Reset : in std_logic;
        Q : out std_logic;
        Q_not : out std_logic
  
         );
end CPU_JKFlipFlop_23357548;

architecture Behavioral of CPU_JKFlipFlop_23357548 is

COMPONENT CPU_DFlipFlop_Q_not_23357548
   Port ( D : in STD_LOGIC;
           Reset:  in STD_LOGIC;
           Clock : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_not : out STD_LOGIC);
END COMPONENT;


--  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1

signal and0 : std_logic;
signal and1 : std_logic;
signal or0 : std_logic;

signal not0 : std_logic;

signal q_out : std_logic;
signal q_not_out : std_logic;

begin --make the instantiation here

not0 <= not K;
and0 <= not0 AND q_out after AND_gate_delay;
and1 <= J AND q_not_out after AND_gate_delay;

or0 <= and1 OR and0 after OR_gate_delay;
DFlipFlop : CPU_DFlipFlop_Q_not_23357548 PORT MAP (
            D => or0,
            Clock => Clock,
            Reset => Reset,
            Q => q_out,
            Q_not => q_not_out
            );
 Q <= q_out;
 Q_not <= q_not_out;
end Behavioral;