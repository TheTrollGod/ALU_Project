----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2022 05:44:41 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
  Port (A,B : IN std_logic_vector(7 downto 0);
        C : IN std_logic;
        S: OUT std_logic_vector(8 downto 0);
        op : IN std_logic_vector(2 downto 0));
end ALU;

architecture Behavioral of ALU is

component XOR_8 is
        Port (a,b : IN std_logic_vector(7 downto 0);
        s : OUT std_logic_vector(8 downto 0);
        c_in : IN std_logic);
end component;

component Full_adder_8bit is
        Port (a,b : IN std_logic_vector( 7 downto 0);
        s : OUT std_logic_vector(8 downto 0);
        c_in : IN std_logic);
end component;

component bit8_nc is
        Port (a,b : IN std_logic_vector( 7 downto 0);
        s : OUT std_logic_vector(8 downto 0);
        c_in : IN std_logic);
end component;

component hold is
        Port (a : IN std_logic_vector(7 downto 0); c : IN std_logic;  s : OUT std_logic_vector(8 downto 0));
end component;

component load is
        Port (b : IN std_logic_vector(7 downto 0); c : IN std_logic; S : OUT std_logic_vector(8 downto 0));
end component;

component mux is
  Port (s1, s2, s3, s4, s5: IN std_logic_vector(8 downto 0); 
        op : IN std_logic_vector(2 downto 0); 
        output : OUT std_logic_vector(8 downto 0));
end component;

signal add_int : std_logic_vector(8 downto 0); 
signal add_nc_int : std_logic_vector(8 downto 0);
signal xor_int : std_logic_vector(8 downto 0);
signal hold_int : std_logic_vector(8 downto 0);
signal load_int : std_logic_vector(8 downto 0);
signal a_int : std_logic_vector(7 downto 0);
signal b_int : std_logic_vector(7 downto 0);
signal c_int : std_logic;
begin
a_int <= a;
b_int <= b;
c_int <= c;

U1 : Full_adder_8bit port map(a(7 downto 0) => a_int(7 downto 0), b(7 downto 0) => b_int(7 downto 0), c_in => c_int, s => add_int);
U2 : bit8_nc port map(a(7 downto 0) => a_int(7 downto 0), b(7 downto 0) => b_int(7 downto 0), c_in => c_int, s => add_nc_int);
U3 : xor_8 port map(a(7 downto 0) => a_int(7 downto 0), b(7 downto 0) => b_int(7 downto 0), c_in => c_int, s => xor_int);
U4 : hold port map(a(7 downto 0) => a_int(7 downto 0), c => c, s => hold_int);
U5 : load port map (b(7 downto 0) => b_int(7 downto 0), c => c, s => load_int);
u6 : mux port map (s1 => add_int, s2 => add_nc_int, s3 => xor_int, s4 => load_int, s5 => hold_int, op => op, output => s );

end Behavioral;
