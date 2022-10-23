library verilog;
use verilog.vl_types.all;
entity Multiplier is
    port(
        Rst             : in     vl_logic;
        CLK             : in     vl_logic;
        SI              : in     vl_logic;
        Low             : out    vl_logic_vector(7 downto 0);
        High            : out    vl_logic_vector(7 downto 0);
        A_IN            : in     vl_logic_vector(7 downto 0);
        B_IN            : in     vl_logic_vector(7 downto 0)
    );
end Multiplier;
