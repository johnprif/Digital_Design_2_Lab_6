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

-- DATE "04/27/2021 23:39:38"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Multiplier IS
    PORT (
	Rst : IN std_logic;
	CLK : IN std_logic;
	SI : IN std_logic;
	Low : OUT std_logic_vector(3 DOWNTO 0);
	High : OUT std_logic_vector(3 DOWNTO 0)
	);
END Multiplier;

-- Design Ports Information
-- Low[0]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Low[1]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Low[2]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Low[3]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[1]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[3]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SI	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SI : std_logic;
SIGNAL ww_Low : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_High : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_Ad|Sum[3]~7\ : std_logic;
SIGNAL \U_Ad|Cout~0_combout\ : std_logic;
SIGNAL \U_Ctl|count[2]~6_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \R_C|F[0]~0_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \U_Ctl|count[0]~12_combout\ : std_logic;
SIGNAL \Rst~combout\ : std_logic;
SIGNAL \Rst~clkctrl_outclk\ : std_logic;
SIGNAL \U_Ctl|count[1]~5\ : std_logic;
SIGNAL \U_Ctl|count[2]~7\ : std_logic;
SIGNAL \U_Ctl|count[3]~8_combout\ : std_logic;
SIGNAL \U_Ctl|count[3]~9\ : std_logic;
SIGNAL \U_Ctl|count[4]~10_combout\ : std_logic;
SIGNAL \U_Ctl|count[1]~4_combout\ : std_logic;
SIGNAL \U_Ctl|Equal0~0_combout\ : std_logic;
SIGNAL \U_Ctl|Selector1~0_combout\ : std_logic;
SIGNAL \U_Ctl|state.ADD~regout\ : std_logic;
SIGNAL \U_Ctl|state.SHIFT~feeder_combout\ : std_logic;
SIGNAL \U_Ctl|state.SHIFT~regout\ : std_logic;
SIGNAL \SI~combout\ : std_logic;
SIGNAL \R_A|F[3]~feeder_combout\ : std_logic;
SIGNAL \U_Ctl|state.LOAD~0_combout\ : std_logic;
SIGNAL \U_Ctl|state.LOAD~regout\ : std_logic;
SIGNAL \U_Ctl|SL_B~combout\ : std_logic;
SIGNAL \R_B|F[0]~feeder_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \U_Ad|Sum[0]~1\ : std_logic;
SIGNAL \U_Ad|Sum[1]~3\ : std_logic;
SIGNAL \U_Ad|Sum[2]~5\ : std_logic;
SIGNAL \U_Ad|Sum[3]~6_combout\ : std_logic;
SIGNAL \R_H|F~3_combout\ : std_logic;
SIGNAL \U_Ctl|EN_H~combout\ : std_logic;
SIGNAL \U_Ad|Sum[2]~4_combout\ : std_logic;
SIGNAL \R_H|F~2_combout\ : std_logic;
SIGNAL \U_Ad|Sum[1]~2_combout\ : std_logic;
SIGNAL \R_H|F~1_combout\ : std_logic;
SIGNAL \U_Ad|Sum[0]~0_combout\ : std_logic;
SIGNAL \R_H|F~0_combout\ : std_logic;
SIGNAL \R_L|F[3]~feeder_combout\ : std_logic;
SIGNAL \R_L|F[2]~feeder_combout\ : std_logic;
SIGNAL \R_L|F[1]~feeder_combout\ : std_logic;
SIGNAL \R_L|F[0]~feeder_combout\ : std_logic;
SIGNAL \R_B|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_H|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_L|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_A|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_C|F\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_Ctl|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_Ctl|ALT_INV_state.LOAD~regout\ : std_logic;

BEGIN

ww_Rst <= Rst;
ww_CLK <= CLK;
ww_SI <= SI;
Low <= ww_Low;
High <= ww_High;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\Rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Rst~combout\);
\U_Ctl|ALT_INV_state.LOAD~regout\ <= NOT \U_Ctl|state.LOAD~regout\;

