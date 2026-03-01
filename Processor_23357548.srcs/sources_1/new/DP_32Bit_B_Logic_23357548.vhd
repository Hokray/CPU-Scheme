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


entity DP_32Bit_B_Logic_23357548 is
     Port ( 
            S0 : in std_logic;
            S1 : in std_logic;
            B : in std_logic_vector(31 downto 0);
            Y : out std_logic_vector(31 downto 0)   
           );
end DP_32Bit_B_Logic_23357548;

architecture Behavioral of DP_32Bit_B_Logic_23357548 is

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
        ln0 => S1,
        ln1 => S0,
        Sel => B(0),
        Z => Y(0)      
        );
        
        BIT01 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(1),
        Z => Y(1)      
        );
        
        BIT02 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(2),
        Z => Y(2)      
        );
        
        BIT03 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(3),
        Z => Y(3)      
        );
        
        BIT04 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(4),
        Z => Y(4)      
        );
        
        BIT05 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(5),
        Z => Y(5)      
        );
        
        BIT06 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(6),
        Z => Y(6)      
        );
        
        BIT07 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(7),
        Z => Y(7)      
        );
        
        BIT08 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(8),
        Z => Y(8)      
        );
        
        BIT09 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(9),
        Z => Y(9)      
        );
        
        BIT10 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(10),
        Z => Y(10)      
        );
        
        BIT11 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(11),
        Z => Y(11)      
        );
        
        BIT12 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(12),
        Z => Y(12)      
        );
        
        BIT13 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(13),
        Z => Y(13)      
        );
        
        BIT14 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(14),
        Z => Y(14)      
        );
        
        BIT15 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(15),
        Z => Y(15)      
        );
        
        BIT16 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(16),
        Z => Y(16)      
        );
        
        BIT17 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(17),
        Z => Y(17)      
        );
        
        BIT18 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(18),
        Z => Y(18)      
        );
        
        BIT19 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(19),
        Z => Y(19)      
        );
        
        BIT20 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(20),
        Z => Y(20)      
        );
        
        BIT21 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(21),
        Z => Y(21)      
        );
        
        BIT22 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(22),
        Z => Y(22)      
        );
        
        BIT23 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(23),
        Z => Y(23)      
        );
        
        BIT24 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(24),
        Z => Y(24)      
        );
        
        BIT25 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(25),
        Z => Y(25)      
        );
        
        BIT26 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(26),
        Z => Y(26)      
        );
        
        BIT27 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(27),
        Z => Y(27)      
        );
        
        BIT28 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(28),
        Z => Y(28)      
        );
        
        BIT29 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(29),
        Z => Y(29)      
        );
        
        BIT30 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(30),
        Z => Y(30)      
        );

        BIT31 : CPU_Mux2_1Bit_23357548 PORT MAP (
        ln0 => S1,
        ln1 => S0,
        Sel => B(31),
        Z => Y(31)      
        );

end Behavioral; --DP_32Bit_B_Logic FINISHED (SCHEMATIC THE SAME!)