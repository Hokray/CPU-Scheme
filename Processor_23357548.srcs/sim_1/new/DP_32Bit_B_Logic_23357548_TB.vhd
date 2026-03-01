----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_32Bit_B_Logic_23357548_TB - Sim
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



entity DP_32Bit_B_Logic_23357548_TB is
--  Port ( );
end DP_32Bit_B_Logic_23357548_TB;

architecture Sim of DP_32Bit_B_Logic_23357548_TB is
COMPONENT DP_32Bit_B_Logic_23357548
          PORT (
                  S0 : in std_logic;
            S1 : in std_logic;
            B : in std_logic_vector(31 downto 0);
            Y : out std_logic_vector(31 downto 0)            
          );
END COMPONENT;
    signal S0_TB : std_logic;
    signal S1_TB : std_logic;
    signal B_TB : std_logic_vector(31 downto 0);
    signal Y_TB : std_logic_vector(31 downto 0);

 -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_32Bit_B_Logic_23357548 PORT MAP (
        S0 => S0_TB,
        S1 => S1_TB,
        B => B_TB,
         Y => Y_TB
       );
       
       
         stim_proc: process --CHECK THIS ONE AGAIN (INVERTED 1 COMPLEMENT AND STUDENT NUMBER!)
   begin
   
   S0_TB <= '0';
   S1_TB <= '0';
   B_TB <= x"0164686C"; --case A output 0000000
   wait for 100 ns;
   
     S0_TB <= '1';
   S1_TB <= '0';
   B_TB <= x"0164686C"; --case B output 0000000
   wait for 100 ns;
   
     S0_TB <= '1';
   S1_TB <= '0';
   B_TB <= x"0164686C"; --case B output 0000000
    wait for 100 ns;
    
     S0_TB <= '0';
   S1_TB <= '1';
   B_TB <= x"0164686C"; --case C output 0000000
   wait for 100 ns;
   
      S0_TB <= '0';
   S1_TB <= '1';
   B_TB <= x"0164686C"; --case C output 0000000
    wait for 100 ns;
    
     S0_TB <= '1';
   S1_TB <= '1';
   B_TB <= x"0164686C"; --case D output 0000000
    wait for 100 ns;
    
   S0_TB <= '1';
   S1_TB <= '1';
   B_TB <= x"0164686C"; --case D output 0000000
    wait for 100 ns;
   
   
   
   
   
   
   
   
   
   end process;

end Sim;
