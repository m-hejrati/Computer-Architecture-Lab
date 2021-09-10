----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:26:14 09/07/2020 
-- Design Name: 
-- Module Name:    fourbit_multiplier - Behavioral 
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

entity fourbit_multiplier is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           p : out  STD_LOGIC_VECTOR (7 downto 0));
end fourbit_multiplier;

architecture Behavioral of fourbit_multiplier is

component full_adder is
	Port(
		i0, i1, cin: in std_logic;
		s, cout   : out std_logic
	);
end component full_adder;

	signal int : std_logic_vector(7 downto 1); 
	signal c : std_logic_vector(10 downto 0); 
	signal f : std_logic_vector(15 downto 0); 

begin

	f(0) <= (a(0) and b(0));
	f(1) <= (a(1) and b(0));
	f(2) <= (a(2) and b(0));
	f(3) <= (a(3) and b(0));

	f(4) <= (a(0) and b(1));
	f(5) <= (a(1) and b(1));
	f(6) <= (a(2) and b(1));
	f(7) <= (a(3) and b(1));

	f(8) <= (a(0) and b(2));
	f(9) <= (a(1) and b(2));
	f(10) <= (a(2) and b(2));
	f(11) <= (a(3) and b(2));

	f(12) <= (a(0) and b(3));
	f(13) <= (a(1) and b(3));
	f(14) <= (a(2) and b(3));
	f(15) <= (a(3) and b(3));

	p(0) <= f(0);

	full_adder_instance0: full_adder port map ( i0 =>f(1), i1 =>f(4), cin =>'0', s =>p(1), cout =>c(0) );
	full_adder_instance1: full_adder port map ( i0 =>f(2), i1 =>f(5), cin =>c(0), s =>int(1), cout =>c(1) );
	full_adder_instance2: full_adder port map ( i0 =>f(3), i1 =>f(6), cin =>c(1), s =>int(2) , cout =>c(2) );
	full_adder_instance3: full_adder port map ( i0 =>'0', i1 =>f(7), cin =>c(2), s =>int(3), cout =>c(3) );

	full_adder_instance4: full_adder port map ( i0 =>int(1), i1 =>f(8), cin =>'0', s =>int(4), cout =>c(4) );
	full_adder_instance5: full_adder port map ( i0 =>int(2), i1 =>f(9), cin =>c(4), s =>int(5), cout =>c(5) );
	full_adder_instance6: full_adder port map ( i0 =>int(3), i1 =>f(10), cin =>c(5), s =>int(6), cout =>c(6) );
	full_adder_instance7: full_adder port map ( i0 =>c(3), i1 =>f(11), cin =>c(6), s =>int(7), cout =>c(7) );
	p(2) <= int(4);

	full_adder_instance8: full_adder port map ( i0 =>int(5), i1 =>f(12), cin =>'0', s =>p(3), cout =>c(8) );
	full_adder_instance9: full_adder port map ( i0 =>int(6), i1 =>f(13), cin =>c(8), s =>p(4), cout =>c(9) );
	full_adder_instance10: full_adder port map ( i0 =>int(7), i1 =>f(14), cin =>c(9), s =>p(5), cout =>c(10) );
	full_adder_instance11: full_adder port map ( i0 =>c(7), i1 =>f(15), cin =>c(10), s =>p(6), cout =>p(7) );

end Behavioral;

