----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2025 04:42:51 PM
-- Design Name: 
-- Module Name: RF_Mux16_1Bit_23357548_TB - Sim
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

entity RF_Mux16_1Bit_23357548_TB is
--  we don't need ports
end RF_Mux16_1Bit_23357548_TB;

architecture Sim of RF_Mux16_1Bit_23357548_TB is

   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT RF_Mux16_1Bit_23357548
      Port ( I : in STD_LOGIC_VECTOR (15 downto 0 );
             S : in STD_LOGIC_VECTOR (3 downto 0);
             Y : out STD_LOGIC
           );
    END COMPONENT;

   --Inputs Signals    
   signal I_TB : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
   signal S_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
   
   --Output Signal   
   signal Y_TB : STD_LOGIC := '0';
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";

begin

  -- Instantiate the Unit Under Test (UUT)
  uut:  RF_Mux16_1Bit_23357548 PORT MAP (
        I => I_TB,
        S => S_TB,
        Y => Y_TB
       );

  stim_proc: process
   begin
    -- Case 0: select I(0)
    S_TB <= "0000";
    I_TB <= "0000000000000000";  --Case A
    wait for 60 ns;
    
     S_TB <= "0000";
    I_TB <= "0000000000000001";  --Case A
    wait for 60 ns;
    
     S_TB <= "0000";
    I_TB <= "0000000000000000";  --Case A
    wait for 60 ns;
    
     S_TB <= "0000";
    I_TB <= "0000000000000001";  --Case A
    wait for 60 ns;
    
     S_TB <= "0000";
    I_TB <= "0000000000000000";  --Case A
    wait for 60 ns;

    ---------------------------------------------
     -- Case 2: select I(2)
    S_TB <= "0001";
    I_TB <= "0000000000000000";  -- Case B
    wait for 60 ns;
    
    -- Case 2: select I(2)
    S_TB <= "0001";
    I_TB <= "0000000000000010";  -- Case B
    wait for 60 ns;
    
      -- Case 2: select I(2)
    S_TB <= "0001";
    I_TB <= "0000000000000000";  -- Case B
    wait for 60 ns;
    
    -- Case 2: select I(2)
    S_TB <= "0001";
    I_TB <= "0000000000000010";  -- Case B
    wait for 60 ns;
    
     -- Case 2: select I(2)
    S_TB <= "0001";
    I_TB <= "0000000000000000";  -- Case B
    wait for 60 ns;
    
  --------------------------------------------------  
    -- Case 3: select I(3)
    S_TB <= "0011";
    I_TB <= "0000000000000000";  -- Case C
    wait for 60 ns;

    -- Case 3: select I(3)
    S_TB <= "0011";
    I_TB <= "0000000000001000";  -- Case C
    wait for 60 ns;
    
    -- Case 3: select I(3)
    S_TB <= "0011";
    I_TB <= "0000000000000000";  -- Case C
    wait for 60 ns;
    
    -- Case 3: select I(3)
    S_TB <= "0011";
    I_TB <= "0000000000001000";  -- Case C
    wait for 60 ns;
    
    -- Case 3: select I(3)
    S_TB <= "0011";
    I_TB <= "0000000000000000";  -- Case C
    wait for 60 ns;

-------------------------------------------------

    -- Case 4: select I(4)
    S_TB <= "0100";
    I_TB <= "0000000000000000";  -- Case E
    wait for 60 ns;
    -- Case 4: select I(4)
    S_TB <= "0100";
    I_TB <= "0000000000010000";  -- Case E
    wait for 60 ns;
    -- Case 4: select I(4)
    S_TB <= "0100";
    I_TB <= "0000000000000000";  -- Case E
    wait for 60 ns;
    
    -- Case 4: select I(4)
    S_TB <= "0100";
    I_TB <= "0000000000010000";  -- Case E
    wait for 60 ns;
    
     -- Case 4: select I(4)
    S_TB <= "0100";
    I_TB <= "0000000000000000";  -- Case E
    wait for 60 ns;

