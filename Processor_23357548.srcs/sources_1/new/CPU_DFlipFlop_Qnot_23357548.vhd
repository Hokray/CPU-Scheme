----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okray
-- 
-- Create Date: 09.11.2023 16:28:34
-- Design Name: 
-- Module Name: BM_DFlipFlop_Q_not_23357548 - Behavioral
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

entity CPU_DFlipFlop_Q_not_23357548 is
    Port ( D : in STD_LOGIC;
           Reset:  in STD_LOGIC;
           Clock : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_not : out STD_LOGIC);
end CPU_DFlipFlop_Q_not_23357548;

architecture Behavioral of CPU_DFlipFlop_Q_not_23357548 is
   signal Q_t, Q_not_t, Reset_not, X, K, S, R, L, Y, Z, M : std_logic;
   
  --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
   
begin

    Reset_not <= not Reset after NOT_gate_delay;

    X <= Y nand S after NAND_gate_delay;

    K <= X and Clock after AND_gate_delay;
    S <= K nand Reset_not after NAND_gate_delay;
    
    Z <= S and Clock after AND_gate_delay;
    R <= Z nand Y after NAND_gate_delay;

    L <= R and D after AND_gate_delay;
    Y <= L nand Reset_not after NAND_gate_delay;
    
    Q_t <= S nand Q_not_t after NAND_gate_delay;

    M <= R and Q_t after AND_gate_delay;
    Q_not_t <= M nand Reset_not after NAND_gate_delay;

    Q <= Q_t;
    Q_not <= Q_not_t;

end Behavioral;
