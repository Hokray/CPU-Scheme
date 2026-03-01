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


entity CPU_PC_23357548 is
  Port ( 
        Clock : in std_logic;
        Reset : in std_logic;
        PL : in std_logic;
        Displacement : in std_logic_vector(31 downto 0);
        PI : in std_logic;
        InstAdd : out std_logic_vector(31 downto 0)  
        );
end CPU_PC_23357548;

architecture Behavioral of CPU_PC_23357548 is

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
    
    
    COMPONENT CPU_Mux2_32Bit_23357548 
     Port ( 
            ln0 : in std_logic_vector(31 downto 0);
            ln1 : in std_logic_vector(31 downto 0);
            Sel : in std_logic;
            Z : out std_logic_vector(31 downto 0)   
           );
END COMPONENT;

        
COMPONENT RF_Register32Bit_23357548 
   Port ( CLK : in STD_LOGIC;
         D : in STD_LOGIC_VECTOR (31 downto 0);
         Reset : in STD_LOGIC;
         Load : in STD_LOGIC;
         Q : out STD_LOGIC_VECTOR (31 downto 0)
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

signal Z_PL_out : std_logic_vector(31 downto 0);
signal Adder_out : std_logic_vector(31 downto 0);
signal Z_Reset_out : std_logic_vector(31 downto 0);
signal PC_out : std_logic_vector(31 downto 0);

signal or0 : std_logic;
signal or1 : std_logic;
begin --make the instantiations here!!
or0 <= Reset OR PL after OR_gate_delay;
or1 <= or0 OR PI after OR_gate_delay;



 PL_PI_Mux : CPU_Mux2_32Bit_23357548 PORT MAP (
                ln0 => Displacement,
                ln1 => X"00000001", --this should make the wire to go up and down
                Sel => PI,
                Z => Z_PL_out        
            );
            
  Adder : DP_RippleCarryAdder32Bit_23357548 PORT MAP (
            A => PC_out,
            B => Z_PL_out,
            C_IN => '0',
            SUM => Adder_out   
     --       C_out => '0';
   --         V => '0'   
            ); 
 
 
 ResetMux : CPU_Mux2_32Bit_23357548 PORT MAP (
                ln0 => Adder_out,
                ln1 => X"00000002", --this should make the wire to go up and down
                Sel => Reset, --TO RESET THE PC TO THIS MEMORY ADDRESS(MY ID = 5)
                Z => Z_Reset_out        
            );       
            
  
   PC : RF_Register32Bit_23357548 PORT MAP (
           CLK => Clock,
           D => Z_Reset_out,
           Load => or1,
           RESET => '0',
           Q => PC_out
           );
InstADD <= PC_out;


            



end Behavioral;
