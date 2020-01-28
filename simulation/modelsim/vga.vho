-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/20/2020 18:03:02"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga IS
    PORT (
	clk_50 : IN std_logic;
	vga_hsync : OUT std_logic;
	vga_vsync : OUT std_logic;
	vga_red : OUT std_logic;
	vga_blue : OUT std_logic;
	vga_green : OUT std_logic
	);
END vga;

-- Design Ports Information
-- clk_50	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vga_hsync	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_vsync	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_red	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_blue	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_green	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA


ARCHITECTURE structure OF vga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_vga_hsync : std_logic;
SIGNAL ww_vga_vsync : std_logic;
SIGNAL ww_vga_red : std_logic;
SIGNAL ww_vga_blue : std_logic;
SIGNAL ww_vga_green : std_logic;
SIGNAL \LessThan0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \h_pos[1]~12_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \h_pos[0]~11_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \h_pos[9]~14_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \h_pos[10]~13_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \h_pos[7]~10_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \LessThan0~3clkctrl_outclk\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \vga_rgb~2_combout\ : std_logic;
SIGNAL \vga_rgb~4_combout\ : std_logic;
SIGNAL \vga_rgb~5_combout\ : std_logic;
SIGNAL \vga_rgb~3_combout\ : std_logic;
SIGNAL v_pos : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_vga_rgb~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~3_combout\ : std_logic;

BEGIN

ww_clk_50 <= clk_50;
vga_hsync <= ww_vga_hsync;
vga_vsync <= ww_vga_vsync;
vga_red <= ww_vga_red;
vga_blue <= ww_vga_blue;
vga_green <= ww_vga_green;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\LessThan0~3clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \LessThan0~3_combout\);
\ALT_INV_vga_rgb~3_combout\ <= NOT \vga_rgb~3_combout\;
\ALT_INV_process_0~6_combout\ <= NOT \process_0~6_combout\;
\ALT_INV_process_0~3_combout\ <= NOT \process_0~3_combout\;

