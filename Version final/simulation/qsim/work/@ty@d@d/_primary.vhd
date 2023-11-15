library verilog;
use verilog.vl_types.all;
entity TyDD is
    port(
        Rueda1          : out    vl_logic;
        clk             : in     vl_logic;
        pin_name2       : in     vl_logic;
        pin_name3       : in     vl_logic;
        RuedaD          : out    vl_logic;
        pin_name4       : in     vl_logic;
        pin_name5       : in     vl_logic;
        D11             : out    vl_logic;
        D12             : out    vl_logic;
        D21             : out    vl_logic;
        D22             : out    vl_logic;
        locked          : out    vl_logic
    );
end TyDD;
