----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2022 05:24:05 PM
-- Design Name: 
-- Module Name: mux - Behavioral
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

entity mux is
  Port (s1, s2, s3, s4, s5: IN std_logic_vector(8 downto 0); 
        op : IN std_logic_vector(2 downto 0); 
        output : OUT std_logic_vector(8 downto 0));
end mux;

architecture Behavioral of mux is

type in_vect_arr is array(1 to 5) of std_logic_vector(2 downto 0);

CONSTANT add : std_logic_vector := "000";
CONSTANT add_nc : std_logic_vector  := "001";
CONSTANT xor_8 : std_logic_vector := "010";
CONSTANT L : std_logic_vector := "011";
CONSTANT H : std_logic_vector := "100";
begin

output<= S1 when op = add else
    S2 when op = add_nc else
    S3 when op = xor_8 else
    S4 when op = L else
    S5 when op = H else
    "X";




end Behavioral;
