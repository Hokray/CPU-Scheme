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


entity CPU_SMux_23357548 is
  Port ( 
        Zero : in std_logic;
        One : in std_logic;
        C_Flag : in std_logic;
        MS : in std_logic_vector(2 downto 0);
        V_Flag : in std_logic;
        Z_Flag : in std_logic;
        N_Flag : in std_logic;
        Not_C_Flag : in std_logic; 
        Not_Z_Flag : in std_logic;
        CAR : out std_logic
        );
end CPU_SMux_23357548;

architecture Behavioral of CPU_SMux_23357548 is

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
   signal and2 : std_logic;
   signal and3 : std_logic;
   signal and4 : std_logic;
   signal and5 : std_logic;
   signal and6 : std_logic;
   signal and7 : std_logic;
   signal and8 : std_logic;
   signal and9 : std_logic;
   signal and10 : std_logic;
   signal and11 : std_logic;
   signal and12 : std_logic;
   signal and13 : std_logic;
   signal and14 : std_logic;
   signal and15 : std_logic;
   signal and16 : std_logic;
   signal and17 : std_logic;
   signal and18 : std_logic;
   signal and19 : std_logic;
   
   signal or0 : std_logic;
   signal or1 : std_logic;
   signal or2 : std_logic;
   signal or3 : std_logic;
   signal or4 : std_logic;
   signal or5 : std_logic;
   
   
   signal notand00 : std_logic;
   signal notand01 : std_logic;
   signal notand1 : std_logic;
   signal notand2 : std_logic;
   
   signal notand4 : std_logic;
   signal notand6 : std_logic;
   signal notand8 : std_logic;
   signal notand10 : std_logic;
   
   
   




begin
notand00 <= not MS(2); --INCORRECT ORDER OF BITS
notand01 <= not MS(1); --NOW THE ORDER OF BITS SHOULD BE CORRECT!

notand1 <= not MS(2);

notand2 <= not MS(1);

notand4 <= not MS(0);

notand6 <= not MS(0);

notand8 <= not MS(0);

notand10 <= not MS(0);

--begin to construct the mux
and0 <= notand00 AND notand01 after AND_GATE_DELAY;
and1 <= notand1 AND MS(1) after AND_GATE_DELAY;
and2 <= MS(2) AND notand2 after AND_GATE_DELAY;
and3 <= MS(2) AND MS(1) after AND_GATE_DELAY;

and4 <= and0 AND notand4 after AND_GATE_DELAY;
and5 <= and0 AND MS(0) after AND_GATE_DELAY;
and6 <= and1 AND notand6 after AND_GATE_DELAY;
and7 <= and1 AND MS(0) after AND_GATE_DELAY;
and8 <= and2 AND notand8 after AND_GATE_DELAY;
and9 <= and2 AND MS(0) after AND_GATE_DELAY;
and10 <= and3 AND notand10 after AND_GATE_DELAY;
and11 <= and3 AND MS(0) after AND_GATE_DELAY;

and12 <= and4 AND Zero after AND_GATE_DELAY;
and13 <= and5 AND One after AND_GATE_DELAY;
and14 <= and6 AND C_Flag after AND_GATE_DELAY;
and15 <= and7 AND V_Flag after AND_GATE_DELAY;
and16 <= and8 AND Z_Flag after AND_GATE_DELAY;
and17 <= and9 AND N_Flag after AND_GATE_DELAY;
and18 <= and10 AND Not_C_Flag after AND_GATE_DELAY;
and19 <= and11 AND Not_Z_Flag after AND_GATE_DELAY;

or0 <= and12 OR and13 after OR_GATE_DELAY;
or1 <= and14 OR and15 after OR_GATE_DELAY;
or2 <= and16 OR and17 after OR_GATE_DELAY;
or3 <= and18 OR and19 after OR_GATE_DELAY;

or4 <= or0 OR or1 after OR_GATE_DELAY;
or5 <= or2 OR or3 after OR_GATE_DELAY;

CAR <= or4 OR or5 after OR_GATE_DELAY;


end Behavioral;