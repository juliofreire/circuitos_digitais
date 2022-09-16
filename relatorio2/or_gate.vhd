library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
port(
	in1, in2 : in bit;
	out1 : out bit
);
end or_gate;

architecture main of or_gate is

begin
out1 <= in1 or in2;

end architecture main;