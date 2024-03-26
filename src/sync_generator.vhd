library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.config.all;

entity sync_generator is
    port(
        clk    : in     std_logic;
        h_sync : out    std_logic := '0';
        v_sync : out    std_logic := '0';
        h_pos  : buffer integer range 0 to h_length := 0;
        v_pos  : buffer integer range 0 to v_length := 0
    );
end;

architecture logic of sync_generator is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            -- Generate h_pos and v_pos
            if h_pos < h_length then
                h_pos <= h_pos + 1;
            else
                h_pos <= 0;
                if v_pos < v_length then
                    v_pos <= v_pos + 1;
                else
                    v_pos <= 0;
                end if;
            end if;

            -- Generate h_sync
            if (h_v_length + h_fp_length) < h_pos and h_pos < (h_v_length + h_fp_length + h_sync_length) then
                h_sync <= '0';
            else
                h_sync <= '1';
            end if;

            -- Generate v_sync
            if (v_v_length + v_fp_length) < v_pos and v_pos < (v_v_length + v_fp_length + v_sync_length) then
                v_sync <= '0';
            else
                v_sync <= '1';
            end if;
        end if;
    end process;
end;