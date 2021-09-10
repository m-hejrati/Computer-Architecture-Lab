----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:55:06 09/24/2020 
-- Design Name: 
-- Module Name:    encoder_3to8 - Behavioral 
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


entity encoder_3to8 is
port(
input: in  std_logic_vector(7 downto 0);        
output: out std_logic_vector(2 downto 0)
); 
end entity encoder_3to8; 

architecture behav of encoder_3to8 is
begin
output <= "000" when input="00000001"
else "001" when input="00000010"
else "010" when input="00000100"
else "011" when input="00001000"
else "100" when input="00010000"
else "101" when input="00100000"
else "110" when input="01000000"
else "111" when input="10000000"; 
end behav;