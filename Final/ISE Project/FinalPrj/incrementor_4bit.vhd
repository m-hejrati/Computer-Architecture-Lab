----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:13:08 09/24/2020 
-- Design Name: 
-- Module Name:    incrementor_4bit - Behavioral 
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

entity incrementor_4bit is
Port(
din : in std_logic_vector(3 downto 0);
s : out std_logic_vector(3 downto 0);
cout : out std_logic
);
end entity incrementor_4bit;


architecture structure of incrementor_4bit is

component half_adder is
Port(
in1, in2: in std_logic;
out1, out2 : out std_logic
);
end component half_adder;

signal internal: std_logic_vector(2 downto 0);


begin

half_adder_instance0: half_adder port map ( in1 => din(0), in2 => '1', out1 => s(0), out2 => internal(0));
half_adder_instance1: half_adder port map ( in1 => din(1), in2 => internal(0), out1 => s(1), out2 => internal(1));
half_adder_instance2: half_adder port map ( in1 => din(2), in2 => internal(1), out1 => s(2), out2 => internal(2));
half_adder_instance3: half_adder port map ( in1 => din(3), in2 => internal(2), out1 => s(3), out2 => cout);

end structure;