library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.config;

entity monochrome_generator is
    port(
        clk   : in  std_logic;
        h_pos : in  integer range 0 to h_length := 0;
        v_pos : in  integer range 0 to h_length := 0;
        white : out std_logic := '0'
    );
end;

architecture behaviour of monochrome_generator is
begin
white <= '0' when (((h_pos + v_pos + (count / 1_000_000)) / 64) mod 2) = 0 else '1';
end;

architecture logic of monochrome_generator is
    signal count : integer := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            count <= count + 1;
        end if;
    end process;
end;

--subtype rgb is std_logic_vector(2 downto 0);
--type rgb_vector is array(natural range <>) of rgb;
--subtype row is rgb_vector(0 to h_v_length - 1);
--type row_vector is array(natural range <>) of row;
--subtype frame is row_vector(0 to v_v_length - 1);
--signal frame_main : frame; 
--signal frame_out : frame;

-- -- Output a pixel from the framebuffer
-- vga_red <= frame_out(v_pos)(h_pos)(0);
-- vga_green <= frame_out(v_pos)(h_pos)(1);
-- vga_blue <= frame_out(v_pos)(h_pos)(2);

-- -- User code
-- frame_main(100)(100) <= "101";
