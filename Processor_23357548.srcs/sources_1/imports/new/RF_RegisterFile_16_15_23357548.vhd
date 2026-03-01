----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okan Okray
-- 
-- Create Date: 10/16/2025 11:05:58 PM
-- Design Name: 
-- Module Name: RF_RegisterFile_16_15_23357548 - Behavioral
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

entity RF_RegisterFile_16_15_23357548 is
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
end RF_RegisterFile_16_15_23357548;

architecture Behavioral of RF_RegisterFile_16_15_23357548 is

--WRITE THE COMPONENTS HERE!
    COMPONENT RF_Register32Bit_23357548
    Port ( CLK : in STD_LOGIC;
         D : in STD_LOGIC_VECTOR (31 downto 0);
         Reset : in STD_LOGIC;
         Load : in STD_LOGIC;
         Q : out STD_LOGIC_VECTOR (31 downto 0)
         );
     END COMPONENT;
     
     COMPONENT RF_DestReg_Decoder_23357548
     Port (
        A : in  STD_LOGIC_VECTOR(3 downto 0);  
        Q00, Q01, Q02, Q03, Q04, Q05, Q06, Q07,
        Q08, Q09, Q10, Q11, Q12, Q13, Q14, Q15 : out STD_LOGIC
        );
     END COMPONENT;
     
     COMPONENT RF_Mux16_32Bit_23357548
     Port(
        ln00  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln01  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln02  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln03  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln04  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln05  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln06  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln07  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln08  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln09  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln10  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln11  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln12  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln13  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln14  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln15  : in  STD_LOGIC_VECTOR(31 downto 0);
        A  : in  STD_LOGIC_VECTOR(3 downto 0);
        Z  : out STD_LOGIC_VECTOR(31 downto 0)
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


    --DECLARE THE SIGNALS HERE! (TO CONNECT EVERYTHING)
    signal decoder_out : STD_LOGIC_VECTOR (15 downto 0); --signals out from decoder
    signal temp_decoder_out : STD_LOGIC_VECTOR (15 downto 0); --signals out from tempdecoder
    signal load_register : STD_LOGIC_VECTOR (15 downto 0); --combine with decoder out and AND
    signal load_temp_register : STD_LOGIC_VECTOR (15 downto 0); --ombine with tempDEcoder out and AND
    signal register00_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register01_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register02_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register03_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register04_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register05_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register06_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register07_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register08_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register09_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register10_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register11_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register12_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register13_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register14_out : STD_LOGIC_VECTOR (31 downto 0);
    signal register15_out : STD_LOGIC_VECTOR (31 downto 0);
    
    --temp register signals
    signal temp_register01_out : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_register02_out : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_register03_out : STD_LOGIC_VECTOR (31 downto 0);
   signal temp_register04_out : STD_LOGIC_VECTOR (31 downto 0);
   signal temp_register05_out : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_register06_out : STD_LOGIC_VECTOR (31 downto 0);
   signal temp_register07_out : STD_LOGIC_VECTOR (31 downto 0);
   signal temp_register08_out : STD_LOGIC_VECTOR (31 downto 0);
   signal temp_register09_out : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_register10_out : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_register11_out : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_register12_out : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_register13_out : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_register14_out : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_register15_out : STD_LOGIC_VECTOR (31 downto 0);
    
    signal muxA_out, muxB_out : STD_LOGIC_VECTOR(31 downto 0);
    
    --we use this to disable the load of the main registers
    signal main_enable : std_logic;
    signal TD0_not, TD1_not, TD2_not, TD3_not : std_logic;
    signal m1, m2, m3 : STD_LOGIC;
    


begin --HERE We need to istantiate!
-- 2 decoders, 4 Mux16, 32 Registers, 

--DEFINED REQUIRED signals!
-- NOTs for TD bits
TD3_not <= not TD(3) after NOT_gate_delay;
TD2_not <= not TD(2) after NOT_gate_delay;
TD1_not <= not TD(1) after NOT_gate_delay;
TD0_not <= not TD(0) after NOT_gate_delay;


m1 <= TD3_not and TD2_not after AND_gate_delay;
m2 <= m1 and TD1_not after AND_gate_delay;
main_enable <= m2 and TD0_not after AND_gate_delay;

load_register(0) <= decoder_out(0) AND RW AND main_enable  after AND_gate_delay;
load_register(1) <= decoder_out(1) AND RW AND main_enable after AND_gate_delay;
load_register(2) <= decoder_out(2) AND RW AND main_enable after AND_gate_delay;
load_register(3) <= decoder_out(3) AND RW AND main_enable after AND_gate_delay;
load_register(4) <= decoder_out(4) AND RW AND main_enable after AND_gate_delay;
load_register(5) <= decoder_out(5) AND RW AND main_enable after AND_gate_delay;
load_register(6) <= decoder_out(6) AND RW AND main_enable after AND_gate_delay;
load_register(7) <= decoder_out(7) AND RW AND main_enable after AND_gate_delay;
load_register(8) <= decoder_out(8) AND RW AND main_enable after AND_gate_delay;
load_register(9) <= decoder_out(9) AND RW AND main_enable after AND_gate_delay;
load_register(10) <= decoder_out(10) AND RW AND main_enable after AND_gate_delay;
load_register(11) <= decoder_out(11) AND RW AND main_enable after AND_gate_delay;
load_register(12) <= decoder_out(12) AND RW AND main_enable after AND_gate_delay;
load_register(13) <= decoder_out(13) AND RW AND main_enable after AND_gate_delay;
load_register(14) <= decoder_out(14) AND RW AND main_enable after AND_gate_delay;
load_register(15) <= decoder_out(15) AND RW AND main_enable after AND_gate_delay;


load_temp_register(0) <= temp_decoder_out(1) AND RW after AND_gate_delay;
load_temp_register(1) <= temp_decoder_out(2) AND RW after AND_gate_delay;
load_temp_register(2) <= temp_decoder_out(3) AND RW after AND_gate_delay;
load_temp_register(3) <= temp_decoder_out(4) AND RW after AND_gate_delay;
load_temp_register(4) <= temp_decoder_out(5) AND RW after AND_gate_delay;
load_temp_register(5) <= temp_decoder_out(6) AND RW after AND_gate_delay;
load_temp_register(6) <= temp_decoder_out(7) AND RW after AND_gate_delay;
load_temp_register(7) <= temp_decoder_out(8) AND RW after AND_gate_delay;
load_temp_register(8) <= temp_decoder_out(9) AND RW after AND_gate_delay;
load_temp_register(9) <= temp_decoder_out(10) AND RW after AND_gate_delay;
load_temp_register(10) <= temp_decoder_out(11) AND RW after AND_gate_delay;
load_temp_register(11) <= temp_decoder_out(12) AND RW after AND_gate_delay;
load_temp_register(12) <= temp_decoder_out(13) AND RW after AND_gate_delay;
load_temp_register(13) <= temp_decoder_out(14) AND RW after AND_gate_delay;
load_temp_register(14) <= temp_decoder_out(15) AND RW after AND_gate_delay;





--DECODERS Instantiations (2)
DestReg_Decoder : RF_DestReg_Decoder_23357548 PORT MAP(
                        A => DR,
                        Q00 => decoder_out(0),
                        Q01 => decoder_out(1),
                        Q02 => decoder_out(2),
                        Q03 => decoder_out(3),
                        Q04 => decoder_out(4),
                        Q05 => decoder_out(5),
                        Q06 => decoder_out(6),
                        Q07 => decoder_out(7),
                        Q08 => decoder_out(8),
                        Q09 => decoder_out(9),
                        Q10 => decoder_out(10),
                        Q11 => decoder_out(11),
                        Q12 => decoder_out(12),
                        Q13 => decoder_out(13),
                        Q14 => decoder_out(14),
                        Q15 => decoder_out(15)               
                  );

DestTempReg_Decoder : RF_DestReg_Decoder_23357548 PORT MAP(
                      A => TD,
                      Q00 => temp_decoder_out(0),
                      Q01 => temp_decoder_out(1),
                      Q02 => temp_decoder_out(2),
                      Q03 => temp_decoder_out(3),
                      Q04 => temp_decoder_out(4),
                      Q05 => temp_decoder_out(5),
                      Q06 => temp_decoder_out(6),
                      Q07 => temp_decoder_out(7),
                      Q08 => temp_decoder_out(8),
                      Q09 => temp_decoder_out(9),
                      Q10 => temp_decoder_out(10),
                      Q11 => temp_decoder_out(11),  
                      Q12 => temp_decoder_out(12),
                      Q13 => temp_decoder_out(13),
                      Q14 => temp_decoder_out(14),
                      Q15 => temp_decoder_out(15)           
                  );
                                   
--MUX16 instantiations (4)
Mux16_A : RF_Mux16_32Bit_23357548 PORT MAP( --USE SA
        ln00 => register00_out, 
        ln01 => register01_out,
        ln02 => register02_out,
        ln03 => register03_out,
        ln04 => register04_out,
        ln05 => register05_out,
        ln06 => register06_out,
        ln07 => register07_out,
        ln08 => register08_out,
        ln09 => register09_out,
        ln10 => register10_out,
        ln11 => register11_out,
        ln12 => register12_out,
        ln13 => register13_out,
        ln14 => register14_out,
        ln15 => register15_out,
        A => SA,
        Z => muxA_out   
        );
          
Mux16_B : RF_Mux16_32Bit_23357548 PORT MAP( --USE SB
        ln00 => register00_out, 
        ln01 => register01_out,
        ln02 => register02_out,
        ln03 => register03_out,
        ln04 => register04_out,
        ln05 => register05_out,
        ln06 => register06_out,
        ln07 => register07_out,
        ln08 => register08_out,
        ln09 => register09_out,
        ln10 => register10_out,
        ln11 => register11_out,
        ln12 => register12_out,
        ln13 => register13_out,
        ln14 => register14_out,
        ln15 => register15_out,
        A => SB,
        Z => muxB_out    
          );
          
TMux16_A : RF_Mux16_32Bit_23357548 PORT MAP( --USE TA
        ln00 => muxA_out, --HERE THE OUTPUT OF MUXA (VERIFY THIS!!!!!!!)
        ln01 => temp_register01_out,
        ln02 => temp_register02_out,
        ln03 => temp_register03_out,
        ln04 => temp_register04_out,
        ln05 => temp_register05_out,
        ln06 => temp_register06_out,
        ln07 => temp_register07_out,
        ln08 => temp_register08_out,
        ln09 => temp_register09_out,
        ln10 => temp_register10_out,
        ln11 => temp_register11_out,
        ln12 => temp_register12_out,
        ln13 => temp_register13_out,
        ln14 => temp_register14_out,
        ln15 => temp_register15_out,
        A => TA,
        Z => A  
          
          
          ); 
          

TMux16_B : RF_Mux16_32Bit_23357548 PORT MAP( --USe TB
        ln00 => muxB_out, --HERE THE OUTPUT OF MUXB
        ln01 => temp_register01_out,
        ln02 => temp_register02_out,
        ln03 => temp_register03_out,
        ln04 => temp_register04_out,
        ln05 => temp_register05_out,
        ln06 => temp_register06_out,
        ln07 => temp_register07_out,
        ln08 => temp_register08_out,
        ln09 => temp_register09_out,
        ln10 => temp_register10_out,
        ln11 => temp_register11_out,
        ln12 => temp_register12_out,
        ln13 => temp_register13_out,
        ln14 => temp_register14_out,
        ln15 => temp_register15_out,
        A => TB,
        Z => B           
        );
        
--Registers instantiations (32)
Register00 : RF_Register32Bit_23357548 PORT MAP (
             CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(0),
             Q => register00_out
            );

Register01 : RF_Register32Bit_23357548 PORT MAP (
             CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(1),
             Q => register01_out


            );

Register02 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(2),
             Q => register02_out


            );
 
 
