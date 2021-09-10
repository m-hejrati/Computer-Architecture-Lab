----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:16 09/24/2020 
-- Design Name: 
-- Module Name:    PC_register - Behavioral 
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

entity PC_register is
 port(
   input: in  std_logic_vector(7 downto 0); 
   load, inc, clr : in std_logic ;
   output : out std_logic_vector(7 downto 0) ;
   clk : in std_logic 
  );
end PC_register;


architecture Behavioral of PC_register is 

component incrementor_8bit is
Port(
din : in std_logic_vector(7 downto 0);
s : out std_logic_vector(7 downto 0);
cout : out std_logic
);

end component incrementor_8bit;

signal temp_out, inc_out : std_logic_vector(7 downto 0) := (others=>'0') ;
signal carry : std_logic := '0';

begin

incrementor_8bit_instance: incrementor_8bit port map ( din => temp_out, s => inc_out, cout => carry );

  REG : process(clk)
   begin

    if(clk'event and clk = '1') then

 -- reset:
	if (clr = '1') then
		temp_out <= (others=>'0');
	else

	 -- load:
		if(load = '1') then
			temp_out <= input;
		else

	 -- Increment:
			if(inc = '1') then
				temp_out <= inc_out;
			end if;

		end if;
	end if;

    end if;

  end process;

  output <= temp_out;

end Behavioral; 
