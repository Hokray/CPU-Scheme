----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okan Okray
-- 
-- Create Date: 10/18/2025 04:42:51 PM
-- Design Name: 
-- Module Name: RF_Register32Bit_23357548_TB - Sim
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



entity RF_Register32Bit_23357548_TB is
--  Port ( );
end RF_Register32Bit_23357548_TB;

architecture Sim of RF_Register32Bit_23357548_TB is
    COMPONENT RF_Register32Bit_23357548
    Port ( CLK : in STD_LOGIC;
         D : in STD_LOGIC_VECTOR (31 downto 0);
         RESET : in STD_LOGIC;
         Load : in STD_LOGIC;
         Q : out STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    --input signals
    signal CLK_TB : STD_LOGIC := '0';
    signal D_TB : std_logic_vector (31 downto 0) := (others => '0'); --check this line later
    signal RESET_TB : STD_LOGIC := '0';
    signal Load_TB : STD_LOGIC := '0';
    --output signals
    signal Q_TB : std_logic_vector (31 downto 0); --no need to iniliaze them
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
    constant PERIOD : time := 200ns;
    

begin
        --instantiate UUT
        uut: RF_Register32Bit_23357548 PORT MAP (
          CLK => CLK_TB,
          D => D_TB,
          RESET => RESET_TB,
          Load => Load_TB,
          Q => Q_TB 
        );
    
        CLK_TB <= not CLK_TB after PERIOD/2;
        
        stim_proc: process
        begin
    -- Reset the register
    RESET_TB <= '1';
    wait for PERIOD;
    RESET_TB <= '0';
    
     -- Case 1: D = 0
        D_TB <= (others => '0');
        wait until CLK_TB'event and CLK_TB='1';
        wait for PERIOD;

        -- Case 2: D = student number 23357548
        D_TB <= x"0164686C";
        Load_TB <= '1';
        wait until CLK_TB'event and CLK_TB='1';
        Load_TB <= '0';
        wait for PERIOD;

        -- Case 3: D = 0
        D_TB <= (others => '0');
        Load_TB <= '1';
        wait until CLK_TB'event and CLK_TB='1';
        Load_TB <= '0';
        wait for PERIOD;
        
         -- Case 4: D = 0
        D_TB <= (others => '0');
        Load_TB <= '1';
        wait until CLK_TB'event and CLK_TB='1';
        Load_TB <= '0';
        wait for PERIOD;

        -- Case 5: D = student number 23357548
       D_TB <= x"0164686C";
        Load_TB <= '1';
        wait until CLK_TB'event and CLK_TB='1';
        Load_TB <= '0';
        wait for PERIOD;
      
   --   wait until CLK_TB'event and CLK_TB='1';
   end process;          

end Sim;
