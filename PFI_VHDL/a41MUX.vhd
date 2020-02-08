library ieee;
use ieee.std_logic_1164.all;

entity a41MUX is 
	port(
		s1, s2, inp1, inp2, inp3, inp4 : in std_logic;
		outp : out std_logic
	);
end a41MUX;

architecture a41MUX_struc of a41MUX is
	component a21MUX
		port (
			s, inp1, inp2 : in std_logic;
			outp: out std_logic
		);
	end component;

	signal a12_outp, a34_outp : std_logic;

begin
	a21MUX_12 : a21MUX port map(
		s => s2,
		inp1 => inp1,
		inp2 => inp2,
		outp => a12_outp
	);

	a21MUX_34 : a21MUX port map(
		s => s2,
		inp1 => inp3,
		inp2 => inp4,
		outp => a34_outp
	);

	a21MUX_mselect : a21MUX port map(
		s => s1,
		inp1 => a12_outp,
		inp2 => a34_outp,
		outp => outp
	);

end a41MUX_struc;