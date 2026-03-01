----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okan OKray
-- 
-- Create Date: 10/18/2025 04:42:51 PM
-- Design Name: 
-- Module Name: RF_Test_RegisterFile_16_15_23357548_TB - Sim
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


entity RF_Test_RegisterFile_16_15_23357548_TB is
--  Port ( );
end RF_Test_RegisterFile_16_15_23357548_TB;

architecture Sim of RF_Test_RegisterFile_16_15_23357548_TB is
    COMPONENT RF_Test_RegisterFile_16_15_23357548 
         Port (
         A_B_DataIN_Test : in std_logic_vector(1 downto 0);
         D_Test : in std_logic_vector(31 downto 0);
         Clock_Test : in std_logic;
         DR_Test : in std_logic_vector(3 downto 0);
         RW_Test : in std_logic;
         Reset : in std_logic;
         SA_Test : in std_logic_vector(3 downto 0);
         SB_Test : in std_logic_vector(3 downto 0);
         TA_Test : in std_logic_vector(3 downto 0);
         TB_Test : in std_logic_vector(3 downto 0);
         TD_Test : in std_logic_vector(3 downto 0)
         );
     END COMPONENT;
     
 --INPUT SIGNALS
    signal A_B_DataIN_Test_TB : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
    signal D_Test_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal CLock_Test_TB : std_logic;
    signal Reset_TB : std_logic;
    signal DR_Test_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal RW_Test_TB : std_logic;
    signal SA_Test_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal SB_Test_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal TA_Test_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal TB_Test_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal TD_Test_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    
 
     -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";  
   constant PERIOD : time := 200ns;  
     

begin
    -- Instantiate the Unit Under Test (UUT)
   uut: RF_Test_RegisterFile_16_15_23357548 PORT MAP (
          A_B_DataIN_Test => A_B_DataIN_Test_TB,
         D_Test => D_Test_TB,
         Clock_Test => Clock_Test_TB,
         DR_Test => DR_Test_TB,
         RW_Test => RW_Test_TB,
         Reset => Reset_TB,
         SA_Test => SA_Test_TB,
         SB_Test => SB_Test_TB,
         TA_Test => TA_Test_TB,
         TB_Test => TB_Test_TB,
         TD_Test => TD_Test_TB
          );
          
                -- CLOCK_TB <= not CLOCK_TB after PERIOD/2;
         clk_process: process
begin
    Clock_Test_TB <= '0'; 
    wait for PERIOD/2;
    Clock_Test_TB <= '1';
    wait for PERIOD/2; 
    end process;

       stim_proc: process 
    begin
    A_B_DataIn_Test_TB <= "10";
        
       RESET_TB <= '1';
RW_Test_TB    <= '0';
D_Test_TB     <= (others => 'U');  
wait for PERIOD;
RESET_TB <= '0';
wait until Clock_Test_TB'event and Clock_Test_TB='1'; -- FIRST real time registers can latch
  
       -- Load main registers R0-R15 SEQUENTIALLY (WITH CLOCK!!)
RW_Test_TB <= '1';
-- CASE R0
DR_Test_TB <= "0000";  -- R0
D_Test_TB  <= "00000001011001000110100001101100"; -- 23357548
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R1
DR_Test_TB <= "0001";  -- R1
D_Test_TB  <= "00000001011001000110100001101101"; -- 23357549
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R2
DR_Test_TB <= "0010";  -- R2
D_Test_TB  <= "00000001011001000110100001101110"; -- 23357550
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R3
DR_Test_TB <= "0011";  -- R3
D_Test_TB  <= "00000001011001000110100001101111"; -- 23357551
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R4
DR_Test_TB <= "0100";  -- R4
D_Test_TB  <= "00000001011001000110100001110000"; -- 23357552
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R5
DR_Test_TB <= "0101";  -- R5
D_Test_TB  <= "00000001011001000110100001110001"; -- 23357553
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R6
DR_Test_TB <= "0110";  -- R6
D_Test_TB  <= "00000001011001000110100001110010"; -- 23357554
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R7
DR_Test_TB <= "0111";  -- R7
D_Test_TB  <= "00000001011001000110100001110011"; -- 23357555
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R8
DR_Test_TB <= "1000";  -- R8
D_Test_TB  <= "00000001011001000110100001110100"; -- 23357556
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R9
DR_Test_TB <= "1001";  -- R9
D_Test_TB  <= "00000001011001000110100001110101"; -- 23357557
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R10
DR_Test_TB <= "1010";  -- R10
D_Test_TB  <= "00000001011001000110100001110110"; -- 23357558
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R11
DR_Test_TB <= "1011";  -- R11
D_Test_TB  <= "00000001011001000110100001110111"; -- 23357559
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R12
DR_Test_TB <= "1100";  -- R12
D_Test_TB  <= "00000001011001000110100001111000"; -- 23357560
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R13
DR_Test_TB <= "1101";  -- R13
D_Test_TB  <= "00000001011001000110100001111001"; -- 23357561
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R14
DR_Test_TB <= "1110";  -- R14
D_Test_TB  <= "00000001011001000110100001111010"; -- 23357562
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE R15
DR_Test_TB <= "1111";  -- R15
D_Test_TB  <= "00000001011001000110100001111011"; -- 23357563
RW_Test_TB <= '1';
wait until Clock_Test_TB'event and Clock_Test_TB='1';
RW_Test_TB <= '0';
--DR_Test_TB <= "----";


