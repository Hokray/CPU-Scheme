----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okray
-- 
-- Create Date: 11/27/2025 03:09:21 PM
-- Design Name: 
-- Module Name: CPU_Processor_Test01_23357548_TB - Sim
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

entity CPU_Processor_Test01_23357548_TB is
--  Port ( );
end CPU_Processor_Test01_23357548_TB;

architecture Sim of CPU_Processor_Test01_23357548_TB is

COMPONENT CPU_Processor_Test01_23357548 PORT (
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
        C : out std_logic;
        N : out std_logic;
        V : out std_logic;
        Z : out std_logic       
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
signal C_TB : std_logic := '0';
signal N_TB : std_logic := '0';
signal V_TB : std_logic := '0';
signal Z_TB : std_logic := '0';



-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 1000ns;   


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_Processor_Test01_23357548 PORT MAP (
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
        C => C_TB,
        N => N_TB,
        V => V_TB,
        Z => Z_TB
       );
       
       Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin
   
   wait until Clock_TB'event and Clock_TB='1';

   
   
   Reset_TB <= '1' after PERIOD/4;
   MD_TB <= '1' after PERIOD/4;
   MM_TB <= '1' after PERIOD/4;
   wait until Clock_TB'event and Clock_TB='1'; --case 
   
   
   Reset_TB <= '0' after PERIOD/4;
   wait until Clock_TB'event and Clock_TB='1'; --case RESET DONE

   RW_TB <= '1' after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case set RW to 1
     
     
   DR_TB <= "0000" after PERIOD/4;
   InstAddress_TB <= X"00000000" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
   
     DR_TB <= "0001" after PERIOD/4;
   InstAddress_TB <= X"00000001" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0010" after PERIOD/4;
   InstAddress_TB <= X"00000002" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0011" after PERIOD/4;
   InstAddress_TB <= X"00000003" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0100" after PERIOD/4;
   InstAddress_TB <= X"00000004" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0101" after PERIOD/4;
   InstAddress_TB <= X"00000005" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0110" after PERIOD/4;
   InstAddress_TB <= X"00000006" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0111" after PERIOD/4;
   InstAddress_TB <= X"00000007" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "1000" after PERIOD/4;
   InstAddress_TB <= X"00000008" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "1001" after PERIOD/4;
   InstAddress_TB <= X"00000009" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "1010" after PERIOD/4;
   InstAddress_TB <= X"0000000A" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "1011" after PERIOD/4;
   InstAddress_TB <= X"0000000B" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "1100" after PERIOD/4;
   InstAddress_TB <= X"0000000C" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
    
      DR_TB <= "1101" after PERIOD/4;
   InstAddress_TB <= X"0000000D" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "1110" after PERIOD/4;
   InstAddress_TB <= X"0000000E" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
    
       
       DR_TB <= "1111" after PERIOD/4;
   InstAddress_TB <= X"0000000F" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
    --NOW LOAD TEMP REGISTERS WITH RAM (1 to 15)
    
      DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "0001" after PERIOD/4;
   InstAddress_TB <= X"00000010" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "0010" after PERIOD/4;
   InstAddress_TB <= X"00000011" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "0011" after PERIOD/4;
   InstAddress_TB <= X"00000012" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "0100" after PERIOD/4;
   InstAddress_TB <= X"00000013" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "0101" after PERIOD/4;
   InstAddress_TB <= X"00000014" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "0110" after PERIOD/4;
   InstAddress_TB <= X"00000015" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "0111" after PERIOD/4;
   InstAddress_TB <= X"00000016" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "1000" after PERIOD/4;
   InstAddress_TB <= X"00000017" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "1001" after PERIOD/4;
   InstAddress_TB <= X"00000018" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "1010" after PERIOD/4;
   InstAddress_TB <= X"00000019" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "1011" after PERIOD/4;
   InstAddress_TB <= X"0000001A" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "1100" after PERIOD/4;
   InstAddress_TB <= X"0000001B" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "1101" after PERIOD/4;
   InstAddress_TB <= X"0000001C" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "1110" after PERIOD/4;
   InstAddress_TB <= X"0000001D" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
       DR_TB <= "0000" after PERIOD/4;
      TD_TB <= "1111" after PERIOD/4;
   InstAddress_TB <= X"0000001E" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
     
    
    
    --NOW USE REGISTER 8 AS SOURCE A
    --USE REGISTER 9 AS SOURCE B
    --DO THE OPERATIONS
  MD_TB <= '0' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1';  
   
   wait for 800 ns;
   
SA_TB <= "1000" after PERIOD/4;
SB_TB <= "1001" after PERIOD/4;
wait until Clock_TB'event and Clock_TB='1';

FS_TB <= "00110" after PERIOD/4;
TD_TB <= "0001" after PERIOD/4; --CASE A A - 1
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "00011" after PERIOD/4; 
TD_TB <= "0010" after PERIOD/4; --CASE B  A + B + 1
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "00010" after PERIOD/4;
TD_TB <= "0011" after PERIOD/4; --CASE C   A + B
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "00001" after PERIOD/4;
TD_TB <= "0100" after PERIOD/4; --CASE D A + 1
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "00000" after PERIOD/4; 
TD_TB <= "0101" after PERIOD/4; --CASE E A 
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "00111" after PERIOD/4; 
TD_TB <= "0110" after PERIOD/4; --CASE F A 
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "11000" after PERIOD/4; 
TD_TB <= "0111" after PERIOD/4; --CASE G slB
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "10100" after PERIOD/4; 
TD_TB <= "1000" after PERIOD/4; --CASE H srB
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "00101" after PERIOD/4;
TD_TB <= "1001" after PERIOD/4; --CASE I A + 1's c B + 1
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "10000" after PERIOD/4; 
TD_TB <= "1010" after PERIOD/4; --CASE J B
wait until Clock_TB'event and Clock_TB='1';



FS_TB <= "00100" after PERIOD/4;
TD_TB <= "1011" after PERIOD/4; --CASE K A + 1's c B
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "01000" after PERIOD/4;
TD_TB <= "1100"; --CASE L A AND B
wait until Clock_TB'event and Clock_TB='1';

FS_TB <= "01110" after PERIOD/4;
TD_TB <= "1101" after PERIOD/4; --CASE M not A
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "01100" after PERIOD/4; 
TD_TB <= "1110" after PERIOD/4; --CASE N A XOR B
wait until Clock_TB'event and Clock_TB='1';


FS_TB <= "01010" after PERIOD/4;
TD_TB <= "1111" after PERIOD/4; --CASE O A or B
wait until Clock_TB'event and Clock_TB='1'; 
  
  
--AFTER WRITING EVERYTHING TO TEMP REG(1 TO 15), NOW WRITE THOSE
--VALUES TO MEMORY

RW_TB <= '0' after PERIOD/4;
SA_TB <= "0000" after PERIOD/4;
SB_TB <= "0000" after PERIOD/4;
FS_TB <= "00000" after PERIOD/4;
TD_TB <= "0000" after PERIOD/4;
MW_TB <= '1' after PERIOD/4;  
 wait until Clock_TB'event and Clock_TB='1';  
 

TB_TB <= "0001" after PERIOD/4;
InstAddress_TB <= X"00000000" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "0010" after PERIOD/4;
InstAddress_TB <= X"00000001" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "0011" after PERIOD/4;
InstAddress_TB <= X"00000002" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "0100" after PERIOD/4;
InstAddress_TB <= X"00000003" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "0101" after PERIOD/4;
InstAddress_TB <= X"00000004" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "0110" after PERIOD/4;
InstAddress_TB <= X"00000005" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "0111" after PERIOD/4;
InstAddress_TB <= X"00000006" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "1000" after PERIOD/4;
InstAddress_TB <= X"00000007" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "1001" after PERIOD/4;
InstAddress_TB <= X"00000008" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "1010" after PERIOD/4;
InstAddress_TB <= X"00000009" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "1011" after PERIOD/4;
InstAddress_TB <= X"0000000A" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "1100" after PERIOD/4;
InstAddress_TB <= X"0000000B" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "1101" after PERIOD/4;
InstAddress_TB <= X"0000000C" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "1110" after PERIOD/4;
InstAddress_TB <= X"0000000D" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  

TB_TB <= "1111" after PERIOD/4;
InstAddress_TB <= X"0000000E" after PERIOD/4; --case A
 wait until Clock_TB'event and Clock_TB='1';  
 
 --AFTER WRITING THE TEMP REG TO THE MEMORY, LOAD IT INTO THE REG
 RW_TB <= '1' after PERIOD/4;
 MW_TB <= '0' after PERIOD/4;
 MD_TB <= '1' after PERIOD/4;
  wait until Clock_TB'event and Clock_TB='1';  
  
   DR_TB <= "0000" after PERIOD/4;
   InstAddress_TB <= X"00000000" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case A
   
     DR_TB <= "0001" after PERIOD/4;
   InstAddress_TB <= X"00000001" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case B
     
       DR_TB <= "0010" after PERIOD/4;
   InstAddress_TB <= X"00000002" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case C
     
       DR_TB <= "0011" after PERIOD/4;
   InstAddress_TB <= X"00000003" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case D
     
       DR_TB <= "0100" after PERIOD/4;
   InstAddress_TB <= X"00000004" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case E
     
       DR_TB <= "0101" after PERIOD/4;
   InstAddress_TB <= X"00000005" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case F
     
       DR_TB <= "0110" after PERIOD/4;
   InstAddress_TB <= X"00000006" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case G
     
       DR_TB <= "0111" after PERIOD/4;
   InstAddress_TB <= X"00000007" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case H
     
       DR_TB <= "1000" after PERIOD/4;
   InstAddress_TB <= X"00000008" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case I
     
       DR_TB <= "1001" after PERIOD/4;
   InstAddress_TB <= X"00000009" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case J
     
       DR_TB <= "1010" after PERIOD/4;
   InstAddress_TB <= X"0000000A" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case K
     
       DR_TB <= "1011" after PERIOD/4;
   InstAddress_TB <= X"0000000B" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case L
     
       DR_TB <= "1100" after PERIOD/4;
   InstAddress_TB <= X"0000000C" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case M
    
      DR_TB <= "1101" after PERIOD/4;
   InstAddress_TB <= X"0000000D" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case N
     
       DR_TB <= "1110" after PERIOD/4;
   InstAddress_TB <= X"0000000E" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case O
    
       
       DR_TB <= "1111" after PERIOD/4;
   InstAddress_TB <= X"0000000F" after PERIOD/4;
     wait until Clock_TB'event and Clock_TB='1'; --case P
  

    end process;
end Sim;
