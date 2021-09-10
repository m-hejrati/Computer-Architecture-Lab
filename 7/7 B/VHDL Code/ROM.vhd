----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:09:25 09/15/2020 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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

entity ROM is
 
 generic(
   w, c : integer := 4
   -- c : integer
 );
 port(
   rd : in std_logic;
   addr: in  std_logic_vector(c-1 downto 0); 
   data : out std_logic_vector(w-1 downto 0):=(others => '0') ;
   init, clk : in std_logic := '0'
  );
end ROM;


architecture Behavioral of ROM is 

type memory is array((2**c)-1 downto 0) of std_logic_vector(w-1 downto 0);
signal mem : memory;

begin
 INT: process(init)
  begin
	if(init = '1') then
    		for i in 0 to ((2**c)-1) loop
		    mem(i)<= std_logic_vector(to_unsigned(i,w));
  		end loop;
	end if;
  end process;

  REG : process(clk)
   begin

    if(clk'event and clk = '1') then

	-- Read Data:

	if(rd = '1') then
		data <= mem(to_integer(unsigned(addr)));
	end if;

    end if;

  end process;

end Behavioral; 