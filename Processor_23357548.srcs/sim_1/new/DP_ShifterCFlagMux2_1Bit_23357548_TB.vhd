----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_ShifterCFlagMux2_1Bit_23357548_TB - Sim
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


entity DP_ShifterCFlagMux2_1Bit_23357548_TB is
--  Port ( );
end DP_ShifterCFlagMux2_1Bit_23357548_TB;

architecture Sim of DP_ShifterCFlagMux2_1Bit_23357548_TB is

COMPONENT DP_ShifterCFLagMux2_1Bit_23357548
                PORT (
                     LSB : in std_logic;
                      S2 : in std_logic;
                      S1 : in std_logic;
                        MSB : in std_logic;
                       C : out std_logic       
                );
END COMPONENT;

        signal LSB_TB : std_logic;
        signal S2_TB : std_logic;
        signal S1_TB : std_logic;
        signal MSB_TB : std_logic;
        signal C_TB : std_logic;
        

-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_ShifterCFlagMux2_1Bit_23357548 PORT MAP (
        LSB => LSB_TB,
        S2 => S2_TB,
        S1 => S1_TB,
        MSB => MSB_TB,
        C => C_TB
       );
       
       
         stim_proc: process 
         begin
         
         LSB_TB <= '0';
         S2_TB <= '0';
         S1_TB <= '0';
         MSB_TB <= '0'; 
         wait for 100 ns; --Case A
         
               LSB_TB <= '1';
         S2_TB <= '0';
         S1_TB <= '0';
         MSB_TB <= '0'; 
         wait for 100 ns; --Case B
         
               LSB_TB <= '1';
         S2_TB <= '0';
         S1_TB <= '0';
         MSB_TB <= '1'; 
         wait for 100 ns; --Case C
         
               LSB_TB <= '1';
         S2_TB <= '0';
         S1_TB <= '1';
         MSB_TB <= '1'; 
         wait for 100 ns; --Case D
         
               LSB_TB <= '0';
         S2_TB <= '0';
         S1_TB <= '1';
         MSB_TB <= '0'; 
         wait for 100 ns; --Case E
         
                     LSB_TB <= '1';
         S2_TB <= '0';
         S1_TB <= '1';
         MSB_TB <= '0'; 
         wait for 100 ns; --Case F
         
                     LSB_TB <= '0';
         S2_TB <= '0';
         S1_TB <= '1';
         MSB_TB <= '1'; 
         wait for 100 ns; --Case G
         
                     LSB_TB <= '1';
         S2_TB <= '0';
         S1_TB <= '1';
         MSB_TB <= '1'; 
         wait for 100 ns; --Case H
         
                    LSB_TB <= '0';
         S2_TB <= '1';
         S1_TB <= '0';
         MSB_TB <= '0'; 
         wait for 100 ns; --Case 
         
                    LSB_TB <= '1';
         S2_TB <= '1';
         S1_TB <= '0';
         MSB_TB <= '0'; 
         wait for 100 ns; --Case H
         
         
         
                       LSB_TB <= '0';
         S2_TB <= '1';
         S1_TB <= '0';
         MSB_TB <= '1'; 
         wait for 100 ns; --Case I
         
         
                       LSB_TB <= '1';
         S2_TB <= '1';
         S1_TB <= '0';
         MSB_TB <= '1'; 
         wait for 100 ns; --Case J
         
         
                       LSB_TB <= '0';
         S2_TB <= '1';
         S1_TB <= '1';
         MSB_TB <= '0'; 
         wait for 100 ns; --Case K
         
                            LSB_TB <= '1';
         S2_TB <= '1';
         S1_TB <= '1';
         MSB_TB <= '0'; 
         wait for 100 ns; --Case L
         
                            LSB_TB <= '0';
         S2_TB <= '1';
         S1_TB <= '1';
         MSB_TB <= '1'; 
         wait for 100 ns; --Case M
         
                            LSB_TB <= '1';
         S2_TB <= '1';
         S1_TB <= '1';
         MSB_TB <= '1'; 
         wait for 100 ns; --Case N
         
         end process;


end Sim;
