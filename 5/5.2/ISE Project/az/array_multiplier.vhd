----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:20:21 09/07/2020 
-- Design Name: 
-- Module Name:    array_multiplier - Behavioral 
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

entity array_multiplier is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           P : out  STD_LOGIC_VECTOR (7 downto 0));
end array_multiplier;

architecture Behavioral of array_multiplier is

	component ripple_adder
		Port ( 
			A : in STD_LOGIC_VECTOR (3 downto 0);
			B : in STD_LOGIC_VECTOR (3 downto 0);
			Cin : in STD_LOGIC;
			S : out STD_LOGIC_VECTOR (3 downto 0);
			Cout : out STD_LOGIC
		);
	end component;

	signal A0, A1, A2:  std_logic_vector (3 downto 0); --AND Product (left part of full adder enteries in diagram)
	signal B0, B1, B2:  std_logic_vector (3 downto 0); --(right part of full adder enteries in diagram)

begin

	A0 <= (x(3) and y(1), x(2) and y(1), x(1) and y(1), x(0) and y(1));
	A1 <= (x(3) and y(2), x(2) and y(2), x(1) and y(2), x(0) and y(2));
	A2 <= (x(3) and y(3), x(2) and y(3), x(1) and y(3), x(0) and y(3));

	B0 <=  ('0', x(3) and y(0), x(2) and y(0), x(1) and y(0));

	RA1: ripple_adder port map ( A => A0, B => B0, Cin => '0', Cout => B1(3), S(3 downto 1) => B1(2 downto 0), S(0) => p(1) ); 
	RA2: ripple_adder port map ( A => A1, B => B1, cin => '0', Cout => B2(3), S(3 downto 1) => B2(2 downto 0), S(0) => p(2) );
	RA3: ripple_adder port map ( A => A2, B => B2, Cin => '0', Cout => P(7),  S => P(6 downto 3) );
    	
	P(0) <= X(0) and Y(0); 

end Behavioral;

