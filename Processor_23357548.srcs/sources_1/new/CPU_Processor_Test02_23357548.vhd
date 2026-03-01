----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2025 04:44:54 PM
-- Design Name: 
-- Module Name: CPU_Processor_Test02_23357548 - Behavioral
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


entity CPU_Processor_Test02_23357548 is
  Port ( 
        MW : in std_logic;
        InstAddress : in std_logic_vector(31 downto 0);
        MM : in std_logic;
        Clock : in std_logic;
        DR : in std_logic_vector(3 downto 0);
        FS : in std_logic_vector(4 downto 0);
        IR_IN : std_logic_vector(31 downto 0);
        MB : in std_logic;
        MD : in std_logic;
        RW : in std_logic;
        Reset : in std_logic;
        SA : in std_logic_vector(3 downto 0);
        SB : in std_logic_vector(3 downto 0);
        TA : in std_logic_vector(3 downto 0);
        TB : in std_logic_vector(3 downto 0);
        TD : in std_logic_vector(3 downto 0);
        LoadFlags : in std_logic;
        Reset_C : in std_logic;
        Reset_N : in std_logic;
        Reset_V : in std_logic;
        Reset_Z : in std_logic;
        StatusVector : out std_logic_vector(3 downto 0)
        );
end CPU_Processor_Test02_23357548;

architecture Behavioral of CPU_Processor_Test02_23357548 is

COMPONENT CPU_Mux2_32Bit_23357548
            PORT (
            ln0 : in std_logic_vector(31 downto 0);
            ln1 : in std_logic_vector(31 downto 0);
            Sel : in std_logic;
            Z : out std_logic_vector(31 downto 0)       
            );
END COMPONENT;


COMPONENT CPU_RAM_23357548 PORT (
            Clock : in std_logic;
            WriteEnable : in std_logic;
            Address : in std_logic_vector(31 downto 0);
            DataIn : in std_logic_vector(31 downto 0);
            DataOut : out std_logic_vector(31 downto 0)
            );
END COMPONENT;
            
COMPONENT DP_Datapath_23357548 PORT (
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
END COMPONENT;

COMPONENT CPU_StatusRegister_23357548 PORT (
        C_Flag : in std_logic;
        Reset_V : in std_logic;
        V_Flag : in std_logic;
        Clock : in std_logic;
        Reset_c : in std_logic;
        LoadFlags : in std_logic;
        N_Flag : in std_logic;
        Reset_N : in std_logic;
        Reset_Z : in std_logic;
        Z_Flag : in std_logic;
        StatusVector : out std_logic_vector(3 downto 0)   
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






signal Z_out : std_logic_vector(31 downto 0);
signal RAM_out : std_logic_vector(31 downto 0);
signal ADD_out : std_logic_vector(31 downto 0);
signal Data_out : std_logic_vector(31 downto 0);
signal C_out : std_logic;
signal N_out : std_logic;
signal V_out : std_logic;
signal Zero_out : std_logic;

begin --make the instantiations here

MuxM : CPU_Mux2_32Bit_23357548 PORT MAP (
        ln0 => ADD_out,
        ln1 => InstAddress,
        Sel => MM,
        Z => Z_out
        );
        
        
RAM : CPU_RAM_23357548 PORT MAP (
        Address => Z_out,
        Clock => Clock,
        DataIn => Data_out,
        WriteEnable => MW,
        DataOut => RAM_out    
        );

DataPath : DP_Datapath_23357548 PORT MAP (
           Clock => Clock,
           Data_IN => RAM_out,
           DR => DR,
           FS => FS,
           IR_IN => IR_IN,
           MB => MB,
           MD => MD,
           RW => RW,
           Reset => Reset,
           SA => SA,
           SB => SB,
           TA => TA,
           TB => TB,
           TD => TD,
           ADD => ADD_out,
           C => C_out,
           Data_OUT => Data_out,
           N => N_out,
           V => V_out,
           Z => Zero_out      
           );
           
StatusReg : CPU_StatusRegister_23357548 PORT MAP (
            C_Flag => C_out,
            Clock => Clock,
            LoadFlags => LoadFlags,
            N_Flag => N_out,
            Reset_C => Reset_C,
            Reset_N => Reset_N,
            Reset_V => Reset_V,
            Reset_Z => Reset_Z,
            V_Flag => V_out,
            Z_Flag => Zero_out,
            StatusVector => StatusVector
            );
   
end Behavioral;
