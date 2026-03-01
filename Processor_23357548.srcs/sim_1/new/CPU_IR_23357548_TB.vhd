----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_IR_23357548_TB - Sim
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


entity CPU_IR_23357548_TB is
--  Port ( );
end CPU_IR_23357548_TB;

architecture Sim of CPU_IR_23357548_TB is

COMPONENT CPU_IR_23357548 PORT (
                      Clock : in std_logic;
            Instruction : in std_logic_vector(31 downto 0);
            IL : in std_logic;
            DR : out std_logic_vector(3 downto 0);
            Opcode : out std_logic_vector(19 downto 0);
            SA : out std_logic_vector(3 downto 0);
            SB : out std_logic_vector(3 downto 0)  
          );
END COMPONENT;

signal Clock_TB : std_logic := '0';
signal Instruction_TB : std_logic_vector(31 downto 0);
signal IL_TB : std_logic;
signal DR_TB : std_logic_vector(3 downto 0);
signal Opcode_TB : std_logic_vector(19 downto 0);
signal SA_TB : std_logic_vector(3 downto 0);
signal SB_TB : std_logic_vector(3 downto 0);



-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 400ns;   


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_IR_23357548 PORT MAP (
        Clock => Clock_TB,
        Instruction => Instruction_TB,
        IL => IL_TB,
        DR => DR_TB,
        Opcode => Opcode_TB,
        SA => SA_TB,
        SB => SB_TB
       );
   
       Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin

Instruction_TB <= X"00000000" after PERIOD/4;
IL_TB <= '0' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case A

Instruction_TB <= X"00057548" after PERIOD/4;
IL_TB <= '1' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case B





end process;
end Sim;
