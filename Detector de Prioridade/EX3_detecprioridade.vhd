-- EX3_Detector de prioridade 
-- linguagem VHDL
-- Autor : Willian Cantidio de Melo


	library IEEE;						
	use IEEE.std_logic_1164.all;	-- Utiliza a biblioteca padrão 1164
	
	
	entity EX3_detecprioridade is port			-- Declaraçao da entidade
	(
	  P0, P1, P2, P3	:  in  std_logic;	 -- entradas digitais 		
	  X0, X1, INT	   :  out std_logic	 --  saídas digitais
	  			

	);
	end EX3_detecprioridade;					-- final da declaraçao da entidade
	
	-- início da arquitetura
	architecture hardware of EX3_detecprioridade is
	
	signal w1, w2, w3   :  std_logic;
	signal y1, y2, y3    :  std_logic;
	signal z1, z2, z3, z4    :  std_logic;
		
	begin									-- inicia o hardware
	
	w1 <= not (P0) and not(P1) and P2;
	w2 <= not (P0) and not(P1) and not(P2) and P3;
	w3 <= not (P0) and not(P1) and not(P2) and not (P3);
	
	y1 <= not (P0) and P1;
	y2 <= not (P0) and not(P1) and not(P2) and P3;
	y3 <= not (P0) and not(P1) and not(P2) and not (P3);
	
	z1 <= P0;
	z2 <= not (P0) and P1;
	z3 <= not (P0) and not (P1) and P2;
	z4 <=  not (P0) and not(P1) and not(P2) and P3;
	
	X1<= w1 or w2 or w3;
	X0<= y1 or y2 or y3;
	INT<= z1 or z2 or z3;
	
	end hardware;						-- final do hardware
	 