-- Elementos de Sistemas
-- by Luciano Soares
-- Add16.vhd

-- Soma dois valores de 16 bits
-- ignorando o carry mais significativo

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Add16 is
	port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		b   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Add16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

  signal carry : std_logic_vector(15 downto 0);

  component FullAdder is
    port(
      a,b,c:      in STD_LOGIC;   -- entradas
      soma,vaium: out STD_LOGIC   -- sum e carry
    );
  end component;

begin
  -- Implementação vem aqui!
      soma0: FullAdder port map(a(0), b(0), '0', q(0), carry(1));
      soma1: FullAdder port map(a(1), b(1), carry(1), q(1), carry(2));
      soma2: FullAdder port map(a(2), b(2), carry(2), q(2), carry(3));
      soma3: FullAdder port map(a(3), b(3), carry(3), q(3), carry(4));
      soma4: FullAdder port map(a(4), b(4), carry(4), q(4), carry(5));
      soma5: FullAdder port map(a(5), b(5), carry(5), q(5), carry(6));
      soma6: FullAdder port map(a(6), b(6), carry(6), q(6), carry(7));
      soma7: FullAdder port map(a(7), b(7), carry(7), q(7), carry(8));
      soma8: FullAdder port map(a(8), b(8), carry(8), q(8), carry(9));
      soma9: FullAdder port map(a(9), b(9), carry(9), q(9), carry(10));
      soma10: FullAdder port map(a(10), b(10), carry(10),q(10), carry(11));
      soma11: FullAdder port map(a(11), b(11), carry(11),q(11), carry(12));
      soma12: FullAdder port map(a(12), b(12), carry(12),q(12), carry(13));
      soma13: FullAdder port map(a(13), b(13), carry(13),q(13), carry(14));
      soma14: FullAdder port map(a(14), b(14), carry(14),q(14), carry(15));
      soma15: FullAdder port map(a(15), b(15), carry(15),q(15));

      end architecture;
