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

-- DATE "09/30/2022 11:58:29"

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

ENTITY 	relatorio3a IS
    PORT (
	i0 : IN std_logic;
	i1 : IN std_logic;
	i2 : IN std_logic;
	i3 : IN std_logic;
	s0 : IN std_logic;
	s1 : IN std_logic;
	x : BUFFER std_logic
	);
END relatorio3a;

-- Design Ports Information
-- x	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i0	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i3	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF relatorio3a IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i0 : std_logic;
SIGNAL ww_i1 : std_logic;
SIGNAL ww_i2 : std_logic;
SIGNAL ww_i3 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL \x~output_o\ : std_logic;
SIGNAL \i3~input_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \i2~input_o\ : std_logic;
SIGNAL \i0~input_o\ : std_logic;
SIGNAL \x~0_combout\ : std_logic;
SIGNAL \i1~input_o\ : std_logic;
SIGNAL \x~1_combout\ : std_logic;

BEGIN

ww_i0 <= i0;
ww_i1 <= i1;
ww_i2 <= i2;
ww_i3 <= i3;
ww_s0 <= s0;
ww_s1 <= s1;
x <= ww_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\x~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~1_combout\,
	devoe => ww_devoe,
	o => \x~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\i3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i3,
	o => \i3~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\s1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\s0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\i2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2,
	o => \i2~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\i0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i0,
	o => \i0~input_o\);

-- Location: LCCOMB_X11_Y1_N0
\x~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \x~0_combout\ = (\s1~input_o\ & ((\s0~input_o\) # ((\i2~input_o\)))) # (!\s1~input_o\ & (!\s0~input_o\ & ((\i0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~input_o\,
	datab => \s0~input_o\,
	datac => \i2~input_o\,
	datad => \i0~input_o\,
	combout => \x~0_combout\);

-- Location: IOIBUF_X12_Y0_N8
\i1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i1,
	o => \i1~input_o\);

-- Location: LCCOMB_X11_Y1_N2
\x~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \x~1_combout\ = (\x~0_combout\ & ((\i3~input_o\) # ((!\s0~input_o\)))) # (!\x~0_combout\ & (((\i1~input_o\ & \s0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3~input_o\,
	datab => \x~0_combout\,
	datac => \i1~input_o\,
	datad => \s0~input_o\,
	combout => \x~1_combout\);

ww_x <= \x~output_o\;
END structure;


