library verilog;
use verilog.vl_types.all;
entity Reg_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        D_IN            : in     vl_logic_vector(3 downto 0);
        ENABLE          : in     vl_logic;
        RST             : in     vl_logic;
        SI              : in     vl_logic;
        SLOAD           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Reg_vlg_sample_tst;
