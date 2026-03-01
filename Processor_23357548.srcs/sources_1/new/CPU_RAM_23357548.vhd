----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hakan Okray
-- 
-- Create Date: 11/18/2025 12:09:19 PM
-- Design Name: 
-- Module Name: CPU_RAM_23357548 - Behavioral
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


library IEEE ;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.NUMERIC_STD.ALL ;

entity CPU_RAM_23357548 is
Port ( Clock : in STD_LOGIC ;
       Address : in STD_LOGIC_VECTOR (31 downto 0) ;
       DataIn : in STD_LOGIC_VECTOR (31 downto 0) ;
       WriteEnable : in STD_LOGIC ;
       DataOut : out STD_LOGIC_VECTOR (31 downto 0) ) ;
end CPU_RAM_23357548;

architecture Behavioral of CPU_RAM_23357548 is

 -- we use the least significant 7 bit of the address
type RAM_array is array (0 to 127) of STD_LOGIC_VECTOR (31 downto 0);
signal RAM : RAM_array :=(
  --  X"40000000" , -- 00 --CHANGE THIS FOR THE TEST FILES!!! (FOR TEST 2)
 --   X"40000000" , -- 01
  --  X"C0000000" , -- 02
  --  X"80000000" , -- 03
    
    --FORMAT IN RAM
    --OPCODE   DR   SA   SB   (DESTINATION REG)  (SOURCE A)  (SOURCE B)
    
  --  X"00000 000" , -- 00 --CHANGE THIS FOR THE TEST FILES!!! 
  --  X"00000001" , -- 01
 --   X"00000002" , -- 01
  --  X"00000003" , -- 01
    

    
--    X"00004" & X"3" & X"2" & X"1", -- 04 --
--   X"00005" & X"1" & X"3" & X"2", -- 05
--    X"00006" & X"2" & X"1" & X"3", -- 06
--    X"00007" & X"0" & X"2" & X"1", -- 07
--    X"00008" & X"F" & X"0" & X"B", -- 08 --FOR TEST 3 START AT MEMORY ADDRESS 4
    
    
--ACTUAL DATA, not taking it like instructions
 X"0164686C", --00     this will contain 23357548
 X"01646876", --01     this will contain 23357558 (+ 10)
 
 
--INSTRUCTIONS(HAVING OPCODE DR SA SB) 
--THIS WILL BE THE SEQUENCE OF OPERATIONS: START IN ROM, FETCH OPERATION(ROW FROM RAM) AND THEN DECODE
--Opcode    DR     SA     SB
 X"00002" & X"8" & X"8" & X"0", --02 
 X"00003" & X"8" & X"8" & X"0", --03 LOAD 016A0F34
 X"00004" & X"9" & X"9" & X"1", -- 04 
 X"00005" & X"9" & X"9" & X"0", -- 05 LOAD 016A0F35
 
 X"00006" & X"A" & X"8" & X"9", -- 06
 X"00007" & X"A" & X"8" & X"9", -- 07
 X"00008" & X"A" & X"8" & X"9", -- 08
 X"00009" & X"A" & X"8" & X"9", -- 09 
 X"0000A" & X"A" & X"8" & X"9", -- 0A
 X"0000B" & X"0" & X"0" & X"9", -- 0B --STORE
 X"0000C" & X"A" & X"8" & X"9", -- 0C
 X"0000D" & X"A" & X"8" & X"9", -- 0D
 X"0000E" & X"A" & X"8" & X"9", -- 0E
 X"0000F" & X"A" & X"8" & X"9", -- 0F
 X"00010" & X"A" & X"8" & X"9", -- 10
 X"00011" & X"A" & X"8" & X"9", -- 11     
 X"00012" & X"A" & X"8" & X"9", -- 12 
 X"00013" & X"A" & X"8" & X"9", -- 13 
 X"00014" & X"A" & X"8" & X"9", -- 14 
 X"00015" & X"A" & X"8" & X"9", -- 15 
 X"00016" & X"A" & X"8" & X"9", -- 16 

    X"00000017", -- 1 7
    X"00000018", -- 1 8
    X"00000019", -- 1 9
    X"0000001A", -- 1 A
    X"0000001B", -- 1 B
    X"0000001C", -- 1 C
    X"0000001D", -- 1 D
    X"0000001E", -- 1 E
    X"0000001F", -- 1 F
    X"00000020", -- 2 0
    X"00000021", -- 2 1
    X"00000022", -- 2 2
    X"00000023", -- 2 3
    X"00000024", -- 2 4
    X"00000025", -- 2 5
    X"00000026", -- 2 6
    X"00000027", -- 2 7
    X"00000028", -- 2 8
    X"00000029", -- 2 9
    X"0000002A", -- 2 A
    X"0000002B", -- 2 B
    X"0000002C", -- 2 C
    X"0000002D", -- 2 D
    X"0000002E", -- 2 E
    X"0000002F", -- 2 F
    X"00000030", -- 3 0
    X"00000031", -- 3 1
    X"00000032", -- 3 2
    X"00000033", -- 3 3
    X"00000034", -- 3 4
    X"00000035", -- 3 5
    X"00000036", -- 3 6
    X"00000037", -- 3 7
    X"00000038", -- 3 8
    X"00000039", -- 3 9
    X"0000003A", -- 3 A
    X"0000003B", -- 3 B
    X"0000003C", -- 3 C
    X"0000003D", -- 3 D
    X"0000003E", -- 3 E
    X"0000003F", -- 3 F
    X"00000040", -- 4 0
    X"00000041", -- 4 1
    X"00000042", -- 4 2
    X"00000043", -- 4 3
    X"00000044", -- 4 4
    X"00000045", -- 4 5
    X"00000046", -- 4 6
    X"00000047", -- 4 7
    X"00000048", -- 4 8
    X"00000049", -- 4 9
    X"0000004A", -- 4 A
    X"0000004B", -- 4 B
    X"0000004C", -- 4 C
    X"0000004D", -- 4 D
    X"0000004E", -- 4 E
    X"0000004F", -- 4 F
    X"00000050", -- 5 0
    X"00000051", -- 5 1
    X"00000052", -- 5 2
    X"00000053", -- 5 3
    X"00000054", -- 5 4
    X"00000055", -- 5 5
    X"00000056", -- 5 6
    X"00000057", -- 5 7
    X"00000058", -- 5 8
    X"00000059", -- 5 9
    X"0000005A", -- 5 A
    X"0000005B", -- 5 B
    X"0000005C", -- 5 C
    X"0000005D", -- 5 D
    X"0000005E", -- 5 E
    X"0000005F", -- 5 F
    X"00000060", -- 6 0
    X"00000061", -- 6 1
    X"00000062", -- 6 2
    X"00000063", -- 6 3
    X"00000064", -- 6 4
    X"00000065", -- 6 5
    X"00000066", -- 6 6
    X"00000067", -- 6 7
    X"00000068", -- 6 8
    X"00000069", -- 6 9
    X"0000006A", -- 6 A
    X"0000006B", -- 6 B
    X"0000006C", -- 6 C
    X"0000006D", -- 6 D
    X"0000006E", -- 6 E
    X"0000006F", -- 6 F
    X"00000070", -- 7 0
    X"00000071", -- 7 1
    X"00000072", -- 7 2
    X"00000073", -- 7 3
    X"00000074", -- 7 4
    X"00000075", -- 7 5
    X"00000076", -- 7 6
    X"00000077", -- 7 7
    X"00000078", -- 7 8
    X"00000079", -- 7 9
    X"0000007A", -- 7 A
    X"0000007B", -- 7 B
    X"0000007C", -- 7 C
    X"0000007D", -- 7 D
    X"0000007E", -- 7 E
    X"0000007F"  -- 7 F
    ) ;
begin
process (Clock)
begin
    if Clock'event and Clock = '1' then
        if WriteEnable = '1' then
           RAM ( to_integer ( unsigned ( Address (6 downto 0) ) ) ) <= DataIn after 2 ns ;
            end if ;
        end if ;
end process ;

DataOut <= RAM ( to_integer ( unsigned ( Address (6 downto 0) ) ) )
    after 2 ns ;

end Behavioral ;
