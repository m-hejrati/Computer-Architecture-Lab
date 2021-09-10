----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:18:02 09/08/2020 
-- Design Name: 
-- Module Name:    clock_divider - Behavioral 
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


entity clock_divider is
	port (clk,reset: in std_logic; 
	clock_out: out std_logic);
end clock_divider;

architecture Behavioral of clock_divider is

signal count: integer range 0 to 19999999 := 0;
signal temp : std_logic;

begin
process(clk,reset)

begin

if(reset='1') then
	count <= 0;
	temp <= '0';
elsif(clk'event and clk='1') then
	if (count >= 19999999) then
		temp <= NOT temp;
		count <= 0;
	else
		count <= count + 1;
	end if;
end if;

end process;

clock_out <= temp;

end Behavioral;