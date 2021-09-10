----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:58:59 09/24/2020 
-- Design Name: 
-- Module Name:    Decoder_3to8 - Behavioral 
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


entity Decoder_3to8 is
port(
input: in std_logic_vector(2 downto 0);        
output: out  std_logic_vector(7 downto 0) 
); 
end entity Decoder_3to8; 
architecture behav of Decoder_3to8 is
begin
output(0) <= '1' when input="000" else '0';
output(1) <= '1' when input="001" else '0';
output(2) <= '1' when input="010" else '0';
output(3) <= '1' when input="011" else '0';
output(4) <= '1' when input="100" else '0';
output(5) <= '1' when input="101" else '0';
output(6) <= '1' when input="110" else '0';
output(7) <= '1' when input="111" else '0'; 
end behav;