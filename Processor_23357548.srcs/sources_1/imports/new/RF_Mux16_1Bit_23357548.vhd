----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okan Okray
-- 
-- Create Date: 10/09/2025 12:29:10 PM
-- Design Name: 
-- Module Name: RF_Mux16_1Bit_23357548 - Behavioral
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

entity RF_Mux16_1Bit_23357548 is
    Port(
        I  : in  STD_LOGIC_VECTOR(15 downto 0);
        S  : in  STD_LOGIC_VECTOR(3 downto 0);
        Y  : out STD_LOGIC
        );
end RF_Mux16_1Bit_23357548;

architecture Behavioral of RF_Mux16_1Bit_23357548 is
 
    signal S0_not, S1_not, S2_not, S3_not : std_logic;

    -- AND gate levels (WE NEED 44 ANDs)
    
    --first level
    signal and00, and01, and02, and03 : std_logic;  
    
    --second level 
    signal and10, and11, and12, and13, and14, and15, and16, and17 : std_logic; 
    --third level
    signal and20, and21, and22, and23, and24, and25, and26, and27 : std_logic;
    signal and28, and29, and210, and211, and212, and213, and214, and215 : std_logic;
    --Fourth level 
    signal and30, and31, and32, and33, and34, and35, and36 ,and37 : std_logic;
    signal and38, and39, and310, and311, and312, and313, and314, and315 : std_logic; 

    -- THERE WILL BE A TOTAL OF 15 OR
    signal o0, o1, o2, o3, o4, o5, o6, o7 : std_logic;
    signal o8, o9, o10, o11, o12, o13, o14 : std_logic;
    
     --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 9ns;      -- least significant digit 6 = 5 + 1
   constant NAND_gate_delay : Time := 5ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 6ns;       -- next more significant digit 8 = 7 + 1
   constant NOR_gate_delay : Time := 8ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 6ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 7 = 6 + 1

begin --NO CASCADE STRUCTURE
    S0_not <= not S(0) after NOT_gate_delay;
    S1_not <= not S(1) after NOT_gate_delay;
    S2_not <= not S(2) after NOT_gate_delay;
    S3_not <= not S(3) after NOT_gate_delay;
    
    --First level
    and00 <= S3_not and S2_not after AND_gate_delay;
    and01 <= S3_not and S(2) after AND_gate_delay;
    and02 <= S(3) and S2_not after AND_gate_delay;
    and03 <= S(3) and S(2) after AND_gate_delay;
    
    --Second level 8 ands in the second level
    and10 <= and00 and S1_not after AND_gate_delay; --CHANGE SECOND LEVEL, TRY TO SEE IF IT WORKS!
    and11 <= and00 and S(1)after AND_gate_delay;
    and12 <= and01 and S1_not after AND_gate_delay;
    and13 <= and01 and S(1)after AND_gate_delay;
    and14 <= and02 and S1_not after AND_gate_delay;
    and15 <= and02 and S(1)after AND_gate_delay;
    and16 <= and03 and S1_not after AND_gate_delay;
    and17 <= and03 and S(1)after AND_gate_delay;
    
    --Third level 16 ands 
    and20 <= and10 and S0_not after AND_gate_delay;
    and21 <= and10 and S(0) after AND_gate_delay;
    and22 <= and11 and S0_not after AND_gate_delay;
    and23 <= and11 and S(0) after AND_gate_delay;
    and24 <= and12 and S0_not after AND_gate_delay;
    and25 <= and12 and S(0) after AND_gate_delay;
    and26 <= and13 and S0_not after AND_gate_delay;
    and27 <= and13 and S(0) after AND_gate_delay;
    and28 <= and14 and S0_not after AND_gate_delay;
    and29 <= and14 and S(0) after AND_gate_delay;
    and210 <= and15 and S0_not after AND_gate_delay;
    and211 <= and15 and S(0) after AND_gate_delay;
    and212 <= and16 and S0_not after AND_gate_delay;
    and213 <= and16 and S(0) after AND_gate_delay;
    and214 <= and17 and S0_not after AND_gate_delay;
    and215 <= and17 and S(0) after AND_gate_delay; --CHECK THIS ONE!!!
    
    --Fourth level 16 ands
    and30 <= and20 and I(0) after AND_gate_delay;
    and31 <= and21 and I(1) after AND_gate_delay;
    and32 <= and22 and I(2) after AND_gate_delay;
    and33 <= and23 and I(3) after AND_gate_delay;
    and34 <= and24 and I(4) after AND_gate_delay;
    and35 <= and25 and I(5) after AND_gate_delay;
    and36 <= and26 and I(6) after AND_gate_delay;
    and37 <= and27 and I(7) after AND_gate_delay;
    and38 <= and28 and I(8) after AND_gate_delay;
    and39 <= and29 and I(9) after AND_gate_delay;
    and310 <= and210 and I(10) after AND_gate_delay;
    and311 <= and211 and I(11) after AND_gate_delay;
    and312 <= and212 and I(12) after AND_gate_delay;
    and313 <= and213 and I(13) after AND_gate_delay;
    and314 <= and214 and I(14) after AND_gate_delay;
    and315 <= and215 and I(15) after AND_gate_delay;
    
    --NOW THE OR (15) level 3 -> 8 ; level 2 -> 4 ; level 1 -> 2 ; level 0 -> 1
    
    o0 <= and30 or and31 after OR_gate_delay;
    o1 <= and32 or and33 after OR_gate_delay;
    o2 <= and34 or and35 after OR_gate_delay;
    o3 <= and36 or and37 after OR_gate_delay;
    o4 <= and38 or and39 after OR_gate_delay;
    o5 <= and310 or and311 after OR_gate_delay;
    o6 <= and312 or and313 after OR_gate_delay;
    o7 <= and314 or and315 after OR_gate_delay;
    
    o8 <= o0 or o1 after OR_gate_delay;
    o9 <= o2 or o3 after OR_gate_delay;
    o10 <= o4 or o5 after OR_gate_delay;
    o11 <= o6 or o7 after OR_gate_delay;
    
    o12 <= o8 or o9 after OR_gate_delay;
    o13 <= o10 or o11 after OR_gate_delay;
    
    o14 <= o12 or o13 after OR_gate_delay; 
    
    Y <= o14 after OR_gate_delay; --OUTPUT
    
end Behavioral; 
