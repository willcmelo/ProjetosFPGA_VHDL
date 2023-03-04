---------------------------------------------------------------------
-- TITLE: Framework Mercurio IV
-- AUTHOR: Leandro Poloni Dantas (leandro.poloni@sp.senai.br)
-- DATE CREATED: 20/01/21
-- FILENAME: Framework_MercurioIV.vhd
-- PROJECT: Framework_MercurioIV
-- COPYRIGHT: Software placed into the public domain by the author.
--    Software 'as is' without warranty.  Author liable for nothing.
-- DESCRIPTION:
--    This entity combines the pinout of Mercurio IV development kit.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;	-- Define os tipos signed e unsigned


entity Framework_MercurioIV is
	generic
	(
		MIN_COUNT 			: natural := 0;
		MAX_COUNT_1Hz 		: natural := 25_000_000;
		MAX_COUNT_10Hz		: natural := 25_000_00;
		MAX_COUNT_100Hz	: natural := 25_000_0;
		MAX_COUNT_1kHz		: natural := 25_000
	);
	port
	(
		CLOCK_50MHz 	: in	std_logic;
		SW			   	: in 	std_logic_vector(3 downto 0);    --operandos(15 downto 8 => operando2, 7 downto 0 => operando1)
		KEY		   	: in 	std_logic_vector(11  downto 0);  --comando(3=>'start_send',0=>'rst');
		-- Interface UART
		UART_TXD			: out std_logic;
		-- LED RGB
		LED_R          : out std_logic;
		LED_G          : out std_logic;
		LED_B          : out std_logic;
		-- LCD
		LCD_D		      : inout	std_logic_vector(7  downto 0); 	-- LCD data is a bidirectional bus...
		LCD_RS 	   	: out   std_logic;                		-- LCD register select
		LCD_RW  	   	: out   std_logic;                		-- LCD Read / nWrite
		LCD_EN  		   : out   std_logic;                		-- LCD Enable
		LCD_BACKLIGHT	: out   std_logic;
		-- Matriz de LEDs
		LEDM_C			: out std_logic_vector(4 downto 0);
		LEDM_R			: out std_logic_vector(7 downto 0);
		-- Display de 7 segmentos
		DISP0_D			: out std_logic_vector(7 downto 0);
		DISP1_D			: out std_logic_vector(7 downto 0);
		-- Placa expansora com 16 chaves
		GPIO0_D			: in std_logic_vector(15 downto 0)
	);

end entity;

architecture behavior of Framework_MercurioIV is

	signal	RESET		 :	std_logic;
	signal	RESET_N	 :	std_logic;
	signal	CLK_1Hz	 : std_logic;
	signal	CLK_10Hz  : std_logic;
	signal	CLK_100Hz : std_logic;
	signal	CLK_1kHz  : std_logic;
	signal 	SOMA1		 : signed (3 downto 0);
	signal 	SOMA2		 : signed (3 downto 0);
	signal 	RESULTADO : signed (3 downto 0);
	
	-- COMPONENTES =========================================
	
	-- Declaração sincronizador de reset
	COMPONENT reset_sync
   PORT
	(
		i_clk	               :	 IN STD_LOGIC;
		i_external_reset_n	:	 IN STD_LOGIC;
		o_reset_n      		:	 OUT STD_LOGIC;
		o_reset		         :	 OUT STD_LOGIC
   );
	END COMPONENT;
	
	-- Declaração do somador sinalidado (apenas para exemplificar)
	COMPONENT signed_adder
	GENERIC
	(
		DATA_WIDTH : natural := 8
	);
	PORT 
	(
		a	   : in signed	((DATA_WIDTH-1) downto 0);
		b	   : in signed	((DATA_WIDTH-1) downto 0);
		result : out signed ((DATA_WIDTH-1) downto 0)
	);
	END COMPONENT;
	
	-- FIM COMPONENTES =====================================
	
begin	
	-- INSTANCIAÇÃO DOS COMPONENTES ========================
	
	-- Sincronizador de reset
	reset_synch_50mhz_inst : reset_sync
	PORT MAP 
	(
		i_clk                => CLOCK_50MHz,
		i_external_reset_n   => SW(3),--'1',	-- Substitua pelo sinal gerador do reset (Exemplo: SW(0))
		o_reset		         => RESET,
		o_reset_n            => RESET_N
	);
	
	-- Somador sinalidado (apenas para exemplificar)
	somador : signed_adder
	GENERIC MAP
	(
		DATA_WIDTH => 4	--Ajusta a quantidade de bits
	)
	PORT MAP
	(
		a	=>     SOMA1,
		b	=>		 SOMA2,
		result => RESULTADO
	);
	
	-- FIM INSTANCIAÇÃO DOS COMPONENTES ====================
	
		
	-- PROCESSOS ===========================================
	
