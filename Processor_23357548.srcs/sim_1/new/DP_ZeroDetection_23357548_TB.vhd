----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_ZeroDetection_23357548_TB - Sim
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


entity DP_ZeroDetection_23357548_TB is
--  Port ( );
end DP_ZeroDetection_23357548_TB;

architecture Sim of DP_ZeroDetection_23357548_TB is
COMPONENT DP_ZeroDetection_23357548
            PORT (
                 MuxF_to_F : in std_logic_vector(31 downto 0);
                 Z : out std_logic  
            );
END COMPONENT;         
   
            signal MuxF_to_F_TB : std_logic_vector(31 downto 0);
            signal Z_TB : std_logic;


-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_ZeroDetection_23357548  PORT MAP (
        MuxF_to_F => MuxF_to_F_TB,
       Z => Z_TB
    
       );
       
       
         stim_proc: process 
         begin
         
         muxF_to_F_TB <= x"00000000"; --case A
         wait for 100 ns;
         
         muxF_to_F_TB <= x"bbbbbbbb"; --case B
          wait for 100 ns;
          
         muxF_to_F_TB <= x"00000000"; --case C
          wait for 100 ns;
           
         muxF_to_F_TB <= x"040A0C00"; --case D
          wait for 100 ns;
            
        muxF_to_F_TB <= x"00000000"; --case E
         wait for 100 ns;
         
         
         
         
         
         
         
         end process;


end Sim;
