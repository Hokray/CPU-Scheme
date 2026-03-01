----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okray
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_PC_23357548_TB - Sim
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


entity CPU_PC_23357548_TB is
--  Port ( );
end CPU_PC_23357548_TB;

architecture Sim of CPU_PC_23357548_TB is

COMPONENT CPU_PC_23357548 PORT (
        Clock : in std_logic;
        Reset : in std_logic;
        PL : in std_logic;
        Displacement : in std_logic_vector(31 downto 0);
        PI : in std_logic;
        InstAdd : out std_logic_vector(31 downto 0)     
           );
END COMPONENT;

signal Clock_TB : std_logic := '0';
signal Reset_TB : std_logic := '0';
signal PL_TB : std_logic := '0';
signal Displacement_TB : std_logic_vector(31 downto 0);
signal PI_TB : std_logic := '0';
signal InstAdd_TB : std_logic_vector(31 downto 0);



-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C"; 
       constant PERIOD : time := 400ns; 

begin



    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_PC_23357548 PORT MAP (
        Clock => Clock_TB,
        Reset => Reset_TB,
        PL => PL_TB,
        Displacement => Displacement_TB,
        PI => PI_TB,
        InstAdd => InstAdd_TB   
       );
       
  Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin

Displacement_TB <= X"00000000" after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case A
 
 Displacement_TB <= X"00000000" after PERIOD/4;
 Reset_TB <= '1' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case B
 
  Displacement_TB <= X"00000030" after PERIOD/4;
 Reset_TB <= '0' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case C
 
   Displacement_TB <= X"00000030" after PERIOD/4;
 PI_TB <= '1' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case D
 
   Displacement_TB <= X"00000030" after PERIOD/4;
 PI_TB <= '0' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case E
 
    Displacement_TB <= X"00000030" after PERIOD/4;
 PI_TB <= '1' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case F
 
    Displacement_TB <= X"00000030" after PERIOD/4;
 PI_TB <= '0' after PERIOD/4;
 PL_TB <= '1' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case G
 
    Displacement_TB <= X"00000030" after PERIOD/4;
 PL_TB <= '0' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case H
 
     Displacement_TB <= X"00000030" after PERIOD/4;
 PI_TB <= '1' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case I
 
  Displacement_TB <= X"FFFFFFD0" after PERIOD/4; -- -48
 PI_TB <= '0' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case J
 
 Displacement_TB <= X"FFFFFFD0" after PERIOD/4; -- -48
 PL_TB <= '1' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case K
 
 Displacement_TB <= X"FFFFFFD0" after PERIOD/4; -- -48
 PI_TB <= '1' after PERIOD/4;
 PL_TB <= '0' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case L
 
  Displacement_TB <= X"FFFFFFD0" after PERIOD/4; -- -48
 PI_TB <= '1' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case M
 
   Displacement_TB <= X"FFFFFFD0" after PERIOD/4; -- -48
 PI_TB <= '0' after PERIOD/4;
 wait until Clock_TB'event and Clock_TB='1'; --case N

    end process;
end Sim;
