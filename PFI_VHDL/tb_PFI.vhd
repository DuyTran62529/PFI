library ieee;
use ieee.std_logic_1164.all;

entity tb_PFI is
end tb_PFI;


architecture tb_behav of tb_PFI is
  
  component PFI
    generic(
      n: integer 
    );
    port(
      I, F1, F2, K1, K2, P, CLK, res : in std_logic;
      Iout, F1out, F2out, K1out, K2out, Pout : out std_logic
    );
    end component;

  constant bit_width : integer := 30;
  signal t_I, t_F1, t_F2, t_K1, t_K2, t_P, t_CLK, t_res, t_Iout, t_F1out, t_F2out, t_K1out, t_K2out, t_Pout : std_logic;

  begin

    U1 : PFI 
    generic map (bit_width)
    port map (t_I, t_F1, t_F2, t_K1, t_K2, t_P, t_CLK, t_res, t_Iout, t_F1out, t_F2out, t_K1out, t_K2out, t_Pout);

--Test strategy
--I = 0101 0101 0101 0101
--F1= 1100 1100 1100 1100
--F2= 1010 1010 1010 1010
--K1= 0110 0011 1001 1100
--K2= 0101 1010 0101 1010
--P = 1 througout
--16 cycles in 16 cycles out 

    test_process : process
    begin
      
      t_res <= '1';
      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_res <= '0';

      t_CLK <= '0';
      t_I <= '0';
      t_F1 <= '1';
      t_F2 <= '1';
      t_K1 <= '0';
      t_K2 <= '0';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '1';
      t_F1 <= '1';
      t_F2 <= '0';
      t_K1 <= '1';
      t_K2 <= '1';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '1';
      t_F1 <= '0';
      t_F2 <= '1';
      t_K1 <= '1';
      t_K2 <= '0';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '1';
      t_F1 <= '0';
      t_F2 <= '0';
      t_K1 <= '0';
      t_K2 <= '1';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '0';
      t_F1 <= '1';
      t_F2 <= '1';
      t_K1 <= '0';
      t_K2 <= '1';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '1';
      t_F1 <= '1';
      t_F2 <= '0';
      t_K1 <= '0';
      t_K2 <= '0';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '0';
      t_F1 <= '0';
      t_F2 <= '1';
      t_K1 <= '1';
      t_K2 <= '1';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '1';
      t_F1 <= '0';
      t_F2 <= '0';
      t_K1 <= '1';
      t_K2 <= '0';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '0';
      t_F1 <= '1';
      t_F2 <= '1';
      t_K1 <= '1';
      t_K2 <= '0';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '1';
      t_F1 <= '1';
      t_F2 <= '0';
      t_K1 <= '0';
      t_K2 <= '1';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '0';
      t_F1 <= '0';
      t_F2 <= '1';
      t_K1 <= '0';
      t_K2 <= '0';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '1';
      t_F1 <= '0';
      t_F2 <= '0';
      t_K1 <= '1';
      t_K2 <= '1';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '0';
      t_F1 <= '1';
      t_F2 <= '1';
      t_K1 <= '1';
      t_K2 <= '1';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '';
      t_I <= '1';
      t_F1 <= '1';
      t_F2 <= '0';
      t_K1 <= '1';
      t_K2 <= '0';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '0';
      t_F1 <= '0';
      t_F2 <= '1';
      t_K1 <= '0';
      t_K2 <= '1';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      t_I <= '1';
      t_F1 <= '0';
      t_F2 <= '0';
      t_K1 <= '0';
      t_K2 <= '0';
      t_P <= '1';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      t_CLK <= '0';
      wait for 10 ns;
      t_CLK <= '1';
      wait for 10 ns;

      wait;
      
    end process;

end tb_behav;

configuration CFG_TB_top of tb_PFI is
for tb_behav
end for;
end CFG_TB_top;
