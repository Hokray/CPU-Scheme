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


entity CPU_Mux2_32Bit_23357548 is
     Port ( 
            ln0 : in std_logic_vector(31 downto 0);
            ln1 : in std_logic_vector(31 downto 0);
            Sel : in std_logic;
            Z : out std_logic_vector(31 downto 0)   
           );
end CPU_Mux2_32Bit_23357548;

architecture Behavioral of CPU_Mux2_32Bit_23357548 is

COMPONENT CPU_Mux2_1Bit_23357548
    Port(
          ln0 : in std_logic;
          ln1 : in std_logic;
          Sel : in std_logic;
          Z : out std_logic
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
   
        
        

begin --make the instantiations here!!


            
      BIT00 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(0),
        ln1 => ln1(0),
        Sel => Sel,
        Z => Z(0)      
        );
        
        BIT01 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(1),
        ln1 => ln1(1),
        Sel => Sel,
        Z => Z(1)      
        );
        
        BIT02 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(2),
        ln1 => ln1(2),
        Sel => Sel,
        Z => Z(2)      
        );
        
        BIT03 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(3),
        ln1 => ln1(3),
        Sel => Sel,
        Z => Z(3)      
        );
        
        BIT04 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(4),
        ln1 => ln1(4),
        Sel => Sel,
        Z => Z(4)      
        );
        
        BIT05 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(5),
        ln1 => ln1(5),
        Sel => Sel,
        Z => Z(5)      
        );
        
        BIT06 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(6),
        ln1 => ln1(6),
        Sel => Sel,
        Z => Z(6)      
        );
        
        BIT07 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(7),
        ln1 => ln1(7),
        Sel => Sel,
        Z => Z(7)      
        );
        
        BIT08 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(8),
        ln1 => ln1(8),
        Sel => Sel,
        Z => Z(8)      
        );
        
        BIT09 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(9),
        ln1 => ln1(9),
        Sel => Sel,
        Z => Z(9)      
        );
        
        BIT10 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(10),
        ln1 => ln1(10),
        Sel => Sel,
        Z => Z(10)      
        );
        
        BIT11 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(11),
        ln1 => ln1(11),
        Sel => Sel,
        Z => Z(11)      
        );
        
        BIT12 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(12),
        ln1 => ln1(12),
        Sel => Sel,
        Z => Z(12)      
        );
        
        BIT13 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(13),
        ln1 => ln1(13),
        Sel => Sel,
        Z => Z(13)      
        );
        
        BIT14 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(14),
        ln1 => ln1(14),
        Sel => Sel,
        Z => Z(14)      
        );
        
        BIT15 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(15),
        ln1 => ln1(15),
        Sel => Sel,
        Z => Z(15)      
        );
        
        BIT16 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(16),
        ln1 => ln1(16),
        Sel => Sel,
        Z => Z(16)      
        );
        
        BIT17 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(17),
        ln1 => ln1(17),
        Sel => Sel,
        Z => Z(17)      
        );
        
        BIT18 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(18),
        ln1 => ln1(18),
        Sel => Sel,
        Z => Z(18)      
        );
        
        BIT19 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(19),
        ln1 => ln1(19),
        Sel => Sel,
        Z => Z(19)      
        );
        
        BIT20 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(20),
        ln1 => ln1(20),
        Sel => Sel,
        Z => Z(20)      
        );
        
        BIT21 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(21),
        ln1 => ln1(21),
        Sel => Sel,
        Z => Z(21)      
        );
        
        BIT22 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(22),
        ln1 => ln1(22),
        Sel => Sel,
        Z => Z(22)      
        );
        
        BIT23 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(23),
        ln1 => ln1(23),
        Sel => Sel,
        Z => Z(23)      
        );
        
        BIT24 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(24),
        ln1 => ln1(24),
        Sel => Sel,
        Z => Z(24)      
        );
        
        BIT25 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(25),
        ln1 => ln1(25),
        Sel => Sel,
        Z => Z(25)      
        );
        
        BIT26 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(26),
        ln1 => ln1(26),
        Sel => Sel,
        Z => Z(26)      
        );
        
        BIT27 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(27),
        ln1 => ln1(27),
        Sel => Sel,
        Z => Z(27)      
        );
        
        BIT28 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(28),
        ln1 => ln1(28),
        Sel => Sel,
        Z => Z(28)      
        );
        
        BIT29 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(29),
        ln1 => ln1(29),
        Sel => Sel,
        Z => Z(29)      
        );
        
        BIT30 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(30),
        ln1 => ln1(30),
        Sel => Sel,
        Z => Z(30)      
        );

        BIT31 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => ln0(31),
        ln1 => ln1(31),
        Sel => Sel,
        Z => Z(31)      

        );  

end Behavioral; --CPU_Mux2_32Bit FINISHED (SCHEMATIC THE SAME!)