----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2025 01:20:28 AM
-- Design Name: 
-- Module Name: CPU_PC_23357548 - Behavioral
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


entity CPU_StatusRegister_23357548 is
  Port ( 
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
end CPU_StatusRegister_23357548;

architecture Behavioral of CPU_StatusRegister_23357548 is

   COMPONENT RF_DFlipFlop_23357548
    Port ( CLK, D, RESET : in STD_LOGIC;
           Q : out STD_LOGIC);
    END COMPONENT;
    
    
    --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
    
    
    signal and0 : std_logic;
    signal and1 : std_logic;
    signal and2 : std_logic;
    signal and3 : std_logic;
    signal and4 : std_logic;
    signal and5 : std_logic;
    signal and6 : std_logic;
    signal and7 : std_logic;
    
    signal or0 : std_logic;
    signal or1 : std_logic;
    signal or2 : std_logic;
    signal or3 : std_logic;
    
    signal not0 : std_logic;
    signal not1 : std_logic;
    signal not2 : std_logic;
    signal not3 : std_logic;
    signal not4 : std_logic;
    
    signal Q_V : std_logic;
    signal Q_C : std_logic;
    signal Q_N : std_logic;
    signal Q_Z : std_logic;
begin --make the instantiations here!

not0 <= not LoadFlags;
not1 <= not not0;
and0 <= C_Flag AND not1 after AND_gate_delay;

not2 <= not not0;
and1 <= V_Flag AND not2 after AND_gate_delay;

and2 <= Q_C AND not0 after AND_gate_delay;

and3 <= Q_V AND not0 after AND_gate_delay;

not3 <= not not0;
and4 <= N_Flag AND not3 after AND_gate_delay;

and5 <= Q_N AND not0 after AND_gate_delay;
and6 <= Q_Z AND not0 after AND_gate_delay;

not4 <= not not0;
and7 <= Z_Flag AND not4 after AND_gate_delay;

or0 <= and2 OR and0 after OR_gate_delay;
or1 <= and3 OR and1 after OR_gate_delay;
or2 <= and5 OR and4 after OR_gate_delay;
or3 <= and7 OR and6 after OR_gate_delay;








    VFlag : RF_DFlipFlop_23357548 PORT MAP (
           CLK => CLock,
           D => or1,
           RESET => Reset_V,
           Q => Q_V
           );
           
              CFlag : RF_DFlipFlop_23357548 PORT MAP (
           CLK => Clock,
           D => or0,
           RESET => Reset_C,
           Q => Q_C
           );
           
            NFlag : RF_DFlipFlop_23357548 PORT MAP (
           CLK => Clock,
           D => or2,
           RESET => Reset_N,
           Q => Q_N
           );
           
            ZFlag : RF_DFlipFlop_23357548 PORT MAP (
           CLK => Clock,
           D => or3,
           RESET => Reset_Z,
           Q => Q_Z
           );
           
           
StatusVector <= Q_Z & Q_N & Q_V & Q_C; --concatenation ( im not sure of the order of bits)       

end Behavioral;