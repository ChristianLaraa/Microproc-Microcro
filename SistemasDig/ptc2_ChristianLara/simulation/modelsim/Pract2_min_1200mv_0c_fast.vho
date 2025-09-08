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

-- DATE "03/02/2025 17:35:44"

-- 
-- Device: Altera EP4CGX15BN11C8 Package QFN148
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Pract2 IS
    PORT (
	Sal1 : OUT std_logic;
	A : IN std_logic;
	Y : IN std_logic;
	Sal2 : OUT std_logic
	);
END Pract2;

-- Design Ports Information
-- Sal1	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal2	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_A29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pract2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sal1 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Sal2 : std_logic;
SIGNAL \Sal1~output_o\ : std_logic;
SIGNAL \Sal2~output_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;

BEGIN

Sal1 <= ww_Sal1;
ww_A <= A;
ww_Y <= Y;
Sal2 <= ww_Sal2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N9
\Sal1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \Sal1~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\Sal2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \Sal2~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\Y~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X11_Y1_N8
inst2 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~combout\ = \Y~input_o\ $ (\A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~input_o\,
	datac => \A~input_o\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X11_Y1_N2
inst : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\Y~input_o\ & \A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~input_o\,
	datac => \A~input_o\,
	combout => \inst~combout\);

ww_Sal1 <= \Sal1~output_o\;

ww_Sal2 <= \Sal2~output_o\;
END structure;


