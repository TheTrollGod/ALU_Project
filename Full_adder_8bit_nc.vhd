----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2022 06:49:51 PM
-- Design Name: 
-- Module Name: Full_adder_8bit - Behavioral
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

entity bit8_nc is
  Port (a,b : IN std_logic_vector( 7 downto 0);
  s : OUT std_logic_vector(8 downto 0);
  c_in : IN std_logic);
end bit8_nc;

architecture Behavioral of bit8_nc is

component Full_adder_4bit is
  Port (A, B : IN std_logic_vector(3 downto 0);
  C_in : IN std_logic;
  S : OUT std_logic_vector(3 downto 0);
  C_out : OUT std_logic);
end component;

signal Carry :std_logic;
Signal CARRY0 : std_logic ;

begin
CARRY0 <= '0';
U1: Full_adder_4bit port map(a(3 downto 0) => a(7 downto 4), b(3 downto 0) => b(7 downto 4),c_in => '0', S(3 downto 0) => s(7 downto 4), c_out => Carry);
U2: Full_adder_4bit port map(a(3 downto 0) => a(3 downto 0), b(3 downto 0) => b(3 downto 0),c_in => carry, S(3 downto 0) =>s(3 downto 0), c_out => s(8));




end Behavioral;
