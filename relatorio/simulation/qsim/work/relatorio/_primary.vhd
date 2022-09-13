library verilog;
use verilog.vl_types.all;
entity relatorio is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        q1              : out    vl_logic;
        q2              : out    vl_logic;
        id1             : out    vl_logic;
        id2             : out    vl_logic;
        id3             : out    vl_logic;
        rid1            : out    vl_logic;
        rid2            : out    vl_logic;
        rid3            : out    vl_logic;
        c211            : out    vl_logic;
        c212            : out    vl_logic;
        c221            : out    vl_logic;
        c222            : out    vl_logic;
        rc21            : out    vl_logic;
        rc22            : out    vl_logic;
        a311            : out    vl_logic;
        a312            : out    vl_logic;
        a321            : out    vl_logic;
        a322            : out    vl_logic;
        ra31            : out    vl_logic;
        ra32            : out    vl_logic;
        d411            : out    vl_logic;
        d412            : out    vl_logic;
        d421            : out    vl_logic;
        d422            : out    vl_logic
    );
end relatorio;
