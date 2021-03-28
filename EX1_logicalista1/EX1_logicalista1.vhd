-- EX2_Operação Lógica 
-- linguagem VHDL
-- Autor : Willian Cantidio de Melo


	library IEEE;						
	use IEEE.std_logic_1164.all;	-- Utiliza a biblioteca padrão 1164
	use IEEE.numeric_std.all;
	
	
	entity EX1_logicalista1 is port			-- Declaraçao da entidade
	(
	  a	:  in  std_logic;				
	  b	:  in  std_logic;				
	  c	:  in  std_logic;	                        
	  s	: out  std_logic	

	);
	end EX1_logicalista1;					-- final da declaraçao da entidade
	
	-- início da arquitetura
	architecture hardware of EX1_logicalista1 is
	begin									-- inicia o hardware
	
	s<=(a and b and c) or (not(a) and b and not(c)) or (a and b and not(c));
	
	
	end hardware;						-- final do hardware
	 