-- Location: LCCOMB_X62_Y16_N14
\U_Ad|Sum[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Sum[3]~6_combout\ = (\comb~3_combout\ & ((\R_H|F\(3) & (\U_Ad|Sum[2]~5\ & VCC)) # (!\R_H|F\(3) & (!\U_Ad|Sum[2]~5\)))) # (!\comb~3_combout\ & ((\R_H|F\(3) & (!\U_Ad|Sum[2]~5\)) # (!\R_H|F\(3) & ((\U_Ad|Sum[2]~5\) # (GND)))))
-- \U_Ad|Sum[3]~7\ = CARRY((\comb~3_combout\ & (!\R_H|F\(3) & !\U_Ad|Sum[2]~5\)) # (!\comb~3_combout\ & ((!\U_Ad|Sum[2]~5\) # (!\R_H|F\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \R_H|F\(3),
	datad => VCC,
	cin => \U_Ad|Sum[2]~5\,
	combout => \U_Ad|Sum[3]~6_combout\,
	cout => \U_Ad|Sum[3]~7\);

-- Location: LCFF_X63_Y16_N21
\U_Ctl|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[2]~6_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(2));

-- Location: LCCOMB_X62_Y16_N16
\U_Ad|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Cout~0_combout\ = !\U_Ad|Sum[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ad|Sum[3]~7\,
	combout => \U_Ad|Cout~0_combout\);

-- Location: LCCOMB_X63_Y16_N20
\U_Ctl|count[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[2]~6_combout\ = (\U_Ctl|count\(2) & (!\U_Ctl|count[1]~5\)) # (!\U_Ctl|count\(2) & ((\U_Ctl|count[1]~5\) # (GND)))
-- \U_Ctl|count[2]~7\ = CARRY((!\U_Ctl|count[1]~5\) # (!\U_Ctl|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(2),
	datad => VCC,
	cin => \U_Ctl|count[1]~5\,
	combout => \U_Ctl|count[2]~6_combout\,
	cout => \U_Ctl|count[2]~7\);

-- Location: LCFF_X63_Y16_N11
\R_C|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_C|F[0]~0_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_C|F\(0));

-- Location: LCCOMB_X62_Y16_N24
\comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\R_A|F\(3) & \R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_A|F\(3),
	datad => \R_B|F\(0),
	combout => \comb~3_combout\);

-- Location: LCCOMB_X63_Y16_N10
\R_C|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_C|F[0]~0_combout\ = (\U_Ctl|state.ADD~regout\ & ((\U_Ad|Cout~0_combout\))) # (!\U_Ctl|state.ADD~regout\ & (\R_C|F\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|state.ADD~regout\,
	datac => \R_C|F\(0),
	datad => \U_Ad|Cout~0_combout\,
	combout => \R_C|F[0]~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X63_Y16_N8
\U_Ctl|count[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[0]~12_combout\ = !\U_Ctl|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Ctl|count\(0),
	combout => \U_Ctl|count[0]~12_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Rst~I\ : cycloneii_io
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
	padio => ww_Rst,
	combout => \Rst~combout\);

-- Location: CLKCTRL_G1
\Rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Rst~clkctrl_outclk\);

-- Location: LCFF_X63_Y16_N9
\U_Ctl|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[0]~12_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(0));

