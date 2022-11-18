library ieee;
use ieee.std_logic_1164.all;

entity latchD is
port (D, c : in bit;
				 Q: out bit);
end latchD;

architecture main of latchD is
begin
process(D, c)
begin
	if(c = '1' and D = '0') then 
		Q<='0';
	elsif(c = '1' and D = '1') then
		Q<='1';
	end if;
end process;

end architecture main;