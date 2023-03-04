-- Quartus Prime VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity registrador is

	generic
	(
		DATA_WIDTH : natural := 8
		
	);

	port
	(
		DATA_IN	  : in std_logic_vector(DATA_WIDTH -1 downto 0);
		RST        : in std_logic;
		LOAD       : in std_logic;
		CK         : in std_logic;
		DATA_OUT	  :out  std_logic_vector(DATA_WIDTH -1 downto 0)
	);

end entity;

architecture rtl of registrador is

begin

process (CK, RST)
begin
	-- Reset whenever the reset signal goes low, regardless of the clock
	-- or the clock enable
	if (rst = '0') then
		DATA_OUT <= (others =>'0');
	-- If not resetting, and the clock signal is enabled on this register, 
	-- update the register output on the clock's rising edge
	elsif (rising_edge(CK)) then
		if (LOAD = '1') then
			DATA_OUT <= DATA_IN;
		end if;
	end if;
end process;
end rtl;