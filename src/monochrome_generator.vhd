library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.config.all;

entity monochrome_generator is
    port(
        clk   : in  std_logic;
        h_pos : in  integer range 0 to h_length := 0;
        v_pos : in  integer range 0 to v_length := 0;
        white : out std_logic := '0'
    );
end;

architecture logic of monochrome_generator is
    subtype pixel        is std_logic;
    type    pixel_vector is array(natural range <>) of pixel;
    subtype row          is pixel_vector(h_v_length/2 - 1 downto 0);
    type    row_vector   is array(natural range <>) of row;
    subtype frame        is row_vector(v_v_length/2 downto 0);
    
    signal framebuffer : frame := (others => (others => '0'));
    --signal count : integer := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
        --    count <= count + 1;
        end if;
    end process;
    
    framebuffer(10) <= (others => '1');
    framebuffer(20) <= (others => '1');
    framebuffer(40) <= (others => '1');
    framebuffer(80) <= (others => '1');
    framebuffer(160) <= (others => '1');

    white <=
        framebuffer(v_pos mod (v_v_length/2))(h_pos mod (h_v_length/2)) when v_pos < v_v_length and h_pos < h_v_length
        else '0';
end;
