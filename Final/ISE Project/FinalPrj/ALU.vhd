----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:09:13 09/24/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity ALU is 

port(
  command         : in std_logic ;
  inputA , inputB : in std_logic_vector(15 downto 0);
  carryin         : in std_logic;
  result          : out std_logic_vector(15 downto 0)
);
end entity;


architecture instance of ALU is

component ripple_adder is port(
  a , b : in std_logic_vector(15 downto 0);
  cin : in std_logic;
  s : out std_logic_vector(15 downto 0);
  cout : out std_logic);
end component;

signal output : std_logic_vector(15 downto 0) := (others => '0');
signal couttmp : std_logic;

begin 

	adder:  ripple_adder port map(a => inputA , b => inputB , cin => carryin , s => output , cout => couttmp); 

process(command) begin
	if (command = '1') then
		result <= output ;
	end if;
end process;  
  
end architecture;