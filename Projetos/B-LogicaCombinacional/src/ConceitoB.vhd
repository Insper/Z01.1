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

---------------
-- implementacao
---------------
begin

with SW(3 downto 0) select
		HEX2 <= "0000001" when "0000",
              "1001111" when "0001",
              "0010010" when "0010",
              "0000110" when "0011",
              "1001100" when "0100",
              "0101100" when "0101",
              "0100000" when "0110",
              "0001111" when "0111",
              "0000000" when "1000",
              "0001100" when "1001",
              "0001000" when "1010",
              "1100000" when "1011",
              "0110001" when "1100",
              "1000010" when "1101",
              "0110000" when "1110",
              "0111000" when others;
				  
with SW(7 downto 4) select
	
		HEX1 <= "0000001" when "0000",
              "1001111" when "0001",
              "0010010" when "0010",
              "0000110" when "0011",
              "1001100" when "0100",
              "0101100" when "0101",
              "0100000" when "0110",
              "0001111" when "0111",
              "0000000" when "1000",
              "0001100" when "1001",
              "0001000" when "1010",
              "1100000" when "1011",
              "0110001" when "1100",
              "1000010" when "1101",
              "0110000" when "1110",
              "0111000" when others;
				  
with SW(9 downto 8) select

		HEX0 <= "0000001" when "00",
				  "1001111" when "01",
				  "0101101" when "10",
				  "0000110" when others;
end rtl;
