library ieee;
use ieee.std_logic_1164.all;

entity tb_bit_slice is
end tb_bit_slice;


architecture tb_behav of tb_bit_slice is
  
  component bit_slice
    port (
      P_bit, I_bit, F1_bit, F2_bit, K1_bit, K2_bit, CLK, res: in std_logic;
      Pnext_bit, Inext_bit, F1next_bit, F2next_bit, K1next_bit, K2next_bit: out std_logic
    );
    end component;

  signal t_P_bit, t_I_bit, t_F1_bit, t_F2_bit, t_K1_bit, t_K2_bit, t_CLK, t_res, t_Pnext_bit, t_Inext_bit, t_F1next_bit, t_F2next_bit, t_K1next_bit, t_K2next_bit : std_logic;

  begin

    U1 : bit_slice port map (t_P_bit, t_I_bit, t_F1_bit, t_F2_bit, t_K1_bit, t_K2_bit, t_CLK, t_res, t_Pnext_bit, t_Inext_bit, t_F1next_bit, t_F2next_bit, t_K1next_bit, t_K2next_bit);

    test_process : process
    begin

      t_res <= '0';

      t_P_bit <= '1';
      t_I_bit <= '0';
      t_F1_bit <= '0';
      t_F2_bit <= '0'; 
      t_K1_bit <= '1';
      t_K2_bit <= '1';
      t_CLK <= '0';
      wait for 20 ns;
      t_CLK <= '1';
      wait for 20 ns;

      t_P_bit <= '1';
      t_I_bit <= '0';
      t_F1_bit <= '0';
      t_F2_bit <= '1'; 
      t_K1_bit <= '1';
      t_K2_bit <= '1';
      t_CLK <= '0';
      wait for 20 ns;
      t_CLK <= '1';
      wait for 20 ns;

      t_P_bit <= '1';
      t_I_bit <= '0';
      t_F1_bit <= '1';
      t_F2_bit <= '0'; 
      t_K1_bit <= '1';
      t_K2_bit <= '1';
      t_CLK <= '0';
      wait for 20 ns;
      t_CLK <= '1';
      wait for 20 ns;

      t_P_bit <= '1';
      t_I_bit <= '0';
      t_F1_bit <= '1';
      t_F2_bit <= '1'; 
      t_K1_bit <= '1';
      t_K2_bit <= '1';
      t_CLK <= '0';
      wait for 20 ns;
      t_CLK <= '1';
      wait for 20 ns;

      t_P_bit <= '1';
      t_I_bit <= '0';
      t_F1_bit <= '0';
      t_F2_bit <= '0'; 
      t_K1_bit <= '0';
      t_K2_bit <= '0';
      t_CLK <= '0';
      wait for 20 ns;
      t_CLK <= '1';
      wait for 20 ns;

      t_P_bit <= '1';
      t_I_bit <= '0';
      t_F1_bit <= '0';
      t_F2_bit <= '0'; 
      t_K1_bit <= '1';
      t_K2_bit <= '0';
      t_CLK <= '0';
      wait for 20 ns;
      t_CLK <= '1';
      wait for 20 ns;

      t_P_bit <= '1';
      t_I_bit <= '0';
      t_F1_bit <= '0';
      t_F2_bit <= '0'; 
      t_K1_bit <= '0';
      t_K2_bit <= '1';
      t_CLK <= '0';
      wait for 20 ns;
      t_CLK <= '1';
      wait for 20 ns;
      
      wait;
      
    end process;

end tb_behav;

configuration CFG_TB_top of tb_bit_slice is
for tb_behav
end for;
end CFG_TB_top;
