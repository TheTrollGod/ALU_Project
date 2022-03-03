----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2022 05:11:46 PM
-- Design Name: 
-- Module Name: hold - Behavioral
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

entity hold is
  Port (a : IN std_logic_vector(7 downto 0); c : IN std_logic;  s : OUT std_logic_vector(8 downto 0));
end hold;

architecture Behavioral of hold is

signal alpha : std_logic_vector(7 downto 0);
begin

alpha <= a;
s <= c&alpha;

end Behavioral;
