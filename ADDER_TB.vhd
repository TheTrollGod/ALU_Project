----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/16/2022 06:50:57 PM
-- Design Name: 
-- Module Name: ADDER_TB - Behavioral
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

entity ADDER_TB is
--  Port ( );
end ADDER_TB;

architecture Behavioral of ADDER_TB is


component Full_adder is
  Port (A, B, C_in : IN std_logic;
  S, C :  OUT std_logic);
end component;

signal a_tb : std_logic;
signal b_tb : std_logic;
signal c_in_tb : std_logic;
signal s_tb : std_logic;
signal c_tb : std_logic;


begin
UUT : Full_adder port map(a => a_tb, b => b_tb, c_in => c_in_tb, s => s_tb, c => c_tb);

process

begin
a_tb <= '0';
b_tb <= '0';
c_in_tb <= '0';
wait for 1ns;
a_tb <= '1';
b_tb <= '0';
c_in_tb <= '0';
wait for 1ns;
a_tb <= '0';
b_tb <= '1';
c_in_tb <= '0';
wait for 1ns;
a_tb <= '1';
b_tb <= '1';
c_in_tb <= '0';
wait for 1ns;
a_tb <= '0';
b_tb <= '0';
c_in_tb <= '1';
wait for 1ns;
a_tb <= '1';
b_tb <= '0';
c_in_tb <= '1';
wait for 1ns;
a_tb <= '0';
b_tb <= '1';
c_in_tb <= '1';
wait for 1ns;
a_tb <= '1';
b_tb <= '1';
c_in_tb <= '1';
wait;



end process;
end Behavioral;
