----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:50 09/24/2020 
-- Design Name: 
-- Module Name:    IR_register - Behavioral 
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


entity IR_register is
 port(
   input : in  std_logic_vector(15 downto 0); 
   load : in std_logic ;
   output : out std_logic_vector(15 downto 0) ;
   clk : in std_logic
  );
end IR_register; 


architecture Behavioral of IR_register is 

signal temp_out : std_logic_vector(15 downto 0) := (others=>'0') ;

begin

  REG : process(clk)
   begin

    if(clk'event and clk = '1') then

 -- load:
	if (load = '1') then
		temp_out <= input;
	end if;

    end if;

  end process;

  output <= temp_out;

end Behavioral; 