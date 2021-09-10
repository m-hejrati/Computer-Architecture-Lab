----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:46 09/24/2020 
-- Design Name: 
-- Module Name:    Decoder_4to16 - Behavioral 
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

entity Decoder_4to16 is
port(
input: in std_logic_vector(3 downto 0);        
output: out  std_logic_vector(15 downto 0) 
); 
end entity Decoder_4to16; 

architecture behav of Decoder_4to16 is

begin

output(0) <= '1' when input="0000" else '0';
output(1) <= '1' when input="0001" else '0';
output(2) <= '1' when input="0010" else '0';
output(3) <= '1' when input="0011" else '0';
output(4) <= '1' when input="0100" else '0';
output(5) <= '1' when input="0101" else '0';
output(6) <= '1' when input="0110" else '0';
output(7) <= '1' when input="0111" else '0'; 
output(8) <= '1' when input="1000" else '0';
output(9) <= '1' when input="1001" else '0';
output(10) <= '1' when input="1010" else '0';
output(11) <= '1' when input="1011" else '0';
output(12) <= '1' when input="1100" else '0';
output(13) <= '1' when input="1101" else '0';
output(14) <= '1' when input="1110" else '0';
output(15) <= '1' when input="1111" else '0';

end behav;