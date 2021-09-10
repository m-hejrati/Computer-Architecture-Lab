library ieee;
use ieee.std_logic_1164.all;

entity full_adder_testbench is
end entity full_adder_testbench;

architecture test of full_adder_testbench is
component full_adder is
port(
	i0, i1, cin: in std_logic;
	s, cout: out std_logic
);
end component;

signal input1: std_logic;
signal input2: std_logic;
signal inputc: std_logic;
signal s0: std_logic;
signal ct: std_logic;

begin
	FA:full_adder port map ( i0 => input1, i1 => input2, cin => inputc, s => s0, cout => ct);
	input1 <= '0', '1' after 100 ns, '1' after 200 ns, '1' after 300 ns, '1' after 400 ns, '0' after 500 ns;
	input2 <= '0', '0' after 100 ns, '1' after 200 ns, '0' after 300 ns, '1' after 400 ns, '0' after 500 ns;
	inputc <= '0', '0' after 100 ns, '0' after 200 ns, '1' after 300 ns, '1' after 400 ns, '1' after 500 ns;
end test;