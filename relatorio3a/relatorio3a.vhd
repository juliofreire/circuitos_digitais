library ieee;
use ieee.std_logic_1164.all;

-- x1 question 1 output, x2 question 2 output
-- x3 question 3 output
entity relatorio3a is
port(i0, ia, i2, i3, s0, s1: in bit;
	  x: out bit
	  );
end relatorio3a;

architecture main of relatorio3a is
begin

x <= (not(s0) and ((not(s1) and i0) or (s1 and i2))) or (s0 and ((not(s1) and ia) or (s1 and i3)));

end main;