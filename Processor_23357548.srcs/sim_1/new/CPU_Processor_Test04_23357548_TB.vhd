----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2025 08:59:25 PM
-- Design Name: 
-- Module Name: CPU_Processor_Test04_23357548_TB - Sim
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


entity CPU_Processor_Test04_23357548_TB is
--  Port ( );
end CPU_Processor_Test04_23357548_TB;

architecture Sim of CPU_Processor_Test04_23357548_TB is

COMPONENT CPU_Processor_Test04_23357548 PORT (
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
END COMPONENT;

signal StatusVector_TB : std_logic_vector(3 downto 0) := (others => '0');
signal Clock_TB : std_logic := '0';
signal Reset_TB : std_logic := '0';
signal Opcode_TB : std_logic_vector(19 downto 0) := (others => '0');
signal FL_TB : std_logic := '0';
signal FS_TB : std_logic_vector(4 downto 0) := (others => '0');
signal IL_TB : std_logic := '0';
signal MB_TB : std_logic := '0';
signal MD_TB : std_logic := '0';
signal MM_TB : std_logic := '0';
signal MW_TB : std_logic := '0';
signal PI_TB : std_logic := '0';
signal PL_TB : std_logic := '0';
signal RC_TB : std_logic := '0';
signal RN_TB : std_logic := '0';
signal RV_TB : std_logic := '0';
signal RW_TB : std_logic := '0';
signal RZ_TB : std_logic := '0';
signal TA_TB : std_logic_vector(3 downto 0) := (others => '0');
signal TB_TB : std_logic_vector(3 downto 0) := (others => '0');
signal TD_TB : std_logic_vector(3 downto 0) := (others => '0');



-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 500ns;   


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_Processor_Test04_23357548 PORT MAP (
        MW => MW_TB,
        MM => MM_TB,
        Clock => Clock_TB,
        FS => FS_TB,
        StatusVector => StatusVector_TB,
        Reset => Reset_TB,
        Opcode => Opcode_TB,
        FL => FL_TB,
        IL => IL_TB,
        MB => MB_TB,
        MD => MD_TB,
        PI => PI_TB,
        PL => PL_TB,
        RC => RC_TB,
        RN => RN_TB,
        RV => RV_TB,
        RW => RW_TB,
        RZ => RZ_TB,
        TA => TA_TB,
        TB => TB_TB,
        TD => TD_TB       
       );
       
       Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin
   
   wait until Clock_TB'event and Clock_TB='1';
    
    
    Reset_TB <= '1' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1';
     
      Reset_TB <= '0' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1';
     
      wait until Clock_TB'event and Clock_TB='1';
      
       wait until Clock_TB'event and Clock_TB='1';
       
        wait until Clock_TB'event and Clock_TB='1';
        
         wait until Clock_TB'event and Clock_TB='1';
         
          wait until Clock_TB'event and Clock_TB='1';
          
           wait until Clock_TB'event and Clock_TB='1';
           
            wait until Clock_TB'event and Clock_TB='1';
            
             wait until Clock_TB'event and Clock_TB='1';
             
              wait until Clock_TB'event and Clock_TB='1';
              
               wait until Clock_TB'event and Clock_TB='1';
               
                wait until Clock_TB'event and Clock_TB='1';
               
                wait until Clock_TB'event and Clock_TB='1';
    
    
    
    end process;
end Sim;
