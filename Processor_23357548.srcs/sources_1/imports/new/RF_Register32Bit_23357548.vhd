----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okan Okray
-- 
-- Create Date: 10/08/2025 05:16:54 PM
-- Design Name: 
-- Module Name: RF_Register32Bit_23357548 - Behavioral
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

entity RF_Register32Bit_23357548 is
   Port ( CLK : in STD_LOGIC;
         D : in STD_LOGIC_VECTOR (31 downto 0);
         Reset : in STD_LOGIC;
         Load : in STD_LOGIC;
         Q : out STD_LOGIC_VECTOR (31 downto 0)
         );
         
end RF_Register32Bit_23357548;

architecture Behavioral of RF_Register32Bit_23357548 is

    COMPONENT RF_DFlipFlop_23357548
    Port ( CLK, D, RESET : in STD_LOGIC;
           Q : out STD_LOGIC);
    END COMPONENT;
    
     --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
    
    --check if i need to add signals
    signal D_load : STD_LOGIC_VECTOR(31 downto 0);
    signal Load_vector : STD_LOGIC_VECTOR (31 downto 0); 
    signal Q_reg : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal notLoad : STD_LOGIC;
    signal and_d : STD_LOGIC_VECTOR(31 downto 0);
    signal and_q : STD_LOGIC_VECTOR(31 downto 0);
    
    
  

