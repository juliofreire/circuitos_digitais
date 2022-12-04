library verilog;
use verilog.vl_types.all;
entity projeto_final_vlg_check_tst is
    port(
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        d1              : in     vl_logic;
        d2              : in     vl_logic;
        T               : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end projeto_final_vlg_check_tst;
