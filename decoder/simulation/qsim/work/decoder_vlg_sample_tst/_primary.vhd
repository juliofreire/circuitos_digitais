library verilog;
use verilog.vl_types.all;
entity decoder_vlg_sample_tst is
    port(
        a1              : in     vl_logic;
        a2              : in     vl_logic;
        a3              : in     vl_logic;
        a4              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end decoder_vlg_sample_tst;
