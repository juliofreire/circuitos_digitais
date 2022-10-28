library ieee;
use ieee.std_logic_1164.all;

entity decoder is
port(
	a1,a2,a3,a4: in bit;
	s0,s1,s2,s3,s4,s5,s6: out bit
	
);

end decoder;

architecture main of decoder is
	signal g0,g1,g2,g3,g4,g5,g6: bit;
	signal g7,g8,g9,g10,g11,g12,g13: bit;
	signal g14,g15,g16,g17,g18,g19,g20,g21: bit;
	
	signal s0n,s1n,s2n,s3n,s4n,s5n,s6n: bit;
	signal x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10: bit;
	
	
	component and_gate is
		port(in1, in2 : in bit;
			out1 : out bit);
	end component;
	
	component or_gate is
		port(in1, in2 : in bit;
			out1 : out bit);
	end component;
	
	component xor_gate is
		port(in1, in2 : in bit;
			out1 : out bit);
	end component;
	
	component xnor_gate is
		port(in1, in2 : in bit;
			out1 : out bit);
	end component;
		
begin
	--S0
	--a4'a2'(a3'a1 + a3a1') + 
	--a4a3'(a2a1'+a2a1) + a4a3(a2'a1' + a2a1  + a2'a1 + a2a1')
	
		r0: and_gate PORT MAP(in1 => a4, in2 => not(a3), out1 => x0); -- a4a3'
		r1: and_gate PORT MAP(in1 => a2, in2 => not(a1), out1 => x1); -- a2a1'
		r2: and_gate PORT MAP(in1 => a2, in2 => a1, out1 => x2); -- a2a1
		r3: and_gate PORT MAP(in1 => a4, in2 => a3, out1 => x3); --a4a3
		r4: xnor_gate PORT MAP(in1 => a2, in2 => a1, out1 => x4); -- a2'a1' + a2a1
		r5: xor_gate PORT MAP(in1 => a2, in2 => a1, out1 => x5); --a2'a1 + a2a1'
		r6: or_gate PORT MAP(in1 => x4, in2 => x5, out1 => x6); -- a2'a1' + a2a1  + a2'a1 + a2a1'
		r7: and_gate PORT MAP(in1 => x3, in2 => x6, out1 => x7); -- a4a3(a2'a1' + a2a1  + a2'a1 + a2a1')
		r8: or_gate PORT MAP(in1 => x2, in2 => x3, out1 => x8); -- (a2a1'+a2a1)
		r9: and_gate PORT MAP(in1 => x0, in2 => x8, out1 => x9); -- a4a3'(a2a1'+a2a1)
		r10: or_gate PORT MAP(in1 => x9, in2=> x7, out1 => x10); -- a4a3'(a2a1'+a2a1) + a4a3(a2'a1' + a2a1  + a2'a1 + a2a1')
		
		h0: and_gate PORT MAP(in1 => not(a4), in2 => not(a2), out1 => g0); -- a4'a2'
		h1: xor_gate PORT MAP(in1 => a3, in2 => a1, out1 => g1); -- a3'a1 + a3a1'
		h2: and_gate PORT MAP(in1 => g0, in2 => g1, out1 => s0n); -- a4'a2'(a3'a1 + a3a1')
		hs0: or_gate PORT MAP(in1 => s0n, in2 => x10, out1 => s0);
		
	--S1
	--a4'a3(a2'a1 + a2a1')+ x10
		h3: and_gate PORT MAP(in1 => not(a4), in2 => a3, out1 => g2); -- a4'a3
		h4: xor_gate PORT MAP(in1 => a2, in2 => a1, out1 => g3); -- a2'a1 + a2a1'
		h5: and_gate PORT MAP(in1 => g2, in2 => g3, out1 => s1n); -- a4'a3(a2'a1 + a2a1')
		hs1: or_gate PORT MAP(in1 => s1n, in2 => x10, out1 => s1);
		
	--S2
	--a4'a3'a2a1' + x10
		h6: and_gate PORT MAP(in1 => not(a4), in2 => not(a3), out1 => g4); --a4'a3'
		h7: and_gate PORT MAP(in1 => a2, in2 => not(a1), out1 => g5); -- a2a1'
		h8: and_gate PORT MAP(in1 => g4, in2 => g5, out1 => s2n); -- a4'a3'a2a1'
		hs2: or_gate PORT MAP(in1 => s2n, in2 => x10, out1 => s2);
		
	--S3
	--a3'a2'a1 + a4'a3(a2'a1' + a2a1) + x10
		h9: and_gate PORT MAP(in1 => not(a3), in2 => not(a2), out1 => g6); -- a3'a2'
		h10: and_gate PORT MAP(in1 => g6, in2 => a1, out1 => g7); --a3'a2'a1
		h11: and_gate PORT MAP(in1 => not(a4), in2 => a3, out1 => g8); --a4'a3
		h12: xnor_gate PORT MAP(in1 => a2, in2 => a1, out1 => g9); -- a2'a1' + a2a1
		h13: and_gate PORT MAP(in1 => g8, in2 => g9, out1 => g10); -- a4'a3(a2'a1' + a2a1)
		h14: or_gate PORT MAP(in1 => g7, in2 => g10, out1 => s3n); -- a3'a2'a1 + a4'a3(a2'a1' + a2a1)
		hs3: or_gate PORT MAP(in1 => s3n, in2 => x10, out1 => s3);
		
	--S4
	--a3'a2'a1 + a4'a2a1 + a4'a3a2'
	-- g7 + a4'a2a1 + a4'a3a2' + r10
		h15: and_gate PORT MAP(in1 => not(a4), in2 => a2, out1 => g11); -- a4'a2
		h16: and_gate PORT MAP(in1 => g11, in2 => a1, out1 => g12); -- a4'a2a1
		
		h17: or_gate PORT MAP(in1 => g7, in2 => g12, out1 => g13); -- g7 + a4'a2a1
		
		h18: and_gate PORT MAP(in1 => not(a4), in2 => a3, out1 => g14); -- a4'a3
		h19: and_gate PORT MAP(in1 => g14, in2 => not(a2), out1 => g15); -- a4'a3a2'
		h20: or_gate PORT MAP(in1 => g13, in2 => g15, out1 => s4n); -- g7 + a4'a2a1 + a4'a3a2'
		hs4: or_gate PORT MAP(in1 => s4n, in2 => x10, out1 => s4);
		
	--S5
	--a4'a3'(a2'a1 + a2a1' + a2a1) + a4'a3a2a1
	-- g4 (g3 + a2a1) + a4'a3a2a1 + r10
		h21: and_gate PORT MAP(in1 => a1, in2 => a2, out1 => g16); -- a2a1
		h22: or_gate PORT MAP(in1 => g16, in2 => g3, out1 => g17); -- g3 + a2a1
		h23: and_gate PORT MAP(in1 => g4, in2 => g17, out1 => g18); -- g4 (g3 + a2a1)
		
		h24: and_gate PORT MAP(in1 => g16, in2 => g14, out1 => g19); -- a4'a3a2a1
		h25: or_gate PORT MAP(in1 => g18, in2 => g19, out1 => s5n); -- g4 (g3 + a2a1) + a4'a3a2a1
		hs5: or_gate PORT MAP(in1 => s5n, in2 => x10, out1 => s5);

	--S6
	--a4'(a3'a2'+a3a2a1)
	-- a4'(g6 + a3g16) + r10
		h26: and_gate PORT MAP(in1 => a3, in2 => g16, out1 => g20); -- a3g16
		h27: or_gate PORT MAP(in1 => g6, in2 => g20, out1 => g21); -- g6 + a3g16
		h28: and_gate PORT MAP(in1 => not(a4), in2 => g21, out1 => s6n); -- a4'(a3'a2'+a3a2a1)
		hs6: or_gate PORT MAP(in1 => s6n, in2 => x10, out1 => s6);

		
	
	
end architecture main;