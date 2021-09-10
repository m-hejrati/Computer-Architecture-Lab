library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TFF_tb is
end entity TFF_tb;
 
architecture test of TFF_tb is 
 
component TFF is
 port(
   input, reset : in std_logic ;
   q, qnot : out std_logic ;
   clk : in std_logic
  );
end component;

signal input, reset, q, qnot, clk : std_logic;
 
begin

dec:TFF port map ( input => input, reset => reset, q => q, qnot => qnot
			, clk => clk
			);
--test 0 to 1100ns
input <= '0', '1' after 300 ns, '0' after 500 ns, '1' after 700 ns, '0' after 900 ns;

reset <= '1', '0' after 500 ns, '1' after 1100 ns;

clk <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns,
 '0' after 400 ns, '1' after 500 ns, '0' after 600 ns, '1' after 700 ns,
 '0' after 800 ns, '1' after 900 ns, '0' after 1000 ns, '1' after 1100 ns;


end test;