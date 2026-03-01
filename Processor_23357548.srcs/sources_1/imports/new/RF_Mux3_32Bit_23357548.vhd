----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/17/2025 05:01:24 PM
-- Design Name: 
-- Module Name: RF_Mux3_32Bit_23357548 - Behavioral
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


entity RF_Mux3_32Bit_23357548 is
 Port (
        A : in STD_LOGIC_VECTOR (1 downto 0);
        ln00 : in STD_LOGIC_VECTOR (31 downto 0);
        ln01 : in STD_LOGIC_VECTOR (31 downto 0);
        ln02 : in STD_LOGIC_VECTOR (31 downto 0);
        Z : out STD_LOGIC_VECTOR (31 downto 0)   
        );
end RF_Mux3_32Bit_23357548;

architecture Behavioral of RF_Mux3_32Bit_23357548 is

    COMPONENT RF_Mux3_1Bit_23357548
    Port(
        I  : in  STD_LOGIC_VECTOR(2 downto 0);
        S  : in  STD_LOGIC_VECTOR(1 downto 0);
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
   
   
   
     signal I_bit0 : STD_LOGIC_VECTOR(2 downto 0);
     signal I_bit1 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit2 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit3 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit4 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit5 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit6 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit7 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit8 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit9 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit10 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit11 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit12 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit13 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit14 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit15 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit16 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit17 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit18 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit19 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit20 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit21 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit22 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit23 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit24 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit25 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit26 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit27 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit28 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit29 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit30 : STD_LOGIC_VECTOR(2 downto 0);
   signal I_bit31 : STD_LOGIC_VECTOR(2 downto 0);


begin --MAKE THE INSTANTIATIONS HERE
        
-- Bit 0
I_bit0(2) <= ln02(0); 
I_bit0(1) <= ln01(0);
I_bit0(0) <= ln00(0);

-- Bit 1
I_bit1(2) <= ln02(1);
I_bit1(1) <= ln01(1);
I_bit1(0) <= ln00(1);

-- Bit 2
I_bit2(2) <= ln02(2);
I_bit2(1) <= ln01(2);
I_bit2(0) <= ln00(2);

-- Bit 3
I_bit3(2) <= ln02(3);
I_bit3(1) <= ln01(3);
I_bit3(0) <= ln00(3);

-- Bit 4
I_bit4(2) <= ln02(4);
I_bit4(1) <= ln01(4);
I_bit4(0) <= ln00(4);

-- Bit 5
I_bit5(2) <= ln02(5);
I_bit5(1) <= ln01(5);
I_bit5(0) <= ln00(5);

-- Bit 6
I_bit6(2) <= ln02(6);
I_bit6(1) <= ln01(6);
I_bit6(0) <= ln00(6);

-- Bit 7
I_bit7(2) <= ln02(7);
I_bit7(1) <= ln01(7);
I_bit7(0) <= ln00(7);

-- Bit 8
I_bit8(2) <= ln02(8);
I_bit8(1) <= ln01(8);
I_bit8(0) <= ln00(8);

-- Bit 9
I_bit9(2) <= ln02(9);
I_bit9(1) <= ln01(9);
I_bit9(0) <= ln00(9);

-- Bit 10
I_bit10(2) <= ln02(10);
I_bit10(1) <= ln01(10);
I_bit10(0) <= ln00(10);

-- Bit 11
I_bit11(2) <= ln02(11);
I_bit11(1) <= ln01(11);
I_bit11(0) <= ln00(11);

-- Bit 12
I_bit12(2) <= ln02(12);
I_bit12(1) <= ln01(12);
I_bit12(0) <= ln00(12);

-- Bit 13
I_bit13(2) <= ln02(13);
I_bit13(1) <= ln01(13);
I_bit13(0) <= ln00(13);

-- Bit 14
I_bit14(2) <= ln02(14);
I_bit14(1) <= ln01(14);
I_bit14(0) <= ln00(14);

-- Bit 15
I_bit15(2) <= ln02(15);
I_bit15(1) <= ln01(15);
I_bit15(0) <= ln00(15);

-- Bit 16
I_bit16(2) <= ln02(16);
I_bit16(1) <= ln01(16);
I_bit16(0) <= ln00(16);

-- Bit 17
I_bit17(2) <= ln02(17);
I_bit17(1) <= ln01(17);
I_bit17(0) <= ln00(17);

-- Bit 18
I_bit18(2) <= ln02(18);
I_bit18(1) <= ln01(18);
I_bit18(0) <= ln00(18);

-- Bit 19
I_bit19(2) <= ln02(19);
I_bit19(1) <= ln01(19);
I_bit19(0) <= ln00(19);

-- Bit 20
I_bit20(2) <= ln02(20);
I_bit20(1) <= ln01(20);
I_bit20(0) <= ln00(20);

-- Bit 21
I_bit21(2) <= ln02(21);
I_bit21(1) <= ln01(21);
I_bit21(0) <= ln00(21);

-- Bit 22
I_bit22(2) <= ln02(22);
I_bit22(1) <= ln01(22);
I_bit22(0) <= ln00(22);

-- Bit 23
I_bit23(2) <= ln02(23);
I_bit23(1) <= ln01(23);
I_bit23(0) <= ln00(23);

-- Bit 24
I_bit24(2) <= ln02(24);
I_bit24(1) <= ln01(24);
I_bit24(0) <= ln00(24);

-- Bit 25
I_bit25(2) <= ln02(25);
I_bit25(1) <= ln01(25);
I_bit25(0) <= ln00(25);

-- Bit 26
I_bit26(2) <= ln02(26);
I_bit26(1) <= ln01(26);
I_bit26(0) <= ln00(26);

-- Bit 27
I_bit27(2) <= ln02(27);
I_bit27(1) <= ln01(27);
I_bit27(0) <= ln00(27);

-- Bit 28
I_bit28(2) <= ln02(28);
I_bit28(1) <= ln01(28);
I_bit28(0) <= ln00(28);

-- Bit 29
I_bit29(2) <= ln02(29);
I_bit29(1) <= ln01(29);
I_bit29(0) <= ln00(29);

-- Bit 30
I_bit30(2) <= ln02(30);
I_bit30(1) <= ln01(30);
I_bit30(0) <= ln00(30);

-- Bit 31
I_bit31(2) <= ln02(31);
I_bit31(1) <= ln01(31);
I_bit31(0) <= ln00(31);

    bit00 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit0,
        S => A,
        Y => Z(0)
    );
    bit01 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit1,
        S => A,
        Y => Z(1)
    );
    bit02 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit2,
        S => A,
        Y => Z(2)
    );
    bit03 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit3,
        S => A,
        Y => Z(3)
    );
    bit04 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit4,
        S => A,
        Y => Z(4)
    );
    bit05 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit5,
        S => A,
        Y => Z(5)
    );
    bit06 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit6,
        S => A,
        Y => Z(6)
    );
    bit07 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit7,
        S => A,
        Y => Z(7)
    );
    bit08 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit8,
        S => A,
        Y => Z(8)
    );
    bit09 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit9,
        S => A,
        Y => Z(9)
    );
    bit10 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit10,
        S => A,
        Y => Z(10)
    );
    bit11 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit11,
        S => A,
        Y => Z(11)
    );
    bit12 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit12,
        S => A,
        Y => Z(12)
    );
    bit13 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit13,
        S => A,
        Y => Z(13)
    );
    bit14 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit14,
        S => A,
        Y => Z(14)
    );
    bit15 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit15,
        S => A,
        Y => Z(15)
    );
    bit16 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit16,
        S => A,
        Y => Z(16)
    );
    bit17 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit17,
        S => A,
        Y => Z(17)
    );
    bit18 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit18,
        S => A,
        Y => Z(18)
    );
    bit19 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit19,
        S => A,
        Y => Z(19)
    );
    bit20 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit20,
        S => A,
        Y => Z(20)
    );
    bit21 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit21,
        S => A,
        Y => Z(21)
    );
    bit22 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit22,
        S => A,
        Y => Z(22)
    );
    bit23 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit23,
        S => A,
        Y => Z(23)
    );
    bit24 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit24,
        S => A,
        Y => Z(24)
    );
    bit25 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit25,
        S => A,
        Y => Z(25)
    );
    bit26 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit26,
        S => A,
        Y => Z(26)
    );
    bit27 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit27,
        S => A,
        Y => Z(27)
    );
    bit28 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit28,
        S => A,
        Y => Z(28)
    );
    bit29 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit29,
        S => A,
        Y => Z(29)
    );
    bit30 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit30,
        S => A,
        Y => Z(30)
    );
    bit31 : RF_Mux3_1Bit_23357548 PORT MAP(
        I => I_bit31,
        S => A,
        Y => Z(31)
    );

end Behavioral; 
