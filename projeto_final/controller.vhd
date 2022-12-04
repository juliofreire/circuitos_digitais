library ieee;
use ieee.std_logic_1164.all;

entity controller is
port(
		N, t1, t2 : in bit;
		b1, b2, rt1, rt2 : out bit;
		clk: in bit;
		btn_reset: in bit;
		c0, c1 : out bit
);
end controller;

architecture main of controller is

	signal s1, s0, n1, n0: bit;
		
	begin process(clk, N, s1, s0, n1, n0, btn_reset)
	begin
		s1 <= n1;
		s0 <= n0;
		c0 <= s0;
		c1 <= s1;
		if ((clk 'event and clk='1') and btn_reset='1') then			
			n1 <= '0';
			n0 <= '0';
			rt1 <= '1';
		--end if;
		

	-- declarar rt1 e rt2;
		elsif((clk 'event and clk='1') and (s1= '0' and s0 = '0')) then -- estado init
			n0 <= '1';
			n1 <= '0';
			rt1 <= '1';
		elsif((clk 'event and clk='1') and (s1= '0' and s0 = '1')) then -- estado wait
			rt1 <= '0';
			rt2 <= '0';
			b2 <= '0';
			b1 <= '0';
			if(N ='0' and t1='1') then			
				n0 <= '0';
				n1 <= '1';
			elsif(N='1' and t1='0') then
				rt2 <= '1';
				n0  <= '1';
				n1  <= '1';
			end if;
		elsif((clk 'event and clk='1') and (s1= '1' and s0 = '0')) then -- estado enchendo
			b2<='0';
			if(N = '0') then
				b1 <= '1';
				n0 <= '0';
				n1 <= '1';
			else
				b1 <= '1';
				n0 <= '1';
				n1 <= '0';				
			end if;
		elsif((clk 'event and clk='1') and (s1= '1' and s0 = '1')) then -- estado regando
			b1<='0';
			if(N='1' and t2='1') then
				b2 <= '1';
				n0 <= '1';
				n1 <= '1';
			elsif(t2 = '0') then
				rt1 <= '1';
				b2 <= '1';
				n0 <= '1';
				n1 <= '0';
			end if;
		end if;
	end process;

end architecture main;