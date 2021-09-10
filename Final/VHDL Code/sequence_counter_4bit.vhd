----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:12:27 09/24/2020 
-- Design Name: 
-- Module Name:    sequence_counter_4bit - Behavioral 
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


entity sequence_counter_4bit is
port( 
inr, clr, clk : in  std_logic;
dout : out std_logic_vector(3 downto 0)
);
end entity sequence_counter_4bit;


architecture Behavioral of sequence_counter_4bit is

component incrementor_4bit is
Port(
din : in std_logic_vector(3 downto 0);
s : out std_logic_vector(3 downto 0);
cout : out std_logic
);
end component incrementor_4bit;


signal temp_out, inr_out : std_logic_vector(3 downto 0) := (others=>'0') ;
signal carry : std_logic := '0';

begin

incrementor_4bit_instance: incrementor_4bit port map ( din => temp_out, s => inr_out, cout => carry );

  REG : process(clk)
   begin
 

    if(clk'event and clk = '1') then

 -- clear:
	if (clr = '1') then
		temp_out <= (others=>'0');
	else

	 -- Increment:
		if(inr = '1') then
			if(temp_out = "1111")then
				temp_out <= "0000";
			else
				temp_out <= inr_out;
			end if;
		end if;
	end if;

    end if;


  end process;

  dout <= temp_out;

end Behavioral; 