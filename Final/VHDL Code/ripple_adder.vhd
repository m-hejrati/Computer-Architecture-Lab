----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:53:54 09/25/2020 
-- Design Name: 
-- Module Name:    ripple_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ripple_adder is
	Port (
		A : in STD_LOGIC_VECTOR (15 downto 0);
		B : in STD_LOGIC_VECTOR (15 downto 0);
		Cin : in STD_LOGIC;
		S : out STD_LOGIC_VECTOR (15 downto 0);
		Cout : out STD_LOGIC
	);
end ripple_adder;

architecture Behavioral of ripple_adder is

component full_adder
	Port ( 
		A : in STD_LOGIC;
		B : in STD_LOGIC;
		Cin : in STD_LOGIC;
		S : out STD_LOGIC;
		Cout : out STD_LOGIC
	);
end component;

signal c: STD_LOGIC_VECTOR (15 downto 0);

begin

	FA1: full_adder port map( A(0), B(0), Cin, S(0), c(0));
	FA2: full_adder port map( A(1), B(1), c(0), S(1), c(1));
	FA3: full_adder port map( A(2), B(2), c(1), S(2), c(2));
	FA4: full_adder port map( A(3), B(3), c(2), S(3), c(3));
	FA5: full_adder port map( A(4), B(4), c(3), S(4), c(4));
	FA6: full_adder port map( A(5), B(5), c(4), S(5), c(5));
	FA7: full_adder port map( A(6), B(6), c(5), S(6), c(6));
	FA8: full_adder port map( A(7), B(7), c(6), S(7), c(7));
	FA9: full_adder port map( A(8), B(8), c(7), S(8), c(8));
	FA10: full_adder port map( A(9), B(9), c(8), S(9), c(9));
	FA11: full_adder port map( A(10), B(10), c(9), S(10), c(10));
	FA12: full_adder port map( A(11), B(11), c(10), S(11), c(11));
	FA13: full_adder port map( A(12), B(12), c(11), S(12), c(12));
	FA14: full_adder port map( A(13), B(13), c(12), S(13), c(13));
	FA15: full_adder port map( A(14), B(14), c(13), S(14), c(14));
	FA16: full_adder port map( A(15), B(15), c(14), S(15), Cout);
	
end Behavioral;


