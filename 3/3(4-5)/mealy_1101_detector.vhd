library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mealy_detector is
	port (
		clk    : in  std_logic;
		rst    : in  std_logic;
		din    : in  std_logic;
		detect : out std_logic
	);
end mealy_detector;

architecture mealy_detector_arc of mealy_detector is
	type state is (S0, S1, S2, S3);
	signal present_state, next_state : state;
begin

	CMB: process(present_state, din)
		begin
		detect <= '0';
		case (present_state) is
			when S0 =>
				if (din = '1') then
					next_state <= S1;
					detect <= '0';
				else
					next_state <= S0;
					detect <= '0';
				end if; 
			
			when S1 =>
				if (din = '1') then
					next_state <= S2;
					detect <= '0';
				else
					next_state <= S0;
					detect <= '0';
				end if;
	
			when S2 =>
				if (din = '1') then
					next_state <= S2;
					detect <= '0';
				else
					next_state <= S3;
					detect <= '0'; 
				end if;

			when S3 =>
				if (din = '1') then
					next_state <= S1;
					detect <= '1';
				else
					next_state <= S0;
					detect <= '0'; 
				end if;
				
			when others =>
				next_state <= S0;
				detect <= '0';
		end case;
	end process;
	
	REG : process (clk)
		begin
		if (clk'event and clk = '1') then
			if (rst = '1') then
				present_state <= S0;
			else
				present_state <= next_state;
			end if;
		end if;
	end process;
end mealy_detector_arc;

