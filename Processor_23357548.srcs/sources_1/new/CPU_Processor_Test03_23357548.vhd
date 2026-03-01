----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okray
-- 
-- Create Date: 11/20/2025 04:44:54 PM
-- Design Name: 
-- Module Name: CPU_Processor_Test03_23357548 - Behavioral
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

entity CPU_Processor_Test03_23357548 is
 Port ( 
        MM : in std_logic;
        MW : in std_logic;
        FS : in std_logic_vector(4 downto 0);
        MB : in std_logic;
        MD : in std_logic;
        RW : in std_logic;
        TA : in std_logic_vector(3 downto 0);
        TB : in std_logic_vector(3 downto 0);
        IL : in std_logic;
        TD : in std_logic_vector(3 downto 0);
        Clock : in std_logic;
        Reset : in std_logic;
        PI : in std_logic;
        PL : in std_logic;
        LoadFlags : in std_logic;
        Reset_C : in std_logic;
        Reset_N : in std_logic;
        Reset_V : in std_logic;
        Reset_Z : in std_logic;
        Opcode : out std_logic_vector(19 downto 0);
        StatusVector : out std_logic_vector(3 downto 0)    
        );
end CPU_Processor_Test03_23357548;

architecture Behavioral of CPU_Processor_Test03_23357548 is

COMPONENT CPU_ZeroFill_23357548 PORT (
          SB : in std_logic_vector(3 downto 0);
          MuxB : out std_logic_vector(31 downto 0)
          );
END COMPONENT;

COMPONENT CPU_SignExtend_23357548 PORT (
           Input : in std_logic_vector(7 downto 0);
           Output : out std_logic_vector(31 downto 0)
           );
END COMPONENT;

COMPONENT DP_DataPath_23357548 PORT (
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

COMPONENT CPU_PC_23357548 PORT (
                  Clock : in std_logic;
        Reset : in std_logic;
        PL : in std_logic;
        Displacement : in std_logic_vector(31 downto 0);
        PI : in std_logic;
        InstAdd : out std_logic_vector(31 downto 0)    
          );
END COMPONENT;

COMPONENT CPU_Mux2_32Bit_23357548 PORT (
                      ln0 : in std_logic_vector(31 downto 0);
            ln1 : in std_logic_vector(31 downto 0);
            Sel : in std_logic;
            Z : out std_logic_vector(31 downto 0)        
          );
END COMPONENT;

COMPONENT CPU_RAM_23357548 PORT (
       Clock : in STD_LOGIC ;
       Address : in STD_LOGIC_VECTOR (31 downto 0) ;
       DataIn : in STD_LOGIC_VECTOR (31 downto 0) ;
       WriteEnable : in STD_LOGIC ;
       DataOut : out STD_LOGIC_VECTOR (31 downto 0)  
          );
END COMPONENT;


COMPONENT CPU_IR_23357548 PORT (
                      Clock : in std_logic;
            Instruction : in std_logic_vector(31 downto 0);
            IL : in std_logic;
            DR : out std_logic_vector(3 downto 0);
            Opcode : out std_logic_vector(19 downto 0);
            SA : out std_logic_vector(3 downto 0);
            SB : out std_logic_vector(3 downto 0)  
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

signal Zerofill_out : std_logic_vector(31 downto 0);
signal Signextend_out : std_logic_vector(31 downto 0);
signal Datapath_add_out : std_logic_vector(31 downto 0);
signal Datapath_dataout : std_logic_vector(31 downto 0);
signal C_out : std_logic;
signal N_out : std_logic;
signal V_out : std_logic;
signal Z_out : std_logic;
signal PC_out :  std_logic_vector(31 downto 0);
signal Mux_out : std_logic_vector(31 downto 0);
signal RAM_out : std_logic_vector(31 downto 0);
signal IR_DR : std_logic_vector(3 downto 0);
signal IR_SA : std_logic_vector(3 downto 0);
signal IR_SB : std_logic_vector(3 downto 0);

signal SB_DR : std_logic_vector(7 downto 0);



begin --make the instantiations here!!

SB_DR <= IR_DR & IR_SB; --CHECK THE ORDERS OF BITS (NOT SURE!)


ZeroFill : CPU_ZeroFill_23357548 PORT MAP (
            SB => IR_SB,
            MuxB => ZeroFill_out
            );
            
SignExt : CPU_SignExtend_23357548 PORT MAP (
           Input => SB_DR, --NEED TO CONCANTENATE THE OTHER 4 BITS WITH DR
           Output => Signextend_out          
           );


Datapath : DP_DataPath_23357548 PORT MAP (
            Clock => Clock,
            DATA_IN => RAM_out,
            DR => IR_DR,
            FS => FS,
            IR_IN => ZeroFill_out,
            MB => MB,
            MD => MD,
            RW => RW,
            Reset => Reset,
            SA => IR_SA,
            SB => IR_SB,
            TA => TA,
            TB => TB,
            TD => TD,
            ADD => Datapath_add_out,
            C => C_out,
            DATA_OUT => Datapath_dataout,
            N => N_out,
            V => V_out,
            Z => Z_out
            );

PC : CPU_PC_23357548 PORT MAP (
     Clock => Clock,
     Displacement => Signextend_out,
     PI => PI,
     PL => PL,
     Reset => Reset,
     InstAdd => PC_out
     );

MuxM : CPU_Mux2_32Bit_23357548 PORT MAP (
       ln0 => Datapath_add_out,
       ln1 => PC_out,
       Sel => MM,
       Z => Mux_out
       );

RAM : CPU_RAM_23357548 PORT MAP (
      Address => Mux_out,
      Clock => Clock,
      DataIn => Datapath_dataout,
      WriteEnable => MW,
      DataOut => RAM_out
      );

InstReg : CPU_IR_23357548 PORT MAP (
           Clock => Clock,
           IL => IL,
           Instruction => RAM_out,
           DR => IR_DR,
           Opcode => Opcode,
           SA => IR_SA,
           SB => IR_SB
           );
           
 StatReg : CPU_StatusRegister_23357548 PORT MAP (
           C_Flag => C_out,
           Clock => Clock,
           LoadFlags => LoadFlags,
           N_Flag => N_out,
           Reset_C => Reset_C,
           Reset_N => Reset_N,
           Reset_V => Reset_V,
           Reset_Z => Reset_Z,
           V_Flag => V_out,
           Z_Flag => Z_out,
           StatusVector => StatusVector    
           );          
           
end Behavioral;
