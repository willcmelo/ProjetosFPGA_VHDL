-- Quartus Prime VHDL Template
-- Single-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria is

	generic 
	(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 4
	);

	port 
	(
		
		addr	: in std_logic_vector((ADDR_WIDTH -1) downto 0);
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture rtl of memoria is

	-- Build a 2-D array type for the ROM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(natural range <>) of word_t;

	constant rom : memory_t (0 to (2**ADDR_WIDTH-1) ) :=
		(
		-- Programa
		-- LDA 8-OUT -ADD 9-OUT -ADD A-OUT -SUB 8-OUT
		X"18",X"70",X"29",X"70",X"2A",X"70",X"38",X"70",
		-- Dados
		X"01",X"02",X"03",X"04",X"05",X"06",X"07",X"08"
		);
	
	-- Declare the ROM signal and specify a default value.	Quartus Prime
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	
begin

		q <= rom(to_integer(unsigned(addr)));
	
end rtl;
