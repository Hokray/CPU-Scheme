----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: RF_Mux3_1Bit_23357548_TB - Sim
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


entity RF_Mux3_1Bit_23357548_TB is
--  Port ( );
end RF_Mux3_1Bit_23357548_TB;

architecture Sim of RF_Mux3_1Bit_23357548_TB is

COMPONENT RF_Mux3_1Bit_23357548
            PORT (
           I0 : in std_logic;
           I1 : in std_logic;
           A : in std_logic_vector (1 downto 0);
           I2 : in std_logic;
           Z : out std_logic        
            );
END COMPONENT;

    signal I0_TB : std_logic;
    signal I1_TB : std_logic;
    signal A_TB : std_logic_vector(1 downto 0);
    signal I2_TB : std_logic;
    signal Z_TB : std_logic;




-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  RF_Mux3_1Bit_23357548 PORT MAP (
        I0 => I0_TB,
        I1 => I1_TB,
        A => A_TB,
        I2 => I2_TB,
        Z => Z_TB
       );
       
       
         stim_proc: process 
         begin
         
         A_TB <= "00";
         I0_TB <= '0';
         I1_TB <= '0';
         I2_TB <= '0';
         wait for 100 ns;
         
           A_TB <= "00";
         I0_TB <= '1';
         I1_TB <= '0';
         I2_TB <= '0';
         wait for 100 ns;
         
           A_TB <= "00";
         I0_TB <= '0';
         I1_TB <= '0';
         I2_TB <= '0';
         wait for 100 ns;
         
           A_TB <= "00";
         I0_TB <= '1';
         I1_TB <= '0';
         I2_TB <= '0';
         wait for 100 ns;
         
           A_TB <= "01";
         I0_TB <= '0';
         I1_TB <= '0';
         I2_TB <= '0';
         wait for 100 ns;
         
           A_TB <= "01";
         I0_TB <= '0';
         I1_TB <= '1';
         I2_TB <= '0';
         wait for 100 ns;
         
           A_TB <= "01";
         I0_TB <= '0';
         I1_TB <= '0';
         I2_TB <= '0';
         wait for 100 ns;
         
           A_TB <= "01";
         I0_TB <= '0';
         I1_TB <= '1';
         I2_TB <= '0';
         wait for 100 ns;
         
           A_TB <= "10";
         I0_TB <= '0';
         I1_TB <= '0';
         I2_TB <= '0';
         wait for 100 ns;
         
           A_TB <= "10";
         I0_TB <= '0';
         I1_TB <= '0';
         I2_TB <= '1';
         wait for 100 ns;
         
           A_TB <= "10";
         I0_TB <= '0';
         I1_TB <= '0';
         I2_TB <= '0';
         wait for 100 ns;
         
           A_TB <= "10";
         I0_TB <= '0';
         I1_TB <= '0';
         I2_TB <= '1';
         wait for 100 ns;
         
         
         
         
         
         
         
         
         
         
         
         
         end process;


end Sim;