wait for PERIOD;
-- STOP writing (stop loading in registers)
RW_Test_TB <= '0';
wait for PERIOD;  -- optional: just to give simulation one more cycle

-------------------------------------------------
-- Load Temp registers T0-T14 (incrementing after main registers)

RW_Test_TB <= '1';
-- CASE T1
wait for 5 ns; --let the decoder to load the 1!
DR_Test_TB <= "0001";
TD_Test_TB <= "0001";
D_Test_TB  <= "00000001011001000110100001111100"; -- 23357564
wait until Clock_Test_TB'event and Clock_Test_TB='1';


-- CASE T2
DR_Test_TB <= "0010";
TD_Test_TB <= "0010";
D_Test_TB  <= "00000001011001000110100001111101"; -- 23357565
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T3
DR_Test_TB <= "0011";
TD_Test_TB <= "0011";
D_Test_TB  <= "00000001011001000110100001111110"; -- 23357566
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T4
DR_Test_TB <= "0100";
TD_Test_TB <= "0100";
D_Test_TB  <= "00000001011001000110100001111111"; -- 23357567
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T5
DR_Test_TB <= "0101";
TD_Test_TB <= "0101";
D_Test_TB  <= "00000001011001000110100010000000"; -- 23357568
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T6
DR_Test_TB <= "0110";
TD_Test_TB <= "0110";
D_Test_TB  <= "00000001011001000110100010000001"; -- 23357569
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T7
DR_Test_TB <= "0111";
TD_Test_TB <= "0111";
D_Test_TB  <= "00000001011001000110100010000010"; -- 23357570
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T8
DR_Test_TB <= "1000";
TD_Test_TB <= "1000";
D_Test_TB  <= "00000001011001000110100010000011"; -- 23357571
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T9
DR_Test_TB <= "1001";
TD_Test_TB <= "1001";
D_Test_TB  <= "00000001011001000110100010000100"; -- 23357572
RW_Test_TB <= '1';
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T10
DR_Test_TB <= "1010";
TD_Test_TB <= "1010";
D_Test_TB  <= "00000001011001000110100010000101"; -- 23357573
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T11
DR_Test_TB <= "1011";
TD_Test_TB <= "1011";
D_Test_TB  <= "00000001011001000110100010000110"; -- 23357574
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T12
DR_Test_TB <= "1100";
TD_Test_TB <= "1100";
D_Test_TB  <= "00000001011001000110100010000111"; -- 23357575
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T13
DR_Test_TB <= "1101";
TD_Test_TB <= "1101";
D_Test_TB  <= "00000001011001000110100010001000"; -- 23357576
RW_Test_TB <= '1';
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T14
DR_Test_TB <= "1110";
TD_Test_TB <= "1110";
D_Test_TB  <= "00000001011001000110100010001001"; -- 23357577
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- CASE T15
DR_Test_TB <= "1111";
TD_Test_TB <= "1111";
D_Test_TB  <= "00000001011001000110100010001010"; -- 23357578
wait until Clock_Test_TB'event and Clock_Test_TB='1';


RW_Test_TB <= '0';

DR_Test_TB <= "0000";
TD_Test_TB <= "0000";  --disable writing

wait for PERIOD;

      -- -------------------------
        -- READ BACK: PORT A AND B (CONCURRENTLY at the same) 
        -- -------------------------
        
TA_Test_TB <= "0000";
TB_TEST_TB <= "0000";


