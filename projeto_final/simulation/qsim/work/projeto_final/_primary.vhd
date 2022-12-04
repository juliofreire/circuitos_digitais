library verilog;
use verilog.vl_types.all;
entity projeto_final is
    port(
        clk             : in     vl_logic;
        N               : in     vl_logic;
        btn             : in     vl_logic;
        T               : out    vl_logic_vector(31 downto 0);
        b1              : out    vl_logic;
        b2              : out    vl_logic;
        c0              : out    vl_logic;
        c1              : out    vl_logic;
        d1              : out    vl_logic;
        d2              : out    vl_logic
    );
end projeto_final;
