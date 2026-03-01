----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okray
-- 
-- Create Date: 11/10/2025 01:57:45 PM
-- Design Name: 
-- Module Name: DP_DataPath_23357548_TB - Behavioral
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



entity DP_DataPath_23357548_TB is
--  Port ( );
end DP_DataPath_23357548_TB;

architecture Sim of DP_DataPath_23357548_TB is

COMPONENT DP_Datapath_23357548
                PORT (
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
    
    
    --input signals
    signal IR_IN_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal MB_TB : std_logic := '0';
    signal DATA_IN_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal MD_TB : std_logic := '0';
    signal FS_TB : std_logic_vector(4 downto 0) := (others => '0');
    signal Clock_TB : std_logic := '0';
    signal DR_TB : std_logic_vector(3 downto 0) := (others => '0');
    signal RW_TB : std_logic := '0';
    signal RESET_TB : std_logic := '0';
    signal SA_TB : std_logic_vector(3 downto 0) := (others => '0');
    signal SB_TB : std_logic_vector(3 downto 0) := (others => '0');
    signal TA_TB : std_logic_vector(3 downto 0) := (others => '0');
    signal TB_TB : std_logic_vector(3 downto 0) := (others => '0');
    signal TD_TB : std_logic_vector(3 downto 0) := (others => '0');
    
    --output signals
    signal DATA_OUT_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal ADD_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal C_TB : std_logic := '0';
    signal N_TB : std_logic := '0';
    signal V_TB : std_logic := '0';
     signal Z_TB : std_logic := '0';


-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    constant PERIOD : time := 1000ns;  


begin


       -- Instantiate the Unit Under Test (UUT)
  uut:  DP_Datapath_23357548 PORT MAP (
        IR_IN => IR_IN_TB,
        MB => MB_TB,
        DATA_IN => DATA_IN_TB,
        MD => MD_TB,
        FS => FS_TB,
        Clock => Clock_TB,
        DR => DR_TB,
        RW => RW_TB,
        Reset => Reset_TB,
        SA => SA_TB,
        SB => SB_TB,
        TA => TA_TB,
        TB => TB_TB,
        TD => TD_TB,
        DATA_OUT => DATA_OUT_TB,
        ADD => ADD_TB,
        C => C_TB,
        N => N_TB,
        V => V_TB,
        Z => Z_TB
       );
       
     clk_process: process
begin
    Clock_TB <= '0'; 
    wait for PERIOD/2;
    Clock_TB <= '1';
    wait for PERIOD/2;
end process;

  stim_proc: process
   begin	
   
  RESET_TB <= '1';
RW_TB    <= '0';
wait for PERIOD;
RESET_TB <= '0';
wait until Clock_TB'event and Clock_TB='1'; -- FIRST real time registers can latch
  
       -- Load main registers R0-R15 SEQUENTIALLY (WITH CLOCK!!)
RW_TB <= '1';
MD_TB <= '1';
-- CASE R0
DR_TB <= "0000";  -- R0
DATA_IN_TB  <= "00000001011001000110100001101100"; -- 23357548
wait until Clock_TB'event and Clock_TB='1';

-- CASE R1
DR_TB <= "0001";  -- R1
DATA_IN_TB  <= "00000001011001000110100001101101"; -- 23357549
wait until Clock_TB'event and Clock_TB='1';

-- CASE R2
DR_TB <= "0010";  -- R2
DATA_IN_TB  <= "00000001011001000110100001101110"; -- 23357550
wait until Clock_TB'event and Clock_TB='1';

-- CASE R3
DR_TB <= "0011";  -- R3
DATA_IN_TB  <= "00000001011001000110100001101111"; -- 23357551
wait until Clock_TB'event and Clock_TB='1';

-- CASE R4
DR_TB <= "0100";  -- R4
DATA_IN_TB  <= "00000001011001000110100001110000"; -- 23357552
wait until Clock_TB'event and Clock_TB='1';

-- CASE R5
DR_TB <= "0101";  -- R5
DATA_IN_TB  <= "00000001011001000110100001110001"; -- 23357553
wait until Clock_TB'event and Clock_TB='1';

-- CASE R6
DR_TB <= "0110";  -- R6
DATA_IN_TB  <= "00000001011001000110100001110010"; -- 23357554
wait until Clock_TB'event and Clock_TB='1';

-- CASE R7
DR_TB <= "0111";  -- R7
DATA_IN_TB  <= "00000001011001000110100001110011"; -- 23357555
wait until Clock_TB'event and Clock_TB='1';

-- CASE R8
DR_TB <= "1000";  -- R8
DATA_IN_TB  <= "00000001011001000110100001110100"; -- 23357556
wait until Clock_TB'event and Clock_TB='1';

-- CASE R9
DR_TB <= "1001";  -- R9
DATA_IN_TB  <= "00000001011001000110100001110101"; -- 23357557
wait until Clock_TB'event and Clock_TB='1';

-- CASE R10
DR_TB <= "1010";  -- R10
DATA_IN_TB  <= "00000001011001000110100001110110"; -- 23357558
wait until Clock_TB'event and Clock_TB='1';

-- CASE R11
DR_TB <= "1011";  -- R11
DATA_IN_TB  <= "00000001011001000110100001110111"; -- 23357559
wait until Clock_TB'event and Clock_TB='1';

-- CASE R12
DR_TB <= "1100";  -- R12
DATA_IN_TB  <= "00000001011001000110100001111000"; -- 23357560
wait until Clock_TB'event and Clock_TB='1';

-- CASE R13
DR_TB <= "1101";  -- R13
DATA_IN_TB  <= "00000001011001000110100001111001"; -- 23357561
wait until Clock_TB'event and Clock_TB='1';

-- CASE R14
DR_TB <= "1110";  -- R14
DATA_IN_TB  <= "00000001011001000110100001111010"; -- 23357562
wait until Clock_TB'event and Clock_TB='1';

-- CASE R15
DR_TB <= "1111";  -- R15
DATA_IN_TB  <= "00000001011001000110100001111011"; -- 23357563
RW_TB <= '1';
wait until Clock_TB'event and Clock_TB='1';
--RW_TB <= '0';
--DR_TB <= "----";


wait for PERIOD;
-- STOP writing (stop loading in registers)
--RW_TB <= '0';
--wait for PERIOD;  -- optional: just to give simulation one more cycle

-------------------------------------------------
-- Load Temp registers T0-T14 (incrementing after main registers)

--RW_TB <= '1';
-- CASE T1
DR_TB <= "0001";
TD_TB <= "0001";
wait for 5 ns; --let time for the decoder to load the 1!
DATA_IN_TB  <= "00000001011001000110100001111100"; -- 23357564

wait until Clock_TB'event and Clock_TB='1';

-- CASE T2
DR_TB <= "0010";
TD_TB <= "0010";
DATA_IN_TB  <= "00000001011001000110100001111101"; -- 23357565
wait until Clock_TB'event and Clock_TB='1';

-- CASE T3
DR_TB <= "0011";
TD_TB <= "0011";
DATA_IN_TB  <= "00000001011001000110100001111110"; -- 23357566
wait until Clock_TB'event and Clock_TB='1';

-- CASE T4
DR_TB <= "0100";
TD_TB <= "0100";
DATA_IN_TB  <= "00000001011001000110100001111111"; -- 23357567
wait until Clock_TB'event and Clock_TB='1';

-- CASE T5
DR_TB <= "0101";
TD_TB <= "0101";
DATA_IN_TB  <= "00000001011001000110100010000000"; -- 23357568
wait until Clock_TB'event and Clock_TB='1';

-- CASE T6
DR_TB <= "0110";
TD_TB <= "0110";
DATA_IN_TB  <= "00000001011001000110100010000001"; -- 23357569
wait until Clock_TB'event and Clock_TB='1';

-- CASE T7
DR_TB <= "0111";
TD_TB <= "0111";
DATA_IN_TB  <= "00000001011001000110100010000010"; -- 23357570
wait until Clock_TB'event and Clock_TB='1';

-- CASE T8
DR_TB <= "1000";
TD_TB <= "1000";
DATA_IN_TB  <= "00000001011001000110100010000011"; -- 23357571
wait until Clock_TB'event and Clock_TB='1';

-- CASE T9
DR_TB <= "1001";
TD_TB <= "1001";
DATA_IN_TB  <= "00000001011001000110100010000100"; -- 23357572
RW_TB <= '1';
wait until Clock_TB'event and Clock_TB='1';

-- CASE T10
DR_TB <= "1010";
TD_TB <= "1010";
DATA_IN_TB  <= "00000001011001000110100010000101"; -- 23357573
wait until Clock_TB'event and Clock_TB='1';

-- CASE T11
DR_TB <= "1011";
TD_TB <= "1011";
DATA_IN_TB  <= "00000001011001000110100010000110"; -- 23357574
wait until Clock_TB'event and Clock_TB='1';

-- CASE T12
DR_TB <= "1100";
TD_TB <= "1100";
DATA_IN_TB  <= "00000001011001000110100010000111"; -- 23357575
wait until Clock_TB'event and Clock_TB='1';

-- CASE T13
DR_TB <= "1101";
TD_TB <= "1101";
DATA_IN_TB  <= "00000001011001000110100010001000"; -- 23357576
RW_TB <= '1';
wait until Clock_TB'event and Clock_TB='1';

-- CASE T14
DR_TB <= "1110";
TD_TB <= "1110";
DATA_IN_TB  <= "00000001011001000110100010001001"; -- 23357577
wait until Clock_TB'event and Clock_TB='1';

-- CASE T15
DR_TB <= "1111";
TD_TB <= "1111";
DATA_IN_TB  <= "00000001011001000110100010001010"; -- 23357578
wait until Clock_TB'event and Clock_TB='1';


RW_TB <= '0';

DR_TB <= "0000";
TD_TB <= "0000";  --disable writing

wait for PERIOD;


--AFTER LOADING ALL REGISTERS, WE NEED TO DO THE OPERATIONS
--REGA = 8, REGB = 9, REGdest = 10

RW_TB <= '1' after PERIOD/4;
MD_TB <= '0' after PERIOD/4;


wait for 300 ns;
SA_TB <= "1000"; 
SB_TB <= "1001";
FS_TB <= "00110"; 
DR_TB <= "1010"; --CASE A A - 1
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001";
FS_TB <= "00011"; 
DR_TB <= "1010"; --CASE B  A + B + 1
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001";
FS_TB <= "00010"; 
DR_TB <= "1010"; --CASE C   A + B
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001";
FS_TB <= "00001"; 
DR_TB <= "1010"; --CASE D A + 1
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "00000"; 
DR_TB <= "1010"; --CASE E A 
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "00111"; 
DR_TB <= "1010"; --CASE F A 
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "11000"; 
DR_TB <= "1010"; --CASE G slB
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "10100"; 
DR_TB <= "1010"; --CASE H srB
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "00101"; 
DR_TB <= "1010"; --CASE I A + 1's c B + 1
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "10000"; 
DR_TB <= "1010"; --CASE J B
wait until Clock_TB'event and Clock_TB='1';


SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "00100"; 
DR_TB <= "1010"; --CASE K A + 1's c B
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "01000"; 
DR_TB <= "1010"; --CASE L A AND B
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "01110"; 
DR_TB <= "1010"; --CASE M not A
wait until Clock_TB'event and Clock_TB='1';

SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "01100"; 
DR_TB <= "1010"; --CASE N A XOR B
wait until Clock_TB'event and Clock_TB='1';



SA_TB <= "1000"; 
SB_TB <= "1001"; 
FS_TB <= "01010"; 
DR_TB <= "1010"; --CASE O A or B
wait until Clock_TB'event and Clock_TB='1';
wait for 800 ns;




--NOW, THE SAME OPERATIONS BUT USING THE TEMP REGISTERS
--TEMPREGA = 8, TEMPREGB = 9, TEMPREGdest = 10


 wait for 300 ns;
TA_TB <= "1000"; 
TB_TB <= "1001";
FS_TB <= "00110"; 
TD_TB <= "1010"; --CASE A A - 1
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001";
FS_TB <= "00011"; 
TD_TB <= "1010"; --CASE B  A + B + 1
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001";
FS_TB <= "00010"; 
TD_TB <= "1010"; --CASE C   A + B
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001";
FS_TB <= "00001"; 
TD_TB <= "1010"; --CASE D A + 1
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "00000"; 
TD_TB <= "1010"; --CASE E A 
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "00111"; 
TD_TB <= "1010"; --CASE F A 
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "11000"; 
TD_TB <= "1010"; --CASE G slB
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "10100"; 
TD_TB <= "1010"; --CASE H srB
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "00101"; 
TD_TB <= "1010"; --CASE I A + 1's c B + 1
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "10000"; 
TD_TB <= "1010"; --CASE J B
wait until Clock_TB'event and Clock_TB='1';


TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "00100"; 
TD_TB <= "1010"; --CASE K A + 1's c B
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "01000"; 
TD_TB <= "1010"; --CASE L A AND B
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "01110"; 
TD_TB <= "1010"; --CASE M not A
wait until Clock_TB'event and Clock_TB='1';

TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "01100"; 
TD_TB <= "1010"; --CASE N A XOR B
wait until Clock_TB'event and Clock_TB='1';



TA_TB <= "1000"; 
TB_TB <= "1001"; 
FS_TB <= "01010"; 
TD_TB <= "1010"; --CASE O A or B
wait until Clock_TB'event and Clock_TB='1';
wait for 800 ns;
         
         end process;


end Sim;
