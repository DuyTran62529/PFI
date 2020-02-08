library ieee;
use ieee.std_logic_1164.all;

entity neg_dff is 
	port(
		en, d : in std_logic;
		q, qbar : out std_logic
	);
end neg_dff;

architecture neg_dff_behav of neg_dff is
begin
	neg_dff_process : process(en, d)
	begin
		if (falling_edge(en)) then
			q <= d after 0.376 ns;
			qbar <= not d after 0.376 ns;
		end if;
	end process neg_dff_process;
end neg_dff_behav;