--	-- Divide o clock de 50 MHz por n (usa resto de divisão)
--   clk_div: process(CLOCK_50MHz)
--		variable   cnt		   : integer range 0 to 50000000;	
--   begin
--		if rising_edge(CLOCK_50MHz)	then
--			cnt := cnt + 1;
--			if cnt REM 25000000 = 0 then
--				CLK_1Hz <= not CLK_1Hz;				
--			end if;
--			if cnt REM 2500000 = 0 then
--				CLK_10Hz <= not CLK_10Hz;				
--			end if;
--
--			if cnt REM 250000 = 0 then
--				CLK_100Hz <= not CLK_100Hz;
--			end if;
--			if cnt REM 25000 = 0 then
--				CLK_1kHz <= not CLK_1kHz;
--			end if;
--		end if;
--	end process; --clk_div

	-- Divide o clock de 50 MHz por n (usa contadores)
	clk_div: process (CLOCK_50MHz, RESET)
		variable   cnt1		   : integer range MIN_COUNT to MAX_COUNT_1Hz;
		variable   cnt10		   : integer range MIN_COUNT to MAX_COUNT_10Hz;
		variable   cnt100		   : integer range MIN_COUNT to MAX_COUNT_100Hz;
		variable   cnt1k		   : integer range MIN_COUNT to MAX_COUNT_1kHz;
		signal		teste		: integer range MIN_COUNT to MAX_COUNT_1Hz;
	
	begin
		
		if RESET = '1' then
			-- Reseta os divisores de clock
			cnt1		:= MIN_COUNT;
			cnt10 	:= MIN_COUNT;
			cnt100 	:= MIN_COUNT;
			cnt1k 	:= MIN_COUNT;
			-- Força o sinal de clock em zero
			CLK_1Hz	 	<= '0';
			CLK_10Hz		<= '0';
			CLK_100Hz 	<= '0';
			CLK_1kHz		<= '0';
			
		elsif (rising_edge(CLOCK_50MHz)) then
			-- Incrementa os contadores
			cnt1 		:= cnt1 + 1;
			-- Se chegar no valor máximo
			if cnt1 = MAX_COUNT_1Hz then
				-- Inicia a contagem
				cnt1 := MIN_COUNT;
				-- Inverte o sinal de clock
				CLK_1Hz <= not CLK_1Hz;
			end if;
					
			cnt10 	:= cnt10 + 1;
			if cnt10 = MAX_COUNT_10Hz then 
				cnt10 := MIN_COUNT;
				CLK_10Hz <= not CLK_10Hz;
			end if;
			
			cnt100 	:= cnt100 + 1;
			if cnt100 = MAX_COUNT_100Hz then 
				cnt100 := MIN_COUNT; 
				CLK_100Hz <= not CLK_100Hz;
			end if;
			
			cnt1k 	:= cnt1k + 1;
			if cnt1k = MAX_COUNT_1kHz then 
				cnt1k := MIN_COUNT; 
				CLK_1kHz <= not CLK_1kHz;	
			end if;
		
		end if;				

	end process; -- clk_div
	
	-- FIM PROCESSOS =======================================
	
	-- LÓGICA COMBINACIONAL ================================
	
	--Teste clock
	DISP0_D(0) <= CLK_1Hz;
	DISP0_D(6) <= CLK_10Hz;
	DISP0_D(3) <= CLK_100Hz;
	DISP0_D(7) <= CLK_1kHz;
	
	--Teste das chaves
	DISP1_D(0) <= SW(0);
	DISP1_D(1) <= SW(1);
	DISP1_D(2) <= KEY(0);
	DISP1_D(3) <= KEY(1);
	DISP1_D(4) <= GPIO0_D(0);
	DISP1_D(5) <= GPIO0_D(1);
	DISP1_D(6) <= GPIO0_D(2);
	DISP1_D(7) <= GPIO0_D(3);
	
	--Teste reset
	LED_R <= RESET;
	LED_G <= RESET_N;
	
	-- FIM LÓGICA COMBINACIONAL ============================

end;