-- R01
SA_Test_TB <= "0001"; SB_Test_TB <= "0001"; wait for PERIOD;
-- R02
SA_Test_TB <= "0010"; SB_Test_TB <= "0010"; wait for PERIOD;
-- R03
SA_Test_TB <= "0011"; SB_Test_TB <= "0011"; wait for PERIOD;
-- R04
SA_Test_TB <= "0100"; SB_Test_TB <= "0100"; wait for PERIOD;
-- R05
SA_Test_TB <= "0101"; SB_Test_TB <= "0101"; wait for PERIOD;
-- R06
SA_Test_TB <= "0110"; SB_Test_TB <= "0110"; wait for PERIOD;
-- R07
SA_Test_TB <= "0111"; SB_Test_TB <= "0111"; wait for PERIOD;
-- R08
SA_Test_TB <= "1000"; SB_Test_TB <= "1000"; wait for PERIOD;
-- R09
SA_Test_TB <= "1001"; SB_Test_TB <= "1001"; wait for PERIOD;
-- R10
SA_Test_TB <= "1010"; SB_Test_TB <= "1010"; wait for PERIOD;
-- R11
SA_Test_TB <= "1011"; SB_Test_TB <= "1011"; wait for PERIOD;
-- R12
SA_Test_TB <= "1100"; SB_Test_TB <= "1100"; wait for PERIOD;
-- R13
SA_Test_TB <= "1101"; SB_Test_TB <= "1101"; wait for PERIOD;
-- R14
SA_Test_TB <= "1110"; SB_Test_TB <= "1110"; wait for PERIOD;
-- R15
SA_Test_TB <= "1111"; SB_Test_TB <= "1111"; wait for PERIOD;

-- =============================
-- READBACK: TEMP REGISTERS (Temp01 - Temp15)
-- =============================

-- Temp01
TA_Test_TB <= "0001"; TB_TEST_TB <= "0001"; wait for PERIOD;
-- Temp02
TA_Test_TB <= "0010"; TB_TEST_TB <= "0010"; wait for PERIOD;
-- Temp03
TA_Test_TB <= "0011"; TB_TEST_TB <= "0011"; wait for PERIOD;
-- Temp04
TA_Test_TB <= "0100"; TB_TEST_TB <= "0100"; wait for PERIOD;
-- Temp05
TA_Test_TB <= "0101"; TB_TEST_TB <= "0101"; wait for PERIOD;
-- Temp06
TA_Test_TB <= "0110"; TB_TEST_TB <= "0110"; wait for PERIOD;
-- Temp07
TA_Test_TB <= "0111"; TB_TEST_TB <= "0111"; wait for PERIOD;
-- Temp08
TA_Test_TB <= "1000"; TB_TEST_TB <= "1000"; wait for PERIOD;
-- Temp09
TA_Test_TB <= "1001"; TB_TEST_TB <= "1001"; wait for PERIOD;
-- Temp10
TA_Test_TB <= "1010"; TB_TEST_TB <= "1010"; wait for PERIOD;
-- Temp11
TA_Test_TB <= "1011"; TB_TEST_TB <= "1011"; wait for PERIOD;
-- Temp12
TA_Test_TB <= "1100"; TB_TEST_TB <= "1100"; wait for PERIOD;
-- Temp13
TA_Test_TB <= "1101"; TB_TEST_TB <= "1101"; wait for PERIOD;
-- Temp14
TA_Test_TB <= "1110"; TB_TEST_TB <= "1110"; wait for PERIOD;
-- Temp15
TA_Test_TB <= "1111"; TB_TEST_TB <= "1111"; wait for PERIOD;

--AFTER READING TO PORT A AND B, WE NEED TO COPY REGISTERS SUCH AS
        --REG00 -> REG01, REG01 -> REG02, ....and so on
-- Enable write
RW_Test_TB <= '1';

-- --------------------
-- Copy R1 -> R0
-- --------------------
A_B_DataIn_Test_TB <= "00"; --PEPARE TO COPY(A PORT)
DR_Test_TB <= "0000"; --R1 to R0
SA_Test_TB <= "0000";
TA_Test_TB <= "0000";
RW_Test_TB <= '0';
wait until Clock_Test_TB'event and Clock_Test_TB='1';

SA_Test_TB <= "0001"; --R1
RW_Test_TB <= '1';
DR_Test_TB <= "0000"; --R0
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R1 TO R0




SA_Test_TB <= "0010";
RW_Test_TB <= '1';
DR_Test_TB <= "0001";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R2 TO R1



SA_Test_TB <= "0011";
RW_Test_TB <= '1';
DR_Test_TB <= "0010";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R3 TO R2

SA_Test_TB <= "0100";
RW_Test_TB <= '1';
DR_Test_TB <= "0011";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R4 TO R3

SA_Test_TB <= "0101";
RW_Test_TB <= '1';
DR_Test_TB <= "0100";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R5 TO R4

