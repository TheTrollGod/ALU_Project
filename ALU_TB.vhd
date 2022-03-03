----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2022 07:05:19 PM
-- Design Name: 
-- Module Name: ALU_TB - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_TB is
  Port (a_tb, b_tb : IN std_logic_vector( 7 downto 0);
        c_tb : IN std_logic;
        op_tb : IN std_logic_vector(2 downto 0);
        S_tb : OUT std_logic_vector(8 downto 0));
end ALU_TB;

architecture Behavioral of ALU_TB is

component ALU is
  Port (A,B : IN std_logic_vector(7 downto 0);
        C : IN std_logic;
        S: OUT std_logic_vector(8 downto 0);
        op : IN std_logic_vector(2 downto 0));
end component;


type op is array(0 to 4) of std_logic_vector(2 downto 0);
type arr is array(0 to 3) of std_logic_vector(7 downto 0);
type cc is array(0 to 3) of std_logic;
type sol is array(0 to 19) of std_logic_vector(8 downto 0);
CONSTANT V_A : arr := (x"00",x"7f",x"9a",x"6b");
CONSTANT V_B : arr := (x"00",x"81",x"65",x"8F");
CONSTANT V_C : cc := ('1', '0', '1', '1');

CONSTANT add : std_logic_vector := "000";
CONSTANT add_nc : std_logic_vector  := "001";
CONSTANT xor_8 : std_logic_vector := "010";
CONSTANT L : std_logic_vector := "011";
CONSTANT H : std_logic_vector := "100";

CONSTANT V_op : op := (add,add_nc,xor_8,L,H);

--Expected soutions
CONSTANT Solution : arr := ()

begin
process
for ii 0 to 4 loop
    op_tb <= v_op(ii);
    for jj 0 to 3 loop
        a_tb <= V_A(jj);
        b_tb <= V_B(jj);
        c_tb <= V_C(jj);
        
     end loop;
end loop;
wait;
end proccess
end Behavioral;
