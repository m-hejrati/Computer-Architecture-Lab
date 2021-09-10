--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:43:08 09/07/2020
-- Design Name:   
-- Module Name:   C:/Users/MASHADSERVICE/Desktop/code 5.2/az/array_multiplier_testbech.vhd
-- Project Name:  az
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: array_multiplier
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
 
ENTITY array_multiplier_testbech IS
END array_multiplier_testbech;
 
ARCHITECTURE behavior OF array_multiplier_testbech IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT array_multiplier
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         P : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal P : std_logic_vector(7 downto 0);


BEGIN
 
   AM: array_multiplier PORT MAP (
          X => x,
          Y => y,
          P => p
        );

		x <= "0001", "0010" after 100 ns, "1000" after 300 ns, "1111" after 500 ns;
		y <= "1100", "1000" after 200 ns, "0101" after 400 ns, "1111" after 600 ns;

END;
