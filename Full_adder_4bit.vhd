----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2022 06:38:12 PM
-- Design Name: 
-- Module Name: Full_adder_4bit - Behavioral
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

entity Full_adder_4bit is
  Port (A, B : IN std_logic_vector(3 downto 0);
  C_in : IN std_logic;
  S : OUT std_logic_vector(3 downto 0);
  C_out : OUT std_logic);
end Full_adder_4bit;

architecture Behavioral of Full_adder_4bit is

component  Full_adder is
  Port (A, B, C_in : IN std_logic;
  S, C :  OUT std_logic);
  
end component;

signal Carry :  std_logic_vector(2 downto 0);

begin
U0 : Full_adder port map(A => A(0), B => b(0), C_in => C_in, S => S(0), C => Carry(0) );
U1 : Full_adder port map(A =>A(1), B=>b(1), C_in => Carry(0), S => S(1), C => Carry(1));
U2 : Full_adder port map(A =>A(2), B=>b(2), C_in => Carry(1), S => S(2), C => Carry(2));
U3 : Full_adder port map(A =>A(3), B=>b(3), C_in => Carry(2), S => S(3), C => C_out);


end Behavioral;
