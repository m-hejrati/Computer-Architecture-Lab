library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TFF is
 port(
   input, reset : in std_logic ;
   q, qnot : out std_logic ;
   clk : in std_logic:='0'
  );
end TFF;


architecture Behavioral of TFF is 

signal temp_q : std_logic:='0' ;
signal temp_qnot : std_logic:='0' ;

begin


  REG : process(clk, reset)
   begin
    if (reset = '1') then
	temp_q <= '0';
	temp_qnot <= '1';
    else
    	if(clk'event and clk = '1') then
		if (input = '1') then
			if(temp_q = '0') then
		   		temp_q <= '1';
		   		temp_qnot <= '0';
			else
		   		temp_q <= '0';
		   		temp_qnot <= '1';
			end if;
		  end if;
  	   end if;
    end if;
  end process;

  q <= temp_q;
  qnot <= temp_qnot;

end Behavioral; 