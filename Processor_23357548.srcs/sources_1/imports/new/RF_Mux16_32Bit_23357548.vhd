----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okan Okray
-- 
-- Create Date: 10/09/2025 10:25:26 PM
-- Design Name: 
-- Module Name: RF_Mux16_32Bit_23357548 - Behavioral
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

entity RF_Mux16_32Bit_23357548 is
Port(
        ln00  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln01  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln02  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln03  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln04  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln05  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln06  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln07  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln08  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln09  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln10  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln11  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln12  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln13  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln14  : in  STD_LOGIC_VECTOR(31 downto 0);
        ln15  : in  STD_LOGIC_VECTOR(31 downto 0);
        A  : in  STD_LOGIC_VECTOR(3 downto 0);
        Z  : out STD_LOGIC_VECTOR(31 downto 0)
        );
end RF_Mux16_32Bit_23357548;

architecture Behavioral of RF_Mux16_32Bit_23357548 is
    COMPONENT RF_Mux16_1Bit_23357548
    Port(
        I  : in  STD_LOGIC_VECTOR(15 downto 0);
        S  : in  STD_LOGIC_VECTOR(3 downto 0);
        Y  : out STD_LOGIC
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

     signal I_bit0, I_bit1, I_bit2, I_bit3, I_bit4, I_bit5, I_bit6, I_bit7 : std_logic_vector(15 downto 0);
     signal I_bit8, I_bit9, I_bit10, I_bit11, I_bit12, I_bit13, I_bit14, I_bit15 : std_logic_vector(15 downto 0);
     signal I_bit16, I_bit17, I_bit18, I_bit19, I_bit20, I_bit21, I_bit22, I_bit23, I_bit24 : std_logic_vector(15 downto 0);
     signal I_bit25, I_bit26, I_bit27, I_bit28, I_bit29, I_bit30, I_bit31 : std_logic_vector (15 downto 0);
begin --FOR INSTANTIATIONS, CREATE 32 bit MUX 16 to 1

    I_bit0 <= ln15(0) & ln14(0) & ln13(0) & ln12(0) &
           ln11(0) & ln10(0) & ln09(0) & ln08(0) &
           ln07(0) & ln06(0) & ln05(0) & ln04(0) &
           ln03(0) & ln02(0) & ln01(0) & ln00(0); 
           
    I_bit1 <= ln15(1) & ln14(1) & ln13(1) & ln12(1) & 
           ln11(1) & ln10(1) & ln09(1) & ln08(1) &
           ln07(1) & ln06(1) & ln05(1) & ln04(1) &
           ln03(1) & ln02(1) & ln01(1) & ln00(1);
    I_bit2 <= ln15(2) & ln14(2) & ln13(2) & ln12(2) &
           ln11(2) & ln10(2) & ln09(2) & ln08(2) &
           ln07(2) & ln06(2) & ln05(2) & ln04(2) &
           ln03(2) & ln02(2) & ln01(2) & ln00(2);
   I_bit3 <= ln15(3) & ln14(3) & ln13(3) & ln12(3) &
           ln11(3) & ln10(3) & ln09(3) & ln08(3) &
           ln07(3) & ln06(3) & ln05(3) & ln04(3) &
           ln03(3) & ln02(3) & ln01(3) & ln00(3);
   I_bit4 <= ln15(4) & ln14(4) & ln13(4) & ln12(4) &
           ln11(4) & ln10(4) & ln09(4) & ln08(4) &
           ln07(4) & ln06(4) & ln05(4) & ln04(4) &
           ln03(4) & ln02(4) & ln01(4) & ln00(4);                      
    I_bit5 <= ln15(5) & ln14(5) & ln13(5) & ln12(5) &
           ln11(5) & ln10(5) & ln09(5) & ln08(5) &
           ln07(5) & ln06(5) & ln05(5) & ln04(5) &
           ln03(5) & ln02(5) & ln01(5) & ln00(5);   
   I_bit6 <= ln15(6) & ln14(6) & ln13(6) & ln12(6) &
           ln11(6) & ln10(6) & ln09(6) & ln08(6) &
           ln07(6) & ln06(6) & ln05(6) & ln04(6) &
           ln03(6) & ln02(6) & ln01(6) & ln00(6);           
   I_bit7 <= ln15(7) & ln14(7) & ln13(7) & ln12(7) &
           ln11(7) & ln10(7) & ln09(7) & ln08(7) &
           ln07(7) & ln06(7) & ln05(7) & ln04(7) &
           ln03(7) & ln02(7) & ln01(7) & ln00(7);           
   I_bit8 <= ln15(8) & ln14(8) & ln13(8) & ln12(8) &
           ln11(8) & ln10(8) & ln09(8) & ln08(8) &
           ln07(8) & ln06(8) & ln05(8) & ln04(8) &
           ln03(8) & ln02(8) & ln01(8) & ln00(8); 
   I_bit9 <= ln15(9) & ln14(9) & ln13(9) & ln12(9) &
           ln11(9) & ln10(9) & ln09(9) & ln08(9) &
           ln07(9) & ln06(9) & ln05(9) & ln04(9) &
           ln03(9) & ln02(9) & ln01(9) & ln00(9);
           
    I_bit10 <= ln15(10) & ln14(10) & ln13(10) & ln12(10) &
           ln11(10) & ln10(10) & ln09(10) & ln08(10) &
           ln07(10) & ln06(10) & ln05(10) & ln04(10) &
           ln03(10) & ln02(10) & ln01(10) & ln00(10);  
                             
   I_bit11 <= ln15(11) & ln14(11) & ln13(11) & ln12(11) &
           ln11(11) & ln10(11) & ln09(11) & ln08(11) &
           ln07(11) & ln06(11) & ln05(11) & ln04(11) &
           ln03(11) & ln02(11) & ln01(11) & ln00(11);
                      
    I_bit12 <= ln15(12) & ln14(12) & ln13(12) & ln12(12) &
           ln11(12) & ln10(12) & ln09(12) & ln08(12) &
           ln07(12) & ln06(12) & ln05(12) & ln04(12) &
           ln03(12) & ln02(12) & ln01(12) & ln00(12); 
                    
    I_bit13 <= ln15(13) & ln14(13) & ln13(13) & ln12(13) &
           ln11(13) & ln10(13) & ln09(13) & ln08(13) &
           ln07(13) & ln06(13) & ln05(13) & ln04(13) &
           ln03(13) & ln02(13) & ln01(13) & ln00(13); 
                    
    I_bit14 <= ln15(14) & ln14(14) & ln13(14) & ln12(14) &
           ln11(14) & ln10(14) & ln09(14) & ln08(14) &
           ln07(14) & ln06(14) & ln05(14) & ln04(14) &
           ln03(14) & ln02(14) & ln01(14) & ln00(14);
           
   I_bit15 <= ln15(15) & ln14(15) & ln13(15) & ln12(15) &
           ln11(15) & ln10(15) & ln09(15) & ln08(15) &
           ln07(15) & ln06(15) & ln05(15) & ln04(15) &
           ln03(15) & ln02(15) & ln01(15) & ln00(15);  
           
   I_bit16 <= ln15(16) & ln14(16) & ln13(16) & ln12(16) &
           ln11(16) & ln10(16) & ln09(16) & ln08(16) &
           ln07(16) & ln06(16) & ln05(16) & ln04(16) &
           ln03(16) & ln02(16) & ln01(16) & ln00(16);
           
   I_bit17 <= ln15(17) & ln14(17) & ln13(17) & ln12(17) &
           ln11(17) & ln10(17) & ln09(17) & ln08(17) &
           ln07(17) & ln06(17) & ln05(17) & ln04(17) &
           ln03(17) & ln02(17) & ln01(17) & ln00(17);

   I_bit18 <= ln15(18) & ln14(18) & ln13(18) & ln12(18) &
           ln11(18) & ln10(18) & ln09(18) & ln08(18) &
           ln07(18) & ln06(18) & ln05(18) & ln04(18) &
           ln03(18) & ln02(18) & ln01(18) & ln00(18);
                     
   I_bit19 <= ln15(19) & ln14(19) & ln13(19) & ln12(19) &
           ln11(19) & ln10(19) & ln09(19) & ln08(19) &
           ln07(19) & ln06(19) & ln05(19) & ln04(19) &
           ln03(19) & ln02(19) & ln01(19) & ln00(19);
       
             
            
   I_bit20 <= ln15(20) & ln14(20) & ln13(20) & ln12(20) &
           ln11(20) & ln10(20) & ln09(20) & ln08(20) &
           ln07(20) & ln06(20) & ln05(20) & ln04(20) &
           ln03(20) & ln02(20) & ln01(20) & ln00(20);

I_bit21 <= ln15(21) & ln14(21) & ln13(21) & ln12(21) &
           ln11(21) & ln10(21) & ln09(21) & ln08(21) &
           ln07(21) & ln06(21) & ln05(21) & ln04(21) &
           ln03(21) & ln02(21) & ln01(21) & ln00(21);

I_bit22 <= ln15(22) & ln14(22) & ln13(22) & ln12(22) &
           ln11(22) & ln10(22) & ln09(22) & ln08(22) &
           ln07(22) & ln06(22) & ln05(22) & ln04(22) &
           ln03(22) & ln02(22) & ln01(22) & ln00(22);

I_bit23 <= ln15(23) & ln14(23) & ln13(23) & ln12(23) &
           ln11(23) & ln10(23) & ln09(23) & ln08(23) &
           ln07(23) & ln06(23) & ln05(23) & ln04(23) &
           ln03(23) & ln02(23) & ln01(23) & ln00(23);

I_bit24 <= ln15(24) & ln14(24) & ln13(24) & ln12(24) &
           ln11(24) & ln10(24) & ln09(24) & ln08(24) &
           ln07(24) & ln06(24) & ln05(24) & ln04(24) &
           ln03(24) & ln02(24) & ln01(24) & ln00(24);

I_bit25 <= ln15(25) & ln14(25) & ln13(25) & ln12(25) &
           ln11(25) & ln10(25) & ln09(25) & ln08(25) &
           ln07(25) & ln06(25) & ln05(25) & ln04(25) &
           ln03(25) & ln02(25) & ln01(25) & ln00(25);

I_bit26 <= ln15(26) & ln14(26) & ln13(26) & ln12(26) &
           ln11(26) & ln10(26) & ln09(26) & ln08(26) &
           ln07(26) & ln06(26) & ln05(26) & ln04(26) &
           ln03(26) & ln02(26) & ln01(26) & ln00(26);

I_bit27 <= ln15(27) & ln14(27) & ln13(27) & ln12(27) &
           ln11(27) & ln10(27) & ln09(27) & ln08(27) &
           ln07(27) & ln06(27) & ln05(27) & ln04(27) &
           ln03(27) & ln02(27) & ln01(27) & ln00(27);

I_bit28 <= ln15(28) & ln14(28) & ln13(28) & ln12(28) &
           ln11(28) & ln10(28) & ln09(28) & ln08(28) &
           ln07(28) & ln06(28) & ln05(28) & ln04(28) &
           ln03(28) & ln02(28) & ln01(28) & ln00(28);

I_bit29 <= ln15(29) & ln14(29) & ln13(29) & ln12(29) &
           ln11(29) & ln10(29) & ln09(29) & ln08(29) &
           ln07(29) & ln06(29) & ln05(29) & ln04(29) &
           ln03(29) & ln02(29) & ln01(29) & ln00(29);

I_bit30 <= ln15(30) & ln14(30) & ln13(30) & ln12(30) &
           ln11(30) & ln10(30) & ln09(30) & ln08(30) &
           ln07(30) & ln06(30) & ln05(30) & ln04(30) &
           ln03(30) & ln02(30) & ln01(30) & ln00(30);

I_bit31 <= ln15(31) & ln14(31) & ln13(31) & ln12(31) &
           ln11(31) & ln10(31) & ln09(31) & ln08(31) &
           ln07(31) & ln06(31) & ln05(31) & ln04(31) &
           ln03(31) & ln02(31) & ln01(31) & ln00(31);
        
     --istantiation bit 0 to 31
     bit00 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit0,
        S => A,
        Y => Z(0)
    );
    bit01 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit1,
        S => A,
        Y => Z(1)
    );
    bit02 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit2,
        S => A,
        Y => Z(2)
    );
    bit03 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit3,
        S => A,
        Y => Z(3)
    );
    bit04 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit4,
        S => A,
        Y => Z(4)
    );
    bit05 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit5,
        S => A,
        Y => Z(5)
    );
    bit06 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit6,
        S => A,
        Y => Z(6)
    );
    bit07 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit7,
        S => A,
        Y => Z(7)
    );
    bit08 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit8,
        S => A,
        Y => Z(8)
    );
    bit09 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit9,
        S => A,
        Y => Z(9)
    );
    bit10 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit10,
        S => A,
        Y => Z(10)
    );
    bit11 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit11,
        S => A,
        Y => Z(11)
    );
    bit12 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit12,
        S => A,
        Y => Z(12)
    );
    bit13 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit13,
        S => A,
        Y => Z(13)
    );
    bit14 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit14,
        S => A,
        Y => Z(14)
    );
    bit15 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit15,
        S => A,
        Y => Z(15)
    );
    bit16 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit16,
        S => A,
        Y => Z(16)
    );
    bit17 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit17,
        S => A,
        Y => Z(17)
    );
    bit18 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit18,
        S => A,
        Y => Z(18)
    );
    bit19 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit19,
        S => A,
        Y => Z(19)
    );
    bit20 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit20,
        S => A,
        Y => Z(20)
    );
    bit21 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit21,
        S => A,
        Y => Z(21)
    );
    bit22 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit22,
        S => A,
        Y => Z(22)
    );
    bit23 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit23,
        S => A,
        Y => Z(23)
    );
    bit24 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit24,
        S => A,
        Y => Z(24)
    );
    bit25 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit25,
        S => A,
        Y => Z(25)
    );
    bit26 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit26,
        S => A,
        Y => Z(26)
    );
    bit27 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit27,
        S => A,
        Y => Z(27)
    );
    bit28 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit28,
        S => A,
        Y => Z(28)
    );
    bit29 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit29,
        S => A,
        Y => Z(29)
    );
    bit30 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit30,
        S => A,
        Y => Z(30)
    );
    bit31 : RF_Mux16_1Bit_23357548 PORT MAP(
        I => I_bit31,
        S => A,
        Y => Z(31)
    );
    
end Behavioral;
