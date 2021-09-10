--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:32:02 09/15/2020
-- Design Name:   
-- Module Name:   C:/Users/MASHADSERVICE/Desktop/div/dividerPrj/divider_testbench.vhd
-- Project Name:  dividerPrj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divider
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
 
ENTITY divider_testbench IS
END divider_testbench;
 
ARCHITECTURE behavior OF divider_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider
    PORT(
         divided : IN  std_logic_vector(7 downto 0);
         divisor : IN  std_logic_vector(3 downto 0);
         overflow : OUT  std_logic;
         quotient : OUT  std_logic_vector(3 downto 0);
         remainder : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal divided : std_logic_vector(7 downto 0) := (others => '0');
   signal divisor : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal overflow : std_logic;
   signal quotient : std_logic_vector(3 downto 0);
   signal remainder : std_logic_vector(3 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider PORT MAP (
          divided => divided,
          divisor => divisor,
          overflow => overflow,
          quotient => quotient,
          remainder => remainder
        );

   -- Stimulus process
   stim_proc: process
   begin		

      wait for 100 ns;	
		divided <= "00000010";
      divisor <= "0001";
      
		wait for 100 ns;
		divided <= "00100111";
		divisor <= "0110";
			
		wait for 100 ns;	
		divided <= "10101010";
      divisor <= "1010";
      
		wait for 100 ns;
		divided <= "10000000";
		divisor <= "0100";
		
		wait for 100 ns;	
		divided <= "11111111";
      divisor <= "0001";
      
		wait for 100 ns;
		divided <= "00110011";
		divisor <= "0110";
		
      wait;
   end process;

END;
