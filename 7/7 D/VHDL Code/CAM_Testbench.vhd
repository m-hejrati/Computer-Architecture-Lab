--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:36:51 09/25/2020
-- Design Name:   
-- Module Name:   C:/Users/MASHADSERVICE/Desktop/CAM/CAM/CAM_Testbench.vhd
-- Project Name:  CAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CAM
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

 
ENTITY CAM_tb IS
END CAM_tb;
 
ARCHITECTURE behavior OF CAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CAM
	 generic (
		w : integer := 8; -- width of each data word
		c : integer := 4 -- number of cells in CAM
		);
	 port(
			wr, rd : in std_logic;
			data_in : in std_logic_vector(w - 1 downto 0);
			exist : out std_logic;
			addr_out : out std_logic_vector(c - 1 downto 0);
			reset, clk : in std_logic
	 );
    END COMPONENT;
	 
	 
    -- constants
	 constant MEMORY_WIDTH : integer := 8;
	 constant ADDRESS_WIDTH : integer := 4;

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal wr : std_logic := '0';
   signal rd : std_logic := '0';
   signal data_in : std_logic_vector(MEMORY_WIDTH - 1 downto 0) := (others => '0');

 	--Outputs
   signal exist : std_logic;
   signal addr_out : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CAM PORT MAP (
          clk => clk,
          reset => reset,
          wr => wr,
          rd => rd,
          data_in => data_in,
          exist => exist,
          addr_out => addr_out
        );
		  
	
	wr <= '0', '1' after 100 ns, '0' after 700 ns ;
	data_in <= "00000011", "10000000" after 100 ns, "10111000" after 500 ns, "10101010" after 700 ns;
	rd <= '1', '1' after 500 ns, '0' after 600 ns, '1' after 700 ns;
	reset <= '1', '0' after 100 ns, '1' after 600 ns, '0' after 700 ns, '1' after 900 ns;

	clk <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns, 
	'0' after 400 ns, '1' after 500 ns, '0' after 600 ns, '1' after 700 ns,
	'0' after 800 ns, '1' after 900 ns;

END;