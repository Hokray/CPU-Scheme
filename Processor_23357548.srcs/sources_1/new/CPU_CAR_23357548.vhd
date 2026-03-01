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


entity CPU_CAR_23357548 is
  Port ( 
        Address : in std_logic_vector(19 downto 0);
        Clock : in std_logic;
        LoadAdd : in std_logic;
        Reset : in std_logic;
        CMAdd : out std_logic_vector(19 downto 0)   
        );
end CPU_CAR_23357548;

architecture Behavioral of CPU_CAR_23357548 is

COMPONENT CPU_JKFlipFlop_23357548 
 Port (
        K : in std_logic;
        J : in std_logic;
        Clock : in std_logic;
        Reset : in std_logic;
        Q : out std_logic;
        Q_not : out std_logic
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

signal not0 : std_logic;
signal not1 : std_logic;

signal and0 : std_logic;
signal and1 : std_logic;
signal and2 : std_logic;
signal and3 : std_logic;
signal and4 : std_logic;
signal and5 : std_logic;
signal and6 : std_logic;
signal and7 : std_logic;
signal and8 : std_logic;
signal and9 : std_logic;
signal and10 : std_logic;
signal and11 : std_logic;
signal and12 : std_logic;
signal and13 : std_logic;
signal and14 : std_logic;
signal and15 : std_logic;
signal and16 : std_logic;
signal and17 : std_logic;

--LAYER OF ANDS
signal not2 : std_logic;
signal not3 : std_logic;
signal not4 : std_logic;
signal not5 : std_logic;
signal not6 : std_logic;
signal not7 : std_logic;
signal not8 : std_logic;
signal not9 : std_logic;
signal not10 : std_logic;
signal not11 : std_logic;
signal not12 : std_logic;
signal not13 : std_logic;
signal not14 : std_logic;
signal not15 : std_logic;
signal not16 : std_logic;
signal not17 : std_logic;
signal not18 : std_logic;
signal not19 : std_logic;
signal not20 : std_logic;
signal not21 : std_logic;
signal not22 : std_logic;
signal not23 : std_logic;

--NOW THE ANDS 
signal and18 : std_logic;
signal and19 : std_logic;
signal and20 : std_logic;
signal and21 : std_logic;
signal and22 : std_logic;
signal and23 : std_logic;
signal and24 : std_logic;
signal and25 : std_logic;
signal and26 : std_logic;
signal and27 : std_logic;
signal and28 : std_logic;
signal and29 : std_logic;
signal and30 : std_logic;
signal and31 : std_logic;
signal and32 : std_logic;
signal and33 : std_logic;
signal and34 : std_logic;
signal and35 : std_logic;
signal and36 : std_logic;
signal and37 : std_logic;
signal and38 : std_logic;
signal and39 : std_logic;
signal and40 : std_logic;
signal and41 : std_logic;
signal and42 : std_logic;
signal and43 : std_logic;
signal and44 : std_logic;
signal and45 : std_logic;
signal and46 : std_logic;
signal and47 : std_logic;
signal and48 : std_logic;
signal and49 : std_logic;
signal and50 : std_logic;
signal and51 : std_logic;
signal and52 : std_logic;
signal and53 : std_logic;
signal and54 : std_logic;
signal and55 : std_logic;
signal and56 : std_logic;
signal and57 : std_logic;
signal and58 : std_logic;
signal and59 : std_logic;
signal and60 : std_logic;
signal and61 : std_logic;
signal and62 : std_logic;
signal and63 : std_logic;
signal and64 : std_logic;
signal and65 : std_logic;
signal and66 : std_logic;
signal and67 : std_logic;
signal and68 : std_logic;
signal and69 : std_logic;
signal and70 : std_logic;
signal and71 : std_logic;
signal and72 : std_logic;
signal and73 : std_logic;
signal and74 : std_logic;
signal and75 : std_logic;
signal and76 : std_logic;


--LAYER OF ORS
signal or0 : std_logic;
signal or1 : std_logic;
signal or2 : std_logic;
signal or3 : std_logic;
signal or4 : std_logic;
signal or5 : std_logic;
signal or6 : std_logic;
signal or7 : std_logic;
signal or8 : std_logic;
signal or9 : std_logic;
signal or10 : std_logic;
signal or11 : std_logic;
signal or12 : std_logic;
signal or13 : std_logic;
signal or14 : std_logic;
signal or15 : std_logic;
signal or16 : std_logic;
signal or17 : std_logic;
signal or18 : std_logic;
signal or19 : std_logic;
signal or20 : std_logic;
signal or21 : std_logic;
signal or22 : std_logic;
signal or23 : std_logic;
signal or24 : std_logic;
signal or25 : std_logic;
signal or26 : std_logic;
signal or27 : std_logic;
signal or28 : std_logic;
signal or29 : std_logic;
signal or30 : std_logic;
signal or31 : std_logic;
signal or32 : std_logic;
signal or33 : std_logic;
signal or34 : std_logic;
signal or35 : std_logic;
signal or36 : std_logic;
signal or37 : std_logic;
signal or38 : std_logic;
signal or39 : std_logic;

Signal Q0 : std_logic;
Signal Q1 : std_logic;
Signal Q2 : std_logic;
Signal Q3 : std_logic;
Signal Q4 : std_logic;
Signal Q5 : std_logic;
Signal Q6 : std_logic;
Signal Q7 : std_logic;
Signal Q8 : std_logic;
Signal Q9 : std_logic;
Signal Q10 : std_logic;
Signal Q11 : std_logic;
Signal Q12 : std_logic;
Signal Q13 : std_logic;
Signal Q14 : std_logic;
Signal Q15 : std_logic;
Signal Q16 : std_logic;
Signal Q17 : std_logic;
Signal Q18 : std_logic;
Signal Q19 : std_logic;


begin --make the instantiations here


not0 <= not LoadAdd;
not1 <= not not0;  -- not1 = LoadAdd


and0  <= Q0 after AND_gate_delay;
-- carry into bit2:
and1  <= and0 and Q1 after AND_gate_delay;
and2  <= and1 and Q2 after AND_gate_delay;
and3  <= and2 and Q3 after AND_gate_delay;
and4  <= and3 and Q4 after AND_gate_delay;
and5  <= and4 and Q5 after AND_gate_delay;
and6  <= and5 and Q6 after AND_gate_delay;
and7  <= and6 and Q7 after AND_gate_delay;
and8  <= and7 and Q8 after AND_gate_delay;
and9  <= and8 and Q9 after AND_gate_delay;
and10 <= and9 and Q10 after AND_gate_delay;
and11 <= and10 and Q11 after AND_gate_delay;
and12 <= and11 and Q12 after AND_gate_delay;
and13 <= and12 and Q13 after AND_gate_delay;
and14 <= and13 and Q14 after AND_gate_delay;
and15 <= and14 and Q15 after AND_gate_delay;
and16 <= and15 and Q16 after AND_gate_delay;
and17 <= and16 and Q17 after AND_gate_delay;

-- === Load selectors (not1 = LoadAdd) ===
and18 <= not1 AND Address(0)  after AND_gate_delay;
and19 <= not1 AND Address(1)  after AND_gate_delay;
and20 <= not1 AND Address(2)  after AND_gate_delay;
and21 <= not1 AND Address(3)  after AND_gate_delay;
and22 <= not1 AND Address(4)  after AND_gate_delay;
and23 <= not1 AND Address(5)  after AND_gate_delay;
and24 <= not1 AND Address(6)  after AND_gate_delay;
and25 <= not1 AND Address(7)  after AND_gate_delay;
and26 <= not1 AND Address(8)  after AND_gate_delay;
and27 <= not1 AND Address(9)  after AND_gate_delay;
and28 <= not1 AND Address(10) after AND_gate_delay;
and29 <= not1 AND Address(11) after AND_gate_delay;
and30 <= not1 AND Address(12) after AND_gate_delay;
and31 <= not1 AND Address(13) after AND_gate_delay;
and32 <= not1 AND Address(14) after AND_gate_delay;
and33 <= not1 AND Address(15) after AND_gate_delay;
and34 <= not1 AND Address(16) after AND_gate_delay;
and35 <= not1 AND Address(17) after AND_gate_delay;
and36 <= not1 AND Address(18) after AND_gate_delay;
and37 <= not1 AND Address(19) after AND_gate_delay;

-- sel_load_neg(i) = not1 AND (not Address(i)) -> and38..and57
and38 <= not1 AND (not Address(0))  after AND_gate_delay;
and39 <= not1 AND (not Address(1))  after AND_gate_delay;
and40 <= not1 AND (not Address(2))  after AND_gate_delay;
and41 <= not1 AND (not Address(3))  after AND_gate_delay;
and42 <= not1 AND (not Address(4))  after AND_gate_delay;
and43 <= not1 AND (not Address(5))  after AND_gate_delay;
and44 <= not1 AND (not Address(6))  after AND_gate_delay;
and45 <= not1 AND (not Address(7))  after AND_gate_delay;
and46 <= not1 AND (not Address(8))  after AND_gate_delay;
and47 <= not1 AND (not Address(9))  after AND_gate_delay;
and48 <= not1 AND (not Address(10)) after AND_gate_delay;
and49 <= not1 AND (not Address(11)) after AND_gate_delay;
and50 <= not1 AND (not Address(12)) after AND_gate_delay;
and51 <= not1 AND (not Address(13)) after AND_gate_delay;
and52 <= not1 AND (not Address(14)) after AND_gate_delay;
and53 <= not1 AND (not Address(15)) after AND_gate_delay;
and54 <= not1 AND (not Address(16)) after AND_gate_delay;
and55 <= not1 AND (not Address(17)) after AND_gate_delay;
and56 <= not1 AND (not Address(18)) after AND_gate_delay;
and57 <= not1 AND (not Address(19)) after AND_gate_delay;

-- sel_inc signals: not0 AND carry_in
-- note sel_inc0 = not0 (LSB toggles whenever incrementing)
-- use and58..and76 for sel_inc1..sel_inc19
and58 <= not0 AND and0 after AND_gate_delay;                
and59 <= not0 AND and1 after AND_gate_delay;                
and60 <= not0 AND and2 after AND_gate_delay;                
and61 <= not0 AND and3 after AND_gate_delay;                
and62 <= not0 AND and4 after AND_gate_delay;               
and63 <= not0 AND and5 after AND_gate_delay;                
and64 <= not0 AND and6 after AND_gate_delay;               
and65 <= not0 AND and7 after AND_gate_delay;               
and66 <= not0 AND and8 after AND_gate_delay;                
and67 <= not0 AND and9 after AND_gate_delay;                
and68 <= not0 AND and10 after AND_gate_delay;               
and69 <= not0 AND and11 after AND_gate_delay;               
and70 <= not0 AND and12 after AND_gate_delay;               
and71 <= not0 AND and13 after AND_gate_delay;               
and72 <= not0 AND and14 after AND_gate_delay;               
and73 <= not0 AND and15 after AND_gate_delay;               
and74 <= not0 AND and16 after AND_gate_delay;              
and75 <= not0 AND and17 after AND_gate_delay;               
and76 <= not0 AND and17 AND Q18 after AND_gate_delay;       


or0  <= and18 OR not0 after OR_gate_delay;   -- J for bit0
or1  <= and38 OR not0 after OR_gate_delay;   -- K for bit0

-- bit 1
or2  <= and19 OR and58 after OR_gate_delay;  -- J for bit1
or3  <= and39 OR and58 after OR_gate_delay;  -- K for bit1

-- bit 2
or4  <= and20 OR and59 after OR_gate_delay;
or5  <= and40 OR and59 after OR_gate_delay;

-- bit 3
or6  <= and21 OR and60 after OR_gate_delay;
or7  <= and41 OR and60 after OR_gate_delay;

-- bit 4
or8  <= and22 OR and61 after OR_gate_delay;
or9  <= and42 OR and61 after OR_gate_delay;

-- bit 5
or10 <= and23 OR and62 after OR_gate_delay;
or11 <= and43 OR and62 after OR_gate_delay;

-- bit 6
or12 <= and24 OR and63 after OR_gate_delay;
or13 <= and44 OR and63 after OR_gate_delay;

-- bit 7
or14 <= and25 OR and64 after OR_gate_delay;
or15 <= and45 OR and64 after OR_gate_delay;

-- bit 8
or16 <= and26 OR and65 after OR_gate_delay;
or17 <= and46 OR and65 after OR_gate_delay;

-- bit 9
or18 <= and27 OR and66 after OR_gate_delay;
or19 <= and47 OR and66 after OR_gate_delay;

-- bit 10
or20 <= and28 OR and67 after OR_gate_delay;
or21 <= and48 OR and67 after OR_gate_delay;

-- bit 11
or22 <= and29 OR and68 after OR_gate_delay;
or23 <= and49 OR and68 after OR_gate_delay;

-- bit 12
or24 <= and30 OR and69 after OR_gate_delay;
or25 <= and50 OR and69 after OR_gate_delay;

-- bit 13
or26 <= and31 OR and70 after OR_gate_delay;
or27 <= and51 OR and70 after OR_gate_delay;

-- bit 14
or28 <= and32 OR and71 after OR_gate_delay;
or29 <= and52 OR and71 after OR_gate_delay;

-- bit 15
or30 <= and33 OR and72 after OR_gate_delay;
or31 <= and53 OR and72 after OR_gate_delay;

-- bit 16
or32 <= and34 OR and73 after OR_gate_delay;
or33 <= and54 OR and73 after OR_gate_delay;

-- bit 17
or34 <= and35 OR and74 after OR_gate_delay;
or35 <= and55 OR and74 after OR_gate_delay;

-- bit 18
or36 <= and36 OR and75 after OR_gate_delay;
or37 <= and56 OR and75 after OR_gate_delay;

-- bit 19
or38 <= and37 OR and76 after OR_gate_delay;
or39 <= and57 OR and76 after OR_gate_delay;


 

 JKFlipFlop00 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or0,
                K => or1,
                Reset => Reset,
                Q => Q0  
                );
               
 JKFlipFlop01 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or2,
                K => or3,
                Reset => Reset,
                Q => Q1  
                );
                
 JKFlipFlop02 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or4,
                K => or5,
                Reset => Reset,
                Q => Q2  
                );
                
 JKFlipFlop03 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or6,
                K => or7,
                Reset => Reset,
                Q => Q3  
                );
                
 JKFlipFlop04 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or8,
                K => or9,
                Reset => Reset,
                Q => Q4  
                );
                
 JKFlipFlop05 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or10,
                K => or11,
                Reset => Reset,
                Q => Q5  
                );
                
 JKFlipFlop06 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or12,
                K => or13,
                Reset => Reset,
                Q => Q6  
                );
                
 JKFlipFlop07 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or14,
                K => or15,
                Reset => Reset,
                Q => Q7  
                );
                
 JKFlipFlop08 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or16,
                K => or17,
                Reset => Reset,
                Q => Q8  
                );
                
 JKFlipFlop09 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or18,
                K => or19,
                Reset => Reset,
                Q => Q9  
                );
                
 JKFlipFlop10 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or20,
                K => or21,
                Reset => Reset,
                Q => Q10  
                );
                
 JKFlipFlop11 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or22,
                K => or23,
                Reset => Reset,
                Q => Q11  
                );
                
 JKFlipFlop12 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or24,
                K => or25,
                Reset => Reset,
                Q => Q12  
                );
                
 JKFlipFlop13 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or26,
                K => or27,
                Reset => Reset,
                Q => Q13  
                );
                
 JKFlipFlop14 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or28,
                K => or29,
                Reset => Reset,
                Q => Q14  
                );
                
 JKFlipFlop15 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or30,
                K => or31,
                Reset => Reset,
                Q => Q15  
                );
                
 JKFlipFlop16 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or32,
                K => or33,
                Reset => Reset,
                Q => Q16  
                );
                
 JKFlipFlop17 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or34,
                K => or35,
                Reset => Reset,
                Q => Q17  
                );
                
 JKFlipFlop18 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or36,
                K => or37,
                Reset => Reset,
                Q => Q18  
                );
                
 JKFlipFlop19 : CPU_JKFlipFlop_23357548 PORT MAP (
                Clock => Clock,
                J => or38,
                K => or39,
                Reset => Reset,
                Q => Q19  
                );

-- output concatenation
CMAdd <= Q19 & Q18 & Q17 & Q16 & Q15 & Q14 & Q13 & Q12 & Q11 & Q10 & Q9 & Q8 & Q7 & Q6 & Q5 & Q4 & Q3 & Q2 & Q1 & Q0;

end Behavioral;
