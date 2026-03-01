----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okan Okray
-- 
-- Create Date: 10/17/2025 05:01:24 PM
-- Design Name: 
-- Module Name: RF_Test_RegisterFile_16_15_23357548 - Behavioral
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


entity RF_Test_RegisterFile_16_15_23357548 is
  Port (
         A_B_DataIN_Test : in std_logic_vector(1 downto 0);
         D_Test : in std_logic_vector(31 downto 0);
         Clock_Test : in std_logic;
         DR_Test : in std_logic_vector(3 downto 0);
         RW_Test : in std_logic;
         Reset : in std_logic;
         SA_Test : in std_logic_vector(3 downto 0);
         SB_Test : in std_logic_vector(3 downto 0);
         TA_Test : in std_logic_vector(3 downto 0);
         TB_Test : in std_logic_vector(3 downto 0);
         TD_Test : in std_logic_vector(3 downto 0)
         );
end RF_Test_RegisterFile_16_15_23357548;

architecture Behavioral of RF_Test_RegisterFile_16_15_23357548 is
    COMPONENT RF_RegisterFile_16_15_23357548
     Port ( SA : in STD_LOGIC_VECTOR(3 downto 0);
           DR : in STD_LOGIC_VECTOR(3 downto 0);
           SB : in STD_LOGIC_VECTOR(3 downto 0);
           RW : in STD_LOGIC;
           Clock : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR(31 downto 0);
           TB : in STD_LOGIC_VECTOR(3 downto 0);
           TD : in STD_LOGIC_VECTOR(3 downto 0);
           TA : in STD_LOGIC_VECTOR(3 downto 0);
           Reset : in STD_LOGIC;
           B : out STD_LOGIC_VECTOR(31 downto 0);
           A : out STD_LOGIC_VECTOR(31 downto 0)
           );  
    END COMPONENT;
    
    COMPONENT RF_Mux3_32Bit_23357548
    Port (
        A : in STD_LOGIC_VECTOR (1 downto 0);
        ln00 : in STD_LOGIC_VECTOR (31 downto 0);
        ln01 : in STD_LOGIC_VECTOR (31 downto 0);
        ln02 : in STD_LOGIC_VECTOR (31 downto 0);
        Z : out STD_LOGIC_VECTOR (31 downto 0)   
        ); 
    END COMPONENT;
    
   
     --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns; 
   
   
    signal mux_out : STD_LOGIC_VECTOR(31 downto 0);
    signal reg_out_A : STD_LOGIC_VECTOR(31 downto 0);
     signal reg_out_B : STD_LOGIC_VECTOR(31 downto 0);
     
begin --HERE WE INSTANTIATE REGISTER FILE AND MUX3_32
    RegisterFile: RF_RegisterFile_16_15_23357548 PORT MAP (
                  Clock => Clock_Test,
                  D => mux_out,
                  DR => DR_Test,
                  RW => RW_Test,
                  Reset => Reset,
                  SA => SA_Test,
                  SB => SB_Test,
                  TA => TA_Test,
                  TB => TB_Test,
                  TD => TD_Test,
                  A => reg_out_A,
                  B => reg_out_B
                  );
                  
    Mux3_32: RF_Mux3_32Bit_23357548 PORT MAP (
             A => A_B_DataIN_Test,
             ln00 => reg_out_A,
             ln01 => reg_out_B,
             ln02 => D_Test,
             Z => mux_out
             );              
    
end Behavioral;
