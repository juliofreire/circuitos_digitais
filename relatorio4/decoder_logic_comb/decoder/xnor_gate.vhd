library ieee;
use ieee.std_logic_1164.all;

entity xnor_gate is
port(
	in1, in2 : in bit;
	out1 : out bit
);
end xnor_gate;

architecture main of xnor_gate is

begin
out1 <= not((not(in1) and in2) or (in1 and not(in2)));

end architecture main;