-- Quartus Prime VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity EX5lista2_habcontador is

	generic
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 9
	);

	port
	(
		clk,reset,enable	  : in std_logic;
		
		
		q		  :out  std_logic_vector(3 downto 0)	
	);

end entity;

architecture rtl of EX5lista2_habcontador is

begin

	process (clk, reset)
		variable  cnt	: integer range MIN_COUNT to MAX_COUNT;
	begin
		
		if reset = '1' then
		    cnt := 0;
		
		
		elsif (rising_edge(clk)) then
		    
			 if enable ='1' then  
				 cnt := cnt + 1;
       
		    end if;	
		end if;

		
		
		q <= std_logic_vector(to_unsigned(cnt,4));
	end process;

end rtl;
