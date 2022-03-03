----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2022 06:13:44 PM
-- Design Name: 
-- Module Name: Full_adder - Behavioral
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

entity Full_adder is
  Port (A, B, C_in : IN std_logic;
  S, C :  OUT std_logic);
end Full_adder;

architecture Behavioral of Full_adder is

begin
--S is S0 internally
S <= (((not(a)and not(b)) and c_in) or ((not(a) and b) and not(c_in)) or (a and b and c_in) or ((a and not(b)) and not(c_in)));
--C is s1 interally
C <= ((B and C_in) or (A and B) or (A and C_in));


end Behavioral;