-- Location: LCCOMB_X63_Y16_N18
\U_Ctl|count[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[1]~4_combout\ = (\U_Ctl|count\(1) & (\U_Ctl|count\(0) $ (VCC))) # (!\U_Ctl|count\(1) & (\U_Ctl|count\(0) & VCC))
-- \U_Ctl|count[1]~5\ = CARRY((\U_Ctl|count\(1) & \U_Ctl|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(1),
	datab => \U_Ctl|count\(0),
	datad => VCC,
	combout => \U_Ctl|count[1]~4_combout\,
	cout => \U_Ctl|count[1]~5\);

-- Location: LCCOMB_X63_Y16_N22
\U_Ctl|count[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[3]~8_combout\ = (\U_Ctl|count\(3) & (\U_Ctl|count[2]~7\ $ (GND))) # (!\U_Ctl|count\(3) & (!\U_Ctl|count[2]~7\ & VCC))
-- \U_Ctl|count[3]~9\ = CARRY((\U_Ctl|count\(3) & !\U_Ctl|count[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|count\(3),
	datad => VCC,
	cin => \U_Ctl|count[2]~7\,
	combout => \U_Ctl|count[3]~8_combout\,
	cout => \U_Ctl|count[3]~9\);

-- Location: LCFF_X63_Y16_N23
\U_Ctl|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[3]~8_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(3));

-- Location: LCCOMB_X63_Y16_N24
\U_Ctl|count[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[4]~10_combout\ = \U_Ctl|count\(4) $ (\U_Ctl|count[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(4),
	cin => \U_Ctl|count[3]~9\,
	combout => \U_Ctl|count[4]~10_combout\);

-- Location: LCFF_X63_Y16_N25
\U_Ctl|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[4]~10_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(4));

-- Location: LCFF_X63_Y16_N19
\U_Ctl|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[1]~4_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(1));

-- Location: LCCOMB_X63_Y16_N2
\U_Ctl|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|Equal0~0_combout\ = (\U_Ctl|count\(2) & (\U_Ctl|count\(0) & (!\U_Ctl|count\(4) & \U_Ctl|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(2),
	datab => \U_Ctl|count\(0),
	datac => \U_Ctl|count\(4),
	datad => \U_Ctl|count\(1),
	combout => \U_Ctl|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y16_N6
\U_Ctl|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|Selector1~0_combout\ = (\U_Ctl|Equal0~0_combout\ & (!\U_Ctl|count\(3) & ((\U_Ctl|state.SHIFT~regout\) # (!\U_Ctl|state.LOAD~regout\)))) # (!\U_Ctl|Equal0~0_combout\ & (((\U_Ctl|state.SHIFT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|state.LOAD~regout\,
	datab => \U_Ctl|count\(3),
	datac => \U_Ctl|Equal0~0_combout\,
	datad => \U_Ctl|state.SHIFT~regout\,
	combout => \U_Ctl|Selector1~0_combout\);

-- Location: LCFF_X63_Y16_N7
\U_Ctl|state.ADD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|Selector1~0_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|state.ADD~regout\);

-- Location: LCCOMB_X63_Y16_N0
\U_Ctl|state.SHIFT~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|state.SHIFT~feeder_combout\ = \U_Ctl|state.ADD~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_Ctl|state.ADD~regout\,
	combout => \U_Ctl|state.SHIFT~feeder_combout\);

-- Location: LCFF_X63_Y16_N1
\U_Ctl|state.SHIFT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|state.SHIFT~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|state.SHIFT~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SI~I\ : cycloneii_io
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
	padio => ww_SI,
	combout => \SI~combout\);

-- Location: LCCOMB_X62_Y16_N6
\R_A|F[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_A|F[3]~feeder_combout\ = \SI~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SI~combout\,
	combout => \R_A|F[3]~feeder_combout\);

-- Location: LCCOMB_X63_Y16_N28
\U_Ctl|state.LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|state.LOAD~0_combout\ = (\U_Ctl|state.LOAD~regout\) # ((!\U_Ctl|count\(3) & \U_Ctl|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|count\(3),
	datac => \U_Ctl|state.LOAD~regout\,
	datad => \U_Ctl|Equal0~0_combout\,
	combout => \U_Ctl|state.LOAD~0_combout\);

-- Location: LCFF_X63_Y16_N29
\U_Ctl|state.LOAD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|state.LOAD~0_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|state.LOAD~regout\);

-- Location: LCFF_X62_Y16_N7
\R_A|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_A|F[3]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(3));

-- Location: LCFF_X62_Y16_N27
\R_A|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \R_A|F\(3),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(2));

-- Location: LCFF_X62_Y16_N31
\R_A|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \R_A|F\(2),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(1));

-- Location: LCFF_X62_Y16_N23
\R_A|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \R_A|F\(1),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(0));

-- Location: LCCOMB_X63_Y16_N14
\U_Ctl|SL_B\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|SL_B~combout\ = (\U_Ctl|state.SHIFT~regout\) # (!\U_Ctl|state.LOAD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.LOAD~regout\,
	datad => \U_Ctl|state.SHIFT~regout\,
	combout => \U_Ctl|SL_B~combout\);

