library ieee;
use ieee.std_logic_1164.all;

-- x1 question 1 output, x2 question 2 output
-- x3 question 3 output
entity relatorio3 is
port(a, b, s: in bit;
	  i0, ia, i2, i3, s0, s1: in bit;
	  x1, x2, x3: out bit
	  );
end relatorio3;

architecture main of relatorio3 is
signal si1, si2: bit;
begin

x1 <= (not(s) and a) or (s and b);

--x3 <= (not(s0) and ((not(s1) and i0) or (s1 and i2))) or (s0 and ((not(s1) and ia) or (s1 and i3)));

with s select
	x2 <= a when '0',
		b when '1';
		
with s1 select
	si1 <= i0 when '0',
		i2 when '1';
with s1 select
	si2 <= ia when '0',
		i3 when '1';
with s0 select
	x3<= si1 when '0',
		si2 when '1';
		
end main;
