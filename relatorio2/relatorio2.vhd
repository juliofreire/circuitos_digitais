library ieee;
use ieee.std_logic_1164.all;

entity relatorio2 is
port(
	a, b, c : in bit;
	s1, s2: out bit
);

end relatorio2;

architecture main of relatorio2 is
	signal s11, s12, s13: bit;
	signal s21, s22, s23, s24: bit;
	
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
	
	inst11: or_gate PORT MAP(in1 => b, in2 => c, out1 => s11);
	inst12: and_gate PORT MAP(in1 => b, in2 => c, out1 => s12);
	inst13: and_gate PORT MAP(in1 => a, in2 => s11, out1 => s13);
	inst14: or_gate PORT MAP(in1 => s12, in2 => s13, out1 => s1);
	
	inst21: xnor_gate PORT MAP(in1 => b, in2 => c, out1 => s21);
	inst22: xor_gate PORT MAP(in1 => b, in2 => c, out1 => s22);
	inst23: and_gate PORT MAP(in1 => s21, in2 => a, out1 => s23);
	inst24: and_gate PORT MAP(in1 => not(a), in2 => s22, out1 => s24);
	inst25: or_gate PORT MAP(in1 => s23, in2 => s24, out1 => s2);

end architecture main;