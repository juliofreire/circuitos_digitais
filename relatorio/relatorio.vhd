library ieee;
use ieee.std_logic_1164.all;

entity relatorio is
port(
	a, b, c : in bit;
	
	q1, q2: out bit;
	
	id1, id2, id3: out bit;
	rid1, rid2, rid3: out bit;
	
	c211, c212, c221, c222: out bit;
	rc21, rc22 : out bit;
	
	a311, a312, a321, a322: out bit;
	ra31, ra32: out bit;
	
	d411, d412, d421, d422: out bit;
	rd41, rd42: out bit
);

end relatorio;

architecture main of relatorio is
begin

q1 <= a or a; -- response of question 1

q2 <= a and b; -- response of question 2

-- identities

id1 <= a or '0';
id2 <= a and '1';
id3 <= not(not(a));

rid1 <= '1' when (a or '0') = a else '0';
rid2 <= '1' when (a and '1') = a else '0';
rid3 <= '1' when not(not(a)) = a else '0';

-- commutativity 
-- addtivitiy
c211 <= a or b;
c212 <= b or a;
-- multiplicity
c221 <= a and b;
c222 <= b and a;

rc21  <= '1' when (a or b) = (b or a) else '0';
rc22  <= '1' when (a and b) = (b and a) else '0';

-- associativity
-- add
a311 <= a or (b or c);
a312 <= (a or b) or c;
-- mult
a321 <= a and(b and c);
a322 <= (a and b) and c;

ra31 <= '1' when (a or(b or c)) = ((a or b) or c) else '0';
ra32 <= '1' when (a and(b and c)) = ((a and b) and c) else '0';

-- distributivity
-- add
d411 <= a and (b or c);
d412 <= (a and b) or (a and c);

d421 <= a or (b and c);
d422 <= (a or b) and (a or c);


rd41 <= '1' when (a and(b or c)) = ((a and b) or (a and c)) else '0';
rd42 <= '1' when (a or(b and c)) = ((a or b) and (a or c)) else '0';

end architecture main;