-------------------------------------------------
    -- Case 5: select I(5)
    S_TB <= "0101";
    I_TB <= "0000000000000000";  -- Case F
    wait for 60 ns;
    
    -- Case 5: select I(5)
    S_TB <= "0101";
    I_TB <= "0000000000100000";  -- Case F
    wait for 60 ns;
    
    -- Case 5: select I(5)
    S_TB <= "0101";
    I_TB <= "0000000000000000";  -- Case F
    wait for 60 ns;
    
    -- Case 5: select I(5)
    S_TB <= "0101";
    I_TB <= "0000000000100000";  -- Case F
    wait for 60 ns;
    
    -- Case 5: select I(5)
    S_TB <= "0101";
    I_TB <= "0000000000000000";  -- Case F
    wait for 60 ns;
--------------------------------------------------

    -- Case 6: select I(6)
    S_TB <= "0110";
    I_TB <= "0000000000000000";  -- Case G
    wait for 60 ns;
    
    -- Case 6: select I(6)
    S_TB <= "0110";
    I_TB <= "0000000001000000";  -- Case G
    wait for 60 ns;
    
    -- Case 6: select I(6)
    S_TB <= "0110";
    I_TB <= "0000000000000000";  -- Case G
    wait for 60 ns;
    
    -- Case 6: select I(6)
    S_TB <= "0110";
    I_TB <= "0000000001000000";  -- Case G
    wait for 60 ns;
    
    -- Case 6: select I(6)
    S_TB <= "0110";
    I_TB <= "0000000000000000";  -- Case G
    wait for 60 ns;

---------------------------------------------
     -- Case 7: select I(7)
    S_TB <= "0111";
    I_TB <= "0000000000000000";  -- Case H
    wait for 60 ns;
    
    -- Case 7: select I(7)
    S_TB <= "0111";
    I_TB <= "0000000010000000";  -- Case H
    wait for 60 ns;
    
    -- Case 7: select I(7)
    S_TB <= "0111";
    I_TB <= "0000000000000000";  -- Case H
    wait for 60 ns;
    
    -- Case 7: select I(7)
    S_TB <= "0111";
    I_TB <= "0000000010000000";  -- Case H
    wait for 60 ns;
    
    -- Case 7: select I(7)
    S_TB <= "0111";
    I_TB <= "0000000000000000";  -- Case H
    wait for 60 ns;
    
    ----------------------------------------------

    -- Case 8: select I(8)
    S_TB <= "1000";
    I_TB <= "0000000000000000";  -- Case I
    wait for 60 ns;
    
    -- Case 8: select I(8)
    S_TB <= "1000";
    I_TB <= "0000000100000000";  -- Case I
    wait for 60 ns;
    
    -- Case 8: select I(8)
    S_TB <= "1000";
    I_TB <= "0000000000000000";  -- Case I
    wait for 60 ns;
    
    -- Case 8: select I(8)
    S_TB <= "1000";
    I_TB <= "0000000100000000";  -- Case I
    wait for 60 ns;
    
    -- Case 8: select I(8)
    S_TB <= "1000";
    I_TB <= "0000000000000000";  -- Case I
    wait for 60 ns;

------------------------------------------------------
     -- Case 9: select I(9)
    S_TB <= "1001";
    I_TB <= "0000000000000000";  -- Case J
    wait for 60 ns;
    
      -- Case 9: select I(9)
    S_TB <= "1001";
    I_TB <= "0000001000000000";  -- Case J
    wait for 60 ns;
    
    -- Case 9: select I(9)
    S_TB <= "1001";
    I_TB <= "0000000000000000";  -- Case J
    wait for 60 ns;
    
      -- Case 9: select I(9)
    S_TB <= "1001";
    I_TB <= "0000001000000000";  -- Case J
    wait for 60 ns;
    
     -- Case 9: select I(9)
    S_TB <= "1001";
    I_TB <= "0000000000000000";  -- Case J
    wait for 60 ns;
    
    -------------------------------------

    -- Case 10: select I(10)
    S_TB <= "1010";
    I_TB <= "0000000000000000";  -- Case K
    wait for 60 ns;
    
      -- Case 10: select I(10)
    S_TB <= "1010";
    I_TB <= "0000010000000000";  -- Case K
    wait for 60 ns;
    
      -- Case 10: select I(10)
    S_TB <= "1010";
    I_TB <= "0000000000000000";  -- Case K
    wait for 60 ns;
    
      -- Case 10: select I(10)
    S_TB <= "1010";
    I_TB <= "0000010000000000";  -- Case K
    wait for 60 ns;
    
      -- Case 10: select I(10)
    S_TB <= "1010";
    I_TB <= "0000000000000000";  -- Case K
    wait for 60 ns;
