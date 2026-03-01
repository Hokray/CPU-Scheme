----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2025 11:45:28 PM
-- Design Name: 
-- Module Name: DP_RippleCarryAdder32Bit_23357548_TB - Sim
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



entity DP_RippleCarryAdder32Bit_23357548_TB is
--  Port ( );
end DP_RippleCarryAdder32Bit_23357548_TB;

architecture Sim of DP_RippleCarryAdder32Bit_23357548_TB is


COMPONENT DP_RippleCarryAdder32Bit_23357548
          PORT (
             A : in STD_LOGIC_VECTOR(31 downto 0);
            B : in STD_LOGIC_VECTOR(31 downto 0);
            C_IN : in STD_LOGIC;
            SUM : out STD_LOGIC_Vector(31 downto 0);
            C_OUT : out STD_logic;
            V : out STD_LOGIC  
               );
END COMPONENT;

  --input signals
    signal A_TB : STD_logic_vector(31 downto 0);
    signal B_TB : std_logic_vector(31 downto 0);
    signal C_IN_TB : std_logic;
    --output signals
    signal SUM_TB : std_logic_vector(31 downto 0);
    signal C_OUT_TB : std_logic;
    signal V_TB : std_logic;
  
    
    -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    
begin

      -- Instantiate the Unit Under Test (UUT)
  uut:  DP_RippleCarryAdder32Bit_23357548 PORT MAP (
        A => A_TB,
        B => B_TB,
        C_IN => C_IN_TB,
         SUM => SUM_TB,
        C_OUT => C_OUT_TB,
        V => V_TB
       );
       
       
         stim_proc: process
   begin
   A_TB <= X"00000001";                      --CASE A (worst propagatio ndelay!)
   B_TB <= X"FFFFFFFF";
   C_In_TB <= '0';
   wait for 200 ns;
   
   
   A_TB <= X"00000000";                      --CASE B (all 0)
   B_TB <= X"00000000";
   C_In_TB <= '0';
   wait for 200 ns;
   
   -- Signed overflow example (your ID)
    A_TB <= X"0164686C";  -- 23357548
    B_TB <= X"7FFFFFFF";  -- 2124126100 (makes V=1)
    C_IN_TB <= '0';
    wait for 200 ns;                                  --case C (overflow V = 1)
   
   A_TB <= X"00000000";                      --CASE D (all 0)
   B_TB <= X"00000000";
   C_In_TB <= '0';
   wait for 200 ns;
   
   
   
   
   end process;

end Sim;
