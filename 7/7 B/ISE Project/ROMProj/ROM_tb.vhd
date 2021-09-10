--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:10:07 09/15/2020
-- Design Name:   
-- Module Name:   C:/Users/MASHADSERVICE/Desktop/rom/ROMProj/ROM_tb.vhd
-- Project Name:  ROMProj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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


entity ROM_tb is
end entity ROM_tb;
 
architecture test of ROM_tb is 
 
component ROM is
 generic(
   w, c : integer := 4
   -- c : integer
 );
 port(
   rd : in std_logic;
   addr: in  std_logic_vector(c-1 downto 0); 
   data : out std_logic_vector(w-1 downto 0) ;
   init, clk : in std_logic := '0'
  );
end component;

signal rd, init, clk : std_logic := '0' ;
constant wf : integer := 4;
constant cf : integer := 4;
signal dataf :  std_logic_vector(wf-1 downto 0):= (others => '0') ;
signal addr :  std_logic_vector(cf-1 downto 0) := (others => '0') ;

begin

dec:ROM 
	generic map ( w => wf, c => cf )
	port map ( rd => rd, addr => addr, data => dataf
			, init => init , clk => clk
			);
-- test: 0 to 900ns


rd <= '0', '1' after 300 ns, '1' after 500 ns, '1' after 700 ns;
addr <= "0000", "1011" after 300 ns, "0100" after 500 ns, "1100" after 700 ns;
--dataf <= (others => '0'), "0111" after 300 ns, (others => '0') after 500 ns, (others => '0') after 700 ns;
init <= '0', '1' after 100 ns;

clk <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns,
 '0' after 400 ns, '1' after 500 ns, '0' after 600 ns, '1' after 700 ns,
 '0' after 800 ns, '1' after 900 ns;


end test;