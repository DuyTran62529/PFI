library ieee;
use ieee.std_logic_1164.all;

entity orgate is
  port(
    inp1, inp2 : in std_logic;
    outp       : out std_logic
  );
end orgate;

architecture orgate_behav of orgate is
begin

   orgate_process : process (inp1, inp2)
   begin
  
     outp <= inp1 or inp2 after 0.247 ns;
  
   end process orgate_process;

end orgate_behav;
