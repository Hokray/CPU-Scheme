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


entity DP_RippleCarryAdder32Bit_23357548 is
  Port ( 
            A : in STD_LOGIC_VECTOR(31 downto 0);
            B : in STD_LOGIC_VECTOR(31 downto 0);
            C_IN : in STD_LOGIC;
            SUM : out STD_LOGIC_Vector(31 downto 0);
            C_OUT : out STD_logic;
            V : out STD_LOGIC
        );
end DP_RippleCarryAdder32Bit_23357548;

architecture Behavioral of DP_RippleCarryAdder32Bit_23357548 is

         COMPONENT DP_FullAdder_23357548
    Port(
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        C_IN : in STD_logic;
        C_OUT : out STD_logic;
        SUM : out STD_Logic
        );
    END COMPONENT;


        signal xor_out : STD_logic;
       signal xor_in1 : std_logic;
       signal xor_in2 : std_logic;
        
        signal c_in1 : std_logic;
        signal c_in2 : std_logic;
        signal c_in3 : std_logic;
        signal c_in4 : std_logic;
        signal c_in5 : std_logic;
        signal c_in6 : std_logic;
        signal c_in7 : std_logic;
        signal c_in8 : std_logic;
        signal c_in9 : std_logic;
        signal c_in10 : std_logic;
        signal c_in11 : std_logic;
        signal c_in12 : std_logic;
        signal c_in13 : std_logic;
        signal c_in14 : std_logic;
        signal c_in15 : std_logic;
        signal c_in16 : std_logic;
        signal c_in17 : std_logic;
        signal c_in18 : std_logic;
        signal c_in19 : std_logic;
        signal c_in20 : std_logic;
        signal c_in21 : std_logic;
        signal c_in22 : std_logic;
        signal c_in23 : std_logic;
        signal c_in24 : std_logic;
        signal c_in25 : std_logic;
        signal c_in26 : std_logic;
        signal c_in27 : std_logic;
        signal c_in28 : std_logic;
        signal c_in29 : std_logic;
        signal c_in30 : std_logic;
        signal c_in31 : std_logic;
        signal c_in32 : std_logic;

         --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
   
   
   
