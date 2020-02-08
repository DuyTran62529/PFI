library ieee;
use ieee.std_logic_1164.all;

entity pos_dff is 
	port(
		en, d : in std_logic;
		q, q2, qbar : out std_logic
	);
end pos_dff;

architecture pos_dff_behav of pos_dff is
begin
	pos_dff_process : process(en, d)
	begin
		if (rising_edge(en)) then
			q <= d after 0.406 ns;
			q2 <= d after 0.406 ns;
			qbar <= not d after 0.406 ns;
		end if;
	end process pos_dff_process;
end pos_dff_behav;