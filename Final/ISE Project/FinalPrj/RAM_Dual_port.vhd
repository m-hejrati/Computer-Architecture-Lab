----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:13:44 09/24/2020 
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
   w, c : integer
 );
 port(
   wr, rd : in std_logic;
   addr: in  std_logic_vector(c-1 downto 0); 
   data_in : in std_logic_vector(w-1 downto 0) ;
   data_out : out std_logic_vector(w-1 downto 0) ;
   reset : in std_logic
  );
end RAM_Dual_port;


architecture Behavioral of RAM_Dual_port is 

type memory is array((2**c)-1 downto 0) of std_logic_vector(w-1 downto 0);
signal mem : memory;
signal temp_data_out : std_logic_vector(w-1 downto 0) := (others => '0') ;

begin

  REG : process(reset, wr, rd)
   begin

	      mem(0) <= "0010000000001010";  -- direct load from 10
         mem(1) <= "0001000000010100";  -- direct add 
         mem(2) <= "0011000000011110";  -- direct store to 30
         mem(10) <= "0000000000010010";
         mem(20) <= "0000000000010100";
	
    if(reset = '0') then
	for i in 0 to ((2**c)-1) loop
		mem(i)<= std_logic_vector(to_unsigned(i,w));
	end loop;
    else

	 -- Write Data:
		if(wr = '1') then
			mem(to_integer(unsigned(addr))) <= data_in;
		elsif
		-- Read Data:
		(rd = '1') then
				temp_data_out <= mem(to_integer(unsigned(addr)));

		end if;

    end if;

  end process;

data_out <= temp_data_out;

end Behavioral; 