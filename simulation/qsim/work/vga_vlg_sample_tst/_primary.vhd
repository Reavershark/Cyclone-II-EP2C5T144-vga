library verilog;
use verilog.vl_types.all;
entity vga_vlg_sample_tst is
    port(
        alive_led       : in     vl_logic;
        clk_50          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end vga_vlg_sample_tst;
