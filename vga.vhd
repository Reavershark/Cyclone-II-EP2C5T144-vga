library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity vga is
    port(
        clk : in std_logic;
        vga_hsync : out std_logic;
        vga_vsync : out std_logic;
        vga_red : out std_logic;
        vga_blue : out std_logic;
        vga_green : out std_logic
    );
end;

architecture logic of vga is

    -- Horizontal timing (line)
    constant h_v_length         : integer := 800;
    constant h_fp_length        : integer := 56;
    constant h_sync_length      : integer := 120;
    constant h_bp_length        : integer := 64;
    constant h_length           : integer := h_v_length + h_fp_length + h_sync_length + h_bp_length;
    
    -- Vertical timing (frame)
    constant v_v_length         : integer := 600;
    constant v_fp_length        : integer := 37;
    constant v_sync_length      : integer := 6;
    constant v_bp_length        : integer := 23;
    constant v_length           : integer := v_v_length + v_fp_length + v_sync_length + v_bp_length;

    signal h_pos : integer range 0 to h_length := 0;
    signal v_pos : integer range 0 to v_length := 0;

    signal vga_rgb : std_logic_vector(2 downto 0);

    signal count : integer := 0;

    --subtype rgb is std_logic_vector(2 downto 0);
    --type rgb_vector is array(natural range <>) of rgb;
    --subtype row is rgb_vector(0 to h_v_length - 1);
    --type row_vector is array(natural range <>) of row;
    --subtype frame is row_vector(0 to v_v_length - 1);
    -- 
    --signal frame_main : frame; 
    --signal frame_out : frame;
    
begin
    process(clk)
    begin
        if rising_edge(clk) then
            -- Position counters
            if (h_pos < h_length) then
                h_pos <= h_pos + 1;
            else
                h_pos <= 0;
                if (v_pos < v_length) then
                    v_pos <= v_pos + 1;
                else
                    v_pos <= 0;
                    --frame_out <= frame_main;
                end if;
            end if;

            -- Hsync
            if (h_pos > (h_v_length + h_fp_length) and h_pos < (h_v_length + h_fp_length + h_sync_length)) then
                vga_hsync <= '0';
            else
                vga_hsync <= '1';
            end if;

            -- Vsync
            if (v_pos > (v_v_length + v_fp_length) and v_pos < (v_v_length + v_fp_length + v_sync_length)) then
                vga_vsync <= '0';
            else
                vga_vsync <= '1';
            end if;
        end if;
    end process;

    vga_red <= vga_rgb(0);
    vga_green <= vga_rgb(1);
    vga_blue <= vga_rgb(2);

    -- -- Output a pixel from the framebuffer
    -- vga_red <= frame_out(v_pos)(h_pos)(0);
    -- vga_green <= frame_out(v_pos)(h_pos)(1);
    -- vga_blue <= frame_out(v_pos)(h_pos)(2);

    -- -- User code
    -- frame_main(100)(100) <= "101";

    process(clk)
    begin
        if rising_edge(clk) then
            count <= count + 1;
        end if;
    end process;


    with (((h_pos + v_pos + (count / 1000000)) / 64) mod 2) select vga_rgb(0) <=
        '0' when 0,
        '1' when 1,
        '0' when others;
    with (((h_pos + v_pos - (count / 1200000)) / 128) mod 2) select vga_rgb(1) <=
        '0' when 0,
        '1' when 1,
        '0' when others;
    with ((((h_pos/2) - v_pos - (count / 4000000)) / 192) mod 2) select vga_rgb(2) <=
        '0' when 0,
        '1' when 1,
        '0' when others;
     

    process(h_pos, v_pos)
    begin

    end process;


end;
