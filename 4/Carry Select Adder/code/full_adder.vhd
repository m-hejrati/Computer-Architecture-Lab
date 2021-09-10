library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
Port(
	A, B, Cin: in std_logic;
	S, Cout : out std_logic
);
end entity full_adder;

architecture structure of full_adder is
component or_gate is
Port(
	a, b: in std_logic;
	c : out std_logic
);
End component or_gate;

component half_adder is
Port(
	in1, in2: in std_logic;
	out1, out2 : out std_logic
);
end component half_adder;

signal internal_signal0, internal_signal1, internal_signal2: std_logic;

begin
	half_adder_instance0: half_adder port map ( in1 => A, in2 => B, out1 => internal_signal0, out2 => internal_signal1);
	half_adder_instance1: half_adder port map ( in1 => internal_signal0, in2 => Cin, out1 => S, out2 => internal_signal2);
	or_gate_instance0: or_gate port map ( a => internal_signal1, b => internal_signal2, c => Cout );
end structure;