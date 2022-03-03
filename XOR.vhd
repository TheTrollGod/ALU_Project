----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2022 07:37:55 PM
-- Design Name: 
-- Module Name: XOR - Behavioral
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

entity XOR_8 is
  Port (a,b : IN std_logic_vector(7 downto 0);
  s : OUT std_logic_vector(8 downto 0);
  c_in : IN std_logic);
end XOR_8;

architecture Behavioral of XOR_8 is

component XOR_Base is
  Port (a,b : IN std_logic;
   s: OUT std_logic );
end component;

signal alpha: std_logic_vector(7 downto 0);

begin
U1: Xor_base port map(a => a(0), b => b(0), s=> alpha(0));
U2: Xor_base port map(a => a(1), b => b(1), s=> alpha(1));
U3: Xor_base port map(a => a(2), b => b(2), s=> alpha(2));
U4: Xor_base port map(a => a(3), b => b(3), s=> alpha(3));
U5: Xor_base port map(a => a(4), b => b(4), s=> alpha(4));
U6: Xor_base port map(a => a(5), b => b(5), s=> alpha(5));
U7: Xor_base port map(a => a(6), b => b(6), s=> alpha(6));
U8: Xor_base port map(a => a(7), b => b(7), s=> alpha(7));

s <= alpha&c_in;


end Behavioral;
