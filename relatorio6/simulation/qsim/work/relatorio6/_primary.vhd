library verilog;
use verilog.vl_types.all;
entity relatorio6 is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        tc              : out    vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end relatorio6;
