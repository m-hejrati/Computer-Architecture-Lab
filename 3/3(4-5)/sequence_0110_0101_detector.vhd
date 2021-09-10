library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overlapped_detector is
	port (
		clk    : in  std_logic;
		rst    : in  std_logic;
		din    : in  std_logic;
		detect : out std_logic
	);
end overlapped_detector;

architecture overlapped_detector_arc of overlapped_detector is
type state is (S0, S1, S2, S3, S4, S5, S6);
	signal present_state, next_state : state;
begin
 
	REG: process (clk)
		begin
		if (clk'event and clk = '1') then
			if (rst = '1') then
				present_state <= S0;
			else
				present_state <= next_state;
			end if;
		end if;
	end process;
 
	CMB: process(present_state, din)
		begin
		next_state <= S0;
		case (present_state) is 
			when S0 =>
				if (din = '1') then
					next_state <= S0;
				else
					next_state <= S1;
				end if; 
				
			when S1 =>
				if (din = '1') then
					next_state <= S2;
				else
					next_state <= S1;
				end if;

			when S2 =>
				if (din = '1') then
					next_state <= S3;
				else
					next_state <= S4; 
				end if;

			when S3 =>
				if (din = '1') then
					next_state <= S0;
				else
					next_state <= S5; 
				end if;

			when S4 =>
				if (din = '1') then
					next_state <= S6;
				else
					next_state <= S1; 
				end if;
				
			when S5 =>
				if (din = '1') then
					next_state <= S2;
				else
					next_state <= S1;
				end if; 
				
			when S6 =>
				if (din = '1') then
					next_state <= S3;
				else
					next_state <= S4;
				end if; 
				
			when others =>
				next_state <= S0;
			
		end case;
	end process;
	
	process(present_state) 
		begin 
		case (present_state) is 
			when S0 =>
				detect <= '0';
			when S1 =>
				detect <= '0';
			when S2 =>
				detect <= '0';
			when S3 =>
				detect <= '0';
			when S4 =>
				detect <= '0';
			when S5 =>
				detect <= '1';
			when S6 =>
				detect <= '1';
			when others =>
				detect <= '0';
		end case;
	end process;
end overlapped_detector_arc;

