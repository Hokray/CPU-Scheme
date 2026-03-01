----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_RAM_23357548_TB - Sim
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


entity CPU_RAM_23357548_TB is
--  Port ( );
end CPU_RAM_23357548_TB;

architecture Sim of CPU_RAM_23357548_TB is

COMPONENT CPU_RAM_23357548 PORT (
       Clock : in STD_LOGIC ;
       Address : in STD_LOGIC_VECTOR (31 downto 0) ;
       DataIn : in STD_LOGIC_VECTOR (31 downto 0) ;
       WriteEnable : in STD_LOGIC ;
       DataOut : out STD_LOGIC_VECTOR (31 downto 0)
          );
END COMPONENT;

signal Clock_TB : std_logic := '0';
signal Address_TB : std_logic_vector(31 downto 0);
signal DataIn_TB : std_logic_vector(31 downto 0);
signal WriteEnable_TB : std_logic;
signal DataOut_TB : std_logic_vector(31 downto 0);

-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 400ns;   


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_RAM_23357548 PORT MAP (
        Clock => Clock_TB,
        Address => Address_TB,
        DataIn => DataIn_TB,
        WriteEnable => WriteEnable_TB,
        DataOut => DataOut_TB
       );
       
       Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin
   
    wait until Clock_TB'event and Clock_TB='1';
   
   Address_TB <= X"00000000" after PERIOD/4;
   DataIn_TB <= X"00000000" after PERIOD/4;
   WriteEnable_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case A
    
    Address_TB <= X"00000001" after PERIOD/4;
   DataIn_TB <= X"00000000" after PERIOD/4;
   WriteEnable_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case B
    
    Address_TB <= X"00000002" after PERIOD/4;
   DataIn_TB <= X"00000000" after PERIOD/4;
   WriteEnable_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case C
    
    Address_TB <= X"00000003" after PERIOD/4;
   DataIn_TB <= X"00000000" after PERIOD/4;
   WriteEnable_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case D
    
    Address_TB <= X"00000004" after PERIOD/4;
   DataIn_TB <= X"00000000" after PERIOD/4;
   WriteEnable_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case E
    
    
   ------------------------------------------------
   
   
    Address_TB <= X"0000007C" after PERIOD/4;
   DataIn_TB <= X"00000000" after PERIOD/4;
   WriteEnable_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case F
    
     Address_TB <= X"0000007D" after PERIOD/4;
   DataIn_TB <= X"00000000" after PERIOD/4;
   WriteEnable_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case G
    
     Address_TB <= X"0000007E" after PERIOD/4;
   DataIn_TB <= X"00000000" after PERIOD/4;
   WriteEnable_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case H
    
     Address_TB <= X"0000007F" after PERIOD/4;
   DataIn_TB <= X"00000000" after PERIOD/4;
   WriteEnable_TB <= '0' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case I
   
   --------------------------------------------------
   
   
    Address_TB <= X"00000060" after PERIOD/4;
   DataIn_TB <= X"0164686C" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case A
    
    Address_TB <= X"00000061" after PERIOD/4;
   DataIn_TB <= X"0164686D" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case B
    
    Address_TB <= X"00000062" after PERIOD/4;
   DataIn_TB <= X"0164686E" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case C
    
    Address_TB <= X"00000063" after PERIOD/4;
   DataIn_TB <= X"0164686F" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case D
    
    Address_TB <= X"00000064" after PERIOD/4;
   DataIn_TB <= X"01646870" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case E
    
    Address_TB <= X"00000065" after PERIOD/4;
   DataIn_TB <= X"01646871" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case F
    
    Address_TB <= X"00000066" after PERIOD/4;
   DataIn_TB <= X"01646872" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case G
    
    Address_TB <= X"00000067" after PERIOD/4;
   DataIn_TB <= X"01646873" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case H
    
    Address_TB <= X"00000068" after PERIOD/4;
   DataIn_TB <= X"01646874" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case I
    
    Address_TB <= X"00000069" after PERIOD/4;
   DataIn_TB <= X"01646875" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case J
    
    Address_TB <= X"0000006A" after PERIOD/4;
   DataIn_TB <= X"01646876" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case K
    
    Address_TB <= X"0000006B" after PERIOD/4;
   DataIn_TB <= X"01646877" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case L
    
    Address_TB <= X"0000006C" after PERIOD/4;
   DataIn_TB <= X"01646878" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case M
    
    Address_TB <= X"0000006D" after PERIOD/4;
   DataIn_TB <= X"01646879" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case N
    
    Address_TB <= X"0000006E" after PERIOD/4;
   DataIn_TB <= X"0164687A" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case O
    
    Address_TB <= X"0000006F" after PERIOD/4;
   DataIn_TB <= X"0164687B" after PERIOD/4;
   WriteEnable_TB <= '1' after PERIOD/4;
    wait until Clock_TB'event and Clock_TB='1'; --case P
   
   
   
   --------------------------------------------------
   --READ MEMORY(RAM)
   WriteEnable_TB <= '0' after PERIOD/4;
       Address_TB <= X"00000060" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case A
        
           Address_TB <= X"00000061" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case B
        
           Address_TB <= X"00000062" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case C
        
           Address_TB <= X"00000063" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case D
        
           Address_TB <= X"00000064" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case E
        
           Address_TB <= X"00000065" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case F
        
           Address_TB <= X"00000066" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case G
        
           Address_TB <= X"00000067" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case h
        
           Address_TB <= X"00000068" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case I
        
           Address_TB <= X"00000069" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case J
        
           Address_TB <= X"0000006A" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case K
        
           Address_TB <= X"0000006B" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case L
        
           Address_TB <= X"0000006C" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case M
        
           Address_TB <= X"0000006D" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case N
        
           Address_TB <= X"0000006E" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case O
        
           Address_TB <= X"0000006F" after PERIOD/4;
        wait until Clock_TB'event and Clock_TB='1'; --case P
        
        
   end process;

end Sim;
