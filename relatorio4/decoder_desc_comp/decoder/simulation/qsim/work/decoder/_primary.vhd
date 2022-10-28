library verilog;
use verilog.vl_types.all;
entity decoder is
    port(
        a4              : in     vl_logic;
        a3              : in     vl_logic;
        a2              : in     vl_logic;
        a1              : in     vl_logic;
        s6              : out    vl_logic;
        s5              : out    vl_logic;
        s4              : out    vl_logic;
        s3              : out    vl_logic;
        s2              : out    vl_logic;
        s1              : out    vl_logic;
        s0              : out    vl_logic
    );
end decoder;
