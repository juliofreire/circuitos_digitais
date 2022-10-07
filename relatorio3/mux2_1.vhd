library ieee;
use ieee.std_logic_1164.all;

-- x1 question 1 output, x2 question 2 output
-- x3 question 3 output
entity relatorio3 is
port(a, b, s: in bit;
	  i0, i1, i2, i3, s0, s1: in bit;
	  x1, x2, x3: out bit
	  );
end relatorio3;

architecture main of relatorio3 is
begin

x1 <= (not(s) and a) or (s and b);

x3 <= (not(s0) and ((not(s1) and i0) or (s1 and i2))) or (s0 and ((not(s1) and i1) or (s1 and i3)));

with s select
	x2 <= a when '0',
		b when '1';
end main;
