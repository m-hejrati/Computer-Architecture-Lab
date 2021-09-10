----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:42:23 09/15/2020 
-- Design Name: 
-- Module Name:    RAM_Dual_port - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM_Dual_port is
 
 generic(
   w, c : integer := 4
   -- c : integer
 );
 port(
   wr, rd : in std_logic;
   addr: in  std_logic_vector(c-1 downto 0); 
   data_in : in std_logic_vector(w-1 downto 0) ;
   data_out : out std_logic_vector(w-1 downto 0) := (others => '0') ;
   reset, clk : in std_logic := '0'
  );
end RAM_Dual_port;


architecture Behavioral of RAM_Dual_port is 

type memory is array((2**c)-1 downto 0) of std_logic_vector(w-1 downto 0);
signal mem : memory;

begin

  REG : process(clk, reset)
   begin

    if(reset = '0') then
	for i in 0 to ((2**c)-1) loop
		mem(i)<= std_logic_vector(to_unsigned(i,w));
	end loop;
    else

    	if(clk'event and clk = '1') then

	 -- Write Data:
		if(wr = '1') then
			mem(to_integer(unsigned(addr))) <= data_in;
		elsif
		-- Read Data:
			--if
		(rd = '1') then
				data_out <= mem(to_integer(unsigned(addr)));
			--end if;

		end if;
	end if;

    end if;

  end process;

end Behavioral; 