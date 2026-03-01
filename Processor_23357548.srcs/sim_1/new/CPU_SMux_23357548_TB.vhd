----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_SMux_23357548_TB - Sim
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


entity CPU_SMux_23357548_TB is
--  Port ( );
end CPU_SMux_23357548_TB;

architecture Sim of CPU_SMux_23357548_TB is

COMPONENT CPU_SMux_23357548 PORT (
                  Zero : in std_logic;
        One : in std_logic;
        C_Flag : in std_logic;
        MS : in std_logic_vector(2 downto 0);
        V_Flag : in std_logic;
        Z_Flag : in std_logic;
        N_Flag : in std_logic;
        Not_C_Flag : in std_logic; 
        Not_Z_Flag : in std_logic;
        CAR : out std_logic  
          );
END COMPONENT;

signal Zero_TB : std_logic := '0';
signal One_TB : std_logic := '0';
signal C_Flag_TB :  std_logic := '0';
signal MS_TB :  std_logic_vector(2 downto 0);
signal V_Flag_TB : std_logic := '0';
 signal Z_Flag_TB : std_logic := '0';
signal  N_Flag_TB : std_logic := '0';
signal Not_C_Flag_TB :  std_logic := '0';
signal Not_Z_Flag_TB :  std_logic := '0';
signal CAR_TB : std_logic := '0'; 



-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C"; 

begin

    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_SMux_23357548 PORT MAP (
        Zero => Zero_TB,
        One => One_TB,
        C_Flag => C_Flag_TB,
        MS => MS_TB,
        V_Flag => V_Flag_TB,
        Z_Flag => Z_Flag_TB,
        N_Flag => N_Flag_TB,
        Not_C_Flag => Not_C_Flag_TB,
        Not_Z_Flag => Not_Z_Flag_TB,
        CAR => CAR_TB
       );

         stim_proc: process
   begin



MS_TB <= "000";
Zero_TB <= '1';
wait for 300 ns; --case A




MS_TB <= "001";
Zero_TB <= '0';
One_TB <= '1';
wait for 300 ns; --case B

MS_TB <= "010";
One_TB <= '0';
C_Flag_TB <= '1';
wait for 300 ns; --case C

MS_TB <= "011";
C_Flag_TB <= '0';
V_Flag_TB <= '1';
wait for 300 ns; --case D

MS_TB <= "100";
V_Flag_TB <= '0';
Z_Flag_TB <= '1';
wait for 300 ns; --case E

MS_TB <= "101";
Z_Flag_TB <= '0';
N_Flag_TB <= '1';
wait for 300 ns; --case F

MS_TB <= "110";
N_Flag_TB <= '0';
Not_C_Flag_TB <= '1';
wait for 300 ns; --case G

MS_TB <= "111";
Not_C_Flag_TB <= '0';
Not_Z_Flag_TB <= '1';
wait for 300 ns; --case H

    
    end process;
end Sim;
