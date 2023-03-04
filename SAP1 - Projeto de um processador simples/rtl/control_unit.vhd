-- Quartus Prime VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit is

	generic
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 5
	);

	port
	(
		clk		  : in std_logic;
		opcode	  : in std_logic_vector(3 downto 0);
		reset	     : out std_logic;
		cw		     : out std_logic_vector(11 downto 0)
	);

end entity;

architecture rtl of control_unit is
signal addr : std_logic_vector(7 downto 0);
signal q : std_logic_vector(3 downto 0);
-- declaração de memória(microprograma)

-- Build a 2-D array type for the ROM
	subtype word_t is std_logic_vector(7 downto 0);
	type memory_t is array(natural range <>) of word_t;

	constant mem1 : memory_t (0 to 127 ) :=
		(
		X"00",X"80",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"00",X"80",X"40",X"04",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"00",X"80",X"40",X"20",X"05",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"00",X"80",X"40",X"22",X"07",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"00",X"80",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"00",X"80",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"00",X"80",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"00",X"80",X"18",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00"
		);
	constant mem2 : memory_t (0 to 127 ) :=
		(
		X"06",X"09",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"06",X"09",X"02",X"01",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"06",X"09",X"02",X"01",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"06",X"09",X"02",X"01",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"06",X"09",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"06",X"09",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"06",X"09",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
X"06",X"09",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00"
		);	
		

begin

	process (clk)
		variable   cnt		   : integer range MIN_COUNT to MAX_COUNT;
	begin
		if (falling_edge(clk)) then
		   
				cnt := cnt + 1;

	   end if;
		if cnt =5 then
		cnt :=0 ;       --reinicia contador
		reset <='0';   --reset do MAR
		else 
		reset <= '1';
		end if;
		
		
		

		-- Output the current count
		q <= std_logic_vector(to_unsigned(cnt, 4));
	end process;
	--endereço da microinstrução
	addr <= opcode & q;
	
	--acesso ao microprograma
	cw<= mem2(to_integer(unsigned(addr)))(3 downto 0)& mem1(to_integer(unsigned(addr)));

end rtl;