Register03 : RF_Register32Bit_23357548 PORT MAP (
             CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(3),
             Q => register03_out


            );

Register04 : RF_Register32Bit_23357548 PORT MAP (
             CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(4),
             Q => register04_out


            );            
            
Register05 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(5),
             Q => register05_out


            );

Register06 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(6),
             Q => register06_out


            );

Register07 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(7),
             Q => register07_out


            );
 
 
Register08 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(8),
             Q => register08_out


            );

Register09 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(9),
             Q => register09_out


            );              

Register10 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(10),
             Q => register10_out


            );

Register11 : RF_Register32Bit_23357548 PORT MAP (
             CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(11),
             Q => register11_out


            );

Register12 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(12),
             Q => register12_out


            );
 
 
Register13 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(13),
             Q => register13_out


            );

Register14 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(14),
             Q => register14_out


            );  

Register15 : RF_Register32Bit_23357548 PORT MAP (
            CLK => Clock,
             D => D, --input Data
             Reset => Reset,
             Load => load_register(15),
             Q => register15_out
            );
            
--NOW TEMP REGISTERS 
TempRegister01 : RF_Register32Bit_23357548 PORT MAP ( 
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(0),
                Q => temp_register01_out
            );

TempRegister02 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(1),
                Q => temp_register02_out


            );
 
 
TempRegister03 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(2),
                Q => temp_register03_out


            );

TempRegister04 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(3),
                Q => temp_register04_out


            );  
            
TempRegister05 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(4),
                Q => temp_register05_out


            );

TempRegister06 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(5),
                Q => temp_register06_out


            );

TempRegister07 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(6),
                Q => temp_register07_out


            );
 
 
TempRegister08 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(7),
                Q => temp_register08_out


            );

TempRegister09 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(8),
                Q => temp_register09_out


            );  
            
TempRegiste10 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(9),
                Q => temp_register10_out


            );

TempRegister11 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(10),
                Q => temp_register11_out


            );

TempRegister12 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(11),
                Q => temp_register12_out


            );
 
 
TempRegister13 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(12),
                Q => temp_register13_out


            );

TempRegister14 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(13),
                Q => temp_register14_out


            );  
            
TempRegister15 : RF_Register32Bit_23357548 PORT MAP (
                CLK => Clock,
                D => D,
                Reset => Reset,
                Load => load_temp_register(14),
                Q => temp_register15_out


            );                                                                               
end Behavioral;
