----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2022 07:04:34 PM
-- Design Name: 
-- Module Name: FULL_ADDER_TB - Behavioral
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

entity FULL_ADDER_TB is
--  Port ( );
end FULL_ADDER_TB;

architecture Behavioral of FULL_ADDER_TB is

component  Full_adder_4bit is
  Port (A, B : IN std_logic_vector(3 downto 0);
  C_in : IN std_logic;
  S : OUT std_logic_vector(3 downto 0);
  C_out : OUT std_logic);
end component;

signal S_tb : std_logic_vector(4 downto 0);
signal a_tb, b_tb : std_logic_vector(3 downto 0);
signal ci : std_logic;

begin

UUT : Full_adder_4bit port map( a => a_tb, b =>b_tb, C_in => ci,
S => s_tb(3 downto 0), C_out => s_tb(4));

process
variable test: unsigned(8 downto 0);
variable sum: unsigned(4 downto 0);

begin

for i in 0 to 511 loop
test := to_unsigned(i,9);
A_tb <= std_logic_vector(test(3 downto 0));
B_tb <= std_logic_vector(test(7 downto 4));
ci <= test(8);
wait for 2 ns;
sum := to_unsigned(i mod 16 + (i/16) mod 16 + i/256, 5);
assert S_tb( 3 downto 0) = std_logic_vector(sum(3 downto 0)) report "bad sum";
assert s_tb(4) = sum(4) report "bad carry-out";
end loop;
wait;
end process;
end Behavioral;
