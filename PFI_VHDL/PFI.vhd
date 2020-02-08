library ieee;
use ieee.std_logic_1164.all;

entity PFI is
	generic(
		n: integer 
	);

	port(
    	I, F1, F2, K1, K2, P, CLK, res : in std_logic;
    	Iout, F1out, F2out, K1out, K2out, Pout : out std_logic
	);
end PFI;

architecture PFI_struc of PFI is
	component bit_slice
		port (
			P_bit, I_bit, F1_bit, F2_bit, K1_bit, K2_bit, CLK, res: in std_logic;
			Pnext_bit, Inext_bit, F1next_bit, F2next_bit, K1next_bit, K2next_bit: out std_logic
		);
	end component;

	signal I_buff, F1_buff, F2_buff, K1_buff, K2_buff, P_buff : std_logic_vector(0 to n-1);

begin
	bit_slice_0 : bit_slice port map(
		res => res,
		P_bit => P,
		I_bit => I,
		F1_bit => F1,
		F2_bit => F2,
		K1_bit => K1,
		K2_bit => K2,
		CLK => CLK,
		Pnext_bit => P_buff(1),
		Inext_bit => I_buff(1), 
		F1next_bit => F1_buff(1), 
		F2next_bit => F2_buff(1), 
		K1next_bit => K1_buff(1), 
		K2next_bit => K2_buff(1)
	);

	bit_slice_gen: for i in 1 to (n-2) generate
		begin	
			bit_slice_i: bit_slice port map(
				res => res,
				P_bit => P_buff(i),
				I_bit => I_buff(i),
				F1_bit => F1_buff(i),
				F2_bit => F2_buff(i),
				K1_bit => K1_buff(i),
				K2_bit => K2_buff(i),
				CLK => CLK,
				Pnext_bit => P_buff(i+1),
				Inext_bit => I_buff(i+1), 
				F1next_bit => F1_buff(i+1), 
				F2next_bit => F2_buff(i+1), 
				K1next_bit => K1_buff(i+1), 
				K2next_bit => K2_buff(i+1)
			);
		end generate bit_slice_gen;
	

	bit_slice_n: bit_slice port map(
		res => res,
		P_bit => P_buff(n-1),
		I_bit => I_buff(n-1),
		F1_bit => F1_buff(n-1),
		F2_bit => F2_buff(n-1),
		K1_bit => K1_buff(n-1),
		K2_bit => K2_buff(n-1),
		CLK => CLK,
		Pnext_bit => Pout,
		Inext_bit => Iout, 
		F1next_bit => F1out, 
		F2next_bit => F2out, 
		K1next_bit => K1out, 
		K2next_bit => K2out
	);
end PFI_struc;