SA_Test_TB <= "0110";
RW_Test_TB <= '1';
DR_Test_TB <= "0101";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R6 TO R5

SA_Test_TB <= "0111";
RW_Test_TB <= '1';
DR_Test_TB <= "0110";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R7 TO R6

SA_Test_TB <= "1000";
RW_Test_TB <= '1';
DR_Test_TB <= "0111";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R8 TO R7

SA_Test_TB <= "1001";
RW_Test_TB <= '1';
DR_Test_TB <= "1000";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R9 TO R8

SA_Test_TB <= "1010";
RW_Test_TB <= '1';
DR_Test_TB <= "1001";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R10 TO R9

SA_Test_TB <= "1011";
RW_Test_TB <= '1';
DR_Test_TB <= "1010";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R11 TO R10

SA_Test_TB <= "1100";
RW_Test_TB <= '1';
DR_Test_TB <= "1011";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R12 TO R11

SA_Test_TB <= "1101";
RW_Test_TB <= '1';
DR_Test_TB <= "1100";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R13 TO R12

SA_Test_TB <= "1110";
RW_Test_TB <= '1';
DR_Test_TB <= "1101";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R14 TO R13

SA_Test_TB <= "1111";
RW_Test_TB <= '1';
DR_Test_TB <= "1110";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --R15 TO R14

--NOW, USE PORTB TO COPY TEMPREG0 <- TEMPREG1 <- TEMPR2 AND SO ON..

A_B_DataIn_Test_TB <= "01";
TD_Test_TB <= "0001";  -- source TEMP1
SB_Test_TB <= "0010";  -- write to TEMP0
TB_Test_TB <= "0010";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --tempR1 to tempR0

-- Copy TEMP2 -> TEMP1
TD_Test_TB <= "0010";  -- source TEMP2
SB_Test_TB <= "0011";  -- write to TEMP1
TB_Test_TB <= "0011";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --tempR2 to tempR1

-- Copy TEMP3 -> TEMP2
TD_Test_TB <= "0011";  -- source TEMP3
SB_Test_TB <= "0100";  -- write to TEMP2
TB_Test_TB <= "0100";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --tempR3 to tempR2

-- Copy TEMP4 -> TEMP3
TD_Test_TB <= "0100";  -- source TEMP4
SB_Test_TB <= "0101";  -- write to TEMP3
TB_Test_TB <= "0101";
wait until Clock_Test_TB'event and Clock_Test_TB='1'; --tempR4 to temp

-- Copy TEMP5 -> TEMP4
TD_Test_TB <= "0101";  -- source TEMP5
SB_Test_TB <= "0110";  -- write to TEMP4
TB_Test_TB <= "0110";
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- Copy TEMP5 -> TEMP4
TD_Test_TB <= "0110";  
SB_Test_TB <= "0111"; 
TB_Test_TB <= "0111"; 
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- Copy TEMP5 -> TEMP4
TD_Test_TB <= "0111";  
SB_Test_TB <= "1000"; 
TB_Test_TB <= "1000"; 
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- Copy TEMP5 -> TEMP4
TD_Test_TB <= "1000";  
SB_Test_TB <= "1001"; 
TB_Test_TB <= "1001"; 
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- Copy TEMP5 -> TEMP4
TD_Test_TB <= "1001";  
SB_Test_TB <= "1010"; 
TB_Test_TB <= "1010"; 
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- Copy TEMP5 -> TEMP4
TD_Test_TB <= "1010";  
SB_Test_TB <= "1011"; 
TB_Test_TB <= "1011"; 
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- Copy TEMP5 -> TEMP4
TD_Test_TB <= "1011";  
SB_Test_TB <= "1100"; 
TB_Test_TB <= "1100"; 
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- Copy TEMP5 -> TEMP4
TD_Test_TB <= "1100";  
SB_Test_TB <= "1101"; 
TB_Test_TB <= "1101"; 
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- Copy TEMP5 -> TEMP4
TD_Test_TB <= "1101";  
SB_Test_TB <= "1110"; 
TB_Test_TB <= "1110"; 
wait until Clock_Test_TB'event and Clock_Test_TB='1';

-- Copy TEMP5 -> TEMP4
TD_Test_TB <= "1110";  
SB_Test_TB <= "1111"; 
TB_Test_TB <= "1111"; 
wait until Clock_Test_TB'event and Clock_Test_TB='1';

RW_Test_TB <= '0';

wait until Clock_Test_TB'event and Clock_Test_TB='1'; --to fully stabilize everything!
     end process;  
    


end Sim;
