-- Quartus Prime VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is

	generic
	(
		DATA_WIDTH : natural := 8
		
	);

	port
	(
		add_sub    : in std_logic;
		a          : in std_logic_vector(DATA_WIDTH -1 downto 0);
		b          : in std_logic_vector(DATA_WIDTH -1 downto 0);
		result	  : out std_logic_vector(DATA_WIDTH -1 downto 0)
	);

end entity;

architecture rtl of alu is
signal au : unsigned ((DATA_WIDTH -1) downto 0);
signal bu : unsigned ((DATA_WIDTH -1) downto 0);
begin
     au <= unsigned(a);
	  bu <= unsigned(b);
	 

	  
	  with add_sub select
	  result <=std_logic_vector(au + bu) when '0',
	           std_logic_vector(au - bu) when '1';
end rtl;	  
----	  