-- Location: LCFF_X62_Y16_N5
\R_B|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \R_A|F\(0),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|SL_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(3));

-- Location: LCFF_X62_Y16_N19
\R_B|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \R_B|F\(3),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|SL_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(2));

-- Location: LCFF_X62_Y16_N29
\R_B|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \R_B|F\(2),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|SL_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(1));

-- Location: LCCOMB_X62_Y16_N20
\R_B|F[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_B|F[0]~feeder_combout\ = \R_B|F\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_B|F\(1),
	combout => \R_B|F[0]~feeder_combout\);

-- Location: LCFF_X62_Y16_N21
\R_B|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_B|F[0]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|SL_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(0));

-- Location: LCCOMB_X62_Y16_N4
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\R_A|F\(2) & \R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R_A|F\(2),
	datad => \R_B|F\(0),
	combout => \comb~2_combout\);

-- Location: LCCOMB_X62_Y16_N28
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\R_A|F\(1) & \R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R_A|F\(1),
	datad => \R_B|F\(0),
	combout => \comb~1_combout\);

-- Location: LCCOMB_X62_Y16_N18
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\R_B|F\(0) & \R_A|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_B|F\(0),
	datad => \R_A|F\(0),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X62_Y16_N8
\U_Ad|Sum[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Sum[0]~0_combout\ = (\R_H|F\(0) & (\comb~0_combout\ $ (VCC))) # (!\R_H|F\(0) & (\comb~0_combout\ & VCC))
-- \U_Ad|Sum[0]~1\ = CARRY((\R_H|F\(0) & \comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_H|F\(0),
	datab => \comb~0_combout\,
	datad => VCC,
	combout => \U_Ad|Sum[0]~0_combout\,
	cout => \U_Ad|Sum[0]~1\);

-- Location: LCCOMB_X62_Y16_N10
\U_Ad|Sum[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Sum[1]~2_combout\ = (\R_H|F\(1) & ((\comb~1_combout\ & (\U_Ad|Sum[0]~1\ & VCC)) # (!\comb~1_combout\ & (!\U_Ad|Sum[0]~1\)))) # (!\R_H|F\(1) & ((\comb~1_combout\ & (!\U_Ad|Sum[0]~1\)) # (!\comb~1_combout\ & ((\U_Ad|Sum[0]~1\) # (GND)))))
-- \U_Ad|Sum[1]~3\ = CARRY((\R_H|F\(1) & (!\comb~1_combout\ & !\U_Ad|Sum[0]~1\)) # (!\R_H|F\(1) & ((!\U_Ad|Sum[0]~1\) # (!\comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R_H|F\(1),
	datab => \comb~1_combout\,
	datad => VCC,
	cin => \U_Ad|Sum[0]~1\,
	combout => \U_Ad|Sum[1]~2_combout\,
	cout => \U_Ad|Sum[1]~3\);

-- Location: LCCOMB_X62_Y16_N12
\U_Ad|Sum[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Sum[2]~4_combout\ = ((\R_H|F\(2) $ (\comb~2_combout\ $ (!\U_Ad|Sum[1]~3\)))) # (GND)
-- \U_Ad|Sum[2]~5\ = CARRY((\R_H|F\(2) & ((\comb~2_combout\) # (!\U_Ad|Sum[1]~3\))) # (!\R_H|F\(2) & (\comb~2_combout\ & !\U_Ad|Sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R_H|F\(2),
	datab => \comb~2_combout\,
	datad => VCC,
	cin => \U_Ad|Sum[1]~3\,
	combout => \U_Ad|Sum[2]~4_combout\,
	cout => \U_Ad|Sum[2]~5\);

-- Location: LCCOMB_X63_Y16_N30
\R_H|F~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~3_combout\ = (\U_Ctl|state.SHIFT~regout\ & (\R_C|F\(0))) # (!\U_Ctl|state.SHIFT~regout\ & ((\U_Ad|Sum[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_C|F\(0),
	datab => \U_Ctl|state.SHIFT~regout\,
	datad => \U_Ad|Sum[3]~6_combout\,
	combout => \R_H|F~3_combout\);

-- Location: LCCOMB_X63_Y16_N12
\U_Ctl|EN_H\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|EN_H~combout\ = (\U_Ctl|state.ADD~regout\) # (\U_Ctl|state.SHIFT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|state.ADD~regout\,
	datad => \U_Ctl|state.SHIFT~regout\,
	combout => \U_Ctl|EN_H~combout\);

-- Location: LCFF_X63_Y16_N31
\R_H|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~3_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(3));

-- Location: LCCOMB_X63_Y16_N4
\R_H|F~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~2_combout\ = (\U_Ctl|state.SHIFT~regout\ & (\R_H|F\(3))) # (!\U_Ctl|state.SHIFT~regout\ & ((\U_Ad|Sum[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.SHIFT~regout\,
	datac => \R_H|F\(3),
	datad => \U_Ad|Sum[2]~4_combout\,
	combout => \R_H|F~2_combout\);

-- Location: LCFF_X63_Y16_N5
\R_H|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~2_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(2));

-- Location: LCCOMB_X63_Y16_N26
\R_H|F~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~1_combout\ = (\U_Ctl|state.SHIFT~regout\ & (\R_H|F\(2))) # (!\U_Ctl|state.SHIFT~regout\ & ((\U_Ad|Sum[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.SHIFT~regout\,
	datac => \R_H|F\(2),
	datad => \U_Ad|Sum[1]~2_combout\,
	combout => \R_H|F~1_combout\);

-- Location: LCFF_X63_Y16_N27
\R_H|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~1_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(1));

-- Location: LCCOMB_X63_Y16_N16
\R_H|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~0_combout\ = (\U_Ctl|state.SHIFT~regout\ & (\R_H|F\(1))) # (!\U_Ctl|state.SHIFT~regout\ & ((\U_Ad|Sum[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.SHIFT~regout\,
	datac => \R_H|F\(1),
	datad => \U_Ad|Sum[0]~0_combout\,
	combout => \R_H|F~0_combout\);

