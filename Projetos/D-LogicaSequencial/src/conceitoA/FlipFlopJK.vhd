-- Elementos de Sistemas
-- FlipFlopJK.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopJK is
	port(
		clock:  in std_logic;
		J:      in std_logic;
		K:      in std_logic;
		q:      out std_logic:= '0';
		notq:   out std_logic:= '1'
	);
end entity;

architecture arch of FlipFlopJK is

begin
process(clock, J, K) begin
		if (J = '1') then
			q <='1';
			notq <= '0';
		elsif (K = '1') then
			q <='0';
			notq <= '1';	
		elsif (rising_edge(CLOCK)) then
			q <='1';
			notq <= '0';
		end if;
  end process;

end architecture;
