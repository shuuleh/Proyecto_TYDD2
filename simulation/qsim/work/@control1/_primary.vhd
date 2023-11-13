library verilog;
use verilog.vl_types.all;
entity Control1 is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        SI_SD           : in     vl_logic_vector(1 downto 0);
        D_I             : out    vl_logic_vector(3 downto 0);
        PD_PI           : out    vl_logic_vector(3 downto 0)
    );
end Control1;
