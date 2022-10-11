library ieee;
use ieee.std_logic_1164.all;

entity mux_2x1 is
port(
	in1, in2, selector : in bit;
	out1 : out bit
);
end mux_2x1;

architecture main of mux_2x1 is

begin
with selector select
	out1 <= in1 when '0',
			in2 when '1';

end architecture main;