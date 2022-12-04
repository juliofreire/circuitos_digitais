library verilog;
use verilog.vl_types.all;
entity projeto_final is
    port(
        clk             : in     vl_logic;
        N               : in     vl_logic;
        b1              : out    vl_logic;
        b2              : out    vl_logic;
        c0              : out    vl_logic;
        c1              : out    vl_logic
    );
end projeto_final;
