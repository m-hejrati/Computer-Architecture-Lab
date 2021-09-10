LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_sequence_0110_0101_detector IS
END tb_sequence_0110_0101_detector;
 
ARCHITECTURE behavior OF tb_sequence_0110_0101_detector IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT overlapped_detector
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         din : IN  std_logic;
         detect : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal din : std_logic := '0';

 	--Outputs
   signal detect : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: overlapped_detector PORT MAP (
          clk => clk,
          rst => rst,
          din => din,
          detect => detect
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst <= '1';
		wait for 20 ns;
		rst <= '0';
		din <= '0';
		wait for 20 ns;
		din <= '0';
		wait for 20 ns;   
		din <= '0';
		wait for 20 ns;   
		din <= '1';
		wait for 20 ns;   
		din <= '0';
		wait for 20 ns;   
		din <= '1';
		wait for 20 ns;   
		din <= '0';
		wait for 20 ns;   
		din <= '1';
		wait for 20 ns;   
		din <= '1';
		wait for 20 ns;   
		din <= '1';
		wait for 20 ns;   
		din <= '0';
		wait for 20 ns;   
		din <= '1';
		wait for 20 ns;   
		din <= '1';
		wait for 20 ns;  
		din <= '0';
		wait for 20 ns;   
		din <= '1';
		wait for 20 ns;   
		din <= '0';
		wait for 20 ns;   
		din <= '1';
		wait for 20 ns;
   end process;

END;
