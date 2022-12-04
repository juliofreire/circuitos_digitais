library ieee;
use ieee.std_logic_1164.all;

entity projeto_final is
port(
	clk, N : in bit;
	b1, b2: out bit;
	c0, c1 : out bit
);

end projeto_final;

architecture main of projeto_final is
	signal rt1, rt2, t1, t2: bit;

	
	component controller is
		port(N, t1, t2, clk : in bit;
			b1, b2, rt1, rt2, c0, c1 : out bit);
	end component;
	
		component data_path is
		port(rt1, rt2 : in bit;
			t1, t2 : out bit);
	end component;
	
begin
	--t1 <= '0';
	--t2 <= '0';
	
	inst_control: controller PORT MAP(N => N, t1 => t1, t2 => t2, clk => clk, b1 => b1, b2 => b2, rt1 => rt1, rt2 => rt2, c0 => c0, c1 => c1);
	
	inst_datapath: data_path PORT MAP(rt1 => rt1, rt2 => rt2, t1 => t1, t2 => t2);
	
end architecture main;