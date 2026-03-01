----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okan Okray
-- 
-- Create Date: 10/18/2025 04:42:51 PM
-- Design Name: 
-- Module Name: RF_RegisterFile_16_15_23357548_TB - Sim
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


entity RF_RegisterFile_16_15_23357548_TB is
--  Port ( );
end RF_RegisterFile_16_15_23357548_TB;

architecture Sim of RF_RegisterFile_16_15_23357548_TB is


    COMPONENT RF_RegisterFile_16_15_23357548
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
    END COMPONENT;
           
--Input SIGNALS
    signal SA_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal DR_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal SB_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal RW_TB : STD_LOGIC := '0';
    signal CLOCK_TB : STD_LOGIC := '0';
    signal D_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal TB_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal TD_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal TA_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal RESET_TB : std_logic := '0';
  --OUTPUT SIGNALS
    signal B_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal A_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    
    -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";  
   constant PERIOD : time := 400ns;           
              
              
   begin

-- Instantiate the Unit Under Test (UUT)
   uut: RF_RegisterFile_16_15_23357548 PORT MAP (
          SA => SA_TB,
          DR => DR_TB,
          SB => SB_TB,
          RW => RW_TB,
          CLOCK => CLOCK_TB,
          D => D_TB,
          TB => TB_TB,
          TD => TD_TB,
          TA => TA_TB,
          RESET => RESET_TB,
          A => A_TB,
          B => B_TB
          );
          
         -- CLOCK_TB <= not CLOCK_TB after PERIOD/2;
         clk_process: process
begin
    CLOCK_TB <= '0'; --I DONT KNOW IF I CAN USE A CLOCK PROCESS
    wait for PERIOD/2;
    CLOCK_TB <= '1';
    wait for PERIOD/2;
end process;

  stim_proc: process
   begin	
   
   RESET_TB <= '1';
RW_TB    <= '0';
D_TB     <= (others => 'U');  -- keep unknown during reset
wait for PERIOD;
RESET_TB <= '0';
wait until CLOCK_TB'event and CLOCK_TB='1'; -- FIRST real time registers can latch
  
       -- Load main registers R0-R15 SEQUENTIALLY (WITH CLOCK!!)
RW_TB <= '1';
-- CASE R0
DR_TB <= "0000";  -- R0
D_TB  <= "00000001011001000110100001101100"; -- 23357548
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R1
DR_TB <= "0001";  -- R1
D_TB  <= "00000001011001000110100001101101"; -- 23357549
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R2
DR_TB <= "0010";  -- R2
D_TB  <= "00000001011001000110100001101110"; -- 23357550
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R3
DR_TB <= "0011";  -- R3
D_TB  <= "00000001011001000110100001101111"; -- 23357551
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R4
DR_TB <= "0100";  -- R4
D_TB  <= "00000001011001000110100001110000"; -- 23357552
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R5
DR_TB <= "0101";  -- R5
D_TB  <= "00000001011001000110100001110001"; -- 23357553
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R6
DR_TB <= "0110";  -- R6
D_TB  <= "00000001011001000110100001110010"; -- 23357554
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R7
DR_TB <= "0111";  -- R7
D_TB  <= "00000001011001000110100001110011"; -- 23357555
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R8
DR_TB <= "1000";  -- R8
D_TB  <= "00000001011001000110100001110100"; -- 23357556
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R9
DR_TB <= "1001";  -- R9
D_TB  <= "00000001011001000110100001110101"; -- 23357557
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R10
DR_TB <= "1010";  -- R10
D_TB  <= "00000001011001000110100001110110"; -- 23357558
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R11
DR_TB <= "1011";  -- R11
D_TB  <= "00000001011001000110100001110111"; -- 23357559
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R12
DR_TB <= "1100";  -- R12
D_TB  <= "00000001011001000110100001111000"; -- 23357560
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R13
DR_TB <= "1101";  -- R13
D_TB  <= "00000001011001000110100001111001"; -- 23357561
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R14
DR_TB <= "1110";  -- R14
D_TB  <= "00000001011001000110100001111010"; -- 23357562
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE R15
DR_TB <= "1111";  -- R15
D_TB  <= "00000001011001000110100001111011"; -- 23357563
RW_TB <= '1';
wait until CLOCK_TB'event and CLOCK_TB='1';
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
D_TB  <= "00000001011001000110100001111100"; -- 23357564

wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T2
DR_TB <= "0010";
TD_TB <= "0010";
D_TB  <= "00000001011001000110100001111101"; -- 23357565
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T3
DR_TB <= "0011";
TD_TB <= "0011";
D_TB  <= "00000001011001000110100001111110"; -- 23357566
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T4
DR_TB <= "0100";
TD_TB <= "0100";
D_TB  <= "00000001011001000110100001111111"; -- 23357567
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T5
DR_TB <= "0101";
TD_TB <= "0101";
D_TB  <= "00000001011001000110100010000000"; -- 23357568
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T6
DR_TB <= "0110";
TD_TB <= "0110";
D_TB  <= "00000001011001000110100010000001"; -- 23357569
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T7
DR_TB <= "0111";
TD_TB <= "0111";
D_TB  <= "00000001011001000110100010000010"; -- 23357570
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T8
DR_TB <= "1000";
TD_TB <= "1000";
D_TB  <= "00000001011001000110100010000011"; -- 23357571
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T9
DR_TB <= "1001";
TD_TB <= "1001";
D_TB  <= "00000001011001000110100010000100"; -- 23357572
RW_TB <= '1';
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T10
DR_TB <= "1010";
TD_TB <= "1010";
D_TB  <= "00000001011001000110100010000101"; -- 23357573
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T11
DR_TB <= "1011";
TD_TB <= "1011";
D_TB  <= "00000001011001000110100010000110"; -- 23357574
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T12
DR_TB <= "1100";
TD_TB <= "1100";
D_TB  <= "00000001011001000110100010000111"; -- 23357575
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T13
DR_TB <= "1101";
TD_TB <= "1101";
D_TB  <= "00000001011001000110100010001000"; -- 23357576
RW_TB <= '1';
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T14
DR_TB <= "1110";
TD_TB <= "1110";
D_TB  <= "00000001011001000110100010001001"; -- 23357577
wait until CLOCK_TB'event and CLOCK_TB='1';

-- CASE T15
DR_TB <= "1111";
TD_TB <= "1111";
D_TB  <= "00000001011001000110100010001010"; -- 23357578
wait until CLOCK_TB'event and CLOCK_TB='1';


RW_TB <= '0';

DR_TB <= "0000";
TD_TB <= "0000";  --disable writing

wait for PERIOD;

      -- -------------------------
        -- READ BACK: PORT A AND B (CONCURRENTLY at the same)
        -- -------------------------
TA_TB <= "0000";
TB_TB <= "0000";

-- R00
SA_TB <= "0000"; SB_TB <= "0000"; wait for PERIOD;
-- R01
SA_TB <= "0001"; SB_TB <= "0001"; wait for PERIOD;
-- R02
SA_TB <= "0010"; SB_TB <= "0010"; wait for PERIOD;
-- R03
SA_TB <= "0011"; SB_TB <= "0011"; wait for PERIOD;
-- R04
SA_TB <= "0100"; SB_TB <= "0100"; wait for PERIOD;
-- R05
SA_TB <= "0101"; SB_TB <= "0101"; wait for PERIOD;
-- R06
SA_TB <= "0110"; SB_TB <= "0110"; wait for PERIOD;
-- R07
SA_TB <= "0111"; SB_TB <= "0111"; wait for PERIOD;
-- R08
SA_TB <= "1000"; SB_TB <= "1000"; wait for PERIOD;
-- R09
SA_TB <= "1001"; SB_TB <= "1001"; wait for PERIOD;
-- R10
SA_TB <= "1010"; SB_TB <= "1010"; wait for PERIOD;
-- R11
SA_TB <= "1011"; SB_TB <= "1011"; wait for PERIOD;
-- R12
SA_TB <= "1100"; SB_TB <= "1100"; wait for PERIOD;
-- R13
SA_TB <= "1101"; SB_TB <= "1101"; wait for PERIOD;
-- R14
SA_TB <= "1110"; SB_TB <= "1110"; wait for PERIOD;
-- R15
SA_TB <= "1111"; SB_TB <= "1111"; wait for PERIOD;

-- =============================
-- READBACK: TEMP REGISTERS (Temp01 - Temp15)
-- =============================

-- Temp01
TA_TB <= "0001"; TB_TB <= "0001"; wait for PERIOD;
-- Temp02
TA_TB <= "0010"; TB_TB <= "0010"; wait for PERIOD;
-- Temp03
TA_TB <= "0011"; TB_TB <= "0011"; wait for PERIOD;
-- Temp04
TA_TB <= "0100"; TB_TB <= "0100"; wait for PERIOD;
-- Temp05
TA_TB <= "0101"; TB_TB <= "0101"; wait for PERIOD;
-- Temp06
TA_TB <= "0110"; TB_TB <= "0110"; wait for PERIOD;
-- Temp07
TA_TB <= "0111"; TB_TB <= "0111"; wait for PERIOD;
-- Temp08
TA_TB <= "1000"; TB_TB <= "1000"; wait for PERIOD;
-- Temp09
TA_TB <= "1001"; TB_TB <= "1001"; wait for PERIOD;
-- Temp10
TA_TB <= "1010"; TB_TB <= "1010"; wait for PERIOD;
-- Temp11
TA_TB <= "1011"; TB_TB <= "1011"; wait for PERIOD;
-- Temp12
TA_TB <= "1100"; TB_TB <= "1100"; wait for PERIOD;
-- Temp13
TA_TB <= "1101"; TB_TB <= "1101"; wait for PERIOD;
-- Temp14
TA_TB <= "1110"; TB_TB <= "1110"; wait for PERIOD;
-- Temp15
TA_TB <= "1111"; TB_TB <= "1111"; wait for PERIOD;

      end process;  
        
end Sim;
