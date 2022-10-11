library ieee;
use ieee.std_logic_1164.all;

-- x1 question 1 output, x2 question 2 output
-- x3 question 3 output
entity relatorio3a is
port(i0, ia, i2, i3, s0, s1: in bit;
	  x, x1: out bit
	  );
end relatorio3a;

architecture main of relatorio3a is
signal select1, select2: bit;

component mux_2x1 is
port(in1, in2, selector: in bit;
	  out1: out bit);
	end component;

begin

x <= (not(s0) and ((not(s1) and i0) or (s1 and i2))) or (s0 and ((not(s1) and ia) or (s1 and i3)));

insts1: mux_2x1 PORT MAP(in1 => i0, in2=> i2, selector => s1, out1=> select1);
insts2: mux_2x1 PORT MAP(in1 => ia, in2=> i3, selector => s1, out1=> select2);
insts3: mux_2x1 PORT MAP(in1 => select1, in2=> select2, selector => s0, out1=> x1);


end main;