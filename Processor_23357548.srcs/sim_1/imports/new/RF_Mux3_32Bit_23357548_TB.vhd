----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2025 04:42:51 PM
-- Design Name: 
-- Module Name: RF_Mux3_32Bit_23357548_TB - Sim
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

entity RF_Mux3_32Bit_23357548_TB is
--  we don't need ports
end RF_Mux3_32Bit_23357548_TB;

architecture Sim of RF_Mux3_32Bit_23357548_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT RF_Mux3_32Bit_23357548
      Port (
        A : in STD_LOGIC_VECTOR (1 downto 0);
        ln00 : in STD_LOGIC_VECTOR (31 downto 0);
        ln01 : in STD_LOGIC_VECTOR (31 downto 0);
        ln02 : in STD_LOGIC_VECTOR (31 downto 0);
        Z : out STD_LOGIC_VECTOR (31 downto 0)   
        );
    END COMPONENT;

   --Inputs Signals    
   signal A_TB : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
   signal ln00_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln01_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal ln02_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   
   --Output Signal   
    signal Z_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";

begin

  -- Instantiate the Unit Under Test (UUT)
  uut:  RF_Mux3_32Bit_23357548 PORT MAP (
        A => A_TB,
        ln00 => ln00_TB,
        ln01 => ln01_TB,
        ln02 => ln02_TB,
        Z => Z_TB
       );
   --ln00_TB <= "00000000000000000000000000000001";  -- bit 0 = 1
   --ln01_TB <= "00000000000000000000000000000010";  -- bit 1 = 1
   --ln02_TB <= "00000000000000000000000000000100";  -- bit 2 = 1

  stim_proc: process
begin
    -- Cases for ln00_TB
    ln00_TB <= x"00000000";  -- case 1: ln00 = 0
    A_TB <= "00";             -- select ln00
    wait for 50 ns;

    ln00_TB <= x"FFFFFFFF";  -- case 2: ln00 = -1
    A_TB <= "00";
    wait for 50 ns;
    
    ln00_TB <= x"00000000";
    A_TB <= "00";
    wait for 50 ns;

    ln00_TB <= x"0164686C";  -- case 3: ln00 = StudentID
    A_TB <= "00";
    wait for 50 ns;
    
     ln00_TB <= x"00000000";
    A_TB <= "00";
    wait for 50 ns;



    -- Cases for ln01_TB
    ln01_TB <= x"00000000";  -- case 4: ln01 = 0
    A_TB <= "01";             -- select ln01
    wait for 50 ns;
    
    
    ln01_TB <= x"FFFFFFFF";  -- case 5: ln01 = -1
    A_TB <= "01";
    wait for 50 ns;
    
     -- Cases for ln01_TB
    ln01_TB <= x"00000000";  -- case 4: ln01 = 0
    A_TB <= "01";             -- select ln01
    wait for 50 ns;

    ln01_TB <= x"0164686C";  -- case 6: ln01 = StudentID
    A_TB <= "01";
    wait for 50 ns;
    
     -- Cases for ln01_TB
    ln01_TB <= x"00000000";  -- case 4: ln01 = 0
    A_TB <= "01";             -- select ln01
    wait for 50 ns;
    
    
    
    

    -- Cases for ln02_TB
    ln02_TB <= x"00000000";  -- case 7: ln02 = 0
    A_TB <= "10";             -- select ln02
    wait for 50 ns;

    ln02_TB <= x"FFFFFFFF";  -- case 8: ln02 = -1
    A_TB <= "10";
    wait for 50 ns;
    
    -- Cases for ln02_TB
    ln02_TB <= x"00000000";  -- case 7: ln02 = 0
    A_TB <= "10";             -- select ln02
    wait for 50 ns;

    ln02_TB <= x"0164686C";  -- case 9: ln02 = StudentID
    A_TB <= "10";
    wait for 50 ns;
    
    -- Cases for ln02_TB
    ln02_TB <= x"00000000";  -- case 7: ln02 = 0
    A_TB <= "10";             -- select ln02
    wait for 50 ns;

end process;


end Sim;
