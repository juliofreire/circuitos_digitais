library ieee;
use ieee.std_logic_1164.all;

entity data_path is
port(
	rt1, rt2 : in bit;
	t1, t2 : out bit;
	--d1, d2 : out bit;
	clk_d : in bit
);
end data_path;

architecture main of data_path is


	signal and_out, tc : bit;
	signal Tv, sub_in: integer;
	
	begin process(clk_d, rt1, rt2)
		variable c1 : integer range 20 downto 0;
		variable c2 : integer range 5 downto 0;
	begin
	
	if ( (clk_d 'event and clk_d='1') and (not(rt1) and rt2 and tc) = '0' ) then -- MUX
		sub_in <= c1;
		Tv <= c1;
	elsif ( (clk_d 'event and clk_d='1') and (not(rt1) and rt2 and tc) = '1' ) then
		sub_in <= c2;
		Tv <= c2;
	end if;
	
	if(clk_d 'event and clk_d = '1') then
		if(Tv=1)then
			tc <= not(tc);
			Tv <= Tv-1;
		elsif(Tv = 0) then
			Tv <= sub_in;
			tc <= tc;
		else 
			Tv <= Tv-1;
			tc <= tc;
		end if;
	end if;

	if ((clk_d 'event and clk_d='1') and (tc = '0')) then
		t1 <= '0';
		t2 <= '1';
	elsif ((clk_d 'event and clk_d='1') and (tc = '1')) then
		t1 <= '1';
		t2 <= '0';
	end if;
	end process;
	


end architecture main;