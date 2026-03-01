----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okray
-- 
-- Create Date: 11/20/2025 04:44:54 PM
-- Design Name: 
-- Module Name: CPU_Processor_Test04_23357548 - Behavioral
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



entity CPU_Processor_Test04_23357548 is
     Port ( 
           StatusVector : in std_logic_vector(3 downto 0);
           Clock : in std_logic;
           Reset : in std_logic;
           Opcode : in std_logic_vector(19 downto 0);
           FL : out std_logic;
           FS : out std_logic_vector(4 downto 0);
           IL : out std_logic;
           MB : out std_logic;
           MD : out std_logic;
           MM : out std_logic;
           MW : out std_logic;
           PI : out std_logic;
           PL : out std_logic;
           RC : out std_logic;
           RN : out std_logic;
           RV : out std_logic;
           RW : out std_logic;
           RZ : out std_logic;
           TA : out std_logic_vector(3 downto 0);
           TB : out std_logic_vector(3 downto 0);
           TD : out std_logic_vector(3 downto 0)
           );
end CPU_Processor_Test04_23357548;

architecture Behavioral of CPU_Processor_Test04_23357548 is


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

COMPONENT CPU_ControlMemory_23357548 PORT (
            Address : in std_logic_vector(19 downto 0);
        FL : out std_logic;
        IL : out std_logic;
        MB : out std_logic;
        MC : out std_logic;
        MD : out std_logic;
        MM : out std_logic;
        MW : out std_logic;
        PI : out std_logic;
        PL : out std_logic;
        RC : out std_logic;
        RN : out std_logic;
        RV : out std_logic;
        RW : out std_logic;
        FS : out std_logic_vector(4 downto 0);
        RZ : out std_logic;
        MS : out std_logic_vector(2 downto 0);
        NA : out std_logic_vector(19 downto 0);
        TA : out std_logic_vector(3 downto 0);
        TB : out std_logic_vector(3 downto 0);
        TD : out std_logic_vector(3 downto 0)       
          );
END COMPONENT;

signal MS_out : std_logic_vector(2 downto 0);
signal NA_out : std_logic_vector(19 downto 0);
signal MC_out : std_logic;
signal CAR_out : std_logic;
signal Z_out : std_logic_vector(19 downto 0);
signal CMAdd_out : std_logic_vector(19 downto 0);

signal not0 : std_logic;
signal not1 : std_logic;

begin --make the instantiations here

not0 <= not StatusVector(0);
not1 <= not StatusVector(3);

MuxS : CPU_SMux_23357548 PORT MAP (
        C_Flag => StatusVector(0), --check which
        MS => MS_out,
        N_Flag => StatusVector(2),
        Not_C_Flag => not0,
        Not_Z_Flag => not1, --CHECK ORDER AGAIN!
        One => '1',
        V_Flag => StatusVector(1),
        Z_Flag => StatusVector(3),
        Zero => '0',
        CAR => CAR_out
        );
        
        

MuxC : CPU_Mux2_20Bit_23357548 PORT MAP (
        ln0 => NA_out,
        ln1 => Opcode,
        Sel => MC_out,
        Z => Z_out 
        );
        
CAR : CPU_CAR_23357548 PORT MAP (
      Address => Z_out,
      Clock => Clock,
      LoadAdd => CAR_out,
      Reset => Reset,
      CMAdd => CMAdd_out
      );        

ControlROM : CPU_ControlMemory_23357548 PORT MAP (
             Address => CMAdd_out,
             FL => FL,
             FS => FS,
             IL => IL,
             MB => MB,
             MC => MC_out,
             MD => MD,
             MM => MM,
             MS => MS_out,
             MW => MW,
             NA => NA_out,
             PI => PI,
             PL => PL,
             RC => RC,
             RN => RN,
             RV => RV,
             RW => RW,
             RZ => RZ,
             TA => TA,
             TB => TB,
             TD => TD
             );      


end Behavioral;
