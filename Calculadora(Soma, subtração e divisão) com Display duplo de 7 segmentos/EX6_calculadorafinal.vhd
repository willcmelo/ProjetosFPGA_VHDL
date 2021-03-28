-- Quartus Prime VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity EX6_calculadorafinal is

	generic
	(
		DATA_WIDTH :natural := 7
		
	);

	port 
	(
		A	   : in signed	((DATA_WIDTH-1) downto 0);
		B	   : in signed	((DATA_WIDTH-1) downto 0);
		result : buffer std_logic_vector ((DATA_WIDTH-1) downto 0); --resultado(soma, subtração, divisão)
		result2 : buffer std_logic_vector ((2*DATA_WIDTH-1) downto 0); --resultado(multiplicação)
	   S      :  in   std_logic_vector(1 downto 0); --seleção da operação matemática
		seg_h	    :  buffer  std_logic_vector(0 to 6);			-- mostrador H
	   seg_l	    :  buffer  std_logic_vector(0 to 6)			-- mostrador L
	);

end entity;

architecture rtl of EX6_calculadorafinal is
signal bit_16: signed (2*DATA_WIDTH - 1 downto 0);
signal bit_8 : signed (DATA_WIDTH - 1 downto 0);


--------------------segmento mostrador--------abcdefg----------------------
constant ds0     :std_logic_vector (6 downto 0) := "1111110"; --código número 0
constant ds1     :std_logic_vector (6 downto 0) := "0110000"; --código número 1
constant ds2     :std_logic_vector (6 downto 0) := "1101101"; --código número 2
constant ds3     :std_logic_vector (6 downto 0) := "1111001"; --código número 3
constant ds4     :std_logic_vector (6 downto 0) := "0110011"; --código número 4
constant ds5     :std_logic_vector (6 downto 0) := "1011011"; --código número 5
constant ds6     :std_logic_vector (6 downto 0) := "1011111"; --código número 6
constant ds7     :std_logic_vector (6 downto 0) := "1110000"; --código número 7
constant ds8     :std_logic_vector (6 downto 0) := "1111111"; --código número 8
constant ds9     :std_logic_vector (6 downto 0) := "1111011"; --código número 9
constant dsn     :std_logic_vector (6 downto 0) := "0000000"; --código apagado

---------------------números binários------------------------------------------
constant bs0     :std_logic_vector (6 downto 0) := "0000000"; --código número 0
constant bs1     :std_logic_vector (6 downto 0) := "0000001"; --código número 1
constant bs2     :std_logic_vector (6 downto 0) := "0000010"; --código número 2
constant bs3     :std_logic_vector (6 downto 0) := "0000011"; --código número 3
constant bs4     :std_logic_vector (6 downto 0) := "0000100"; --código número 4
constant bs5     :std_logic_vector (6 downto 0) := "0000101"; --código número 5
constant bs6     :std_logic_vector (6 downto 0) := "0000110"; --código número 6
constant bs7     :std_logic_vector (6 downto 0) := "0000111"; --código número 7
constant bs8     :std_logic_vector (6 downto 0) := "0001000"; --código número 8
constant bs9     :std_logic_vector (6 downto 0) := "0001001"; --código número 9
constant bs10     :std_logic_vector (6 downto 0) := "0001010"; --código número 10
constant bs11     :std_logic_vector (6 downto 0) := "0001011"; --código número 11
constant bs12     :std_logic_vector (6 downto 0) := "0001100"; --código número 12
constant bs13     :std_logic_vector (6 downto 0) := "0001101"; --código número 13
constant bs14     :std_logic_vector (6 downto 0) := "0001110"; --código número 14
constant bs15     :std_logic_vector (6 downto 0) := "0001111"; --código número 15
constant bs16     :std_logic_vector (6 downto 0) := "0010000"; --código número 16
constant bs17     :std_logic_vector (6 downto 0) := "0010001"; --código número 17
constant bs18     :std_logic_vector (6 downto 0) := "0010010"; --código número 18
constant bs19     :std_logic_vector (6 downto 0) := "0010011"; --código número 19
constant bs20     :std_logic_vector (6 downto 0) := "0010100"; --código número 20
constant bs21     :std_logic_vector (6 downto 0) := "0010101"; --código número 21
constant bs22     :std_logic_vector (6 downto 0) := "0010110"; --código número 22
constant bs23     :std_logic_vector (6 downto 0) := "0010111"; --código número 23
constant bs24     :std_logic_vector (6 downto 0) := "0011000"; --código número 24
constant bs25     :std_logic_vector (6 downto 0) := "0011001"; --código número 25
constant bs26     :std_logic_vector (6 downto 0) := "0011010"; --código número 26
constant bs27     :std_logic_vector (6 downto 0) := "0011011"; --código número 27
constant bs28     :std_logic_vector (6 downto 0) := "0011100"; --código número 28
constant bs29     :std_logic_vector (6 downto 0) := "0011101"; --código número 29
constant bs30     :std_logic_vector (6 downto 0) := "0011110"; --código número 30



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

end process;		
	

	
	seg_h <=   ds0 when result = bs0 else --0
	           ds1 when result = bs1 else --1
				  ds2 when result = bs2 else --2
				  ds3 when result = bs3 else --3
				  ds4 when result = bs4 else --4
			     ds5 when result = bs5 else --5
		        ds6 when result = bs6 else --6
	           ds7 when result = bs7 else --7
				  ds8 when result = bs8 else --8
				  ds9 when result = bs9 else --9
		        ds1 when result = bs10 else --10
	           ds1 when result = bs11 else --11
				  ds1 when result = bs12 else --12
				  ds1 when result = bs13 else --12
				  ds1 when result = bs14 else --14
			     ds1 when result = bs15 else --15
		        ds1 when result = bs16 else --16
	           ds1 when result = bs17 else --17
				  ds1 when result = bs18 else --18
				  ds1 when result = bs19 else --19
				  ds2 when result = bs20 else --20
	           ds2 when result = bs21 else --21
				  ds2 when result = bs22 else --22
				  ds2 when result = bs23 else --32
				  ds2 when result = bs24 else --24
			     ds2 when result = bs25 else --25
		        ds2 when result = bs26 else --26
	           ds2 when result = bs27 else --27
				  ds2 when result = bs28 else --28
				  ds2 when result = bs29 else --29
				  ds3 when result = bs30 else --30
	           dsn ;
	
	seg_l <=   ds0 when result = bs10 else --10
	           ds1 when result = bs11 else --11
				  ds2 when result = bs12 else --12
				  ds3 when result = bs13 else --12
				  ds4 when result = bs14 else --14
			     ds5 when result = bs15 else --15
		        ds6 when result = bs16 else --16
	           ds7 when result = bs17 else --17
				  ds8 when result = bs18 else --18
				  ds9 when result = bs19 else --19
				  ds0 when result = bs20 else --20
	           ds1 when result = bs21 else --21
				  ds2 when result = bs22 else --22
				  ds3 when result = bs23 else --23
				  ds4 when result = bs24 else --24
			     ds5 when result = bs25 else --25
		        ds6 when result = bs26 else --26
	           ds7 when result = bs27 else --27
				  ds8 when result = bs28 else --28
				  ds9 when result = bs29 else --29
				  ds0 when result = bs30 else --30
	           dsn ;

				  
	
	
end rtl;