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


entity CPU_IR_23357548 is
  Port ( 
            Clock : in std_logic;
            Instruction : in std_logic_vector(31 downto 0);
            IL : in std_logic;
            DR : out std_logic_vector(3 downto 0);
            Opcode : out std_logic_vector(19 downto 0);
            SA : out std_logic_vector(3 downto 0);
            SB : out std_logic_vector(3 downto 0)  
        );
end CPU_IR_23357548;

architecture Behavioral of CPU_IR_23357548 is
    
    
    
COMPONENT RF_Register32Bit_23357548 
   Port ( CLK : in STD_LOGIC;
         D : in STD_LOGIC_VECTOR (31 downto 0);
         Reset : in STD_LOGIC;
         Load : in STD_LOGIC;
         Q : out STD_LOGIC_VECTOR (31 downto 0)
         );
END COMPONENT;
       
       
       
          --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1
    
   signal Q_out : std_logic_vector(31 downto 0);     


begin --make the instantiations here!

    IR : RF_Register32Bit_23357548 PORT MAP (
           CLK => Clock,
           D => Instruction,
           Load => IL,
           RESET => '0',
           Q => Q_out
           );
--NEED TO SLICE Q_out in the different Outputs!

 -- Slice the output into fields (DR is now LSB) --I THINK NOW IS CORRECT
    SB     <= Q_out(3 downto 0);     -- 4 LSBs
    SA     <= Q_out(7 downto 4);     -- next 4 bits
    DR     <= Q_out(11 downto 8);    -- next 4 bits
    Opcode <= Q_out(31 downto 12);   -- upper 20 bits



end Behavioral;