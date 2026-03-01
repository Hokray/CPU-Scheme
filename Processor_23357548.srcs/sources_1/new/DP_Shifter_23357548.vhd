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


entity DP_Shifter_23357548 is
     Port ( 
            B : in std_logic_vector (31 downto 0);
            S1 : in std_logic;
            S2 : in std_logic;
            G : out std_logic_vector (31 downto 0);
            C : out std_logic
           );
end DP_Shifter_23357548;

architecture Behavioral of DP_Shifter_23357548 is
COMPONENT RF_Mux3_1Bit_23357548 
       PORT(
           I0 : in std_logic;
           I1 : in std_logic;
           A : in std_logic_vector (1 downto 0);
           I2 : in std_logic;
           Z : out std_logic             
            );
END COMPONENT;


COMPONENT DP_ShifterCFlagMux2_1Bit_23357548
       PORT(
           LSB : in std_logic;
           S2 : in std_logic;
           S1 : in std_logic;
           MSB : in std_logic;
           C : out std_logic             
            );
END COMPONENT;

   --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1


begin --MAKE THE INSTANTITIONS HERE!

BIT00 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(0),
            I1 => B(1),
            I2 => '0', --CO NNECTED TO THE GROUND
            Z => G(0)
            );
            
           BIT01 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(1), --my question is, does I0, I1 and I2 should have the same B or not?
            I1 => B(2),
            I2 => B(0),
            Z => G(1)
            );
            
             BIT02 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(2),
            I1 => B(3),
            I2 => B(1),
            Z => G(2)
            );
            
              BIT03 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(3),
            I1 => B(4),
            I2 => B(2),
            Z => G(3)
            );
            
              BIT04 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(4),
            I1 => B(5),
            I2 => B(3),
            Z => G(4)
            );
            
              BIT05 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(5),
            I1 => B(6),
            I2 => B(4),
            Z => G(5)
            );
            
              BIT06 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(6),
            I1 => B(7),
            I2 => B(5),
            Z => G(6)
            );
            
              BIT07 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(7),
            I1 => B(8),
            I2 => B(6),
            Z => G(7)
            );
            
              BIT08 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(8),
            I1 => B(9),
            I2 => B(7),
            Z => G(8)
            );
            
              BIT09 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(9),
            I1 => B(10),
            I2 => B(8),
            Z => G(9)
            );
            
              BIT10 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(10),
            I1 => B(11),
            I2 => B(9),
            Z => G(10)
            );
            
              BIT11 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(11),
            I1 => B(12),
            I2 => B(10),
            Z => G(11)
            );
            
              BIT12 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(12),
            I1 => B(13),
            I2 => B(11),
            Z => G(12)
            );
            
              BIT13 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(13),
            I1 => B(14),
            I2 => B(12),
            Z => G(13)
            );
            
              BIT14 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(14),
            I1 => B(15),
            I2 => B(13),
            Z => G(14)
            );
            
              BIT15 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(15),
            I1 => B(16),
            I2 => B(14),
            Z => G(15)
            );
            
              BIT16 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(16),
            I1 => B(17),
            I2 => B(15),
            Z => G(16)
            );
            
              BIT17 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(17),
            I1 => B(18),
            I2 => B(16),
            Z => G(17)
            );
            
              BIT18 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(18),
            I1 => B(19),
            I2 => B(17),
            Z => G(18)
            );
            
              BIT19 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(19),
            I1 => B(20),
            I2 => B(18),
            Z => G(19)
            );
            
              BIT20 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(20),
            I1 => B(21),
            I2 => B(19),
            Z => G(20)
            );
            
              BIT21 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(21),
            I1 => B(22),
            I2 => B(20),
            Z => G(21)
            );
            
              BIT22 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(22),
            I1 => B(23),
            I2 => B(21),
            Z => G(22)
            );
            
              BIT23 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(23),
            I1 => B(24),
            I2 => B(22),
            Z => G(23)
            );
            
              BIT24 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(24),
            I1 => B(25),
            I2 => B(23),
            Z => G(24)
            );
            
              BIT25 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(25),
            I1 => B(26),
            I2 => B(24),
            Z => G(25)
            );
            
              BIT26 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(26),
            I1 => B(27),
            I2 => B(25),
            Z => G(26)
            );
            
              BIT27 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(27),
            I1 => B(28),
            I2 => B(26),
            Z => G(27)
            );
            
              BIT28 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(28),
            I1 => B(29),
            I2 => B(27),
            Z => G(28)
            );
            
              BIT29 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(29),
            I1 => B(30),
            I2 => B(28),
            Z => G(29)
            );
            
              BIT30 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(30),
            I1 => B(31),
            I2 => B(29),
            Z => G(30)
            );
            
              BIT31 : RF_Mux3_1Bit_23357548 PORT MAP (
            A(0) => S1,
            A(1) => S2,
            I0 => B(31),
            I1 => '0', --CONNECTED TO THE GROUND!
            I2 => B(30), 
            Z => G(31)
            );
            
            CFlagMux : DP_ShifterCFlagMux2_1Bit_23357548 PORT MAP (
            LSB => B(0), --original least significant bit
            S2 => S2,
            S1 => S1,
            MSB => B(31), --original most significant bit
            C => C        
            );
            
            
end Behavioral; --almost finished (same as schematic but not working!)