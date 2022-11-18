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

-- DATE "11/11/2022 11:55:05"

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

ENTITY 	relatorio5 IS
    PORT (
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	c : IN std_logic;
	Q3 : BUFFER std_logic;
	Q2 : BUFFER std_logic;
	Q1 : BUFFER std_logic;
	Q0 : BUFFER std_logic
	);
END relatorio5;

-- Design Ports Information
-- Q3	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF relatorio5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \LD3|comb~0_combout\ : std_logic;
SIGNAL \LD3|Q~combout\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \LD2|comb~0_combout\ : std_logic;
SIGNAL \LD2|Q~combout\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \LD1|comb~0_combout\ : std_logic;
SIGNAL \LD1|Q~combout\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \LD0|comb~0_combout\ : std_logic;
SIGNAL \LD0|Q~combout\ : std_logic;

BEGIN

ww_I3 <= I3;
ww_I2 <= I2;
ww_I1 <= I1;
ww_I0 <= I0;
ww_c <= c;
Q3 <= ww_Q3;
Q2 <= ww_Q2;
Q1 <= ww_Q1;
Q0 <= ww_Q0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N2
\Q3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LD3|Q~combout\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\Q2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LD2|Q~combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\Q1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LD1|Q~combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\Q0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LD0|Q~combout\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\c~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\I3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: LCCOMB_X6_Y1_N0
\LD3|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LD3|comb~0_combout\ = (\c~input_o\ & !\I3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~input_o\,
	datad => \I3~input_o\,
	combout => \LD3|comb~0_combout\);

-- Location: LCCOMB_X6_Y1_N16
\LD3|Q\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LD3|Q~combout\ = (!\LD3|comb~0_combout\ & ((\c~input_o\) # (\LD3|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LD3|comb~0_combout\,
	datac => \c~input_o\,
	datad => \LD3|Q~combout\,
	combout => \LD3|Q~combout\);

-- Location: IOIBUF_X14_Y0_N8
\I2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: LCCOMB_X6_Y1_N2
\LD2|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LD2|comb~0_combout\ = (\c~input_o\ & !\I2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~input_o\,
	datad => \I2~input_o\,
	combout => \LD2|comb~0_combout\);

-- Location: LCCOMB_X6_Y1_N10
\LD2|Q\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LD2|Q~combout\ = (!\LD2|comb~0_combout\ & ((\c~input_o\) # (\LD2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LD2|comb~0_combout\,
	datac => \c~input_o\,
	datad => \LD2|Q~combout\,
	combout => \LD2|Q~combout\);

-- Location: IOIBUF_X10_Y0_N8
\I1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: LCCOMB_X6_Y1_N12
\LD1|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LD1|comb~0_combout\ = (\c~input_o\ & !\I1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~input_o\,
	datad => \I1~input_o\,
	combout => \LD1|comb~0_combout\);

-- Location: LCCOMB_X6_Y1_N20
\LD1|Q\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LD1|Q~combout\ = (!\LD1|comb~0_combout\ & ((\c~input_o\) # (\LD1|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD1|comb~0_combout\,
	datab => \c~input_o\,
	datad => \LD1|Q~combout\,
	combout => \LD1|Q~combout\);

-- Location: IOIBUF_X22_Y0_N1
\I0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LCCOMB_X6_Y1_N22
\LD0|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LD0|comb~0_combout\ = (\c~input_o\ & !\I0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~input_o\,
	datac => \I0~input_o\,
	combout => \LD0|comb~0_combout\);

-- Location: LCCOMB_X6_Y1_N6
\LD0|Q\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LD0|Q~combout\ = (!\LD0|comb~0_combout\ & ((\c~input_o\) # (\LD0|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~input_o\,
	datac => \LD0|comb~0_combout\,
	datad => \LD0|Q~combout\,
	combout => \LD0|Q~combout\);

ww_Q3 <= \Q3~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q0 <= \Q0~output_o\;
END structure;


