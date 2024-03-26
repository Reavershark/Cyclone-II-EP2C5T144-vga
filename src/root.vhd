library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.config.all;

entity root is
    port(
        root_clk    : in   std_logic;
        root_white  : out  std_logic;
        root_h_sync : out std_logic := '0';
        root_v_sync : out std_logic := '0'
    );
end;

architecture logic of root is
    component sync_generator is
        port (
            clk    : in     std_logic;
            h_sync : out    std_logic := '0';
            v_sync : out    std_logic := '0';
            h_pos  : buffer integer range 0 to h_length := 0;
            v_pos  : buffer integer range 0 to v_length := 0
        );
    end component sync_generator;
    
    component monochrome_generator is
        port(
            clk   : in  std_logic;
            h_pos : in  integer range 0 to h_length := 0;
            v_pos : in  integer range 0 to v_length := 0;
            white : out std_logic := '0'
        );
    end component monochrome_generator;
    
    signal root_h_pos : integer range 0 to h_length := 0;
    signal root_v_pos : integer range 0 to v_length := 0;
begin
    sync_generator_inst: sync_generator port map(
        clk    => root_clk,
        h_sync => root_h_sync,
        v_sync => root_v_sync,
        h_pos  => root_h_pos,
        v_pos  => root_v_pos
    );
    monochrome_generator_inst: monochrome_generator port map(
        clk   => root_clk,
        h_pos => root_h_pos,
        v_pos => root_v_pos,
        white => root_white
    );
end;
