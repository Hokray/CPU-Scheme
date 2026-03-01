----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2025 05:50:22 PM
-- Design Name: 
-- Module Name: RF_DestReg_Decoder_23357548 - Behavioral
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

 

entity RF_DestReg_Decoder_23357548 is  -- 4 to 16 decoder
    Port (
        A : in  STD_LOGIC_VECTOR(3 downto 0);  
        Q00, Q01, Q02, Q03, Q04, Q05, Q06, Q07,
        Q08, Q09, Q10, Q11, Q12, Q13, Q14, Q15 : out STD_LOGIC
    );
end RF_DestReg_Decoder_23357548;


architecture Behavioral of RF_DestReg_Decoder_23357548 is
    signal x, y, z, w : std_logic := '0';
    signal x_not, y_not, z_not, w_not : std_logic := '0';
    signal S0, S1, S2, S3 : std_logic := '0';

    -- Propagation Delay according to StudentID
    constant AND_gate_delay  : Time := 9 ns;
    constant NAND_gate_delay : Time := 5 ns;
    constant OR_gate_delay   : Time := 6 ns;
    constant NOR_gate_delay  : Time := 8 ns;
    constant XOR_gate_delay  : Time := 6 ns;
    constant XNOR_gate_delay : Time := 4 ns;
    constant NOT_gate_delay  : Time := 4 ns;

begin 
  
    x <= A(3);
    y <= A(2);
    z <= A(1);
    w <= A(0);

  
    x_not <= not A(3) after NOT_gate_delay;
    y_not <= not A(2) after NOT_gate_delay;
    z_not <= not A(1) after NOT_gate_delay;
    w_not <= not A(0) after NOT_gate_delay;

   
    S0 <= x_not and y_not and z_not after AND_gate_delay;
    Q00 <= S0 and w_not after AND_gate_delay;
    Q01 <= S0 and A(0) after AND_gate_delay;

    S1 <= x_not and y_not after AND_gate_delay;
    Q02 <= S1 and A(1) and w_not after AND_gate_delay;
    Q03 <= S1 and A(1) and A(0) after AND_gate_delay;

    S2 <= y and z_not and x_not after AND_gate_delay;
    Q04 <= S2 and w_not after AND_gate_delay;
    Q05 <= S2 and A(0) after AND_gate_delay;

    S3 <= y and z and x_not after AND_gate_delay;
    Q06 <= S3 and w_not after AND_gate_delay;
    Q07 <= S3 and A(0) after AND_gate_delay;

    Q08  <= A(3) and y_not and z_not and w_not after AND_gate_delay;
    Q09  <= A(3) and y_not and z_not and A(0) after AND_gate_delay;
    Q10 <= A(3) and y_not and z and w_not after AND_gate_delay;
    Q11 <= A(3) and y_not and z and A(0) after AND_gate_delay;
    Q12 <= A(3) and y and z_not and w_not after AND_gate_delay;
    Q13 <= A(3) and y and z_not and A(0) after AND_gate_delay;
    Q14 <= A(3) and y and z and w_not after AND_gate_delay;
    Q15 <= A(3) and y and z and A(0) after AND_gate_delay;

end Behavioral;

