library ieee;
use ieee.std_logic_1164.all;

entity fourbit_ripple_counter is
port( 
clk : in  std_logic;
q0, q1, q2, q3 : out std_logic
);
end entity fourbit_ripple_counter;


architecture structure of fourbit_ripple_counter is

component TFF is
 port(
   input, reset : in std_logic ;
   q, qnot : out std_logic ;
   clk : in std_logic
  );
end component TFF;

signal internal_q0, internal_q1, internal_q2, internal_q3 : std_logic; 
signal internal_reset,internal0,internal1,internal2, internal3 : std_logic:='0';
--internal_reset, internal_q0, internal_q1, internal_q2, internal_q3 <= '0';

begin
  --REG : process(clk)
   --begin
    	--if(clk'event and clk = '1') then
	--internal_reset <= (internal_q0 and internal_q1 and internal_q2 and internal_q3);
	--internal_reset <= '0';
	--internal_q0 == internal_q1== internal_q2== internal_q3 <= '0';

	TFF_instance0 : TFF port map ( input => '1', reset => internal_reset, q => internal_q0, qnot => internal0, clk => clk);

	TFF_instance1 : TFF port map ( input => '1', reset => internal_reset, q => internal_q1, qnot => internal1, clk => internal0);

	TFF_instance2 : TFF port map ( input => '1', reset => internal_reset, q => internal_q2, qnot => internal2, clk => internal1);

	TFF_instance3 : TFF port map ( input => '1', reset => internal_reset, q => internal_q3, qnot => internal3, clk => internal2);

	q0 <= internal_q0;
	q1 <= internal_q1;
	q2 <= internal_q2;
	q3 <= internal_q3;
	--end if;
  --end process;

end structure;