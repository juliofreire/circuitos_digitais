library ieee;
use ieee.std_logic_1164.all;

entity decoder is
port(
	a4, a3, a2, a1: in bit;
	s6, s5, s4, s3, s2, s1, s0: out bit
);

end decoder;

architecture main of decoder is
signal r, s6n, s5n, s4n, s3n, s2n, s1n, s0n : bit;
begin
r <= '1' when ((((a4 and not(a3)) and ((a2 and not(a1)) or (a2 and a1)))or((a4 and a3)and((not(a2) and not(a1) ) or (a2 and a1) or (not(a2) and a1) or (a2 and not(a1)))))
) = '1' else '0';
--a4a3'(a2a1'+a2a1) + a4a3(a2'a1' + a2a1  + a2'a1 + a2a1')

s6n <= '1' when (not(a4) and ((not(a3) and not(a2)) or (a3 and a2 and a1))) = '1' else '0';
--a4'(a3'a2'+a3a2a1)
s6 <= s6n or r;

s5n <= '1' when ((not (a4) and not (a3)) and ((not(a2) and (a1)) or (a2 and not(a1)) or (a2 and a1) or (not(a4) and a3 and a2 and a1))) = '1' else '0';
--a4'a3'(a2'a1 + a2a1' + a2a1) + a4'a3a2a1
s5 <= s5n or r;

s4n <= '1' when (((not (a3) and not(a2) and a1) or (not(a4) and a2 and a1) or (not(a4) and a3 and not(a2)))) = '1' else '0';
--a3'a2'a1 + a4'a2a1 + a4'a3a2'
s4 <= s4n or r;

s3n <= '1' when ( (not (a3) and not(a2) and a1) or ( (not(a4) and a3) and ( (not(a2) and not(a1)) or (a2 and a1) ) ) ) = '1' else '0';
--a3'a2'a1 + a4'a3(a2'a1' + a2a1)
s3 <= s3n or r;

s2n <= '1' when (not (a4) and not(a3) and a2 and not(a1)) = '1' else '0';
--a4'a3'a2a1'
s2 <= s2n or r;

s1n <= '1' when ( (not (a4) and a3) and ( (not(a2) and a1) or (a2 and not(a1)) ) ) = '1' else '0';
-- a4'a3(a2'a1 + a2a1')
s1 <= s1n or r;

s0n <= '1' when ( (not (a4) and not(a2)) and ( (not(a3) and a1) or (a3 and not(a1)) )) = '1' else '0';
--a4'a2'(a3'a1 + a3a1')
s0 <= s0n or r;

end architecture main;