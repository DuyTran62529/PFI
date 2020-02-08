library ieee;
use ieee.std_logic_1164.all;

entity ff_reg is 
	port(
		res, clk, inp : in std_logic;
		reg_shift, outp: out std_logic
	);
end ff_reg;

architecture ff_reg_struc of ff_reg is

	component a21MUX
		port(
		s, inp1, inp2 : in std_logic;
		outp : out std_logic
		);
	end component;

	component notgate
		port(
		inp: in std_logic;
    	outp: out std_logic
		);
	end component; 

	component pos_dff
		port(
		en, d : in std_logic;
		q, q2, qbar : out std_logic
		);
	end component;

	component neg_dff
		port(
		en, d : in std_logic;
		q, qbar : out std_logic
		);
	end component;

	signal inv_in, pos_inp, pos_outp : std_logic;

begin
	res_mux : a21MUX port map(
		s => res,
		inp1 => inp,
		inp2 => '0',
		outp => inv_in
	);

	res_inv : notgate port map(

		inp => inv_in,
		outp => pos_inp
	);

	in_dff : pos_dff port map(
		en => clk,
		d => pos_inp,
		q => outp,
		q2 => pos_outp
	);

	out_dff : neg_dff port map(
		en => clk,
		d => pos_outp,
		q => reg_shift
	);

end ff_reg_struc;