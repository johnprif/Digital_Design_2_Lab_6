library verilog;
use verilog.vl_types.all;
entity Reg_vlg_check_tst is
    port(
        D_OUT           : in     vl_logic_vector(3 downto 0);
        SO              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Reg_vlg_check_tst;
