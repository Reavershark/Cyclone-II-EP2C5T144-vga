library verilog;
use verilog.vl_types.all;
entity vga is
    port(
        clk_50          : in     vl_logic;
        vga_hsync       : out    vl_logic;
        vga_vsync       : out    vl_logic;
        vga_red         : out    vl_logic;
        vga_blue        : out    vl_logic;
        vga_green       : out    vl_logic;
        alive_led       : inout  vl_logic
    );
end vga;
