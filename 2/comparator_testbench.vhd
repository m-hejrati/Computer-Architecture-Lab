library ieee;
use ieee.std_logic_1164.all;

entity comparator_testbench is
end entity comparator_testbench;

architecture test of comparator_testbench is
	component comparator is
		port(
			a, b : in std_logic_vector(3 downto 0);  
			agt, alt, equ : out std_logic
		);
	end component;

	signal input1, input2: std_logic_vector(3 downto 0);
	signal a_greater, b_greater, equal: std_logic;

	begin
		cmp : comparator port map ( a => input1, b => input2, agt => a_greater, alt => b_greater, equ => equal);
		input1 <= "0000", "0001" after 100 ns, "0011" after 200 ns, "0011" after 300 ns, "0100" after 400 ns, "0100" after 500 ns;
		input2 <= "0000", "0000" after 100 ns, "0000" after 200 ns, "0111" after 300 ns, "0111" after 400 ns, "0100" after 500 ns;
end test;