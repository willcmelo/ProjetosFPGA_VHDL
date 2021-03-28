-- Quartus Prime VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity EX3lista2_contador is

	generic
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 9
	);

	port
	(
		clk	  : in std_logic;
		
		
		q		  :out  std_logic_vector(3 downto 0)	
	);

end entity;

architecture rtl of EX3lista2_contador is

begin

	process (clk)
		variable  cnt	: integer range MIN_COUNT to MAX_COUNT;
	begin
		if (rising_edge(clk)) then
		   
				cnt := cnt + 1;

			
		end if;

		-- Output the current count
		
		q <= std_logic_vector(to_unsigned(cnt,4));
	end process;

end rtl;
