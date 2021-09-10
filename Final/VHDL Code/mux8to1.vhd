----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:50:53 09/24/2020 
-- Design Name: 
-- Module Name:    mux8to1 - Behavioral 
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

entity mux_8to1 is
port(

  din0 : in  std_logic_vector(15 downto 0);
  din1 : in  std_logic_vector(15 downto 0);
  din2 : in  std_logic_vector(15 downto 0);
  din3 : in  std_logic_vector(15 downto 0);
  din4 : in  std_logic_vector(15 downto 0);
  din5 : in  std_logic_vector(15 downto 0);
  din6 : in  std_logic_vector(15 downto 0);
  din7 : in  std_logic_vector(15 downto 0);
  st : in  std_logic_vector(2 downto 0);
  dout : out std_logic_vector(15 downto 0));

end mux_8to1;

architecture behav of mux_8to1 is

begin

  with st select
    dout <= din0 when "000",
       din1 when "001",
       din2 when "010",
       din3 when "011",
       din4 when "100",
       din5 when "101",
       din6 when "110",
       din7 when "111",
       "0000000000000000" when others;

end behav;