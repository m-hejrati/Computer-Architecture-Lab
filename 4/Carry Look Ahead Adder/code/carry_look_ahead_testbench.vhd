library ieee;
use ieee.std_logic_1164.all;

entity carry_look_ahead_testbench is
end entity carry_look_ahead_testbench;

architecture test of carry_look_ahead_testbench is
component carry_look_ahead is
	port(
		A : in STD_LOGIC_VECTOR (3 downto 0);
		B : in STD_LOGIC_VECTOR (3 downto 0);
		Cin : in STD_LOGIC;
		S : out STD_LOGIC_VECTOR (3 downto 0);
		Cout : out STD_LOGIC
	);
end component;

	signal a, b: STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal cin: STD_LOGIC := '0';
	signal s: STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal cout: STD_LOGIC := '0';

	begin
		CLA : carry_look_ahead port map ( A => a, B => b, Cin => cin, S => s, Cout => cout);
		a <= "0110", "0011" after 100 ns, "0110" after 300 ns, "0101" after 500 ns, "1111" after 700 ns;
		b <= "1100", "1000" after 200 ns, "0111" after 400 ns, "1010" after 600 ns, "1111" after 800 ns;
end test;
