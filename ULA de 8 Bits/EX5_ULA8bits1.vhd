-- Quartus Prime VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity EX5_ULA8bits1 is

	generic
	(
		DATA_WIDTH : natural := 8
	);

	port 
	(
		A	   : in signed	((DATA_WIDTH-1) downto 0);
		B	   : in signed	((DATA_WIDTH-1) downto 0);
		result : buffer std_logic_vector ((DATA_WIDTH-1) downto 0); --resultado(soma, subtração, divisão)
		result2 : buffer std_logic_vector ((2*DATA_WIDTH-1) downto 0); --resultado(multiplicação)
	   S      :  in   std_logic_vector(1 downto 0) --seleção da operação matemática
	);

end entity;

architecture rtl of EX5_ULA8bits1 is
signal bit_16 :  signed (2*DATA_WIDTH - 1 downto 0);
signal bit_8 :  signed (DATA_WIDTH - 1 downto 0);

begin
result <= std_logic_vector(bit_8);
	result2 <= std_logic_vector(bit_16);

process(A,B,S)
	
	
	begin
	
			case S is
			
			when "00" =>bit_8 <=A+B;
			when "01" =>bit_8 <=A-B;
			when "10" =>bit_8 <=A/B;
			when "11" =>bit_16<=A*B;

   end case;
--				
				
						
	end process;
	
	
	
end rtl;