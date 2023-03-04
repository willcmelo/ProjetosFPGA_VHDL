-- Quartus Prime VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity program_counter is

	generic
	(
		DATA_WIDTH :natural :=8;
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 15
	);

	port
	(
		clk		  : in std_logic;
		reset	  : in std_logic;
		enable	  : in std_logic;
		q		  : out std_logic_vector(DATA_WIDTH -1 downto 0)
	);

end entity;

architecture rtl of program_counter is
begin

	process (clk)
		variable   cnt		   : integer range MIN_COUNT to MAX_COUNT;
	begin
		if (falling_edge(clk)) then

			if reset = '0' then
				-- Reset the counter to 0
				cnt := 0;

			elsif enable = '1' then
				-- Increment the counter if counting is enabled			   
				cnt := cnt + 1;

			end if;
		end if;

		-- Output the current count
		q <= std_logic_vector(to_unsigned(cnt, DATA_WIDTH));
	end process;

end rtl;
