-- EX2_Operação Lógica 
-- linguagem VHDL
-- Autor : Willian Cantidio de Melo


	library IEEE;						
	use IEEE.std_logic_1164.all;	-- Utiliza a biblioteca padrão 1164
	
	
	entity EX2_operacaologica is port			-- Declaraçao da entidade
	(
	  d	:  in  std_logic_vector(0 to 1);				-- entradas digitais 
	  s	:  in  std_logic_vector(0 to 2);				
	  o	:  out  std_logic	                        --  saídas digitais
	  			

	);
	end EX2_operacaologica;					-- final da declaraçao da entidade
	
	-- início da arquitetura
	architecture hardware of EX2_operacaologica is
	begin									-- inicia o hardware
	with s select
	
	o <= d(0) and d(1) when"000",
		  d(0) or d(1) when"001",
	     d(0) nand d(1) when"010",
	     d(0) nor d(1) when"111",
	     d(0) xor d(1) when"100",
	     d(0) xnor d(1) when"101",
		  '0'  when others;
	
	
	end hardware;						-- final do hardware
	 