--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:59:12 09/15/2020
-- Design Name:   
-- Module Name:   C:/Users/MASHADSERVICE/Desktop/ram/RAMProj/RAM_tb.vhd
-- Project Name:  RAMProj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
use ieee.numeric_std.all;

entity RAM_tb is
end entity RAM_tb;
 
architecture test of RAM_tb is 
 
component RAM is
 generic(
   w, c : integer
 );
 port(
   wr, rd : in std_logic;
   addr : in  std_logic_vector(c-1 downto 0); 
   data : inout std_logic_vector(w-1 downto 0) ;
   reset, clk : in std_logic := '0'
  );
end component;

signal wr, rd, reset, clk : std_logic := '0' ;
constant wf : integer := 4;
constant cf : integer := 4;
signal dataf :  std_logic_vector(wf-1 downto 0):= (others => 'Z') ;
signal addr :  std_logic_vector(cf-1 downto 0) := (others => '0') ;

begin

dec:RAM 
	generic map ( w => wf, c => cf )
	port map ( wr => wr, rd => rd, addr => addr, data => dataf
			, reset => reset , clk => clk
			);
-- test: 0 to 900ns

wr <= '0', '1' after 300 ns, '0' after 500 ns, '0' after 700 ns;
rd <= '0', '0' after 300 ns, '1' after 500 ns, '1' after 700 ns, '1' after 800 ns;
addr <= "0000", "1011" after 100 ns, "0100" after 500 ns, "1011" after 700 ns;
dataf <= (others => 'Z'), "0111" after 100 ns, (others => 'Z') after 500 ns, (others => 'Z') after 700 ns, (others => 'Z') after 800 ns;
reset <= '0', '1' after 100 ns, '1' after 500 ns, '0' after 800 ns, '1' after 900 ns;

clk <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns,
 '0' after 400 ns, '1' after 500 ns, '0' after 600 ns, '1' after 700 ns,
 '0' after 800 ns, '1' after 900 ns;


end test;