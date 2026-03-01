----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okan Okray
-- 
-- Create Date: 10/18/2025 04:42:51 PM
-- Design Name: 
-- Module Name: RF_Mux16_32Bit_23357548_TB - Sim
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

entity RF_Mux16_32Bit_23357548_TB is
--  we don't need ports
end RF_Mux16_32Bit_23357548_TB;

architecture Sim of RF_Mux16_32Bit_23357548_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT RF_Mux16_32Bit_23357548
      Port(
        ln00  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln01  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln02  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln03  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln04  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln05  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln06  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln07  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln08  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln09  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln10  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln11  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln12  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln13  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln14  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln15  : in  STD_LOGIC_VECTOR(31 downto 0);
        A  : in  STD_LOGIC_VECTOR(3 downto 0);
        Z  : out STD_LOGIC_VECTOR(31 downto 0)
        );
    END COMPONENT;

   --Inputs Signals    
   signal ln00_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln01_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln02_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln03_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln04_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln05_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln06_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln07_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln08_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln09_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln10_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln11_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln12_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln13_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln14_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln15_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal A_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
   
   --Output Signal   
   signal Z_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";

begin

  -- Instantiate the Unit Under Test (UUT)
  uut:  RF_Mux16_32Bit_23357548 PORT MAP (
        ln00 => ln00_TB,
        ln01 => ln01_TB,
        ln02 => ln02_TB,
        ln03 => ln03_TB,
        ln04 => ln04_TB,
        ln05 => ln05_TB,
        ln06 => ln06_TB,
        ln07 => ln07_TB,
        ln08 => ln08_TB,
        ln09 => ln09_TB,
        ln10 => ln10_TB,
        ln11 => ln11_TB,
        ln12 => ln12_TB,
        ln13 => ln13_TB,
        ln14 => ln14_TB,
        ln15 => ln15_TB,
        A => A_TB,
        Z => Z_TB
       );
stim_proc: process
begin
    -- Case 0: select ln00
    A_TB <= "0000";
    ln00_TB <= X"0164686C";  -- 23357548 case A
    wait for 60 ns;

    -- Case 1
A_TB <= "0001";
ln01_TB <= X"0164686D";  -- +1
wait for 60 ns;

-- Case 2
A_TB <= "0010";
ln02_TB <= X"0164686E";  -- +2
wait for 60 ns;

-- Case 3
A_TB <= "0011";
ln03_TB <= X"0164686F";  -- +3
wait for 60 ns;

-- Case 4
A_TB <= "0100";
ln04_TB <= X"01646870";  -- +4
wait for 60 ns;

-- Case 5
A_TB <= "0101";
ln05_TB <= X"01646871";  -- +5
wait for 60 ns;

-- Case 6
A_TB <= "0110";
ln06_TB <= X"01646872";  -- +6
wait for 60 ns;

-- Case 7
A_TB <= "0111";
ln07_TB <= X"01646873";  -- +7
wait for 60 ns;

-- Case 8
A_TB <= "1000";
ln08_TB <= X"01646874";  -- +8
wait for 60 ns;

-- Case 9
A_TB <= "1001";
ln09_TB <= X"01646875";  -- +9
wait for 60 ns;

-- Case 10
A_TB <= "1010";
ln10_TB <= X"01646876";  -- +10
wait for 60 ns;

-- Case 11
A_TB <= "1011";
ln11_TB <= X"01646877";  -- +11
wait for 60 ns;

-- Case 12
A_TB <= "1100";
ln12_TB <= X"01646878";  -- +12
wait for 60 ns;

-- Case 13
A_TB <= "1101";
ln13_TB <= X"01646879";  -- +13
wait for 60 ns;

-- Case 14
A_TB <= "1110";
ln14_TB <= X"0164687A";  -- +14
wait for 60 ns;

-- Case 15
A_TB <= "1111";
ln15_TB <= X"0164687B";  -- +15
wait for 60 ns;
end process;

 

end Sim;