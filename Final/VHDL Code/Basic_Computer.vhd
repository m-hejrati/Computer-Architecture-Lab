----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:54:36 09/24/2020 
-- Design Name: 
-- Module Name:    Basic_Computer - Behavioral 
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

entity basic_computer is
  port(
    clk: in  STD_LOGIC;
    bc_output: out  STD_LOGIC_VECTOR(15 downto 0)
  );
end basic_computer;



architecture DATAFLOW of basic_computer is


  -- Memory:
  component RAM_Dual_port
    generic(
      w : INTEGER := 16; -- width of each data word
      c : INTEGER := 8 -- log2 of number of cells in memory. i.e. number of bits needed to address cells of memory.
    );
    port(
      wr, rd : in std_logic;
      addr: in  std_logic_vector(c-1 downto 0); 
      data_in : in std_logic_vector(w-1 downto 0) ;
      data_out : out std_logic_vector(w-1 downto 0) ;
      reset : in std_logic
    );
  end component RAM_Dual_port;



  -- Registers:
  component AR_register
    port(
      input: in  std_logic_vector(7 downto 0); 
      load, inc, clr : in std_logic ;
      output : out std_logic_vector(7 downto 0) ;
      clk : in std_logic 
    );  
  end component;
  
  
  component PC_register
    port(
      input: in  std_logic_vector(7 downto 0); 
      load, inc, clr : in std_logic ;
      output : out std_logic_vector(7 downto 0) ;
      clk : in std_logic 
    ); 
  end component;
  

  component DR_register
    port(
      input: in  std_logic_vector(15 downto 0); 
      load, inc, clr : in std_logic ;
      output : out std_logic_vector(15 downto 0) ;
      clk : in std_logic 
    ); 
  end component;
  
  
  component AC_register
    port(
      input: in  std_logic_vector(15 downto 0); 
      load, inc, clr : in std_logic ;
      output : out std_logic_vector(15 downto 0) ;
      clk : in std_logic 
    ); 
  end component;
  

  component IR_register
    port(
      input : in  std_logic_vector(15 downto 0); 
      load : in std_logic ;
      output : out std_logic_vector(15 downto 0) ;
      clk : in std_logic
    );
  end component;
  


  -- AlU:
  component ALU 
    port(
      command         : in std_logic ;
      inputA , inputB : in std_logic_vector(15 downto 0);
      carryin         : in std_logic;
      result          : out std_logic_vector(15 downto 0)
    );
  end component;
  


  -- Decoders:
  component Decoder_4to16
    port(
      input: in std_logic_vector(3 downto 0);
      output: out std_logic_vector(15 downto 0)
    );
  end component;
  	
	
  component Decoder_3to8
    port(
      input: in std_logic_vector(2 downto 0);
      output: out std_logic_vector(7 downto 0)
    );
  end component;



  -- Encoder:
  component encoder_3to8
    port(
      input : in STD_LOGIC_VECTOR(7 downto 0);
      output : out STD_LOGIC_VECTOR(2 downto 0)
    );
  end component;

  

  -- MUX:
  component mux_8to1 
    port(
      din0      : in  std_logic_vector(15 downto 0);
      din1      : in  std_logic_vector(15 downto 0);
      din2      : in  std_logic_vector(15 downto 0);
      din3      : in  std_logic_vector(15 downto 0);
      din4      : in  std_logic_vector(15 downto 0);
      din5      : in  std_logic_vector(15 downto 0);
      din6      : in  std_logic_vector(15 downto 0);
      din7      : in  std_logic_vector(15 downto 0);
      st   		 : in  std_logic_vector(2 downto 0);
      dout       : out std_logic_vector(15 downto 0)
    );
  end component;



  -- Sequence Counter:
  component sequence_counter_4bit 
    port (
      inr, clr, clk : in  std_logic;
      dout : out std_logic_vector(3 downto 0)
    );
  end component;



  -- constants
  constant MEMORY_WIDTH : integer := 16;
  constant ADDRESS_WIDTH : integer := 8;



	signal Memory_OUT : std_logic_vector(15 downto 0);
	signal Memory_RD : std_logic;
	signal Memory_WR : std_logic;


	signal BUS_DATA : std_logic_vector(15 downto 0) := "0000000000000000"; 
	signal T : std_logic_vector(15 downto 0) := "0000000000000000";
	

	signal SC_CLR : std_logic := '0';
	signal SC_OUT : std_logic_vector(3 downto 0) := "0000";
	

	signal AR_LD : std_logic := '0';
	signal AR_OUT : std_logic_vector(7 downto 0);
	
	signal PC_INC : std_logic := '0';
	signal PC_OUT : std_logic_vector(7 downto 0);
	
	signal DR_LD : std_logic := '0';
	signal DR_OUT : std_logic_vector(15 downto 0);

  	signal AC_LD : std_logic := '0';
  	signal AC_CLR : std_logic := '0';
	signal AC_OUT : std_logic_vector(15 downto 0);	
	
	signal IR_LD : std_logic := '0';
	signal IR_OUT : std_logic_vector(15 downto 0);

	
	signal ALU_COMMAND : std_logic := '0';
	signal ALU_OUT : std_logic_vector(15 downto 0) := (others => '0');
	

	signal D : std_logic_vector(7 downto 0);
	signal I : std_logic := '0'; -- Specifies whether the addressing method is Direct or Indirect.
	
	signal TMP : std_logic_vector(7 downto 0);
 	signal S : std_logic_vector(2 downto 0);
	
	
	begin

  sequence_counter: sequence_counter_4bit port map(clk => clk, clr => SC_CLR, inr => '1', dout => SC_OUT);
  sc_decoder : Decoder_4to16 port map(input => SC_OUT, output => T);
  

  AR : AR_register port map(clk => clk, clr => '0', inc => '0', load => AR_LD, input => BUS_DATA(7 downto 0), output =>  AR_OUT);

  PC : PC_register port map(clk => clk, clr => '0', inc => PC_INC, load =>  '0', input => BUS_DATA(7 downto 0), output =>  PC_out);
    
  DR : DR_register port map(clk => clk, clr => '0', inc => '0', load => DR_LD, input => BUS_DATA, output =>  DR_OUT);

  AC : AC_register port map(clk => clk, clr => AC_CLR, inc => '0', load => AC_LD, input => ALU_OUT, output =>  AC_OUT);
  
  IR : IR_register port map(clk => clk, load => IR_LD, input => BUS_DATA, output =>  IR_OUT);
  IR_decoder : Decoder_3to8 port map(input => IR_OUT(14 downto 12), output => D);
    
  I <= IR_OUT(15);

  ALU_inctance : ALU port map (command => ALU_COMMAND , inputA => DR_OUT , inputB => AC_OUT , carryin => '0' , result => ALU_OUT);
  
	bc_output <= ALU_OUT;

  
  AR_LD <= T(0) or ( T(3) and D(1) and I) or ( T(3) and D(2) and I) or ( T(3) and D(3) and I);

  PC_INC <= T(1);
 
  DR_LD <= ( T(3) and D(1) and (not I) ) or ( T(4) and D(1) and I) or ( T(3) and D(2) and (not I) ) or ( T(4) and D(2) and I);
  
  AC_LD <= ( T(4) and D(1) and (not I) ) or ( T(5) and D(1) and I) or ( T(5) and D(2) and (not I) ) or ( T(6) and D(2) and I);
       	 
  AC_CLR <= ( T(4) and D(2) and (not I)) or ( T(5) and D(2) and I); 
  
  IR_LD <= T(1);
  
  ALU_COMMAND <= ( T(4) and D(1) and (not I)) or  ( T(5) and D(1) and I) or ( T(5) and D(2) and (not I)) or ( T(6) and D(2) and I);
  
  SC_CLR <= ( T(4) and D(1) and (not I) ) or ( T(5) and D(1) and I) or ( T(5) and D(2) and (not I)) or  ( T(6) and D(2) and I) or ( T(3) and D(3) and (not I)) or ( T(4) and D(3) and I); 

  
	TMP(0) <= '0';
	TMP(1) <= T(1) or
          ( T(3) and D(1) and (not I)) or
          ( T(3) and D(1) and I) or
          ( T(4) and D(1) and I) or
          ( T(3) and D(2) and (not I)) or
          ( T(3) and D(2) and I) or
          ( T(4) and D(2) and I) or
          ( T(3) and D(3) and I);
  TMP(2) <= '0';
  TMP(3) <= T(0);
  TMP(4) <= '0';
  TMP(5) <= ( T(3) and D(3) and (not I)) or ( T(4) and D(3) and I);
  TMP(6) <= T(2);
  TMP(7) <= '0';
  
  
  TMP_to_S_encoder : encoder_3to8 port map(input => TMP, output => S);
   
  bus_mux : mux_8to1 port map(din0 => (others => '0'),
										din1 => Memory_OUT,
										din2(15 downto 8) => "00000000",
										din2(7 downto 0)  => AR_OUT, 
										din3(15 downto 8) => "00000000",
										din3(7 downto 0)  => PC_OUT, 
										din4 => DR_OUT,
										din5 => AC_OUT,
										din6 => IR_OUT,
										din7 => (others => '0'),
										st => S,
										dout => BUS_DATA
                            );
  
  Memory : RAM_Dual_port generic map(w=> MEMORY_WIDTH, c => ADDRESS_WIDTH)
                  port map(rd => Memory_RD,
                           wr => Memory_WR,
                           reset => '0',
                           addr => AR_OUT,
                           data_in => BUS_DATA,
                           data_out => Memory_OUT
                  );
                  
  Memory_RD <= T(1) or
          ( T(3) and D(1) and (not I)) or
          ( (T(3) or T(4)) and D(1) and I) or
          ( T(3) and D(2) and (not I)) or
          ( (T(3) or T(4)) and D(2) and I) or
          ( T(3) and D(2) and (not I)); 
      
      
  Memory_WR <= ( T(3) and D(3) and (not I)) or
           ( T(4) and D(3) and I);
           
  
end DATAFLOW;