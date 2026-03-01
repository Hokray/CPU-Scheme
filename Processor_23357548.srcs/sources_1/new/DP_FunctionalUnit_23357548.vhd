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


entity DP_FunctionalUnit_23357548 is
     Port ( 
             B : in std_logic_vector (31 downto 0);
             A : in std_logic_vector (31 downto 0);
             FS : in std_logic_vector (4 downto 0);
             C : out std_logic;
             F : out std_logic_vector (31 downto 0);
             N : out std_logic;
             Z : out std_logic;
             V : out std_logic
          );
end DP_FunctionalUnit_23357548;

architecture Behavioral of DP_FunctionalUnit_23357548 is

COMPONENT DP_Shifter_23357548 
          PORT(
            B : in std_logic_vector (31 downto 0);
            S1 : in std_logic;
            S2 : in std_logic;
            G : out std_logic_vector (31 downto 0);
            C : out std_logic     
              );
END COMPONENT;

COMPONENT DP_ArithmeticLogicUnit_23357548 
          PORT (
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
END COMPONENT;

COMPONENT CPU_Mux2_32Bit_23357548
           PORT (
            ln0 : in std_logic_vector(31 downto 0);
            ln1 : in std_logic_vector(31 downto 0);
            Sel : in std_logic;
            Z : out std_logic_vector(31 downto 0)  
                 );
END COMPONENT;

COMPONENT DP_CFlagMux2_1Bit_23357548
           PORT (
          C_ALU : in STD_LOGIC;
          C_Shift : in STD_Logic;
          FS4 : in STD_logic;
          C : out std_logic        
           );             
END COMPONENT;

COMPONENT DP_ZeroDetection_23357548
          PORT (
               MuxF_to_F : in std_logic_vector(31 downto 0);
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

signal Shifter_c_out : std_logic;
signal Shifter_out : std_logic_vector(31 downto 0);
signal ALU_c_out : std_logic;
signal ALU_out : std_logic_vector(31 downto 0);
signal mux_out : std_logic_vector(31 downto 0);

signal ALU_CIN : std_logic;
signal SUB_term : std_logic; --NEW LINES
signal TWOS_term : std_logic;
begin --make the instantiations here!!





Shifter : DP_Shifter_23357548 PORT MAP (
            B => B,
            S1 => FS(2), 
            S2 => FS(3),
            C => Shifter_c_out,
            G => Shifter_out     
            );
            
ALU : DP_ArithmeticLogicUnit_23357548 PORT MAP (
            A => A,
            B => B,
            C_IN => FS(0), --HERE THE SAME!
            S0 => FS(1),
            S1 => FS(2),
            S2 => FS(3),
            C => ALU_c_out,
            G => ALU_out,
            V => V   
            );
            
 MuxF : CPU_Mux2_32Bit_23357548 PORT MAP (
           ln0 => ALU_out,
           ln1 => Shifter_out,
           Sel => FS(4),   
           Z => mux_out
           );
 F <= mux_out;
 N <= mux_out(31);
 
  C_Flag : DP_CFlagMux2_1Bit_23357548 PORT MAP (
           C_ALU => ALU_c_out,
           C_Shift => Shifter_c_out,
           FS4 => FS(4),
           C => C          
           );
           
   Z_Flag : DP_ZeroDetection_23357548 PORT MAP (
            MuxF_to_F => mux_out,
            Z => Z      
            );
                

end Behavioral;