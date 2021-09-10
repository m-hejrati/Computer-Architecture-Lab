--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:13:15 09/08/2020
-- Design Name:   
-- Module Name:   C:/Users/MASHADSERVICE/Desktop/0/prj/shift_register_testbench.vhd
-- Project Name:  prj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_register
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shift_register_testbench IS
END shift_register_testbench;
 
ARCHITECTURE behavior OF shift_register_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_register
    PORT(
         din : IN  std_logic_vector(3 downto 0);
         lr : IN  std_logic_vector(1 downto 0);
         load : IN  std_logic;
         reset : IN  std_logic;
         dout : OUT  std_logic_vector(3 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal din : std_logic_vector(3 downto 0) := (others => '0');
   signal lr : std_logic_vector(1 downto 0) := (others => '0');
   signal load : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal dout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_register PORT MAP (
          din => din,
          lr => lr,
          load => load,
          reset => reset,
          dout => dout,
          clk => clk
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

		din <= "0101";
      wait for clk_period;	
		load <= '1';
      wait for clk_period;
		load <= '0';
		reset <= '1';
      wait for clk_period;
		load <= '1';
		din <= "1010";
		reset <= '0';
      wait for clk_period;	
		load <= '0';
		lr <= "00";
		wait for clk_period;	
		lr <= "01";
		wait for clk_period;	
		lr <= "10";
		wait for clk_period;	
		lr <= "11";
		wait for clk_period;	
		reset <= '1';
		wait for clk_period;	
		reset <= '0';
		load <= '1';
		din <= "1011";
		wait for clk_period;
		load <= '0';		
		lr <= "11";
		wait for clk_period;

      wait;
   end process;

END;
