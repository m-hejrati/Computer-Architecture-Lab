library ieee;
use ieee.std_logic_1164.all;

entity carry_select_adder_testbench is
end entity carry_select_adder_testbench;

architecture test of carry_select_adder_testbench is
component carry_select_adder is
	port(
		X : in STD_LOGIC_VECTOR (3 downto 0);
		Y : in STD_LOGIC_VECTOR (3 downto 0);
		CARRY_IN : in STD_LOGIC;
		SUM : out STD_LOGIC_VECTOR (3 downto 0);
		CARRY_OUT : out STD_LOGIC
	);
end component;

	signal x, y: STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal cin: STD_LOGIC := '0';
	signal s: STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal cout: STD_LOGIC := '0';

	begin
		CSA : carry_select_adder port map ( X => x, Y => y, CARRY_IN => cin, SUM => s, CARRY_OUT => cout);
		x <= "0110", "0101" after 100 ns, "0110" after 300 ns, "0011" after 500 ns, "1111" after 700 ns;
		y <= "1100", "1010" after 200 ns, "0111" after 400 ns, "1000" after 600 ns, "1111" after 800 ns;
		cin <= '0', '1' after 200 ns, '1' after 300 ns, '0' after 600 ns, '1' after 700 ns;
end test;
