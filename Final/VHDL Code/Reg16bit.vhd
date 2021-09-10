----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:23:54 09/25/2020 
-- Design Name: 
-- Module Name:    Reg16bit - Behavioral 
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

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY Reg16bit IS 
  PORT ( 
     CLK    : IN STD_LOGIC ;
     CLEAR  : IN STD_LOGIC ;
     INC    : IN STD_LOGIC ;
     LOAD   : IN STD_LOGIC ;
     input  : IN std_logic_vector (15 DOWNTO 0) ;  
     output : OUT std_logic_vector (15 DOWNTO 0) := (others => '0')  
  );  
END Reg16bit;


ARCHITECTURE dataflow OF Reg16bit IS 

signal internal_reg : std_logic_vector(15 downto 0) := (others => '0');

BEGIN 
 PROCESS (clk) BEGIN 

 IF (clk'event and clk='1') THEN

  	IF (LOAD = '1' ) THEN 
     	 internal_reg <= input; 
 
  	END IF; 
  
  	IF (INC = '1' ) THEN 
  	    internal_reg <= internal_reg + 1 ; 
  
 	 END IF; 

 	 IF (CLEAR = '1' ) THEN 
 	     internal_reg <= (others => '0') ; 
  
 	 END IF; 
 	   
  END IF ;
  

 END PROCESS; 

output <= internal_reg ;


END ;