library ieee;
use ieee.std_logic_1164.all;

entity data_path is
port(
	rt1, rt2 : in bit;
	btn_reset: in bit;
	t1, t2 : out bit;
	T: out integer;
	clk_d : in bit
);
end data_path;

architecture main of data_path is


	signal and_out, tc : bit;
	signal Tv, sub_in: integer range 20 downto 0;
	
	begin process(clk_d, rt1, rt2, tc)
		variable c1 : integer range 20 downto 0;
		variable c2 : integer range 5 downto 0;
	begin
	
		if ((clk_d 'event and clk_d='1') and btn_reset='1') then			
		tc <= '1';
		Tv <= c1;
		end if;
	
	if ( (clk_d 'event and clk_d='1') and (not(rt1) and rt2 and tc) = '1' ) then -- MUX
			sub_in <= c1;

	elsif ( (clk_d 'event and clk_d='1') and (not(rt1) and rt2 and tc) = '0' ) then
			sub_in <= c2;
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
		T <= Tv;
	end if;
		
		t1 <= not(tc);
		t2 <= tc;

	end process;

end architecture main;