---------------------------------------

    -- Case 11: select I(11)
    S_TB <= "1011";
    I_TB <= "0000000000000000";  -- case L
    wait for 60 ns;
    
    -- Case 11: select I(11)
    S_TB <= "1011";
    I_TB <= "0000100000000000";  -- case L
    wait for 60 ns;
    
    -- Case 11: select I(11)
    S_TB <= "1011";
    I_TB <= "0000000000000000";  -- case L
    wait for 60 ns;
    
    -- Case 11: select I(11)
    S_TB <= "1011";
    I_TB <= "0000100000000000";  -- case L
    wait for 60 ns;
    
    -- Case 11: select I(11)
    S_TB <= "1011";
    I_TB <= "0000000000000000";  -- case L
    wait for 60 ns;
-----------------------------------------

    -- Case 12: select I(12)
    S_TB <= "1100";
    I_TB <= "0000000000000000";  -- Case M
    wait for 60 ns;
    
     -- Case 12: select I(12)
    S_TB <= "1100";
    I_TB <= "0001000000000000";  -- Case M
    wait for 60 ns;
    
     -- Case 12: select I(12)
    S_TB <= "1100";
    I_TB <= "0000000000000000";  -- Case M
    wait for 60 ns;
    
     -- Case 12: select I(12)
    S_TB <= "1100";
    I_TB <= "0001000000000000";  -- Case M
    wait for 60 ns;
    
     -- Case 12: select I(12)
    S_TB <= "1100";
    I_TB <= "0000000000000000";  -- Case M
    wait for 60 ns;

-----------------------------------------
    -- Case 13: select I(13)
    S_TB <= "1101";
    I_TB <= "0000000000000000";  -- Case N
    wait for 60 ns;
    
    -- Case 13: select I(13)
    S_TB <= "1101";
    I_TB <= "0010000000000000";  -- Case N
    wait for 60 ns;
    
    -- Case 13: select I(13)
    S_TB <= "1101";
    I_TB <= "0000000000000000";  -- Case N
    wait for 60 ns;
    
    -- Case 13: select I(13)
    S_TB <= "1101";
    I_TB <= "0010000000000000";  -- Case N
    wait for 60 ns;
    
    -- Case 13: select I(13)
    S_TB <= "1101";
    I_TB <= "0000000000000000";  -- Case N
    wait for 60 ns;
-----------------------------
    -- Case 14: select I(14)
    S_TB <= "1110";
    I_TB <= "0000000000000000";  -- Case O
    wait for 60 ns;
    
    -- Case 14: select I(14)
    S_TB <= "1110";
    I_TB <= "0100000000000000";  -- Case O
    wait for 60 ns;
    
    -- Case 14: select I(14)
    S_TB <= "1110";
    I_TB <= "0000000000000000";  -- Case O
    wait for 60 ns;
    
    -- Case 14: select I(14)
    S_TB <= "1110";
    I_TB <= "0100000000000000";  -- Case O
    wait for 60 ns;
    
    -- Case 14: select I(14)
    S_TB <= "1110";
    I_TB <= "0000000000000000";  -- Case O
    wait for 60 ns;
-----------------------------------------------
    -- Case 1: select I(15)
    S_TB <= "1111";
    I_TB <= "0000000000000000";  -- Case P
    wait for 60 ns;
    
    -- Case 1: select I(15)
    S_TB <= "1111";
    I_TB <= "1000000000000000";  -- Case P
    wait for 60 ns;
    
    -- Case 1: select I(15)
    S_TB <= "1111";
    I_TB <= "0000000000000000";  -- Case P
    wait for 60 ns;
    
    -- Case 1: select I(15)
    S_TB <= "1111";
    I_TB <= "1000000000000000";  -- Case P
    wait for 60 ns;
    
    -- Case 1: select I(15)
    S_TB <= "1111";
    I_TB <= "0000000000000000";  -- Case P
    wait for 60 ns;
   end process;


end Sim;
