----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity ConceitoB is
	port(
		CLOCK_50 : in  std_logic;
		SW       : in  std_logic_vector(9 downto 0);
        HEX0     : out std_logic_vector(6 downto 0); -- 7seg0
        HEX1     : out std_logic_vector(6 downto 0); -- 7seg0
        HEX2     : out std_logic_vector(6 downto 0); -- 7seg0
		LEDR     : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of ConceitoB is

--------------
-- signals
--------------
	component sevenSeg is
		port(
			bcd : in  STD_LOGIC_VECTOR(3 downto 0);
			leds: out STD_LOGIC_VECTOR(6 downto 0));
end component;
---------------
-- implementacao
---------------
begin
	u1: sevenSeg port map(
		bcd => SW(3 downto 0),
		leds => HEX2, 
	);
	with SW(7 downto 4) select
		HEX1 <= "0000001" when "0000", --0
				"1001111" when "0001", --1 
				"0101101" when "0010", --2
				"0000110" when "0011", --3
				"1001100" when "0100", --4
				"0100100" when "0101", --5
				"0100000" when "0110", --6
				"0001111" when "0111", --7
				"0000000" when "1000", --8
				"0000100" when "1001", --9
				"0000010" when "1010", --A
				"1100000" when "1011", --B
				"1110010" when "1100", --C
				"1000010" when "1101", --D
				"0110000" when "1110", --E
				"0111000" when "1111", --F
				"1111111" when others; --Branco caso nao seja um digito
	with SW(9 downto 8) select
		HEX0 <= "0000001" when "00", --0
				"1001111" when "01", --1 
				"0101101" when "10", --2
				"0000110" when "11", --3
				"1111111" when others; --Branco caso nao seja um digito

end rtl;
