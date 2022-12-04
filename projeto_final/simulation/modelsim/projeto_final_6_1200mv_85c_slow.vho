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

-- DATE "12/04/2022 00:27:13"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projeto_final IS
    PORT (
	clk : IN std_logic;
	N : IN std_logic;
	btn : IN std_logic;
	b1 : BUFFER std_logic;
	b2 : BUFFER std_logic
	);
END projeto_final;

-- Design Ports Information
-- btn	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto_final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_btn : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \b2~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \N~input_o\ : std_logic;
SIGNAL \inst_control|n1~0_combout\ : std_logic;
SIGNAL \inst_control|n1~q\ : std_logic;
SIGNAL \inst_control|n0~0_combout\ : std_logic;
SIGNAL \inst_control|n0~q\ : std_logic;
SIGNAL \inst_control|b1~1_combout\ : std_logic;
SIGNAL \inst_control|b1~0_combout\ : std_logic;
SIGNAL \inst_control|b1~q\ : std_logic;
SIGNAL \inst_control|b2~0_combout\ : std_logic;
SIGNAL \inst_control|b2~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_N <= N;
ww_btn <= btn;
b1 <= ww_b1;
b2 <= ww_b2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X8_Y0_N2
\b1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_control|b1~q\,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\b2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_control|b2~q\,
	devoe => ww_devoe,
	o => \b2~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X10_Y0_N8
\N~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N,
	o => \N~input_o\);

-- Location: LCCOMB_X9_Y1_N22
\inst_control|n1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_control|n1~0_combout\ = (\N~input_o\ & (!\inst_control|n1~q\ & \inst_control|n0~q\)) # (!\N~input_o\ & (\inst_control|n1~q\ & !\inst_control|n0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N~input_o\,
	datac => \inst_control|n1~q\,
	datad => \inst_control|n0~q\,
	combout => \inst_control|n1~0_combout\);

-- Location: FF_X9_Y1_N23
\inst_control|n1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_control|n1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_control|n1~q\);

-- Location: LCCOMB_X9_Y1_N24
\inst_control|n0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_control|n0~0_combout\ = ((\N~input_o\) # (\inst_control|n0~q\)) # (!\inst_control|n1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_control|n1~q\,
	datab => \N~input_o\,
	datac => \inst_control|n0~q\,
	combout => \inst_control|n0~0_combout\);

-- Location: FF_X9_Y1_N25
\inst_control|n0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_control|n0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_control|n0~q\);

-- Location: LCCOMB_X9_Y1_N12
\inst_control|b1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_control|b1~1_combout\ = !\inst_control|n0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_control|n0~q\,
	combout => \inst_control|b1~1_combout\);

-- Location: LCCOMB_X9_Y1_N28
\inst_control|b1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_control|b1~0_combout\ = (\inst_control|n1~q\) # (\inst_control|n0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_control|n1~q\,
	datad => \inst_control|n0~q\,
	combout => \inst_control|b1~0_combout\);

-- Location: FF_X9_Y1_N13
\inst_control|b1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_control|b1~1_combout\,
	ena => \inst_control|b1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_control|b1~q\);

-- Location: LCCOMB_X9_Y1_N26
\inst_control|b2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_control|b2~0_combout\ = (\inst_control|n1~q\ & \inst_control|n0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_control|n1~q\,
	datad => \inst_control|n0~q\,
	combout => \inst_control|b2~0_combout\);

-- Location: FF_X9_Y1_N27
\inst_control|b2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_control|b2~0_combout\,
	ena => \inst_control|b1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_control|b2~q\);

-- Location: IOIBUF_X33_Y25_N1
\btn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn,
	o => \btn~input_o\);

ww_b1 <= \b1~output_o\;

ww_b2 <= \b2~output_o\;
END structure;


