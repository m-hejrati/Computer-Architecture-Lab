library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is
 port(
   input, reset : in std_logic ;
   q, qnot : out std_logic ;
   clk : in std_logic
  );
end DFF;


architecture Behavioral of DFF is 

signal temp_q : std_logic ;
signal temp_qnot : std_logic ;

begin

  REG : process(clk, reset)
   begin
    if (reset = '0') then
	temp_q <= '0';
	temp_qnot <= '1';
    else
    	if(clk'event and clk = '1') then
		if (input = '1') then
		   temp_q <= '1';
		   temp_qnot <= '0';
		  end if;

  		  if (input = '0') then
		   temp_q <= '0';
		   temp_qnot <= '1';
		  end if;
  	   end if;
    end if;
  end process;

  q <= temp_q;
  qnot <= temp_qnot;

end Behavioral; 