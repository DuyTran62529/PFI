library ieee;
use ieee.std_logic_1164.all;

entity a21MUX is 
	port(
		s, inp1, inp2 : in std_logic;
		outp : out std_logic
	);
end a21MUX;

architecture a21MUX_behav of a21MUX is
begin
	a21MUX_process : process(s, inp1, inp2)
	begin
		if (s = '0') then
			outp <= not inp1 after 0.274 ns;
		elsif (s = '1') then
			outp <= not inp2 after 0.282 ns;
		end if;
	end process a21MUX_process;
end a21MUX_behav;