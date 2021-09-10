----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:19:07 09/08/2020 
-- Design Name: 
-- Module Name:    shift_register - Behavioral 
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_register is
 port(
   din: in  std_logic_vector(3 downto 0); 
   lr: in  std_logic_vector(1 downto 0) := "00"; 
   load, reset : in std_logic ;
   dout : out std_logic_vector(3 downto 0) ;
   clk : in std_logic := '0'
  );
end shift_register;




architecture Behavioral of shift_register is 


component clock_divider is
	port (
		clk, reset: in std_logic; 
		clock_out: out std_logic
			);
end component clock_divider;

signal temp_in : std_logic_vector(3 downto 0) := "0000" ;
signal temp_out : std_logic_vector(3 downto 0) := "0000" ;
signal clk_out : std_logic;

begin

	
  clk_divider : clock_divider port map(clk => clk, reset => reset, clock_out => clk_out);

  REG : process(clk_out)
   begin

    if(clk_out'event and clk_out = '1') then

 -- reset:
	if (reset = '1') then 
		temp_in <= "0000";
		temp_out <= "0000";
	else

	 -- load:
		if(load = '1') then
			temp_in <= din;
			temp_out <= din;
		else

	 -- shift:

		-- hold:
			if(lr = "00") then
				temp_out <= temp_in;
			end if;

		-- left shift:
			if(lr = "01") then
				temp_out <= temp_in(2 downto 0) & "0";
				temp_in <= temp_in(2 downto 0) & "0";
			end if;

		 -- right logical shift:
			if(lr = "10") then
				temp_out <= "0" & temp_in(3 downto 1);
				temp_in <= "0" & temp_in(3 downto 1);
			end if;

		 -- right arithmetic shift:
			if(lr = "11") then
				temp_out <= "1" & temp_in(3 downto 1);
				temp_in <= "1" & temp_in(3 downto 1);
			end if;

		end if;
	end if;

    end if;

  end process;

  dout <= temp_out;

end Behavioral; 

