library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

package config is
    -- Horizontal timing (line)
    constant h_v_length    : integer := 800;
    constant h_fp_length   : integer := 56;
    constant h_sync_length : integer := 120;
    constant h_bp_length   : integer := 64;
    constant h_length      : integer := h_v_length + h_fp_length + h_sync_length + h_bp_length;
    
    -- Vertical timing (frame)
    constant v_v_length    : integer := 600;
    constant v_fp_length   : integer := 37;
    constant v_sync_length : integer := 6;
    constant v_bp_length   : integer := 23;
    constant v_length      : integer := v_v_length + v_fp_length + v_sync_length + v_bp_length;
end config;
