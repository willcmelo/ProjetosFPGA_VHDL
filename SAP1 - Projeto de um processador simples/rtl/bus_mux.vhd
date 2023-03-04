-- Quartus Prime VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bus_mux is

	generic
	(
		DATA_WIDTH : natural := 8
		
	);

	port
	(
		main_bus         : out std_logic_vector(DATA_WIDTH -1 downto 0);
		acc_bus          : in std_logic_vector(DATA_WIDTH -1 downto 0);
		b_bus            : in std_logic_vector(DATA_WIDTH -1 downto 0);
		ir_bus           : in std_logic_vector(DATA_WIDTH -1 downto 0);
		alu_bus          : in std_logic_vector(DATA_WIDTH -1 downto 0);
		prg_bus           : in std_logic_vector(DATA_WIDTH -1 downto 0);
		mem_bus          : in std_logic_vector(DATA_WIDTH -1 downto 0);
		control_word	  : in std_logic_vector(11 downto 0)
	);

end entity;

architecture rtl of bus_mux is

begin
     main_bus <= acc_bus when control_word(3) = '1' else
	              --b_bus when control_word(3) = '1' else
	              ir_bus when control_word(6) = '1' else
					  alu_bus when control_word(0) = '1' else
					  prg_bus when control_word(10) = '1' else
					  mem_bus when control_word(8) = '1' else
                 (others => '0');
	  
	 
end rtl;	  
----	  




