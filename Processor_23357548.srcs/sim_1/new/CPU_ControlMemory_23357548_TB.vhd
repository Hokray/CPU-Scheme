----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_ControlMemory_23357548_TB - Sim
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


entity CPU_ControlMemory_23357548_TB is
--  Port ( );
end CPU_ControlMemory_23357548_TB;

architecture Sim of CPU_ControlMemory_23357548_TB is

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

signal Address_TB : std_logic_vector(19 downto 0);
signal NA_TB : std_logic_vector(19 downto 0);
signal MS_TB : std_logic_vector(2 downto 0);
signal MC_TB : std_logic;
signal IL_TB : std_logic;
signal PI_TB : std_logic;
signal PL_TB : std_logic;
signal TD_TB : std_logic_vector(3 downto 0);
signal TA_TB : std_logic_vector(3 downto 0);
signal TB_TB : std_logic_vector(3 downto 0);
signal MB_TB : std_logic;
signal FS_TB : std_logic_vector(4 downto 0);
signal MD_TB : std_logic;
signal RW_TB : std_logic;
signal MM_TB : std_logic;
signal MW_TB : std_logic;
signal RV_TB : std_logic;
signal RC_TB : std_logic;
signal RN_TB : std_logic;
signal RZ_TB : std_logic;
signal FL_TB : std_logic;




-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_ControlMemory_23357548 PORT MAP (
        Address => Address_TB,
        NA => NA_TB,
        MS => MS_TB,
        MC => MC_TB,
        IL => IL_TB,
        PI => PI_TB,
        PL => PL_TB,
        TD => TD_TB,
        TA => TA_TB,
        TB => TB_TB,
        MB => MB_TB,
        FS => FS_TB,
        MD => MD_TB,
        RW => RW_TB,
        MM => MM_TB,
        MW => MW_TB,
        RV => RV_TB,
        RC => RC_TB,
        RN => RN_TB,
        RZ => RZ_TB,
        FL => Fl_TB
       );
       

       
         stim_proc: process
   begin
   
   
   Address_TB <= X"00000"; --case A
   wait for 100 ns;
   
    Address_TB <= X"00001"; --case B
   wait for 100 ns;
   
    Address_TB <= X"00002"; --case C
   wait for 100 ns;
   
    Address_TB <= X"00003"; --case D
   wait for 100 ns;
   
    Address_TB <= X"00004"; --case E
   wait for 100 ns;
   
    Address_TB <= X"00005"; --case F
   wait for 100 ns;
   
    Address_TB <= X"00006"; --case G
   wait for 100 ns;
   
    Address_TB <= X"00007"; --case H
   wait for 100 ns;
   
    Address_TB <= X"00008"; --case I
   wait for 100 ns;

     Address_TB <= X"00009"; --case J
   wait for 100 ns;
    
    
    
    -------------------------------------
    
    
    Address_TB <= X"00076"; --case K
   wait for 100 ns;
   
    Address_TB <= X"00077"; --case L
   wait for 100 ns;
   
    Address_TB <= X"00078"; --case M
   wait for 100 ns;
   
    Address_TB <= X"00079"; --case N
   wait for 100 ns;
   
    Address_TB <= X"0007A"; --case O
   wait for 100 ns;
   
    Address_TB <= X"0007B"; --case P
   wait for 100 ns;
   
    Address_TB <= X"0007C"; --case Q
   wait for 100 ns;
   
    Address_TB <= X"0007D"; --case R
   wait for 100 ns;
   
    Address_TB <= X"0007E"; --case S
   wait for 100 ns;

     Address_TB <= X"0007F"; --case T
   wait for 100 ns;
    

    end process;
end Sim;
