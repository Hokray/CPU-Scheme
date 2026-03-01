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


entity DP_ZeroDetection_23357548 is
     Port ( 
     MuxF_to_F : in std_logic_vector(31 downto 0);
     Z : out std_logic  
         );
end DP_ZeroDetection_23357548;

architecture Behavioral of DP_ZeroDetection_23357548 is

    signal or0 : std_logic;
    signal or1 : std_logic;
    signal or2 : std_logic;
    signal or3 : std_logic;
    signal or4 : std_logic;
    signal or5 : std_logic;
    signal or6 : std_logic;
    signal or7 : std_logic;
    signal or8 : std_logic;
    signal or9 : std_logic;
    signal or10 : std_logic;
    signal or11 : std_logic;
    signal or12 : std_logic;
    signal or13 : std_logic;
    signal or14 : std_logic;
    signal or15 : std_logic;
    
    signal or16 : std_logic;
    signal or17 : std_logic;
    signal or18 : std_logic;
    signal or19 : std_logic;
    signal or20 : std_logic;
    signal or21 : std_logic;
    signal or22 : std_logic;
    signal or23 : std_logic;
    
    signal or24 : std_logic;
    signal or25 : std_logic;
    signal or26 : std_logic;
    signal or27 : std_logic;
    
    signal or28 : std_logic;
    signal or29 : std_logic;
    
    signal or30 : std_logic;
    




 --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1

begin
or0 <= MuxF_to_F(0) OR MuxF_to_F(1) after OR_gate_delay;
or1 <= MuxF_to_F(2) OR MuxF_to_F(3) after OR_gate_delay;
or2 <= MuxF_to_F(4) OR MuxF_to_F(5) after OR_gate_delay;
or3 <= MuxF_to_F(6) OR MuxF_to_F(7) after OR_gate_delay;
or4 <= MuxF_to_F(8) OR MuxF_to_F(9) after OR_gate_delay;
or5 <= MuxF_to_F(10) OR MuxF_to_F(11) after OR_gate_delay;
or6 <= MuxF_to_F(12) OR MuxF_to_F(13) after OR_gate_delay;
or7 <= MuxF_to_F(14) OR MuxF_to_F(15) after OR_gate_delay;
or8 <= MuxF_to_F(16) OR MuxF_to_F(17) after OR_gate_delay;
or9 <= MuxF_to_F(18) OR MuxF_to_F(19) after OR_gate_delay;
or10 <= MuxF_to_F(20) OR MuxF_to_F(21) after OR_gate_delay;
or11 <= MuxF_to_F(22) OR MuxF_to_F(23) after OR_gate_delay;
or12 <= MuxF_to_F(24) OR MuxF_to_F(25) after OR_gate_delay;
or13 <= MuxF_to_F(26) OR MuxF_to_F(27) after OR_gate_delay;
or14 <= MuxF_to_F(28) OR MuxF_to_F(29) after OR_gate_delay;
or15 <= MuxF_to_F(30) OR MuxF_to_F(31) after OR_gate_delay;

or16 <= or0 OR or1 after OR_gate_delay;
or17 <= or2 OR or3 after OR_gate_delay;
or18 <= or4 OR or5 after OR_gate_delay;
or19 <= or6 OR or7 after OR_gate_delay;
or20 <= or8 OR or9 after OR_gate_delay;
or21 <= or10 OR or11 after OR_gate_delay;
or22 <= or12 OR or13 after OR_gate_delay;
or23 <= or14 OR or15 after OR_gate_delay;

or24 <= or16 OR or17 after OR_gate_delay;
or25 <= or18 OR or19 after OR_gate_delay;
or26 <= or20 OR or21 after OR_gate_delay;
or27 <= or22 OR or23 after OR_gate_delay;

or28 <= or24 OR or25 after OR_gate_delay;
or29 <= or26 OR or27 after OR_gate_delay;

or30 <= or28 OR or29 after OR_gate_delay;

Z <= not or30 after NOT_gate_delay;

end Behavioral; --DP_Zerodetection FINISHED (SAME AS SCHEMATIC!)