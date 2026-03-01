----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2025 08:59:25 PM
-- Design Name: 
-- Module Name: CPU_Processor_Test03_23357548_TB - Sim
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


entity CPU_Processor_Test03_23357548_TB is
--  Port ( );
end CPU_Processor_Test03_23357548_TB;

architecture Sim of CPU_Processor_Test03_23357548_TB is

COMPONENT CPU_Processor_Test03_23357548 PORT (
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
END COMPONENT;

signal MW_TB : std_logic := '0';
signal MM_TB : std_logic := '0';
signal Clock_TB : std_logic := '0';
signal FS_TB : std_logic_vector(4 downto 0) := (others => '0');
signal MB_TB : std_logic := '0';
signal MD_TB : std_logic := '0';
signal RW_TB : std_logic := '0';
signal Reset_TB : std_logic := '0';
signal SA_TB : std_logic_vector(3 downto 0) := (others => '0');
signal SB_TB : std_logic_vector(3 downto 0) := (others => '0');
signal TA_TB : std_logic_vector(3 downto 0) := (others => '0');
signal TB_TB : std_logic_vector(3 downto 0) := (others => '0');
signal TD_TB : std_logic_vector(3 downto 0) := (others => '0');
signal LoadFlags_TB : std_logic := '0';
signal Reset_C_TB : std_logic := '0';
signal Reset_N_TB : std_logic := '0';
signal Reset_V_TB : std_logic := '0';
signal Reset_Z_TB : std_logic := '0';
signal StatusVector_TB : std_logic_vector(3 downto 0) := (others => '0');
signal IL_TB : std_logic := '0';
signal Opcode_TB : std_logic_vector(19 downto 0)  := (others => '0');
signal PI_TB : std_logic := '0';
signal PL_TB : std_logic := '0';



-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 500ns;   


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_Processor_Test03_23357548 PORT MAP (
        MW => MW_TB,
        MM => MM_TB,
        Clock => Clock_TB,
        FS => FS_TB,
        MB => MB_TB,
        MD => MD_TB,
        RW => RW_TB,
        Reset => Reset_TB,
        TA => TA_TB,
        TB => TB_TB,
        TD => TD_TB,
        LoadFlags => LoadFlags_TB,
        Reset_C => Reset_C_TB,
        Reset_N => Reset_N_TB,
        Reset_V => Reset_V_TB,
        Reset_Z => Reset_Z_TB,
        StatusVector => StatusVector_TB,
        IL => IL_TB,
        Opcode => Opcode_TB,
        PI => PI_TB,
        PL => PL_TB
       );
       
       Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin
   
   wait until Clock_TB'event and Clock_TB='1';
   
   Reset_TB <= '1' after PERIOD/4;
   MM_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --RESET CASE A
    
    Reset_TB <= '0' after PERIOD/4;
    IL_TB <= '1' after PERIOD/4;
    PI_TB <= '1' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --CASE B
     
     IL_tb <= '0' after PERIOD/4;
     PI_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --CASE C
      
      IL_TB <= '1' after PERIOD/4;
      PI_TB <= '1' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --CASE D
      
      IL_TB <= '0' after PERIOD/4;
      PI_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case E
      
      IL_TB <= '1' after PERIOD/4;
      PI_TB <= '1' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case F
      
     
      
          IL_TB <= '0' after PERIOD/4;
      PI_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case M
      
             IL_TB <= '1' after PERIOD/4;
      PI_TB <= '1' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case N
      
          IL_TB <= '0' after PERIOD/4;
      PI_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case O
      
                IL_TB <= '1' after PERIOD/4;
      PI_TB <= '1' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case N
      
          IL_TB <= '0' after PERIOD/4;
      PI_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case O
      
      PL_TB <= '1' after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case P
        
         PL_TB <= '0' after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case Q
      
      
 
    
    end process;
end Sim; --THIS TEST FILE IS TO CHECK IF THE PC WORKS PROPERLY AND WE JUMP TO A PREVIOUS INSTRUCTION
