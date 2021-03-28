-- EX4_display de 7 segmentos 
-- linguagem VHDL
-- Autor : Willian Cantidio de Melo


	library IEEE;						
	use IEEE.std_logic_1164.all;	-- Utiliza a biblioteca padrão 1164
	
	
	entity EX4_decod7segmentos is port			-- Declaraçao da entidade
	(
	  d	:  in  std_logic_vector(0 to 3);				-- entradas digitais 
	  s	:  out  std_logic_vector(0 to 6)			-- saida digital	
	 

	);
	end EX4_decod7segmentos;					-- final da declaraçao da entidade
	
	-- início da arquitetura
	architecture hardware of EX4_decod7segmentos is
	begin									-- inicia o hardware
	
	with d select
	
	s <= "0110000" when"0001", --1 
	     "1101101" when"0010", --2
	     "1111001" when"0011", --3
	     "0110011" when"0100", --4
	     "1011011" when"0101", --5
	     "1011111" when"0110", --6
	     "1110000" when"0111", --7
	     "1111111" when"1000", --8
	     "1111011" when"1001", --9
		  
		  "0000000"  when others;
	
	
	end hardware;						-- final do hardware
	 