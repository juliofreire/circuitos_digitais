library ieee;
use ieee.std_logic_1164.all;
entity relatorio5 IS
port (I3, I2, I1, I0, c : in BIT;
		Q3, Q2, Q1, Q0: out BIT;
		O3, O2, O1, O0: out BIT);
end;

architecture main of relatorio5 is

	component latchD is
		port(D, c : in bit;
				Q : out bit);
	end component;
	
		component flipflopD is
		port(S, c : in bit;
				O : out bit);
	end component;

begin
	
	LD3: latchD PORT MAP(D => I3, c => c, Q => Q3);
	LD2: latchD PORT MAP(D => I2, c => c, Q => Q2);
	LD1: latchD PORT MAP(D => I1, c => c, Q => Q1);
	LD0: latchD PORT MAP(D => I0, c => c, Q => Q0);
	
	FFD3: flipflopD PORT MAP(S => I3, c => c, O => O3);
	FFD2: flipflopD PORT MAP(S => I2, c => c, O => O2);
	FFD1: flipflopD PORT MAP(S => I1, c => c, O => O1);
	FFD0: flipflopD PORT MAP(S => I0, c => c, O => O0);

end architecture main;