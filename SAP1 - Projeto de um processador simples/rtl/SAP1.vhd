-- Arquitetura do SAP1 turma 8
-- Pós graduação sistemas embarcados

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SAP1 is

	generic
	(
		DATA_WIDTH : natural := 8
	);

	port 
	(
		CK    :in std_logic;
		MR     :in std_logic;
		DISP0  :OUT std_logic_vector(7 downto 0);
		DISP1  :OUT std_logic_vector(7 downto 0)
	);

end entity;

architecture rtl of SAP1 is

signal RST : std_logic;
signal control_word : std_logic_vector(11 downto 0);
signal main_bus : std_logic_vector(DATA_WIDTH -1 downto 0);
signal add_bus : std_logic_vector(DATA_WIDTH/2 -1 downto 0);
signal acc_bus : std_logic_vector(DATA_WIDTH -1 downto 0);
signal b_bus : std_logic_vector(DATA_WIDTH -1 downto 0);
signal ir_bus : std_logic_vector(DATA_WIDTH -1 downto 0);
signal alu_bus : std_logic_vector(DATA_WIDTH -1 downto 0);
signal prg_bus : std_logic_vector(DATA_WIDTH -1 downto 0);
signal mem_bus : std_logic_vector(DATA_WIDTH -1 downto 0);
    -- COMPONENTES =========================================

component registrador 

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
end component;
	-------------------------------------------------
	
	component alu 

	generic
	(
		DATA_WIDTH : natural := 8
		
	);

	port
	(
		add_sub    : in std_logic;
		a          : in std_logic_vector(DATA_WIDTH -1 downto 0);
		b          : in std_logic_vector(DATA_WIDTH -1 downto 0);
		result	  : out  std_logic_vector(DATA_WIDTH -1 downto 0)
	);


	
end component;


   component program_counter 

	generic
	(
		DATA_WIDTH :natural :=8;
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 15
	);

	port
	(
		clk		  : in std_logic;
		reset	  : in std_logic;
		enable	  : in std_logic;
		q		  : out std_logic_vector(DATA_WIDTH -1 downto 0)
	);
	
	end component;
	
	component memoria 

	generic 
	(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 4
	);

	port 
	(
		
		addr	: in std_logic_vector((ADDR_WIDTH -1) downto 0);
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end component;

component control_unit 

	generic
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 5
	);

	port
	(
		clk		  : in std_logic;
		opcode	  : in std_logic_vector(3 downto 0);
		reset	     : out std_logic;
		cw		     : out std_logic_vector(11 downto 0)
	);
end component;

component output_register is

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

end component;

component bus_mux is

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

end component;

 begin   

 -- FIM COMPONENTES =====================================
 
-- INSTANCIAÇÃO DOS COMPONENTES ========================
  
  --MAR
  
mar : registrador
	generic map
	(
		DATA_WIDTH => DATA_WIDTH/2
	)

	port map
	(
		CK    => ck,
		RST    =>rst, 
		LOAD   =>control_word(9),  
		DATA_IN  =>main_bus(DATA_WIDTH/2-1 downto 0),
		DATA_OUT  =>add_bus
	);
--	
--	--Acumulador
--	
	acc : registrador
	generic map
	(
		DATA_WIDTH => DATA_WIDTH
	)

	port map
	(
		CK    => ck,
		RST    =>mr, 
		LOAD   =>control_word(2),  
		DATA_IN  =>main_bus(DATA_WIDTH-1 downto 0),
		DATA_OUT  =>acc_bus
	);
--	
--  --Registrador B
--	
	reg_b : registrador
	generic map
	(
		DATA_WIDTH => DATA_WIDTH
	)

	port map
	(
		CK    => ck,
		RST    =>mr, 
		LOAD   =>control_word(5),  
		DATA_IN  =>main_bus(DATA_WIDTH-1 downto 0),
		DATA_OUT  =>b_bus
	);
 
	--alu
	
	ula : alu
	generic map
	(
		DATA_WIDTH => DATA_WIDTH
	)

	port map
	(
		add_sub  =>control_word(1),  
		a        =>acc_bus,  
		b        =>b_bus,  
		result	=>alu_bus  
	);	
	
	--Program_Counter
	
	PC : program_counter
	generic map
	(
		DATA_WIDTH => DATA_WIDTH
	)

	port map
	(
		clk          =>CK,  
		reset        =>rst,  
		enable       =>control_word(11),   
		q	          =>prg_bus  
	);	
	
	-- memoria
	
	memory : memoria
	generic map
	(
		DATA_WIDTH => DATA_WIDTH,
		ADDR_WIDTH => DATA_WIDTH/2
	)

	port map
	(
		addr          =>add_bus,
		q	          =>mem_bus  
	);	
	
	-- control_unit
	
	cu : control_unit
	

	port map
	(
		clk          =>CK,  
		opcode        =>ir_bus(DATA_WIDTH-1 downto DATA_WIDTH/2),  
		reset       =>rst,   
		cw	          =>control_word  
	);	
	
	
	  --IR
  
   ir : registrador
	generic map
	(
		DATA_WIDTH => DATA_WIDTH
	)

	port map
	(
		CK    => ck,
		RST    =>mr, 
		LOAD   =>control_word(7),  
		DATA_IN  =>main_bus(DATA_WIDTH-1 downto 0),
		DATA_OUT  =>ir_bus
	);
	
	 --Registrador de saida
  
   out_reg : output_register
	generic map
	(
		DATA_WIDTH => DATA_WIDTH
	)

	port map
	(
		CK    => ck,
		RST    =>mr, 
		LOAD   =>control_word(4),  
		DATA_IN =>main_bus,
		DISP0  =>DISP0,
		DISP1  =>DISP1
	);
	
	 --Multiplexador de barraamentos
  
   multiplex_bar : bus_mux
	generic map
	(
		DATA_WIDTH => DATA_WIDTH
	)

	port map
	(
		main_bus,
		acc_bus,
		b_bus,
		ir_bus,
		alu_bus,
		prg_bus,
		mem_bus,
		control_word
		
	);
	-- FIM INSTANCIAÇÃO DOS COMPONENTES ====================
	
	
		
	-- PROCESSOS ===========================================

   -- FIM PROCESSOS =======================================
	
	-- LÓGICA COMBINACIONAL ================================
	
	-- FIM LÓGICA COMBINACIONAL ============================
	



	

end rtl;