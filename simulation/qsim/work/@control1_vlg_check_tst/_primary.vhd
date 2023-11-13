library verilog;
use verilog.vl_types.all;
entity Control1_vlg_check_tst is
    port(
        D_I             : in     vl_logic_vector(3 downto 0);
        PD_PI           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Control1_vlg_check_tst;
