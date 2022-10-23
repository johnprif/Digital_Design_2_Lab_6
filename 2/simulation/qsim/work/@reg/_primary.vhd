library verilog;
use verilog.vl_types.all;
entity Reg is
    port(
        D_IN            : in     vl_logic_vector(7 downto 0);
        SI              : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        SLOAD           : in     vl_logic;
        ENABLE          : in     vl_logic;
        SO              : out    vl_logic;
        D_OUT           : out    vl_logic_vector(7 downto 0)
    );
end Reg;
