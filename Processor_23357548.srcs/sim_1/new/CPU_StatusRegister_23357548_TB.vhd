----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2025 05:17:17 PM
-- Design Name: 
-- Module Name: CPU_StatusRegister_23357548_TB - Sim
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


entity CPU_StatusRegister_23357548_TB is
--  Port ( );
end CPU_StatusRegister_23357548_TB;

architecture Sim of CPU_StatusRegister_23357548_TB is

COMPONENT CPU_StatusRegister_23357548 PORT (
             C_Flag : in std_logic;
        Reset_V : in std_logic;
        V_Flag : in std_logic;
        Clock : in std_logic;
        Reset_c : in std_logic;
        LoadFlags : in std_logic;
        N_Flag : in std_logic;
        Reset_N : in std_logic;
        Reset_Z : in std_logic;
        Z_Flag : in std_logic;
        StatusVector : out std_logic_vector(3 downto 0)        
          );
END COMPONENT;

signal C_Flag_TB : std_logic := '0';
signal Reset_V_TB : std_logic := '0';
signal V_Flag_TB : std_logic := '0';
signal Clock_TB : std_logic := '0';
signal Reset_c_TB : std_logic := '0';
signal LoadFlags_TB : std_logic := '0';
signal N_Flag_TB : std_logic := '0';
signal Reset_N_TB : std_logic := '0';
signal Reset_Z_TB : std_logic := '0';
signal Z_Flag_TB : std_logic := '0';
signal StatusVector_TB : std_logic_vector(3 downto 0);




  constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164686C";
   constant PERIOD : time := 400ns;  

begin

   -- Instantiate the Unit Under Test (UUT)
   uut: CPU_StatusRegister_23357548 PORT MAP (
          C_Flag => C_Flag_TB,
          Reset_V => Reset_V_TB,
          V_Flag => V_Flag_TB,
          Clock => Clock_TB,
          Reset_c => Reset_c_TB,
          LoadFlags => LoadFlags_TB,
          N_Flag => N_Flag_TB,
          Reset_N => Reset_N_TB,
          Reset_Z => Reset_Z_TB,
          Z_Flag => Z_Flag_TB,
          StatusVector => StatusVector_TB        
        );
        
   Clock_TB <= not Clock_TB after PERIOD/2;
    
       stim_proc: process --only use process in sim files
   begin
    
    
     wait until Clock_TB'event and Clock_TB='1';
     
     C_Flag_TB <= '1' after PERIOD/4;
     LoadFlags_TB <= '1' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case A
      
       C_Flag_TB <= '1' after PERIOD/4;
     LoadFlags_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case B
     
     V_Flag_TB <= '1' after PERIOD/4;
     LoadFlags_TB <= '1' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case C
      
       V_Flag_TB <= '1' after PERIOD/4;
     LoadFlags_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case D
    
     N_Flag_TB <= '1' after PERIOD/4;
     LoadFlags_TB <= '1' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case E
      
       N_Flag_TB <= '1' after PERIOD/4;
     LoadFlags_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case F
      
       Z_Flag_TB <= '1' after PERIOD/4;
     LoadFlags_TB <= '1' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case G
      
       Z_Flag_TB <= '1' after PERIOD/4;
     LoadFlags_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case H
      
      
       C_Flag_TB <= '0' after PERIOD/4;
       Reset_c_TB <= '1' after PERIOD/4;
       Z_Flag_TB <= '0' after PERIOD/4;
         V_Flag_TB <= '0' after PERIOD/4;
        N_Flag_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case I
      
            
       Reset_v_TB <= '1' after PERIOD/4;
       Reset_c_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case J
      
            
       Reset_n_TB <= '1' after PERIOD/4;
       Reset_v_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case K
      
            
       Reset_z_TB <= '1' after PERIOD/4;
       Reset_n_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case L
      

       Reset_z_TB <= '0' after PERIOD/4;
      wait until Clock_TB'event and Clock_TB='1'; --case M
    
    
    
    end process;
end Sim;
