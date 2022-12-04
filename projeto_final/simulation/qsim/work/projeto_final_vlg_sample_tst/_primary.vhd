library verilog;
use verilog.vl_types.all;
entity projeto_final_vlg_sample_tst is
    port(
        btn             : in     vl_logic;
        clk             : in     vl_logic;
        N               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end projeto_final_vlg_sample_tst;
