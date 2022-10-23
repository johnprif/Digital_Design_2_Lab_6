library verilog;
use verilog.vl_types.all;
entity Multiplier_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Rst             : in     vl_logic;
        SI              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Multiplier_vlg_sample_tst;
