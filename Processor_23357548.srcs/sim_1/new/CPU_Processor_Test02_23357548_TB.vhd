----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2025 06:47:11 PM
-- Design Name: 
-- Module Name: CPU_Processor_Test02_23357548_TB - Sim
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


entity CPU_Processor_Test02_23357548_TB is
--  Port ( );
end CPU_Processor_Test02_23357548_TB;

architecture Sim of CPU_Processor_Test02_23357548_TB is

COMPONENT CPU_Processor_Test02_23357548 PORT (
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
END COMPONENT;

signal MW_TB : std_logic := '0';
signal InstAddress_TB : std_logic_vector(31 downto 0) := (others => '0');
signal MM_TB : std_logic := '0';
signal Clock_TB : std_logic := '0';
signal DR_TB : std_logic_vector(3 downto 0) := (others => '0');
signal FS_TB : std_logic_vector(4 downto 0) := (others => '0');
signal IR_IN_TB : std_logic_vector(31 downto 0) := (others => '0');
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

-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 500ns;   


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_Processor_Test02_23357548 PORT MAP (
        MW => MW_TB,
        InstAddress => InstAddress_TB,
        MM => MM_TB,
        Clock => Clock_TB,
        DR => DR_TB,
        FS => FS_TB,
        IR_IN => IR_IN_TB,
        MB => MB_TB,
        MD => MD_TB,
        RW => RW_TB,
        Reset => Reset_TB,
        SA => SA_TB,
        SB => SB_TB,
        TA => TA_TB,
        TB => TB_TB,
        TD => TD_TB,
        LoadFlags => LoadFlags_TB,
        Reset_C => Reset_C_TB,
        Reset_N => Reset_N_TB,
        Reset_V => Reset_V_TB,
        Reset_Z => Reset_Z_TB,
        StatusVector => StatusVector_TB
       );
       
       Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin
   
   wait until Clock_TB'event and Clock_TB='1';


    MD_TB <= '1' after PERIOD/4;
    MM_TB <= '1' after PERIOD/4;
    Reset_TB <= '1' after PERIOD/4;
       wait until Clock_TB'event and Clock_TB='1';

    Reset_TB <= '0' after PERIOD/4;
       wait until Clock_TB'event and Clock_TB='1';

    RW_TB <= '1' after PERIOD/4;
       wait until Clock_TB'event and Clock_TB='1';

 
 
    InstAddress_TB <= X"00000000" after PERIOD/4;
    DR_TB <= "0000" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --CASE A
  
    
     InstAddress_TB <= X"00000001" after PERIOD/4;
    DR_TB <= "0001" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --CASE B
 
    
     InstAddress_TB <= X"00000002" after PERIOD/4;
    DR_TB <= "0010" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --CASE C
   
    
     InstAddress_TB <= X"00000003" after PERIOD/4;
    DR_TB <= "0011" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --CASE D
  
    

       InstAddress_TB <= X"00000003" after PERIOD/4;
    DR_TB <= "0100" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --CASE E
    --this should write something
    
 -------   --AFTER INITIALIZING THE REG, do the adding! -----------------
    
    SA_TB <= "0000" after PERIOD/4;
    SB_TB <= "0001" after PERIOD/4;
    FS_TB <= "00010" after PERIOD/4; --ADD A + B
    DR_TB <= "0100" after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; 
    
    
    LoadFlags_TB <= '1' after PERIOD/4; --LOAD THE V AND N FLAGS
    wait until Clock_TB'event and Clock_TB='1';
    
    FS_TB <= "00000" after Period/4;
    LoadFlags_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1';
    
    Reset_N_TB <= '1' after PERIOD/4;
    Reset_V_TB <= '1' after PERIOD/4; --RESET FROM STATREGISTER N ADN V
    wait until Clock_TB'event and Clock_TB='1'; --case F
    
    
    Reset_N_TB <= '0' after PERIOD/4;
     Reset_V_TB <= '0' after PERIOD/4;
      SA_TB <= "0001" after PERIOD/4;
    SB_TB <= "0010" after PERIOD/4;
    FS_TB <= "00010" after PERIOD/4; --ADD A + B
    DR_TB <= "0101" after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1';
    
    
    LoadFlags_TB <= '1' after PERIOD/4; --LOAD THE V AND N FLAGS
    wait until Clock_TB'event and Clock_TB='1';
    
    FS_TB <= "00000" after Period/4;
     LoadFlags_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1';
    
    Reset_C_TB <= '1' after PERIOD/4;
    Reset_Z_TB <= '1' after PERIOD/4; --RESET FROM STATREGISTER C ADN Z
    wait until Clock_TB'event and Clock_TB='1'; --case G
    
    Reset_C_TB <= '0' after PERIOD/4;
    Reset_Z_TB <= '0' after PERIOD/4;
        SA_TB <= "0011" after PERIOD/4;
    SB_TB <= "0000" after PERIOD/4;
    FS_TB <= "00010" after PERIOD/4; --ADD A + B
    DR_TB <= "0110" after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1';
    
    
    LoadFlags_TB <= '1' after PERIOD/4; --LOAD THE V AND N FLAGS
    wait until Clock_TB'event and Clock_TB='1';
    
    FS_TB <= "00000" after Period/4;
     LoadFlags_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1';
    
    Reset_N_TB <= '1' after PERIOD/4; --RESET FROM STATREGISTER N
    wait until Clock_TB'event and Clock_TB='1'; --case H
    
    Reset_N_TB <= '0' after PERIOD/4;
        SA_TB <= "0001" after PERIOD/4;
    SB_TB <= "0010" after PERIOD/4;
    FS_TB <= "00010" after PERIOD/4; --ADD A + B
    DR_TB <= "0111" after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1';
    
    
    LoadFlags_TB <= '1' after PERIOD/4; --LOAD THE V AND N FLAGS
    wait until Clock_TB'event and Clock_TB='1';
    
    FS_TB <= "00000" after Period/4;
     LoadFlags_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1';
    
    Reset_C_TB <= '1' after PERIOD/4;
    Reset_Z_TB <= '1' after PERIOD/4; --RESET FROM STATREGISTER C ADN Z
    wait until Clock_TB'event and Clock_TB='1'; --case I
    
    
    
    
    end process;
end Sim; --THIS TEST FILE IS TO CHECK IF THE STATUSREGISTER WORKS PROPERLY!
