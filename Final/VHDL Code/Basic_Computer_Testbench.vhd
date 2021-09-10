--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:40:25 09/24/2020
-- Design Name:   
-- Module Name:   C:/Users/MASHADSERVICE/Desktop/FP/FinalPrj/Basic_Computer_Testbench.vhd
-- Project Name:  FinalPrj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: basic_computer
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

entity basic_computer_tb is
end basic_computer_tb;

architecture behavior OF basic_computer_tb is 
	component basic_computer
  port(
    clk: in  STD_LOGIC;
    bc_output: out  STD_LOGIC_VECTOR(15 downto 0)
  );
	end component;

	-- Inputs
	signal clk  : std_logic := '0';
	signal bc_output  : std_logic_vector (15 downto 0) := "0000000000000000";
	-- Outputs
	
	--constants
	constant clk_t : time := 50 ns; 
	
	
begin 
	-- Instance of unit under test.
	uut: basic_computer port map (
		clk  => clk,
		bc_output => bc_output
	);

	proc :process
		begin
		clk <= '0';
		wait for clk_t / 2;
		clk <= '1';
		wait for clk_t / 2;
	end process;
	
end;