-- Location: LCFF_X63_Y16_N17
\R_H|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~0_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(0));

-- Location: LCCOMB_X64_Y16_N2
\R_L|F[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_L|F[3]~feeder_combout\ = \R_H|F\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_H|F\(0),
	combout => \R_L|F[3]~feeder_combout\);

-- Location: LCFF_X64_Y16_N3
\R_L|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_L|F[3]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(3));

-- Location: LCCOMB_X64_Y16_N28
\R_L|F[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_L|F[2]~feeder_combout\ = \R_L|F\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_L|F\(3),
	combout => \R_L|F[2]~feeder_combout\);

-- Location: LCFF_X64_Y16_N29
\R_L|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_L|F[2]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(2));

-- Location: LCCOMB_X64_Y16_N22
\R_L|F[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_L|F[1]~feeder_combout\ = \R_L|F\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_L|F\(2),
	combout => \R_L|F[1]~feeder_combout\);

-- Location: LCFF_X64_Y16_N23
\R_L|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_L|F[1]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(1));

-- Location: LCCOMB_X64_Y16_N16
\R_L|F[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_L|F[0]~feeder_combout\ = \R_L|F\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_L|F\(1),
	combout => \R_L|F[0]~feeder_combout\);

-- Location: LCFF_X64_Y16_N17
\R_L|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_L|F[0]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(0));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Low[0]~I\ : cycloneii_io
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
	datain => \R_L|F\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Low(0));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Low[1]~I\ : cycloneii_io
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
	datain => \R_L|F\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Low(1));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Low[2]~I\ : cycloneii_io
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
	datain => \R_L|F\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Low(2));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Low[3]~I\ : cycloneii_io
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
	datain => \R_L|F\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Low(3));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\High[0]~I\ : cycloneii_io
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
	datain => \R_H|F\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_High(0));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\High[1]~I\ : cycloneii_io
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
	datain => \R_H|F\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_High(1));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\High[2]~I\ : cycloneii_io
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
	datain => \R_H|F\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_High(2));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\High[3]~I\ : cycloneii_io
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
	datain => \R_H|F\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_High(3));
END structure;