-- Location: LCCOMB_X19_Y5_N6
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = v_pos(0) $ (VCC)
-- \Add1~1\ = CARRY(v_pos(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_pos(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X19_Y5_N8
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (v_pos(1) & (!\Add1~1\)) # (!v_pos(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!v_pos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_pos(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X19_Y5_N10
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (v_pos(2) & (\Add1~3\ $ (GND))) # (!v_pos(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((v_pos(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_pos(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X19_Y5_N12
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (v_pos(3) & (!\Add1~5\)) # (!v_pos(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!v_pos(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_pos(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X19_Y5_N20
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (v_pos(7) & (!\Add1~13\)) # (!v_pos(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!v_pos(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_pos(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X9_Y6_N10
\process_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\Add0~12_combout\ & (\Add0~10_combout\ & \LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => \Add0~10_combout\,
	datad => \LessThan0~3_combout\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X8_Y6_N2
\h_pos[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \h_pos[1]~12_combout\ = (\Add0~0_combout\ & \LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \h_pos[1]~12_combout\);

-- Location: LCCOMB_X20_Y6_N12
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Add1~14_combout\ & \LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X20_Y5_N16
\Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\LessThan1~2_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datac => \Add1~0_combout\,
	combout => \Add1~23_combout\);

-- Location: LCCOMB_X20_Y5_N12
\Add1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~25_combout\ = (\LessThan1~2_combout\ & \Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~2_combout\,
	datad => \Add1~6_combout\,
	combout => \Add1~25_combout\);

-- Location: LCCOMB_X8_Y6_N8
\h_pos[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \h_pos[0]~11_combout\ = (!\h_pos[0]~11_combout\ & \LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \h_pos[0]~11_combout\,
	datad => \LessThan0~3_combout\,
	combout => \h_pos[0]~11_combout\);

-- Location: LCCOMB_X8_Y6_N10
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\h_pos[1]~12_combout\ & (\h_pos[0]~11_combout\ $ (VCC))) # (!\h_pos[1]~12_combout\ & (\h_pos[0]~11_combout\ & VCC))
-- \Add0~1\ = CARRY((\h_pos[1]~12_combout\ & \h_pos[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_pos[1]~12_combout\,
	datab => \h_pos[0]~11_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X8_Y6_N12
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~1\ & (((!\LessThan0~3_combout\)) # (!\Add0~2_combout\))) # (!\Add0~1\ & (((\Add0~2_combout\ & \LessThan0~3_combout\)) # (GND)))
-- \Add0~3\ = CARRY(((!\Add0~1\) # (!\LessThan0~3_combout\)) # (!\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \LessThan0~3_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X8_Y6_N14
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~3\ & (\Add0~4_combout\ & (\LessThan0~3_combout\ & VCC))) # (!\Add0~3\ & ((((\Add0~4_combout\ & \LessThan0~3_combout\)))))
-- \Add0~5\ = CARRY((\Add0~4_combout\ & (\LessThan0~3_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \LessThan0~3_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X8_Y6_N16
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Add0~5\ & (((!\LessThan0~3_combout\)) # (!\Add0~6_combout\))) # (!\Add0~5\ & (((\Add0~6_combout\ & \LessThan0~3_combout\)) # (GND)))
-- \Add0~7\ = CARRY(((!\Add0~5\) # (!\LessThan0~3_combout\)) # (!\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \LessThan0~3_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X8_Y6_N18
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\Add0~7\ & (\Add0~8_combout\ & (\LessThan0~3_combout\ & VCC))) # (!\Add0~7\ & ((((\Add0~8_combout\ & \LessThan0~3_combout\)))))
-- \Add0~9\ = CARRY((\Add0~8_combout\ & (\LessThan0~3_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \LessThan0~3_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X8_Y6_N20
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~9\ & (((!\LessThan0~3_combout\)) # (!\Add0~10_combout\))) # (!\Add0~9\ & (((\Add0~10_combout\ & \LessThan0~3_combout\)) # (GND)))
-- \Add0~11\ = CARRY(((!\Add0~9\) # (!\LessThan0~3_combout\)) # (!\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \LessThan0~3_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X9_Y6_N28
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\Add0~12_combout\) # ((\Add0~8_combout\) # ((\Add0~10_combout\) # (\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~14_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y6_N22
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~11\ & (\Add0~12_combout\ & (\LessThan0~3_combout\ & VCC))) # (!\Add0~11\ & ((((\Add0~12_combout\ & \LessThan0~3_combout\)))))
-- \Add0~13\ = CARRY((\Add0~12_combout\ & (\LessThan0~3_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \LessThan0~3_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X8_Y6_N24
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~13\ & (((!\LessThan0~3_combout\)) # (!\Add0~14_combout\))) # (!\Add0~13\ & (((\Add0~14_combout\ & \LessThan0~3_combout\)) # (GND)))
-- \Add0~15\ = CARRY(((!\Add0~13\) # (!\LessThan0~3_combout\)) # (!\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \LessThan0~3_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X8_Y6_N26
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\h_pos[9]~14_combout\ & (\Add0~15\ $ (GND))) # (!\h_pos[9]~14_combout\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\h_pos[9]~14_combout\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \h_pos[9]~14_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X8_Y6_N30
\h_pos[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \h_pos[9]~14_combout\ = (\Add0~16_combout\ & \LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \LessThan0~3_combout\,
	combout => \h_pos[9]~14_combout\);

-- Location: LCCOMB_X8_Y6_N28
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \h_pos[10]~13_combout\ $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \h_pos[10]~13_combout\,
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X8_Y6_N4
\h_pos[10]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \h_pos[10]~13_combout\ = (\Add0~18_combout\ & \LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \LessThan0~3_combout\,
	combout => \h_pos[10]~13_combout\);

-- Location: LCCOMB_X9_Y6_N30
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((!\h_pos[9]~14_combout\ & ((!\LessThan0~3_combout\) # (!\LessThan0~2_combout\)))) # (!\h_pos[10]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_pos[9]~14_combout\,
	datab => \LessThan0~2_combout\,
	datac => \h_pos[10]~13_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X9_Y6_N4
\process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (((\h_pos[10]~13_combout\) # (!\LessThan0~3_combout\)) # (!\Add0~14_combout\)) # (!\h_pos[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_pos[9]~14_combout\,
	datab => \Add0~14_combout\,
	datac => \h_pos[10]~13_combout\,
	datad => \LessThan0~3_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X9_Y6_N2
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\Add0~8_combout\) # (\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => \Add0~6_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X9_Y6_N0
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\Add0~4_combout\ & ((\Add0~0_combout\) # ((\Add0~2_combout\) # (!\h_pos[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \h_pos[0]~11_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X9_Y6_N14
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\h_pos[7]~10_combout\ & (((!\LessThan2~1_combout\ & !\LessThan2~0_combout\)) # (!\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_pos[7]~10_combout\,
	datab => \LessThan2~1_combout\,
	datac => \Add0~10_combout\,
	datad => \LessThan2~0_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X9_Y6_N20
\h_pos[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \h_pos[7]~10_combout\ = (\Add0~12_combout\ & \LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => \LessThan0~3_combout\,
	combout => \h_pos[7]~10_combout\);

-- Location: LCCOMB_X9_Y6_N26
\process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\Add0~10_combout\ & (\h_pos[7]~10_combout\ & ((\Add0~8_combout\) # (!\process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~10_combout\,
	datad => \h_pos[7]~10_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X9_Y6_N22
\process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\process_0~2_combout\) # ((\process_0~0_combout\) # (\process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~2_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~1_combout\,
	combout => \process_0~3_combout\);

-- Location: CLKCTRL_G2
\LessThan0~3clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LessThan0~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LessThan0~3clkctrl_outclk\);

-- Location: LCCOMB_X20_Y6_N6
\v_pos[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- v_pos(7) = (GLOBAL(\LessThan0~3clkctrl_outclk\) & ((v_pos(7)))) # (!GLOBAL(\LessThan0~3clkctrl_outclk\) & (\Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \LessThan0~3clkctrl_outclk\,
	datad => v_pos(7),
	combout => v_pos(7));

-- Location: LCCOMB_X20_Y5_N28
\v_pos[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- v_pos(3) = (GLOBAL(\LessThan0~3clkctrl_outclk\) & ((v_pos(3)))) # (!GLOBAL(\LessThan0~3clkctrl_outclk\) & (\Add1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~25_combout\,
	datac => \LessThan0~3clkctrl_outclk\,
	datad => v_pos(3),
	combout => v_pos(3));

-- Location: LCCOMB_X20_Y6_N8
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!v_pos(2) & !v_pos(3))) # (!v_pos(6))) # (!v_pos(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(4),
	datab => v_pos(2),
	datac => v_pos(3),
	datad => v_pos(6),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X20_Y6_N30
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!v_pos(8) & !v_pos(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_pos(8),
	datad => v_pos(7),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X20_Y6_N26
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((\LessThan1~0_combout\ & ((\LessThan1~1_combout\) # (!v_pos(5))))) # (!v_pos(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(9),
	datab => \LessThan1~1_combout\,
	datac => v_pos(5),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X20_Y5_N30
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Add1~4_combout\ & \LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datac => \LessThan1~2_combout\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X20_Y5_N22
\v_pos[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- v_pos(2) = (GLOBAL(\LessThan0~3clkctrl_outclk\) & ((v_pos(2)))) # (!GLOBAL(\LessThan0~3clkctrl_outclk\) & (\Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~22_combout\,
	datac => \LessThan0~3clkctrl_outclk\,
	datad => v_pos(2),
	combout => v_pos(2));

-- Location: LCCOMB_X20_Y5_N26
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Add1~2_combout\ & \LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datac => \LessThan1~2_combout\,
	combout => \Add1~24_combout\);

-- Location: LCCOMB_X20_Y5_N18
\v_pos[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- v_pos(1) = (GLOBAL(\LessThan0~3clkctrl_outclk\) & ((v_pos(1)))) # (!GLOBAL(\LessThan0~3clkctrl_outclk\) & (\Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~24_combout\,
	datac => \LessThan0~3clkctrl_outclk\,
	datad => v_pos(1),
	combout => v_pos(1));

-- Location: LCCOMB_X20_Y5_N24
\v_pos[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- v_pos(0) = (GLOBAL(\LessThan0~3clkctrl_outclk\) & ((v_pos(0)))) # (!GLOBAL(\LessThan0~3clkctrl_outclk\) & (\Add1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~23_combout\,
	datac => v_pos(0),
	datad => \LessThan0~3clkctrl_outclk\,
	combout => v_pos(0));

-- Location: LCCOMB_X19_Y5_N14
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (v_pos(4) & (\Add1~7\ $ (GND))) # (!v_pos(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((v_pos(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X19_Y5_N16
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (v_pos(5) & (!\Add1~9\)) # (!v_pos(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!v_pos(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_pos(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X19_Y5_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Add1~10_combout\ & \LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X19_Y5_N28
\v_pos[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- v_pos(5) = (GLOBAL(\LessThan0~3clkctrl_outclk\) & ((v_pos(5)))) # (!GLOBAL(\LessThan0~3clkctrl_outclk\) & (\Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~26_combout\,
	datac => \LessThan0~3clkctrl_outclk\,
	datad => v_pos(5),
	combout => v_pos(5));

-- Location: LCCOMB_X19_Y5_N18
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (v_pos(6) & (\Add1~11\ $ (GND))) # (!v_pos(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((v_pos(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_pos(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X20_Y6_N0
\Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (\Add1~12_combout\ & \LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~12_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X20_Y6_N10
\v_pos[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- v_pos(6) = (GLOBAL(\LessThan0~3clkctrl_outclk\) & ((v_pos(6)))) # (!GLOBAL(\LessThan0~3clkctrl_outclk\) & (\Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~21_combout\,
	datac => \LessThan0~3clkctrl_outclk\,
	datad => v_pos(6),
	combout => v_pos(6));

-- Location: LCCOMB_X19_Y5_N22
\Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (v_pos(8) & (\Add1~15\ $ (GND))) # (!v_pos(8) & (!\Add1~15\ & VCC))
-- \Add1~18\ = CARRY((v_pos(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_pos(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~17_combout\,
	cout => \Add1~18\);

-- Location: LCCOMB_X19_Y5_N0
\Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = (\Add1~17_combout\ & \LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~17_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Add1~19_combout\);

-- Location: LCCOMB_X19_Y5_N2
\v_pos[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- v_pos(8) = (GLOBAL(\LessThan0~3clkctrl_outclk\) & ((v_pos(8)))) # (!GLOBAL(\LessThan0~3clkctrl_outclk\) & (\Add1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~19_combout\,
	datac => \LessThan0~3clkctrl_outclk\,
	datad => v_pos(8),
	combout => v_pos(8));

-- Location: LCCOMB_X19_Y5_N24
\Add1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = \Add1~18\ $ (v_pos(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => v_pos(9),
	cin => \Add1~18\,
	combout => \Add1~27_combout\);

-- Location: LCCOMB_X19_Y5_N4
\Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\Add1~27_combout\ & \LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~27_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Add1~29_combout\);

-- Location: LCCOMB_X19_Y5_N30
\v_pos[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- v_pos(9) = (GLOBAL(\LessThan0~3clkctrl_outclk\) & ((v_pos(9)))) # (!GLOBAL(\LessThan0~3clkctrl_outclk\) & (\Add1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~29_combout\,
	datac => \LessThan0~3clkctrl_outclk\,
	datad => v_pos(9),
	combout => v_pos(9));

-- Location: LCCOMB_X20_Y6_N22
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Add1~8_combout\ & \LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X20_Y6_N24
\v_pos[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- v_pos(4) = (GLOBAL(\LessThan0~3clkctrl_outclk\) & ((v_pos(4)))) # (!GLOBAL(\LessThan0~3clkctrl_outclk\) & (\Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datac => v_pos(4),
	datad => \LessThan0~3clkctrl_outclk\,
	combout => v_pos(4));

-- Location: LCCOMB_X20_Y6_N16
\process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = ((v_pos(8)) # ((v_pos(7)) # (!v_pos(4)))) # (!v_pos(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(6),
	datab => v_pos(8),
	datac => v_pos(4),
	datad => v_pos(7),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X20_Y5_N0
\process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ((v_pos(2) & ((v_pos(0)) # (v_pos(1)))) # (!v_pos(2) & ((!v_pos(1))))) # (!v_pos(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(3),
	datab => v_pos(2),
	datac => v_pos(0),
	datad => v_pos(1),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X20_Y6_N18
\process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = ((v_pos(5)) # ((\process_0~4_combout\) # (\process_0~5_combout\))) # (!v_pos(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(9),
	datab => v_pos(5),
	datac => \process_0~4_combout\,
	datad => \process_0~5_combout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X9_Y6_N16
\process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ((!\Add0~4_combout\ & !\Add0~6_combout\)) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~6_combout\,
	datad => \LessThan0~3_combout\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X9_Y6_N6
\process_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\process_1~0_combout\ & (((\h_pos[0]~11_combout\ & !\Add0~0_combout\)) # (!\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_pos[0]~11_combout\,
	datab => \Add0~2_combout\,
	datac => \process_1~0_combout\,
	datad => \Add0~0_combout\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X9_Y6_N24
\process_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = ((!\LessThan0~3_combout\) # (!\Add0~10_combout\)) # (!\Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \Add0~10_combout\,
	datad => \LessThan0~3_combout\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X9_Y6_N8
\process_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\h_pos[9]~14_combout\) # ((\h_pos[10]~13_combout\) # ((\Add0~14_combout\ & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_pos[9]~14_combout\,
	datab => \Add0~14_combout\,
	datac => \h_pos[10]~13_combout\,
	datad => \LessThan0~3_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X9_Y6_N12
\process_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\process_1~1_combout\) # ((\process_1~2_combout\ & ((\LessThan2~1_combout\) # (\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~2_combout\,
	datab => \LessThan2~1_combout\,
	datac => \process_1~1_combout\,
	datad => \LessThan2~0_combout\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X9_Y6_N18
\process_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (\process_1~3_combout\) # ((!\h_pos[7]~10_combout\ & ((\process_1~4_combout\) # (\process_1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \process_1~5_combout\,
	datac => \h_pos[7]~10_combout\,
	datad => \process_1~3_combout\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X20_Y5_N20
\process_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (((!v_pos(0) & !v_pos(1))) # (!v_pos(2))) # (!v_pos(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(3),
	datab => v_pos(2),
	datac => v_pos(0),
	datad => v_pos(1),
	combout => \process_1~7_combout\);

-- Location: LCCOMB_X20_Y5_N10
\vga_rgb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_rgb~2_combout\ = (v_pos(3)) # ((v_pos(2)) # ((v_pos(0)) # (v_pos(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(3),
	datab => v_pos(2),
	datac => v_pos(0),
	datad => v_pos(1),
	combout => \vga_rgb~2_combout\);

-- Location: LCCOMB_X20_Y6_N2
\vga_rgb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_rgb~4_combout\ = (v_pos(4) & (((!v_pos(5) & \vga_rgb~2_combout\)))) # (!v_pos(4) & (\process_1~7_combout\ & (v_pos(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(4),
	datab => \process_1~7_combout\,
	datac => v_pos(5),
	datad => \vga_rgb~2_combout\,
	combout => \vga_rgb~4_combout\);

-- Location: LCCOMB_X20_Y6_N28
\vga_rgb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_rgb~5_combout\ = (v_pos(6) & (((v_pos(7))))) # (!v_pos(6) & ((\vga_rgb~4_combout\) # (v_pos(5) $ (!v_pos(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(6),
	datab => \vga_rgb~4_combout\,
	datac => v_pos(5),
	datad => v_pos(7),
	combout => \vga_rgb~5_combout\);

-- Location: LCCOMB_X20_Y6_N20
\vga_rgb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_rgb~3_combout\ = (v_pos(9)) # (((\process_1~6_combout\) # (\vga_rgb~5_combout\)) # (!v_pos(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_pos(9),
	datab => v_pos(8),
	datac => \process_1~6_combout\,
	datad => \vga_rgb~5_combout\,
	combout => \vga_rgb~3_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_50);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_hsync~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_hsync);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_vsync~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_vsync);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_red~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \process_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_red);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_blue~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_vga_rgb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_blue);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_green~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \process_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_green);
END structure;


