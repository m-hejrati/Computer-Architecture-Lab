library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity carry_look_ahead is
Port (
	A : in STD_LOGIC_VECTOR (3 downto 0);
	B : in STD_LOGIC_VECTOR (3 downto 0);
	Cin : in STD_LOGIC;
	S : out STD_LOGIC_VECTOR (3 downto 0);
	Cout : out STD_LOGIC
);
end carry_look_ahead;
 
architecture Behavioral of carry_look_ahead is
 
component partial_full_adder
Port (
	A : in STD_LOGIC;
	B : in STD_LOGIC;
	Cin : in STD_LOGIC;
	S : out STD_LOGIC;
	P : out STD_LOGIC;	--A xor B
	G : out STD_LOGIC	--A and B
);
end component;
 
signal c1,c2,c3: STD_LOGIC;
signal P,G: STD_LOGIC_VECTOR(3 downto 0);

begin
 
	c1 <= G(0) OR (P(0) AND Cin);
	c2 <= G(1) OR (P(1) AND G(0)) OR (P(1) AND P(0) AND Cin);
	c3 <= G(2) OR (P(2) AND G(1)) OR (P(2) AND P(1) AND G(0)) OR (P(2) AND P(1) AND P(0) AND Cin);
	Cout <= G(3) OR (P(3) AND G(2)) OR (P(3) AND P(2) AND G(1)) OR (P(3) AND P(2) AND P(1) AND G(0)) OR (P(3) AND P(2) AND P(1) AND P(0) AND Cin);
 
	PFA1: partial_full_adder port map( A(0), B(0), Cin, S(0), P(0), G(0));
	PFA2: partial_full_adder port map( A(1), B(1), c1, S(1), P(1), G(1));
	PFA3: partial_full_adder port map( A(2), B(2), c2, S(2), P(2), G(2));
	PFA4: partial_full_adder port map( A(3), B(3), c3, S(3), P(3), G(3));
 
end Behavioral;
