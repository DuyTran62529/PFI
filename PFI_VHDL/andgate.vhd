library ieee;
use ieee.std_logic_1164.all;

entity andgate is
  port(
    inp1, inp2 : in std_logic;
    outp       : out std_logic
  );
end andgate;

architecture andgate_behav of andgate is
begin

  andgate_process: process (inp1, inp2)
  begin
 
    outp <= inp1 and inp2 after 0.15 ns;

  end process andgate_process;

end andgate_behav;
