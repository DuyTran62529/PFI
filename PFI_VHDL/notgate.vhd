library ieee;
use ieee.std_logic_1164.all;

entity notgate is
  port(
    inp: in std_logic;
    outp: out std_logic
  );
end notgate;

architecture notgate_behav of notgate is
begin

   notgate_process : process (inp)
   begin
  
     outp <= not inp after 0.052 ns;
  
   end process notgate_process;

end notgate_behav;