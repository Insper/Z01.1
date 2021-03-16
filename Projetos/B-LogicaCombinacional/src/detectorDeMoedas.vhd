library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detectorDeMoedas is
	port (
    Q,D,N : in  STD_LOGIC;
    cents     : out STD_LOGIC_VECTOR(4 downto 0));
end entity;

architecture arch of detectorDeMoedas is

begin
	
	cents <= "00000" when Q='0' + D='0' + N='0' else
				"00001" when Q='0' + D='0' + N='1' else
				"01010" when Q='0' + D='1' + N='0' else
				"11001" when Q='1' + D='0' + N='0' else
				"01011" when Q='0' + D='1' + N='1' else
				"11111" when Q='1' + D='1' + N='0' else
				"11010" when Q='1' + D='0' + N='1' else
				"11111" when Q='1' + D='1' + N='1' else;

end architecture;
