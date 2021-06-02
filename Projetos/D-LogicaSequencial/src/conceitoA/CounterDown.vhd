-- Elementos de Sistemas
-- CounterDown.vhd

library ieee;
use ieee.std_logic_1164.all;

entity CounterDown is
	port(
		clock:  in std_logic;
		q:      out std_logic_vector(2 downto 0) :=(others => '0')
	);
end entity;

architecture arch of CounterDown is

	signal q0_neg, q1_neg, q2_neg : std_logic;
 	signal q0,q1,q2 : std_logic;
 
begin
 
 --FFT00: FlipFlopT port map(clock,'1',q0, q0_neg);
 --FFT01: FlipFlopT port map(q0,'1',q1, q1_neg);
 --FFT02: FlipFlopT port map(q1,'1',q2, q2_neg);
 
 --q(0)<=q0;
 --q(1)<=q1;
 --q(2)<=q2;

end architecture;
