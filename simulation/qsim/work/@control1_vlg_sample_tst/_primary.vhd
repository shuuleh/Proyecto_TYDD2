library verilog;
use verilog.vl_types.all;
entity Control1_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        SI_SD           : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Control1_vlg_sample_tst;
