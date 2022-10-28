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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/27/2022 20:55:57"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoder IS
    PORT (
	a4 : IN std_logic;
	a3 : IN std_logic;
	a2 : IN std_logic;
	a1 : IN std_logic;
	s6 : BUFFER std_logic;
	s5 : BUFFER std_logic;
	s4 : BUFFER std_logic;
	s3 : BUFFER std_logic;
	s2 : BUFFER std_logic;
	s1 : BUFFER std_logic;
	s0 : BUFFER std_logic
	);
END decoder;

-- Design Ports Information
-- s6	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_s6 : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL \s6~output_o\ : std_logic;
SIGNAL \s5~output_o\ : std_logic;
SIGNAL \s4~output_o\ : std_logic;
SIGNAL \s3~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s0~output_o\ : std_logic;
SIGNAL \a4~input_o\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \s6~0_combout\ : std_logic;
SIGNAL \s5~0_combout\ : std_logic;
SIGNAL \s4~0_combout\ : std_logic;
SIGNAL \s3~0_combout\ : std_logic;
SIGNAL \s2~0_combout\ : std_logic;
SIGNAL \s1~0_combout\ : std_logic;
SIGNAL \s0~0_combout\ : std_logic;

BEGIN

ww_a4 <= a4;
ww_a3 <= a3;
ww_a2 <= a2;
ww_a1 <= a1;
s6 <= ww_s6;
s5 <= ww_s5;
s4 <= ww_s4;
s3 <= ww_s3;
s2 <= ww_s2;
s1 <= ww_s1;
s0 <= ww_s0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N2
\s6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s6~0_combout\,
	devoe => ww_devoe,
	o => \s6~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\s5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s5~0_combout\,
	devoe => ww_devoe,
	o => \s5~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\s4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4~0_combout\,
	devoe => ww_devoe,
	o => \s4~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\s3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3~0_combout\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\s2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2~0_combout\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\s1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1~0_combout\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\s0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0~0_combout\,
	devoe => ww_devoe,
	o => \s0~output_o\);

-- Location: IOIBUF_X33_Y16_N15
\a4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4,
	o => \a4~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\a1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\a3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\a2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: LCCOMB_X16_Y3_N8
\s6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s6~0_combout\ = (!\a4~input_o\ & ((\a3~input_o\ & (\a1~input_o\ & \a2~input_o\)) # (!\a3~input_o\ & ((!\a2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~input_o\,
	datab => \a1~input_o\,
	datac => \a3~input_o\,
	datad => \a2~input_o\,
	combout => \s6~0_combout\);

-- Location: LCCOMB_X16_Y3_N26
\s5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s5~0_combout\ = (!\a4~input_o\ & (!\a3~input_o\ & ((\a1~input_o\) # (\a2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~input_o\,
	datab => \a1~input_o\,
	datac => \a3~input_o\,
	datad => \a2~input_o\,
	combout => \s5~0_combout\);

-- Location: LCCOMB_X16_Y3_N4
\s4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s4~0_combout\ = (\a2~input_o\ & (!\a4~input_o\ & (\a1~input_o\))) # (!\a2~input_o\ & ((\a3~input_o\ & (!\a4~input_o\)) # (!\a3~input_o\ & ((\a1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~input_o\,
	datab => \a1~input_o\,
	datac => \a3~input_o\,
	datad => \a2~input_o\,
	combout => \s4~0_combout\);

-- Location: LCCOMB_X16_Y3_N22
\s3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s3~0_combout\ = (\a3~input_o\ & (!\a4~input_o\ & (\a1~input_o\ $ (!\a2~input_o\)))) # (!\a3~input_o\ & (((\a1~input_o\ & !\a2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~input_o\,
	datab => \a1~input_o\,
	datac => \a3~input_o\,
	datad => \a2~input_o\,
	combout => \s3~0_combout\);

-- Location: LCCOMB_X16_Y3_N16
\s2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s2~0_combout\ = (!\a4~input_o\ & (!\a1~input_o\ & (\a3~input_o\ & \a2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~input_o\,
	datab => \a1~input_o\,
	datac => \a3~input_o\,
	datad => \a2~input_o\,
	combout => \s2~0_combout\);

-- Location: LCCOMB_X16_Y3_N2
\s1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s1~0_combout\ = (!\a4~input_o\ & (\a3~input_o\ & (\a1~input_o\ $ (\a2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~input_o\,
	datab => \a1~input_o\,
	datac => \a3~input_o\,
	datad => \a2~input_o\,
	combout => \s1~0_combout\);

-- Location: LCCOMB_X16_Y3_N12
\s0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s0~0_combout\ = (!\a4~input_o\ & (!\a2~input_o\ & (\a1~input_o\ $ (\a3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4~input_o\,
	datab => \a1~input_o\,
	datac => \a3~input_o\,
	datad => \a2~input_o\,
	combout => \s0~0_combout\);

ww_s6 <= \s6~output_o\;

ww_s5 <= \s5~output_o\;

ww_s4 <= \s4~output_o\;

ww_s3 <= \s3~output_o\;

ww_s2 <= \s2~output_o\;

ww_s1 <= \s1~output_o\;

ww_s0 <= \s0~output_o\;
END structure;


