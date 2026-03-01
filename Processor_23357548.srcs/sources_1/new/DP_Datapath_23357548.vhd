----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2025 03:40:28 PM
-- Design Name: 
-- Module Name: DP_Datapath_23357548 - Behavioral
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



entity DP_Datapath_23357548 is
  Port ( 
        IR_IN : in std_logic_vector(31 downto 0);
        MB : in std_logic;
        DATA_IN : in std_logic_vector(31 downto 0);
        MD : in std_logic;
        FS : in std_logic_vector(4 downto 0);
        Clock : in std_logic;
        DR : in std_logic_vector(3 downto 0);
        RW : in std_logic;
        Reset : in std_logic;
        SA : in std_logic_vector(3 downto 0);
        SB : in std_logic_vector(3 downto 0);
        TA : in std_logic_vector(3 downto 0);
        TB : in std_logic_vector(3 downto 0);
        TD : in std_logic_vector(3 downto 0);
        DATA_OUT : out std_logic_vector(31 downto 0);
        ADD : out std_logic_vector(31 downto 0);
        C : out std_logic;
        N : out std_logic;
        V : out std_logic;
        Z : out std_logic
        );
end DP_Datapath_23357548;

architecture Behavioral of DP_Datapath_23357548 is
    
    
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
    
    COMPONENT DP_FunctionalUnit_23357548
            PORT (
                B : in std_logic_vector (31 downto 0);
             A : in std_logic_vector (31 downto 0);
             FS : in std_logic_vector (4 downto 0);
             C : out std_logic;
             F : out std_logic_vector (31 downto 0);
             N : out std_logic;
             Z : out std_logic;
             V : out std_logic
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
    
    
    
    
    
    signal muxB_out : std_logic_vector(31 downto 0);
    signal muxD_out : std_logic_vector(31 downto 0);
    
    signal funcunit_out : std_logic_vector(31 downto 0);
    
    signal regFileA : std_logic_vector(31 downto 0);
    signal regFileB : std_logic_vector(31 downto 0);
    
    
    
    
    --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
    
    
begin --make the instantiations here! 
--one func unit, one reg file and 2 mux2_32Bit



RegFile: RF_RegisterFile_16_15_23357548 PORT MAP (
                  Clock => Clock,
                  D => muxD_out, --done!
                  DR => DR,
                  RW => RW,
                  Reset => Reset,
                  SA => SA,
                  SB => SB,
                  TA => TA,
                  TB => TB,
                  TD => TD,
                  A => regFileA,
                  B => regFileB
                  );
 ADD <= regFileA;
 
  MuxB : CPU_Mux2_32Bit_23357548 PORT MAP (
           ln0 => regFileB,
           ln1 => IR_IN,
           Sel => MB,   
           Z => muxB_out
           );
 DATA_OUT <= muxB_out;
           
  MuxD : CPU_Mux2_32Bit_23357548 PORT MAP (
           ln0 => funcunit_out, --done!
           ln1 => DATA_IN,
           Sel => MD,   
           Z => muxD_out
           );
   
  FunctionalUnit: DP_FunctionalUnit_23357548 PORT MAP(
                  B => muxB_out,
                  A => regFileA,
                  FS => FS,
                  C => C,
                  F => funcunit_out,
                  N => N,
                  V => V,
                  Z => Z         
                  );
 
end Behavioral;
