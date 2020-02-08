library ieee;
use ieee.std_logic_1164.all;

entity bit_slice is
	port (
			P_bit, I_bit, F1_bit, F2_bit, K1_bit, K2_bit, CLK, res: in std_logic;
			Pnext_bit, Inext_bit, F1next_bit, F2next_bit, K1next_bit, K2next_bit: out std_logic
	);
end entity bit_slice;

architecture bit_slice_struc of bit_slice is
	component andgate
		port(
    	inp1, inp2 : in std_logic;
    	outp       : out std_logic
  		);
	end component;

	component norgate
		port(
    	inp1, inp2 : in std_logic;
   		outp       : out std_logic
  		);
	end component;

	component exorgate
		port(
		inp1, inp2 : in std_logic;
		outp : out std_logic
		);
	end component;

	component orgate
		port(
    		inp1, inp2 : in std_logic;
    		outp       : out std_logic
  		);
	end component;

	component notgate
		port(
    		inp: in std_logic;
    		outp: out std_logic
  		);
	end component;

	component a41MUX
		port(
			s1, s2, inp1, inp2, inp3, inp4 : in std_logic;
			outp : out std_logic
		);
	end component;

	component ff_reg
		port(
			res, clk, inp : in std_logic;
			reg_shift, outp: out std_logic
		);
	end component;

	signal I_in, F1_in, F2_in, K1_in, K2_in, A, B, C, D1, D2, E, F : std_logic;

begin
	I_reg : ff_reg port map(
		res => res,
		clk => CLK,
		inp => I_bit,
		outp => I_in,
		reg_shift => Inext_bit
	);

	F1_reg : ff_reg port map(
		res => res,
		clk => CLK,
		inp => F1_bit,
		outp => F1_in,
		reg_shift => F1next_bit
	);

	F2_reg : ff_reg port map(
		res => res,
		clk => CLK,
		inp => F2_bit,
		outp => F2_in,
		reg_shift => F2next_bit
	);

	K1_reg : ff_reg port map(
		res => res,
		clk => CLK,
		inp => K1_bit,
		outp => K1_in,
		reg_shift => K1next_bit
	);

	K2_reg : ff_reg port map(
		res => res,
		clk => CLK,
		inp => K2_bit,
		outp => K2_in,
		reg_shift => K2next_bit
	);

	f1 : andgate port map(
		inp1 => P_bit,
		inp2 => I_in,
		outp => A
	);

	f2 : norgate port map(
		inp1 => P_bit,
		inp2 => I_in,
		outp => B
	);

	f3 : exorgate port map(
		inp1 => P_bit,
		inp2 => I_in,
		outp => C
	);

	I_inv : notgate port map(
		inp => I_in,
		outp => D1
	);

	f4 : orgate port map(
		inp1 => P_bit,
		inp2 => D1,
		outp => D2
	);

	function_select : a41MUX port map(
		s1 => F1_in,
		s2 => F2_in,
		inp1 => A,
		inp2 => B,
		inp3 => C,
		inp4 => D2,
		outp => E
	);

	flip_fault :  notgate port map(
		inp => E,
		outp => F
	);

	fault_select : a41MUX port map(
		s1 => K1_in,
		s2 => K2_in,
		inp1 => F,
		inp2 => '0',
		inp3 => '1',
		inp4 => E,
		outp => Pnext_bit
	);

end bit_slice_struc;
