library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fourbit_ripple_counter_tb is
end entity fourbit_ripple_counter_tb;
 
architecture test of fourbit_ripple_counter_tb is 
 
component fourbit_ripple_counter is
port( 
clk : in  std_logic;
q0, q1, q2, q3 : out std_logic
);
end component;

signal clk, q0, q1, q2, q3 : std_logic;
 
begin

dec:fourbit_ripple_counter port map ( clk => clk, q0 => q0, q1 => q1
			, q2 => q2, q3 => q3
			);
--test 0 to 270ns

clk <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns,
 '0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns,
 '0' after 80 ns, '1' after 90 ns, '0' after 100 ns, '1' after 110 ns,
 '0' after 120 ns,  '1' after 130 ns,  '0' after 140 ns,  '1' after 150 ns,
 '0' after 160 ns, '1' after 170 ns, '0' after 180 ns, '1' after 190 ns,
 '0' after 200 ns, '1' after 210 ns, '0' after 220 ns, '1' after 230 ns,
 '0' after 240 ns, '1' after 250 ns, '0' after 260 ns, '1' after 270 ns;


end test;