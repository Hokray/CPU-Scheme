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


entity DP_ArithmeticLogicUnit_23357548 is
        Port (
              A : in std_logic_vector(31 downto 0);
              C_IN : in std_logic;
              B : in std_logic_vector(31 downto 0);
              S0 : in std_logic;
              S1 : in std_logic;
              S2 : in std_logic;
              C : out std_logic;
              V : out std_logic;
              G : out std_logic_vector(31 downto 0)          
              );
end DP_ArithmeticLogicUnit_23357548;

architecture Behavioral of DP_ArithmeticLogicUnit_23357548 is

--component DP32BIT B logic
COMPONENT DP_32Bit_B_Logic_23357548 
            PORT(
            S0 : in std_logic;
            S1 : in std_logic;
            B : in std_logic_vector(31 downto 0);
            Y : out std_logic_vector(31 downto 0)            
           );
END COMPONENT;

--component ripplecarryadder
COMPONENT DP_RippleCarryAdder32Bit_23357548 
            PORT(
            A : in STD_LOGIC_VECTOR(31 downto 0);
            B : in STD_LOGIC_VECTOR(31 downto 0);
            C_IN : in STD_LOGIC;
            SUM : out STD_LOGIC_Vector(31 downto 0);
            C_OUT : out STD_logic;
            V : out STD_LOGIC         
           );
END COMPONENT;

--component DP_32Bit_LOGICCIRCUIT
COMPONENT DP_32Bit_LogicCircuit_23357548 
            PORT(
          A : in std_logic_vector(31 downto 0);
          B : in std_logic_vector(31 downto 0);
          S0 : in std_logic;
          S1 : in std_logic;
          G : out std_logic_vector(31 downto 0)              
           );
END COMPONENT;

--component CPU_Mux2_32bit
COMPONENT CPU_Mux2_32Bit_23357548
            PORT(
           ln0 : in std_logic_vector(31 downto 0);
            ln1 : in std_logic_vector(31 downto 0);
            Sel : in std_logic;
            Z : out std_logic_vector(31 downto 0)              
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


signal BLogic_out : std_logic_vector(31 downto 0);
signal Adder_sum : std_logic_vector(31 downto 0);
signal logicCircuit_out : std_logic_vector(31 downto 0);

begin --make the instantiations here!!!

BLogic : DP_32Bit_B_Logic_23357548 PORT MAP (
         S0 => S0,
         S1 => S1,
         B => B,
         Y => BLogic_out   
         );
         
 Adder: DP_RippleCarryAdder32Bit_23357548 PORT MAP (
        A => A,
        B => BLogic_out,
        C_IN => C_IN,
        C_OUT => C,
        V => V,
        SUM => Adder_sum        
        );
        
 LogicCircuit : DP_32Bit_LogicCircuit_23357548 PORT MAP (
                A => A,
                B => B,
                S0 => S0,
                S1 => S1,
                G => logicCircuit_out       
                );
                
ALUMUX : CPU_Mux2_32Bit_23357548 PORT MAP (
              ln0 => Adder_sum,
              ln1 => logicCircuit_out,
              Sel => S2,
              Z => G      
               );


end Behavioral;