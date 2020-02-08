library ieee;
use ieee.std_logic_1164.all;

entity exorgate is
	port(
		inp1, inp2 : in std_logic;
		outp : out std_logic
	);
end exorgate;

architecture exorgate_behav of exorgate is
begin
	exorgate_process : process(inp1, inp2)
	begin
		outp <= inp1 xor inp2 after 0.23 ns;
	end process exorgate_process;
end exorgate_behav;
