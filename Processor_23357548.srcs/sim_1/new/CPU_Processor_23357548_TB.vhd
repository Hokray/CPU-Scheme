----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2025 09:24:00 PM
-- Design Name: 
-- Module Name: CPU_Processor_23357548_TB - Sim
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

entity CPU_Processor_23357548_TB is
--  Port ( );
end CPU_Processor_23357548_TB;

architecture Sim of CPU_Processor_23357548_TB is

COMPONENT CPU_Processor_23357548 PORT (
                 Clock : in std_logic;
       Reset : in std_logic
          );
END COMPONENT;

signal Clock_TB : std_logic := '0';
signal Reset_TB : std_logic := '0';
 


-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
     constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 1200ns;   


begin
    -- Instantiate the Unit Under Test (UUT)
  uut:  CPU_Processor_23357548 PORT MAP (
     Clock => Clock_TB,
     Reset => Reset_TB
       );
       
       Clock_TB <= not Clock_TB after PERIOD/2;
       
         stim_proc: process
   begin --there will not be acttually code in here. Just clock cycles
   --everything will be done inside the whole "CPU"
   
   wait until Clock_TB'event and Clock_TB='1';
   
   --EACH RISING EDGE OF THE CLOCK IS ENTERING A NEW INSTRUCTION!
   
   Reset_TB <= '1' after PERIOD/4;
   wait until Clock_TB'event and Clock_TB='1';
   
   Reset_TB <= '0' after PERIOD/4;
   wait until Clock_TB'event and Clock_TB='1';
   
   --START THE INSTRUCTIONS!
   
    wait until Clock_TB'event and Clock_TB='1'; --(0)
 
    wait until Clock_TB'event and Clock_TB='1'; --(1)
    
    wait until Clock_TB'event and Clock_TB='1'; --(2)
    
   wait until Clock_TB'event and Clock_TB='1'; --(3)
   
   wait until Clock_TB'event and Clock_TB='1'; --(4)
   
   wait until Clock_TB'event and Clock_TB='1'; --(5)
   
   wait until Clock_TB'event and Clock_TB='1'; --(6)
   
   wait until Clock_TB'event and Clock_TB='1'; --(7)
   
   wait until Clock_TB'event and Clock_TB='1'; --(8)
   
   wait until Clock_TB'event and Clock_TB='1'; --(9)
   
   wait until Clock_TB'event and Clock_TB='1'; --(10)
   
   wait until Clock_TB'event and Clock_TB='1'; --(11)
   
   wait until Clock_TB'event and Clock_TB='1'; --(12)
   
   wait until Clock_TB'event and Clock_TB='1'; --(13)
   
   wait until Clock_TB'event and Clock_TB='1'; --(14)
   
   wait until Clock_TB'event and Clock_TB='1'; --(15)
   
   wait until Clock_TB'event and Clock_TB='1'; --(16)
   
   wait until Clock_TB'event and Clock_TB='1'; --(17)
   
      wait until Clock_TB'event and Clock_TB='1'; --(0)
 
    wait until Clock_TB'event and Clock_TB='1'; --(1)
    
    wait until Clock_TB'event and Clock_TB='1'; --(2)
    
   wait until Clock_TB'event and Clock_TB='1'; --(3)
   
   wait until Clock_TB'event and Clock_TB='1'; --(4)
   
   wait until Clock_TB'event and Clock_TB='1'; --(5)
   
   wait until Clock_TB'event and Clock_TB='1'; --(6)
   
   wait until Clock_TB'event and Clock_TB='1'; --(7)
   
   wait until Clock_TB'event and Clock_TB='1'; --(8)
   
   wait until Clock_TB'event and Clock_TB='1'; --(9)
   
   wait until Clock_TB'event and Clock_TB='1'; --(10)
   
   wait until Clock_TB'event and Clock_TB='1'; --(11)
   
   wait until Clock_TB'event and Clock_TB='1'; --(12)
   
   wait until Clock_TB'event and Clock_TB='1'; --(13)
   
   wait until Clock_TB'event and Clock_TB='1'; --(14)
   
   wait until Clock_TB'event and Clock_TB='1'; --(15)
   
   wait until Clock_TB'event and Clock_TB='1'; --(16)
   
   wait until Clock_TB'event and Clock_TB='1'; --(17)
   
      wait until Clock_TB'event and Clock_TB='1'; --(0)
 
    wait until Clock_TB'event and Clock_TB='1'; --(1)
    
    wait until Clock_TB'event and Clock_TB='1'; --(2)
    
   wait until Clock_TB'event and Clock_TB='1'; --(3)
   
   wait until Clock_TB'event and Clock_TB='1'; --(4)
   
   wait until Clock_TB'event and Clock_TB='1'; --(5)
   
   wait until Clock_TB'event and Clock_TB='1'; --(6)
   
   wait until Clock_TB'event and Clock_TB='1'; --(7)
   
   wait until Clock_TB'event and Clock_TB='1'; --(8)
   
   wait until Clock_TB'event and Clock_TB='1'; --(9)
   
   wait until Clock_TB'event and Clock_TB='1'; --(10)
   
   wait until Clock_TB'event and Clock_TB='1'; --(11)
   
   wait until Clock_TB'event and Clock_TB='1'; --(12)
   
   wait until Clock_TB'event and Clock_TB='1'; --(13)
   
   wait until Clock_TB'event and Clock_TB='1'; --(14)
   
   wait until Clock_TB'event and Clock_TB='1'; --(15)
   
   wait until Clock_TB'event and Clock_TB='1'; --(16)
   
   wait until Clock_TB'event and Clock_TB='1'; --(17)
 
      wait until Clock_TB'event and Clock_TB='1'; --(17)
    
       wait until Clock_TB'event and Clock_TB='1'; --(17)
    
       wait until Clock_TB'event and Clock_TB='1'; --(17)
    
       wait until Clock_TB'event and Clock_TB='1'; --(17)    

       wait until Clock_TB'event and Clock_TB='1'; --(17)
    
       wait until Clock_TB'event and Clock_TB='1'; --(17)
    
       wait until Clock_TB'event and Clock_TB='1'; --(17)
    
      wait until Clock_TB'event and Clock_TB='1'; 
    
    end process;
end Sim;