begin --DO THE INSTANTIATIONS HERE!


    bit00 : DP_FullAdder_23357548 PORT MAP (
            A => A(0),
            B => B(0),
            C_IN => C_IN,
            SUM => SUM(0),
            C_OUT => c_in1 
             );
            
     bit01 : DP_FullAdder_23357548 PORT MAP (
            A => A(1),
            B => B(1),
            C_IN => c_in1,
            SUM => SUM(1),
            C_OUT => c_in2      
            );
          
      bit02 : DP_FullAdder_23357548 PORT MAP (
            A => A(2),
            B => B(2),
            C_IN => c_in2,
            SUM => SUM(2),
            C_OUT => c_in3       
            );
            
             bit03 : DP_FullAdder_23357548 PORT MAP (
            A => A(3),
            B => B(3),
            C_IN => c_in3,
            SUM => SUM(3),
            C_OUT => c_in4       
            );    
            
             bit04 : DP_FullAdder_23357548 PORT MAP (
            A => A(4),
            B => B(4),
            C_IN => c_in4,
            SUM => SUM(4),
            C_OUT => c_in5       
            );
            
             bit05 : DP_FullAdder_23357548 PORT MAP (
            A => A(5),
            B => B(5),
            C_IN => c_in5,
            SUM => SUM(5),
            C_OUT => c_in6       
            );
            
             bit06 : DP_FullAdder_23357548 PORT MAP (
            A => A(6),
            B => B(6),
            C_IN => c_in6,
            SUM => SUM(6),
            C_OUT => c_in7       
            );
            
             bit07 : DP_FullAdder_23357548 PORT MAP (
            A => A(7),
            B => B(7),
            C_IN => c_in7,
            SUM => SUM(7),
            C_OUT => c_in8      
            );
            
             bit08 : DP_FullAdder_23357548 PORT MAP (
            A => A(8),
            B => B(8),
            C_IN => c_in8,
            SUM => SUM(8),
            C_OUT => c_in9      
            );
            
             bit09 : DP_FullAdder_23357548 PORT MAP (
            A => A(9),
            B => B(9),
            C_IN => c_in9,
            SUM => SUM(9),
            C_OUT => c_in10       
            );
            
             bit10 : DP_FullAdder_23357548 PORT MAP (
            A => A(10),
            B => B(10),
            C_IN => c_in10,
            SUM => SUM(10),
            C_OUT => c_in11       
            );
            
             bit11 : DP_FullAdder_23357548 PORT MAP (
            A => A(11),
            B => B(11),
            C_IN => c_in11,
            SUM => SUM(11),
            C_OUT => c_in12    
            );
            
             bit12 : DP_FullAdder_23357548 PORT MAP (
            A => A(12),
            B => B(12),
            C_IN => c_in12,
            SUM => SUM(12),
            C_OUT => c_in13      
            );
            
             bit13 : DP_FullAdder_23357548 PORT MAP (
            A => A(13),
            B => B(13),
            C_IN => c_in13,
            SUM => SUM(13),
            C_OUT => c_in14     
            );
            
             bit14 : DP_FullAdder_23357548 PORT MAP (
            A => A(14),
            B => B(14),
            C_IN => c_in14,
            SUM => SUM(14),
            C_OUT => c_in15      
            );
            
             bit15 : DP_FullAdder_23357548 PORT MAP (
            A => A(15),
            B => B(15),
            C_IN => c_in15,
            SUM => SUM(15),
            C_OUT => c_in16       
            );
            
             bit16 : DP_FullAdder_23357548 PORT MAP (
            A => A(16),
            B => B(16),
            C_IN => c_in16,
            SUM => SUM(16),
            C_OUT => c_in17       
            );
            
             bit17 : DP_FullAdder_23357548 PORT MAP (
            A => A(17),
            B => B(17),
            C_IN => c_in17,
            SUM => SUM(17),
            C_OUT => c_in18      
            );
            
             bit18 : DP_FullAdder_23357548 PORT MAP (
            A => A(18),
            B => B(18),
            C_IN => c_in18,
            SUM => SUM(18),
            C_OUT => c_in19      
            );
            
             bit19 : DP_FullAdder_23357548 PORT MAP (
            A => A(19),
            B => B(19),
            C_IN => c_in19,
            SUM => SUM(19),
            C_OUT => c_in20    
            );
            
             bit20 : DP_FullAdder_23357548 PORT MAP (
            A => A(20),
            B => B(20),
            C_IN => c_in20,
            SUM => SUM(20),
            C_OUT => c_in21      
            );
            
             bit21 : DP_FullAdder_23357548 PORT MAP (
            A => A(21),
            B => B(21),
            C_IN => c_in21,
            SUM => SUM(21),
            C_OUT => c_in22       
            );
            
             bit22 : DP_FullAdder_23357548 PORT MAP (
            A => A(22),
            B => B(22),
            C_IN => c_in22,
            SUM => SUM(22),
            C_OUT => c_in23      
            );
            
             bit23 : DP_FullAdder_23357548 PORT MAP (
            A => A(23),
            B => B(23),
            C_IN => c_in23,
            SUM => SUM(23),
            C_OUT => c_in24       
            );
            
             bit24 : DP_FullAdder_23357548 PORT MAP (
            A => A(24),
            B => B(24),
            C_IN => c_in24,
            SUM => SUM(24),
            C_OUT => c_in25      
            );
            
             bit25 : DP_FullAdder_23357548 PORT MAP (
            A => A(25),
            B => B(25),
            C_IN => c_in25,
            SUM => SUM(25),
            C_OUT => c_in26       
            );
            
             bit26 : DP_FullAdder_23357548 PORT MAP (
            A => A(26),
            B => B(26),
            C_IN => c_in26,
            SUM => SUM(26),
            C_OUT => c_in27       
            );
            
             bit27 : DP_FullAdder_23357548 PORT MAP (
            A => A(27),
            B => B(27),
            C_IN => c_in27,
            SUM => SUM(27),
            C_OUT => c_in28      
            );
            
             bit28 : DP_FullAdder_23357548 PORT MAP (
            A => A(28),
            B => B(28),
            C_IN => c_in28,
            SUM => SUM(28),
            C_OUT => c_in29       
            );
            
             bit29 : DP_FullAdder_23357548 PORT MAP (
            A => A(29),
            B => B(29),
            C_IN => c_in29,
            SUM => SUM(29),
            C_OUT => c_in30       
            );
            
             bit30 : DP_FullAdder_23357548 PORT MAP (
            A => A(30),
            B => B(30),
            C_IN => c_in30,
            SUM => SUM(30),
            C_OUT => xor_in1     
            ); 

            bit31 : DP_FullAdder_23357548 PORT MAP (
            A => A(31),
            B => B(31),
            C_IN => xor_in1,
            SUM => SUM(31),
            C_OUT => xor_in2       
            ); 
     

            C_OUT <= xor_in2;
            V <= xor_in1 xor xor_in2 after XOR_gate_delay;

end Behavioral; --FINISHED RIPPLECARRYADDER32BIT!!! (SCHEMATIC THE SAME)
