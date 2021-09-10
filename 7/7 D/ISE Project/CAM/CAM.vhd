----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:07 09/25/2020 
-- Design Name: 
-- Module Name:    CAM - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CAM is
  generic (
    w : integer := 8; 
    c : integer := 4
  );
  port(
    wr, rd : in std_logic;
    data_in : in std_logic_vector(w - 1 downto 0);
    exist : out std_logic;
    addr_out : out std_logic_vector(c - 1 downto 0);
    reset, clk : in std_logic
  );
end CAM;

architecture Behavioral of CAM is

type memory is array((2**c)-1 downto 0) of std_logic_vector(w-1 downto 0);
signal cam: memory;
signal temp_loc : integer := 0;
signal temp_exist : std_logic := '0';

begin

  REG : process (clk, reset)
	
    begin

	if (reset = '0') then
		for i in 0 to ( (2 ** c) - 1 ) loop
			cam(i) <= std_logic_vector(to_unsigned(i, w));
		end loop;
	else
		
	  if (clk'event and clk = '1') then


	 -- Write Data:
		if (wr = '1') then
			temp_exist <= '0';

	 	-- Write REPEATED Data:
			for i in 0 to ((2**c)- 1) loop
				if (cam(i) = data_in) then
					temp_exist <= '1';
					addr_out <= std_logic_vector(to_unsigned(i, c));
					exit;
				end if;
			end loop;

	 	-- Write NEW Data:
			if (temp_exist = '0') then
				cam(temp_loc) <= data_in;
				temp_loc <= temp_loc + 1;
				if (temp_loc = ((2 ** c)- 1)) then 
					temp_loc <= 0;
				end if;	
			end if;

		end if;


	-- Find Data:
		else if (rd = '1') then

			temp_exist <= '0';
			for i in 0 to ((2**c)- 1) loop
				if (cam(i) = data_in) then
					temp_exist <= '1';
					addr_out <= std_logic_vector(to_unsigned(i, c));
					exit;
				end if;
			end loop;
				
		end if;

		exist <= temp_exist;

	  end if;
	
	end if;
			
  end process;


end Behavioral;