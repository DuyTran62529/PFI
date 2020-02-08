library ieee;
use ieee.std_logic_1164.all;

entity norgate is
  port(
    inp1, inp2 : in std_logic;
    outp       : out std_logic
  );
end norgate;

architecture norgate_behav of norgate is
begin

  norgate_process: process (inp1, inp2)
  begin
 
    outp <= inp1 nor inp2 after 0.138 ns;

  end process norgate_process;

end norgate_behav;