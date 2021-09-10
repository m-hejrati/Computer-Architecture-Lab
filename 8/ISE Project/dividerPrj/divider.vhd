----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:31:09 09/15/2020 
-- Design Name: 
-- Module Name:    divider - Behavioral 
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

use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider is
    Port ( divided : in  STD_LOGIC_VECTOR (7 downto 0);
           divisor : in  STD_LOGIC_VECTOR (3 downto 0);
           overflow : out  STD_LOGIC;
           quotient : out  STD_LOGIC_VECTOR (3 downto 0);
           remainder : out  STD_LOGIC_VECTOR (3 downto 0));
end divider;

architecture Behavioral of divider is

begin

	process(divided, divisor) is
	
		variable A: std_logic_vector(3 downto 0);
		variable Q: std_logic_vector(3 downto 0);
		variable B: std_logic_vector(3 downto 0);
		variable E: std_logic;
	
		begin

			A := divided(7 downto 4);
			Q := divided(3 downto 0);
			B := divisor(3 downto 0);

			if(A >= B) then
				overflow <= '1';
				A := "0000";
				Q := "0000";
	
			elsif(A < B) then
				overflow <= '0';

				for i in 0 to 3 loop 
					
					-- left shift 
					E := A(3);
					A(3 downto 0) := A(2 downto 0) & Q(3);
					Q(3 downto 0) := Q(2 downto 0) & '0';

					if (E ='1') then
						A := A - B;
						Q(0) := '1';
						
					elsif (E = '0') then
						if(A >= B) then
							A := A - B;
							Q(0) := '1';
						end if;
					end if;
					
				end loop;
			end if;


		remainder <= A;
		quotient <= Q;

	end process;
	
end Behavioral;

