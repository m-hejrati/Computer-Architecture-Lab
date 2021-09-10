--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:22:10 09/08/2020
-- Design Name:   
-- Module Name:   C:/Users/MASHADSERVICE/Desktop/1/proj/clock_divider_tb.vhd
-- Project Name:  proj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clock_divider
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
library ieee;
use ieee.std_logic_1164.all;

entity clock_divider_tb is
end clock_divider_tb;

architecture behavior OF clock_divider_tb is 
	component clock_divider
	port(
		clk : IN  std_logic;
		reset  : IN  std_logic;
		clock_out: OUT std_logic
	);
	end component;

	-- Inputs
	signal clk  : std_logic := '0';
	signal reset   : std_logic := '0';
	
	-- Outputs
	signal clock_out : std_logic;
	constant clk_in_t : time := 25 ns; 
	
begin 
	-- Instance of unit under test.
	uut: clock_divider port map (
		clk  => clk,
		reset   => reset,
		clock_out => clock_out
	);

	-- Clock definition.
	entrada_process :process
		begin
		clk <= '0';
		wait for clk_in_t;
		clk <= '1';
		wait for clk_in_t;
	end process;

	-- Processing.
	stimuli: process
	begin
		reset <= '1'; -- Initial conditions.
		wait for 100 ns;
		reset <= '0'; -- Down to work!
        wait;
	end process;
end;