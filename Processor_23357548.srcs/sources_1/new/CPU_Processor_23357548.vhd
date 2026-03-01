----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2025 04:19:16 PM
-- Design Name: 
-- Module Name: CPU_Processor_23357548 - Behavioral
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


entity CPU_Processor_23357548 is
  Port (
       Clock : in std_logic;
       Reset : in std_logic
        );
end CPU_Processor_23357548;



architecture Behavioral of CPU_Processor_23357548 is

COMPONENT CPU_ControlMemory_23357548 PORT (
           Address : in  STD_LOGIC_VECTOR(19 downto 0);
        NA      : out STD_LOGIC_VECTOR(19 downto 0); -- 34-53
        MS      : out STD_LOGIC_VECTOR(2 downto 0);  -- 31-33
        MC      : out STD_LOGIC;                     -- 30
        IL      : out STD_LOGIC;                     -- 29
        PI      : out STD_LOGIC;                     -- 28
        PL      : out STD_LOGIC;                     -- 27
        TD      : out STD_LOGIC_VECTOR(3 downto 0);  -- 23-26
        TA      : out STD_LOGIC_VECTOR(3 downto 0);  -- 19-22
        TB      : out STD_LOGIC_VECTOR(3 downto 0);  -- 15-18
        MB      : out STD_LOGIC;                     -- 14
        FS      : out STD_LOGIC_VECTOR(4 downto 0);  -- 09-13
        MD      : out STD_LOGIC;                     -- 08
        RW      : out STD_LOGIC;                     -- 07
        MM      : out STD_LOGIC;                     -- 06
        MW      : out STD_LOGIC;                     -- 05
        RV      : out STD_LOGIC;                     -- 04
        RC      : out STD_LOGIC;                     -- 03
        RN      : out STD_LOGIC;                     -- 02
        RZ      : out STD_LOGIC;                     -- 01
        FL      : out STD_LOGIC                      -- 00
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

COMPONENT CPU_SignExtend_23357548 PORT (
       Input : in std_logic_vector(7 downto 0);
       Output : out std_logic_vector(31 downto 0) 
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


COMPONENT CPU_ZeroFill_23357548 
  Port (
        SB : in std_logic_vector(3 downto 0);
        MuxB : out std_logic_vector(31 downto 0)   
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

COMPONENT CPU_SMux_23357548 PORT (
                  Zero : in std_logic;
        One : in std_logic;
        C_Flag : in std_logic;
        MS : in std_logic_vector(2 downto 0);
        V_Flag : in std_logic;
        Z_Flag : in std_logic;
        N_Flag : in std_logic;
        Not_C_Flag : in std_logic; 
        Not_Z_Flag : in std_logic;
        CAR : out std_logic
       
          );
END COMPONENT;

COMPONENT CPU_Mux2_20Bit_23357548 PORT (
                      ln0 : in std_logic_vector(19 downto 0);
            ln1 : in std_logic_vector(19 downto 0);
            Sel : in std_logic;  
            Z : out std_logic_vector(19 downto 0)
          );
END COMPONENT;

COMPONENT CPU_CAR_23357548 PORT (
                  Address : in std_logic_vector(19 downto 0);
        Clock : in std_logic;
        LoadAdd : in std_logic;
        Reset : in std_logic;
        CMAdd : out std_logic_vector(19 downto 0)             
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


signal FL_out : std_logic;
signal FS_out : std_logic_vector(4 downto 0);
signal IL_out : std_logic;
signal MB_out : std_logic;
signal MC_out : std_logic;
signal MD_out : std_logic;
signal MM_out : std_logic;
signal MS_out : std_logic_vector(2 downto 0);
signal MW_out : std_logic;
signal NA_out : std_logic_vector(19 downto 0);
signal PI_out : std_logic;
signal PL_out : std_logic;
signal RC_out : std_logic;
signal RN_out : std_logic;
signal RV_out : std_logic;
signal RW_out : std_logic;
signal RZ_out : std_logic;
signal TA_out : std_logic_vector(3 downto 0);
signal TB_out : std_logic_vector(3 downto 0);
signal TD_out : std_logic_vector(3 downto 0); --CONTROLMEMORY SIGNALS

signal signExt_out : std_logic_vector(31 downto 0); --signext signal

signal StatReg_out : std_logic_vector(3 downto 0); --STATREG SIGNAL

signal Datapath_add_out : std_logic_vector(31 downto 0);
signal Datapath_dataout : std_logic_vector(31 downto 0);
signal C_out : std_logic;
signal N_out : std_logic;
signal V_out : std_logic;
signal Z_out : std_logic; --DATAPATH SIGNALS


signal PC_out :  std_logic_vector(31 downto 0); --PC SIGNAL
signal MuxM_out : std_logic_vector(31 downto 0); --MUXM SIGNAL
signal ZeroFill_out : std_logic_vector(31 downto 0); --ZEROFILL SIGNAL
signal RAM_out : std_logic_vector(31 downto 0); --RAM SIGNAL

signal IR_Opcode : std_logic_vector(19 downto 0);
signal IR_DR : std_logic_vector(3 downto 0);
signal IR_SA : std_logic_vector(3 downto 0);
signal IR_SB : std_logic_vector(3 downto 0); --IR SIGNALS

signal MuxS_out : std_logic; --MUXS SIGNAL

signal MuxC_out : std_logic_vector(19 downto 0); --MUXC SIGNAL

signal CAR_out : std_logic_vector(19 downto 0); --CAR SIGNAL

signal not0 : std_logic;
signal not1 : std_logic;


signal SB_DR : std_logic_vector(7 downto 0);

begin --MAKE THE INSTANTIATIONS FOR THE FINAL CPU!

SB_DR <= IR_DR & IR_SB; --CHECK THE ORDERS OF BITS (NOT SURE!) IF ITS WRONG, CHANGE ALSO IN TEST03

ControlROM : CPU_ControlMemory_23357548 PORT MAP (
             Address => CAR_out,
             FL => FL_out,
             FS => FS_out,
             IL => IL_out,
             MB => MB_out,
             MC => MC_out,
             MD => MD_out,
             MM => MM_out,
             MS => MS_out,
             MW => MW_out,
             NA => NA_out,
             PI => PI_out,
             PL => PL_out,
             RC => RC_out,
             RN => RN_out,
             RV => RV_out,
             RW => RW_out,
             RZ => RZ_out,
             TA => TA_out,
             TB => TB_out,
             TD => TD_out
             ); 
             
InstReg : CPU_IR_23357548 PORT MAP (
           Clock => Clock,
           IL => IL_out,
           Instruction => RAM_out,
           DR => IR_DR,
           Opcode => IR_Opcode,
           SA => IR_SA,
           SB => IR_SB
           );             

 
 SignExt : CPU_SignExtend_23357548 PORT MAP ( --CHECK THIS LATER
           Input => SB_DR, --NEED TO CONCANTENATE THE OTHER 4 BITS WITH DR
           Output => signExt_out          
           );  
 
PC : CPU_PC_23357548 PORT MAP (
     Clock => Clock,
     Displacement => signExt_out,
     PI => PI_out,
     PL => PL_out,
     Reset => Reset,
     InstAdd => PC_out
     );      
     


MuxM : CPU_Mux2_32Bit_23357548 PORT MAP (
       ln0 => Datapath_add_out,
       ln1 => PC_out,
       Sel => MM_out,
       Z => MuxM_out
       );     
 
 
 
ZeroFill : CPU_ZeroFill_23357548 PORT MAP (
            SB => IR_SB,
            MuxB => ZeroFill_out
            );          
           
 
 RAM : CPU_RAM_23357548 PORT MAP (
      Address => MuxM_out,
      Clock => Clock,
      DataIn => Datapath_dataout,
      WriteEnable => MW_out,
      DataOut => RAM_out
      );

Datapath : DP_DataPath_23357548 PORT MAP (
            Clock => Clock,
            DATA_IN => RAM_out,
            DR => IR_DR,
            FS => FS_out,
            IR_IN => ZeroFill_out,
            MB => MB_out,
            MD => MD_out,
            RW => RW_out,
            Reset => Reset,
            SA => IR_SA,
            SB => IR_SB,
            TA => TA_out,
            TB => TB_out,
            TD => TD_out,
            ADD => Datapath_add_out,
            C => C_out,
            DATA_OUT => Datapath_dataout,
            N => N_out,
            V => V_out,
            Z => Z_out
            );
      
  StatReg : CPU_StatusRegister_23357548 PORT MAP (
           C_Flag => C_out,
           Clock => Clock,
           LoadFlags => FL_out,
           N_Flag => N_out,
           Reset_C => RC_out,
           Reset_N => RN_out,
           Reset_V => RV_out,
           Reset_Z => RZ_out,
           V_Flag => V_out,
           Z_Flag => Z_out,
           StatusVector => StatReg_out 
           );             
 
 not0 <= not StatReg_out(0);   
 not1 <= not StatReg_out(3); 
 
 MuxS : CPU_SMux_23357548 PORT MAP (
        C_Flag => StatReg_out(0), --check which
        MS => MS_out,
        N_Flag => StatReg_out(2),
        Not_C_Flag => not0, --CHECK ORDER OF BITS
        Not_Z_Flag => not1,
        One => '1',
        V_Flag => StatReg_out(1),
        Z_Flag => StatReg_out(3),
        Zero => '0',
        CAR => MuxS_out
        );          



MuxC : CPU_Mux2_20Bit_23357548 PORT MAP (
        ln0 => NA_out,
        ln1 => IR_Opcode,
        Sel => MC_out,
        Z => MuxC_out 
        );
        
        
CAR : CPU_CAR_23357548 PORT MAP (
      Address => MuxC_out,
      Clock => Clock,
      LoadAdd => MuxS_out,
      Reset => Reset,
      CMAdd => CAR_out
      );         
        
           

end Behavioral;
