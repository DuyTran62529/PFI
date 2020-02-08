library ieee;
use ieee.std_logic_1164.all;

entity tb_a41MUX is
end tb_a41MUX;


architecture tb_behav of tb_a41MUX is
  
  component a41MUX
    port(
      s1, s2, inp1, inp2, inp3, inp4 : in std_logic;
      outp : out std_logic
    );
    end component;

  signal t_s1, t_s2, t_inp1, t_inp2, t_inp3, t_inp4, t_outp : std_logic;

  begin

    U1 : a41MUX port map (t_s1, t_s2, t_inp1, t_inp2, t_inp3, t_inp4, t_outp);

    test_process : process
    begin
     
      t_s1 <= '0';
      t_s2 <= '0';
      t_inp1 <= '1';
      t_inp2 <='0';
      t_inp3 <= '0';
      t_inp4 <= '0';
      wait for 20 ns;

      t_s1 <= '0';
      t_s2 <= '1';
      t_inp1 <= '0';
      t_inp2 <='1';
      t_inp3 <= '0';
      t_inp4 <= '0';
      wait for 20 ns;

      t_s1 <= '1';
      t_s2 <= '0';
      t_inp1 <= '0';
      t_inp2 <='0';
      t_inp3 <= '1';
      t_inp4 <= '0';
      wait for 20 ns;

      t_s1 <= '1';
      t_s2 <= '1';
      t_inp1 <= '0';
      t_inp2 <='0';
      t_inp3 <= '0';
      t_inp4 <= '1';
      wait for 20 ns;

      wait;
      
    end process;

end tb_behav;

configuration CFG_TB_top of tb_a41MUX is
for tb_behav
end for;
end CFG_TB_top;
