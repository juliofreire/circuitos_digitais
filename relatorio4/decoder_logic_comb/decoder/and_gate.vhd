library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
port(
	in1, in2 : in bit;
	out1 : out bit
);
end and_gate;

architecture main of and_gate is

begin
out1 <= in1 and in2;

end architecture main;