library ieee;
use ieee.std_logic_1164.all;

entity tb_ff_reg is
end tb_ff_reg;


architecture tb_behav of tb_ff_reg is
  
  component ff_reg
    port(
      res, inp, clk : in std_logic;
      reg_shift, outp: out std_logic
    );
    end component;

  signal t_res, t_clk, t_inp, t_reg_shift, t_outp : std_logic;

  begin

    U1 : ff_reg port map (
    res => t_res,
    clk => t_clk,
    inp => t_inp,
    reg_shift => t_reg_shift, 
    outp => t_outp
    );

    test_process : process
    begin
      t_clk <= '1';
      wait for 20 ns;

      t_clk <= '0';
      wait for 20 ns;

      t_clk <= '1';
      wait for 20 ns;

      t_clk <= '0';
      t_res <= '1';
      wait for 20 ns;

      t_clk <= '1';
      wait for 20 ns;

      t_clk <= '0';
      t_res <= '0';
      t_inp <= '1';
      wait for 20 ns;

      t_clk <= '1';
      wait for 20 ns;

      t_clk <= '0';
      t_inp <= '0';
      wait for 20 ns;

      t_clk <= '1';
      wait for 20 ns;

      t_clk <= '0';
      t_inp <= '1';
      wait for 20 ns;

      t_clk <= '1';
      wait for 20 ns;

      t_clk <= '0';
      wait for 20 ns;

      t_clk <= '1';
      wait for 20 ns;

      t_clk <= '0';
      wait for 20 ns;

      t_clk <= '1';
      wait for 20 ns;

      t_clk <= '0';
      wait for 20 ns;

      wait;
      
    end process;

end tb_behav;

configuration CFG_TB_top of tb_ff_reg is
for tb_behav
end for;
end CFG_TB_top;
