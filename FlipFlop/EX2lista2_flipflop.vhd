library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity EX2lista2_flipflop is

 port
(
CLK: in std_logic;
D : in std_logic_vector(3 downto 0);
Q : out std_logic_vector(3 downto 0);
rst : in std_logic
);

end entity;

architecture rtl of EX2lista2_flipflop is

begin
-- Exercício 1 - Registrador de 4 bits
process(clk, rst)
begin
if rst ='0' then  --se reset, coloca a saída q em 0--
    q<="0000";
  elsif rising_edge(clk) then
      q(3 downto 0) <= d(3 downto 0);
--q <= d;
end if;
end process;

end rtl;