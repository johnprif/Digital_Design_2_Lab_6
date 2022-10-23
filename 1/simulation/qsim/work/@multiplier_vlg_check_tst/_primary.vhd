library verilog;
use verilog.vl_types.all;
entity Multiplier_vlg_check_tst is
    port(
        High            : in     vl_logic_vector(3 downto 0);
        Low             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Multiplier_vlg_check_tst;
