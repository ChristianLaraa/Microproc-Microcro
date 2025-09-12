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

-- DATE "04/27/2025 23:22:36"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	P5_ChristianLara IS
    PORT (
	clk : IN std_logic;
	up : IN std_logic;
	Yout : OUT std_logic_vector(6 DOWNTO 0);
	Q : INOUT std_logic_vector(3 DOWNTO 0)
	);
END P5_ChristianLara;

-- Design Ports Information
-- Yout[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF P5_ChristianLara IS
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
SIGNAL ww_up : std_logic;
SIGNAL ww_Yout : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~input_o\ : std_logic;
SIGNAL \Q[1]~input_o\ : std_logic;
SIGNAL \Q[2]~input_o\ : std_logic;
SIGNAL \Q[3]~input_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Yout[0]~output_o\ : std_logic;
SIGNAL \Yout[1]~output_o\ : std_logic;
SIGNAL \Yout[2]~output_o\ : std_logic;
SIGNAL \Yout[3]~output_o\ : std_logic;
SIGNAL \Yout[4]~output_o\ : std_logic;
SIGNAL \Yout[5]~output_o\ : std_logic;
SIGNAL \Yout[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Q[0]~19_combout\ : std_logic;
SIGNAL \Q[0]~reg0_q\ : std_logic;
SIGNAL \Q[1]~8_cout\ : std_logic;
SIGNAL \Q[1]~9_combout\ : std_logic;
SIGNAL \Q[1]~reg0_q\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \Q[1]~10\ : std_logic;
SIGNAL \Q[2]~11_combout\ : std_logic;
SIGNAL \Q[2]~reg0_q\ : std_logic;
SIGNAL \Q[2]~12\ : std_logic;
SIGNAL \Q[3]~13_combout\ : std_logic;
SIGNAL \Q[3]~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_up <= up;
Yout <= ww_Yout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X0_Y4_N23
\Q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\Q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\Q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\Q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\Yout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Yout[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\Yout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Yout[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\Yout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Yout[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\Yout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Yout[3]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\Yout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Yout[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\Yout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Yout[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\Yout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Yout[6]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X1_Y4_N20
\Q[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q[0]~19_combout\ = !\Q[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q[0]~reg0_q\,
	combout => \Q[0]~19_combout\);

-- Location: FF_X1_Y4_N21
\Q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N6
\Q[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q[1]~8_cout\ = CARRY(\Q[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q[0]~reg0_q\,
	datad => VCC,
	cout => \Q[1]~8_cout\);

-- Location: LCCOMB_X1_Y4_N8
\Q[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q[1]~9_combout\ = (\up~input_o\ & ((\Q[1]~reg0_q\ & (\Q[1]~8_cout\ & VCC)) # (!\Q[1]~reg0_q\ & (!\Q[1]~8_cout\)))) # (!\up~input_o\ & ((\Q[1]~reg0_q\ & (!\Q[1]~8_cout\)) # (!\Q[1]~reg0_q\ & ((\Q[1]~8_cout\) # (GND)))))
-- \Q[1]~10\ = CARRY((\up~input_o\ & (!\Q[1]~reg0_q\ & !\Q[1]~8_cout\)) # (!\up~input_o\ & ((!\Q[1]~8_cout\) # (!\Q[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up~input_o\,
	datab => \Q[1]~reg0_q\,
	datad => VCC,
	cin => \Q[1]~8_cout\,
	combout => \Q[1]~9_combout\,
	cout => \Q[1]~10\);

-- Location: FF_X1_Y4_N9
\Q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N8
\up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up,
	o => \up~input_o\);

-- Location: LCCOMB_X1_Y4_N10
\Q[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q[2]~11_combout\ = ((\Q[2]~reg0_q\ $ (\up~input_o\ $ (!\Q[1]~10\)))) # (GND)
-- \Q[2]~12\ = CARRY((\Q[2]~reg0_q\ & ((\up~input_o\) # (!\Q[1]~10\))) # (!\Q[2]~reg0_q\ & (\up~input_o\ & !\Q[1]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_q\,
	datab => \up~input_o\,
	datad => VCC,
	cin => \Q[1]~10\,
	combout => \Q[2]~11_combout\,
	cout => \Q[2]~12\);

-- Location: FF_X1_Y4_N11
\Q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N12
\Q[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q[3]~13_combout\ = \up~input_o\ $ (\Q[2]~12\ $ (\Q[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up~input_o\,
	datad => \Q[3]~reg0_q\,
	cin => \Q[2]~12\,
	combout => \Q[3]~13_combout\);

-- Location: FF_X1_Y4_N13
\Q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N30
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Q[2]~reg0_q\ & (!\Q[3]~reg0_q\ & ((!\Q[1]~reg0_q\) # (!\Q[0]~reg0_q\)))) # (!\Q[2]~reg0_q\ & ((\Q[1]~reg0_q\ $ (\Q[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_q\,
	datab => \Q[0]~reg0_q\,
	datac => \Q[1]~reg0_q\,
	datad => \Q[3]~reg0_q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y4_N28
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Q[2]~reg0_q\ & ((\Q[3]~reg0_q\) # ((\Q[0]~reg0_q\ & \Q[1]~reg0_q\)))) # (!\Q[2]~reg0_q\ & ((\Q[1]~reg0_q\) # ((\Q[0]~reg0_q\ & !\Q[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_q\,
	datab => \Q[0]~reg0_q\,
	datac => \Q[1]~reg0_q\,
	datad => \Q[3]~reg0_q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y4_N22
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Q[0]~reg0_q\) # ((\Q[1]~reg0_q\ & ((\Q[3]~reg0_q\))) # (!\Q[1]~reg0_q\ & (\Q[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_q\,
	datab => \Q[0]~reg0_q\,
	datac => \Q[1]~reg0_q\,
	datad => \Q[3]~reg0_q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y4_N24
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Q[1]~reg0_q\ & ((\Q[3]~reg0_q\) # ((\Q[2]~reg0_q\ & \Q[0]~reg0_q\)))) # (!\Q[1]~reg0_q\ & (\Q[2]~reg0_q\ $ (((\Q[0]~reg0_q\ & !\Q[3]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_q\,
	datab => \Q[0]~reg0_q\,
	datac => \Q[1]~reg0_q\,
	datad => \Q[3]~reg0_q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Q[2]~reg0_q\ & (((\Q[3]~reg0_q\)))) # (!\Q[2]~reg0_q\ & (\Q[1]~reg0_q\ & ((\Q[3]~reg0_q\) # (!\Q[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_q\,
	datab => \Q[0]~reg0_q\,
	datac => \Q[1]~reg0_q\,
	datad => \Q[3]~reg0_q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y4_N0
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Q[2]~reg0_q\ & ((\Q[3]~reg0_q\) # (\Q[0]~reg0_q\ $ (\Q[1]~reg0_q\)))) # (!\Q[2]~reg0_q\ & (((\Q[1]~reg0_q\ & \Q[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_q\,
	datab => \Q[0]~reg0_q\,
	datac => \Q[1]~reg0_q\,
	datad => \Q[3]~reg0_q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y4_N18
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Q[1]~reg0_q\ & (((\Q[3]~reg0_q\)))) # (!\Q[1]~reg0_q\ & (\Q[2]~reg0_q\ $ (((\Q[0]~reg0_q\ & !\Q[3]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_q\,
	datab => \Q[0]~reg0_q\,
	datac => \Q[1]~reg0_q\,
	datad => \Q[3]~reg0_q\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X0_Y4_N22
\Q[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(0),
	o => \Q[0]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\Q[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(1),
	o => \Q[1]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\Q[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(2),
	o => \Q[2]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\Q[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(3),
	o => \Q[3]~input_o\);

ww_Yout(0) <= \Yout[0]~output_o\;

ww_Yout(1) <= \Yout[1]~output_o\;

ww_Yout(2) <= \Yout[2]~output_o\;

ww_Yout(3) <= \Yout[3]~output_o\;

ww_Yout(4) <= \Yout[4]~output_o\;

ww_Yout(5) <= \Yout[5]~output_o\;

ww_Yout(6) <= \Yout[6]~output_o\;

Q(0) <= \Q[0]~output_o\;

Q(1) <= \Q[1]~output_o\;

Q(2) <= \Q[2]~output_o\;

Q(3) <= \Q[3]~output_o\;
END structure;


