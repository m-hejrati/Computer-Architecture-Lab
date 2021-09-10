--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:45:53 09/07/2020
-- Design Name:   
-- Module Name:   C:/Users/MASHADSERVICE/Desktop/5.3/save/carry_save_multiplier_testbench.vhd
-- Project Name:  save
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: carry_save_multiplier
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
 
ENTITY carry_save_multiplier_testbench IS
END carry_save_multiplier_testbench;
 
ARCHITECTURE behavior OF carry_save_multiplier_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT carry_save_multiplier
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         p : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal p : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: carry_save_multiplier PORT MAP (
          a => a,
          b => b,
          p => p
        );
		  
		  
		a <= "0001", "0010" after 100 ns, "1011" after 300 ns, "1111" after 500 ns;
		b <= "1010", "0010" after 200 ns, "0101" after 400 ns, "1111" after 600 ns;


END;
