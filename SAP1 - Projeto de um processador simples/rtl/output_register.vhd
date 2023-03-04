-- Quartus Prime VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity output_register is

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
		DISP0	  :out  std_logic_vector(7 downto 0);
		DISP1	  :out  std_logic_vector(7 downto 0)
	);

end entity;

architecture rtl of output_register is
SIGNAL DATA_OUT :std_logic_vector(DATA_WIDTH -1 downto 0);


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

--Nibble mais significativo
with data_out(7 downto 4)select
DISP1 <="00111111" when "0000", --0
        "00000110" when "0001", --1
		  "01011011" when "0010", --2
		  "01001111" when "0011", --3
		  "01100110" when "0100", --4
		  "01101101" when "0101", --5
		  "01111101" when "0110", --6
		  "00000111" when "0111", --7
		  "01111111" when "1000", --8
		  "01101111" when "1001", --9
		  --Falta de A a F
		  "00000000" when others;



--Nibble menos significativo
with data_out(3 downto 0)select
DISP0 <= "00111111" when "0000", --0
         "00000110" when "0001", --1
		   "01011011" when "0010", --2
		   "01001111" when "0011", --3
		   "01100110" when "0100", --4
		   "01101101" when "0101", --5
		   "01111101" when "0110", --6
		   "00000111" when "0111", --7
		   "01111111" when "1000", --8
		   "01101111" when "1001", --9
		  --Falta de A a F
		  "00000000" when others;


end rtl;