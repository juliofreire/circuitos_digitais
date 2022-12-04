library ieee;
use ieee.std_logic_1164.all;

entity relatorio6 is
port(
	clk: in bit;
	clr: in bit;
	tc: out bit;
	q: out integer range 15 downto 0
);
end relatorio6;

architecture behav of relatorio6 is
	begin process(clk, clr)
		variable qv: integer range 15 downto 0;
		
	begin
		if(clr = '1') then
		qv := 15;
		elsif(clk 'event and clk = '1') then
			if(qv=1)then
				tc<='1';
				qv := qv-1;
			elsif(qv = 0) then
				qv := 15;
				tc <= '0';
			else 
				qv := qv-1;
				tc<= '0';
			end if;
		end if;
		q <= qv;
	end process;
end;