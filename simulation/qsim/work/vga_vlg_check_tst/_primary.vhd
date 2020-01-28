library verilog;
use verilog.vl_types.all;
entity vga_vlg_check_tst is
    port(
        alive_led       : in     vl_logic;
        vga_blue        : in     vl_logic;
        vga_green       : in     vl_logic;
        vga_hsync       : in     vl_logic;
        vga_red         : in     vl_logic;
        vga_vsync       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end vga_vlg_check_tst;
