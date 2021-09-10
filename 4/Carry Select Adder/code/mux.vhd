library IEEE;
use IEEE.std_logic_1164.all;

Entity mux is
	port(
		A,B : in STD_LOGIC;
		Sel: in STD_LOGIC;
		Z: out STD_LOGIC
	);
End mux;

Architecture Behavioral of mux is
Begin
	Z <= A when (Sel = '0') else B;
End Behavioral;
