library verilog;
use verilog.vl_types.all;
entity TyDD_vlg_check_tst is
    port(
        D11             : in     vl_logic;
        D12             : in     vl_logic;
        D21             : in     vl_logic;
        D22             : in     vl_logic;
        locked          : in     vl_logic;
        Rueda1          : in     vl_logic;
        RuedaD          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end TyDD_vlg_check_tst;
