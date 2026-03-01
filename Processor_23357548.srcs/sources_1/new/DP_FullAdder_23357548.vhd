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


entity DP_FullAdder_23357548 is
  Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        C_IN : in STD_logic;
        C_OUT : out STD_logic;
        SUM : out STD_Logic  
        );
end DP_FullAdder_23357548;

architecture Behavioral of DP_FullAdder_23357548 is
    signal signal_c : std_logic;
    signal xor1_out : std_logic;
    signal and1 : std_logic;
    signal and2 : std_logic;
    signal or1: std_logic;
    signal xor2_out : std_logic;

    -- Propagation Delay according to StudentID
    constant AND_gate_delay  : Time := 9 ns;
    constant NAND_gate_delay : Time := 5 ns;
    constant OR_gate_delay   : Time := 6 ns;
    constant NOR_gate_delay  : Time := 8 ns;
    constant XOR_gate_delay  : Time := 6 ns;
    constant XNOR_gate_delay : Time := 4 ns;
    constant NOT_gate_delay  : Time := 4 ns;

begin
    xor1_out <= A xor B after XOR_gate_delay;
    and1 <= A AND B after AND_gate_delay;
    and2 <= xor1_out AND C_IN after AND_gate_delay;
    or1 <= and1 OR and2 after OR_gate_delay;
    xor2_out <= xor1_out xor C_IN after XOR_gate_delay;
    SUM <= xor2_out;
    C_OUT <= or1;
    
    
end Behavioral;