begin --FOR INSTANTIATIONS, WE NEED TO CREATE 32 FLIP FLOPS FOR THIS REGISTER OF 32 bits
    Load_vector <= (others => Load);
    notLoad <= not Load;
    
    --FOR EACH FLIP FLOP INSTANTIATION! (CREATE THE GATES TO CONNECT THEM
    and_d(0) <= D(0) and Load after AND_gate_delay;
    and_q(0) <= Q_reg(0) and notLoad after AND_gate_delay;
    D_load(0) <= and_d(0) or and_q(0) after OR_gate_delay;
    
    and_d(1) <= D(1) and Load after AND_gate_delay;
    and_q(1) <= Q_reg(1) and notLoad after AND_gate_delay;
    D_load(1) <= and_d(1) or and_q(1) after OR_gate_delay;
    
    and_d(2) <= D(2) and Load after AND_gate_delay;
    and_q(2) <= Q_reg(2) and notLoad after AND_gate_delay;
    D_load(2) <= and_d(2) or and_q(2) after OR_gate_delay;
    
    and_d(3) <= D(3) and Load after AND_gate_delay;
    and_q(3) <= Q_reg(3) and notLoad after AND_gate_delay;
    D_load(3) <= and_d(3) or and_q(3) after OR_gate_delay;
    
    and_d(4) <= D(4) and Load after AND_gate_delay;
    and_q(4) <= Q_reg(4) and notLoad after AND_gate_delay;
    D_load(4) <= and_d(4) or and_q(4) after OR_gate_delay;
    
    and_d(5) <= D(5) and Load after AND_gate_delay;
    and_q(5) <= Q_reg(5) and notLoad after AND_gate_delay;
    D_load(5) <= and_d(5) or and_q(5) after OR_gate_delay;
    
    and_d(6) <= D(6) and Load after AND_gate_delay;
    and_q(6) <= Q_reg(6) and notLoad after AND_gate_delay;
    D_load(6) <= and_d(6) or and_q(6) after OR_gate_delay;
    
    and_d(7) <= D(7) and Load after AND_gate_delay;
    and_q(7) <= Q_reg(7) and notLoad after AND_gate_delay;
    D_load(7) <= and_d(7) or and_q(7) after OR_gate_delay;
    
    and_d(8) <= D(8) and Load after AND_gate_delay;
    and_q(8) <= Q_reg(8) and notLoad after AND_gate_delay;
    D_load(8) <= and_d(8) or and_q(8) after OR_gate_delay;
    
    and_d(9) <= D(9) and Load after AND_gate_delay;
    and_q(9) <= Q_reg(9) and notLoad after AND_gate_delay;
    D_load(9) <= and_d(9) or and_q(9) after OR_gate_delay;
    
    and_d(10) <= D(10) and Load after AND_gate_delay;
    and_q(10) <= Q_reg(10) and notLoad after AND_gate_delay;
    D_load(10) <= and_d(10) or and_q(10) after OR_gate_delay;
    
    and_d(11) <= D(11) and Load after AND_gate_delay;
    and_q(11) <= Q_reg(11) and notLoad after AND_gate_delay;
    D_load(11) <= and_d(11) or and_q(11) after OR_gate_delay;
    
    and_d(12) <= D(12) and Load after AND_gate_delay;
    and_q(12) <= Q_reg(12) and notLoad after AND_gate_delay;
    D_load(12) <= and_d(12) or and_q(12) after OR_gate_delay;
    
    and_d(13) <= D(13) and Load after AND_gate_delay;
    and_q(13) <= Q_reg(13) and notLoad after AND_gate_delay;
    D_load(13) <= and_d(13) or and_q(13) after OR_gate_delay;
    
    and_d(14) <= D(14) and Load after AND_gate_delay;
    and_q(14) <= Q_reg(14) and notLoad after AND_gate_delay;
    D_load(14) <= and_d(14) or and_q(14) after OR_gate_delay;
    
    and_d(15) <= D(15) and Load after AND_gate_delay;
    and_q(15) <= Q_reg(15) and notLoad after AND_gate_delay;
    D_load(15) <= and_d(15) or and_q(15) after OR_gate_delay;
    
    and_d(16) <= D(16) and Load after AND_gate_delay;
    and_q(16) <= Q_reg(16) and notLoad after AND_gate_delay;
    D_load(16) <= and_d(16) or and_q(16) after OR_gate_delay;
    
    and_d(17) <= D(17) and Load after AND_gate_delay;
    and_q(17) <= Q_reg(17) and notLoad after AND_gate_delay;
    D_load(17) <= and_d(17) or and_q(17) after OR_gate_delay;
    
    and_d(18) <= D(18) and Load after AND_gate_delay;
    and_q(18) <= Q_reg(18) and notLoad after AND_gate_delay;
    D_load(18) <= and_d(18) or and_q(18) after OR_gate_delay;
    
    and_d(19) <= D(19) and Load after AND_gate_delay;
    and_q(19) <= Q_reg(19) and notLoad after AND_gate_delay;
    D_load(19) <= and_d(19) or and_q(19) after OR_gate_delay;
    
    and_d(20) <= D(20) and Load after AND_gate_delay;
    and_q(20) <= Q_reg(20) and notLoad after AND_gate_delay;
    D_load(20) <= and_d(20) or and_q(20) after OR_gate_delay;
    
    and_d(21) <= D(21) and Load after AND_gate_delay;
    and_q(21) <= Q_reg(21) and notLoad after AND_gate_delay;
    D_load(21) <= and_d(21) or and_q(21) after OR_gate_delay;
    
    and_d(22) <= D(22) and Load after AND_gate_delay;
    and_q(22) <= Q_reg(22) and notLoad after AND_gate_delay;
    D_load(22) <= and_d(22) or and_q(22) after OR_gate_delay;
    
    and_d(23) <= D(23) and Load after AND_gate_delay;
    and_q(23) <= Q_reg(23) and notLoad after AND_gate_delay;
    D_load(23) <= and_d(23) or and_q(23) after OR_gate_delay;
    
    and_d(24) <= D(24) and Load after AND_gate_delay;
    and_q(24) <= Q_reg(24) and notLoad after AND_gate_delay;
    D_load(24) <= and_d(24) or and_q(24) after OR_gate_delay;
    
    and_d(25) <= D(25) and Load after AND_gate_delay;
    and_q(25) <= Q_reg(25) and notLoad after AND_gate_delay;
    D_load(25) <= and_d(25) or and_q(25) after OR_gate_delay;
    
    and_d(26) <= D(26) and Load after AND_gate_delay;
    and_q(26) <= Q_reg(26) and notLoad after AND_gate_delay;
    D_load(26) <= and_d(26) or and_q(26) after OR_gate_delay;
    
    and_d(27) <= D(27) and Load after AND_gate_delay;
    and_q(27) <= Q_reg(27) and notLoad after AND_gate_delay;
    D_load(27) <= and_d(27) or and_q(27) after OR_gate_delay;
    
    and_d(28) <= D(28) and Load after AND_gate_delay;
    and_q(28) <= Q_reg(28) and notLoad after AND_gate_delay;
    D_load(28) <= and_d(28) or and_q(28) after OR_gate_delay;
    
    and_d(29) <= D(29) and Load after AND_gate_delay;
    and_q(29) <= Q_reg(29) and notLoad after AND_gate_delay;
    D_load(29) <= and_d(29) or and_q(29) after OR_gate_delay;
    
    and_d(30) <= D(30) and Load after AND_gate_delay;
    and_q(30) <= Q_reg(30) and notLoad after AND_gate_delay;
    D_load(30) <= and_d(30) or and_q(30) after OR_gate_delay;
    
    and_d(31) <= D(31) and Load after AND_gate_delay;
    and_q(31) <= Q_reg(31) and notLoad after AND_gate_delay;
    D_load(31) <= and_d(31) or and_q(31) after OR_gate_delay;
    
    
    
             bit00 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(0),
           RESET => RESET,
           Q => Q_reg(0)
           );
           
              bit01 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(1),
           RESET => RESET,
           Q => Q_reg(1)
           );
           
            bit02 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(2),
           RESET => RESET,
           Q => Q_reg(2)
           );
           
            bit03 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(3),
           RESET => RESET,
           Q => Q_reg(3)
           );
           
            bit04 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(4),
           RESET => RESET,
           Q => Q_reg(4)
           );
           
            bit05 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(5),
           RESET => RESET,
           Q => Q_reg(5)
           );
           
            bit06 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(6),
           RESET => RESET,
           Q => Q_reg(6)
           );
           
            bit07 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(7),
           RESET => RESET,
           Q => Q_reg(7)
           );
           
            bit08 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(8),
           RESET => RESET,
           Q => Q_reg(8)
           );
           
            bit09 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(9),
           RESET => RESET,
           Q => Q_reg(9)
           );
           
            bit10 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(10),
           RESET => RESET,
           Q => Q_reg(10)
           );
           
            bit11 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(11),
           RESET => RESET,
           Q => Q_reg(11)
           );
           
            bit12 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(12),
           RESET => RESET,
           Q => Q_reg(12)
           );
           
            bit13 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(13),
           RESET => RESET,
           Q => Q_reg(13)
           );
           
            bit14 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(14),
           RESET => RESET,
           Q => Q_reg(14)
           );
           
            bit15 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(15),
           RESET => RESET,
           Q => Q_reg(15)
           );
           
            bit16 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(16),
           RESET => RESET,
           Q => Q_reg(16)
           );
           
            bit17 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(17),
           RESET => RESET,
           Q => Q_reg(17)
           );
           
            bit18 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(18),
           RESET => RESET,
           Q => Q_reg(18)
           );
           
            bit19 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(19),
           RESET => RESET,
           Q => Q_reg(19)
           );
           
            bit20 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(20),
           RESET => RESET,
           Q => Q_reg(20)
           );
           
            bit21 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(21),
           RESET => RESET,
           Q => Q_reg(21)
           );
           
            bit22 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(22),
           RESET => RESET,
           Q => Q_reg(22)
           );
           
            bit23 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(23),
           RESET => RESET,
           Q => Q_reg(23)
           );
           
            bit24 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(24),
           RESET => RESET,
           Q => Q_reg(24)
           );
           
            bit25 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(25),
           RESET => RESET,
           Q => Q_reg(25)
           );
           
            bit26 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(26),
           RESET => RESET,
           Q => Q_reg(26)
           );
           
            bit27 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(27),
           RESET => RESET,
           Q => Q_reg(27)
           );
           
            bit28 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(28),
           RESET => RESET,
           Q => Q_reg(28)
           );
           
            bit29 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(29),
           RESET => RESET,
           Q => Q_reg(29)
           );
           
            bit30 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(30),
           RESET => RESET,
           Q => Q_reg(30)
           );
           
            bit31 : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLK,
           D => D_load(31),
           RESET => RESET,
           Q => Q_reg(31)
           );
           
           Q <= Q_reg;

end Behavioral;
