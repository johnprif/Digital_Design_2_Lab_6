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

-- DATE "04/28/2021 01:10:46"

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
	Low : OUT std_logic_vector(7 DOWNTO 0);
	High : OUT std_logic_vector(7 DOWNTO 0);
	A_IN : IN std_logic_vector(7 DOWNTO 0);
	B_IN : IN std_logic_vector(7 DOWNTO 0)
	);
END Multiplier;

-- Design Ports Information
-- SI	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Low[0]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Low[1]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Low[2]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Low[3]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Low[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Low[5]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Low[6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Low[7]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[0]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[1]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[3]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[4]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[5]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- High[7]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_IN[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_IN[0]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_IN[1]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_IN[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_IN[3]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_IN[4]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_IN[5]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_IN[6]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_IN[7]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_IN[1]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_IN[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_IN[3]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_IN[4]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_IN[5]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_IN[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_IN[7]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_Low : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_High : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_Ctl|count[4]~14_combout\ : std_logic;
SIGNAL \U_Ctl|count[7]~20_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \R_B|F~3_combout\ : std_logic;
SIGNAL \R_B|F~4_combout\ : std_logic;
SIGNAL \R_B|F~5_combout\ : std_logic;
SIGNAL \R_B|F~6_combout\ : std_logic;
SIGNAL \R_B|F~7_combout\ : std_logic;
SIGNAL \U_Ctl|count[0]~24_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \U_Ctl|count[1]~8_combout\ : std_logic;
SIGNAL \Rst~combout\ : std_logic;
SIGNAL \Rst~clkctrl_outclk\ : std_logic;
SIGNAL \U_Ctl|count[1]~9\ : std_logic;
SIGNAL \U_Ctl|count[2]~10_combout\ : std_logic;
SIGNAL \U_Ctl|count[2]~11\ : std_logic;
SIGNAL \U_Ctl|count[3]~12_combout\ : std_logic;
SIGNAL \U_Ctl|count[3]~13\ : std_logic;
SIGNAL \U_Ctl|count[4]~15\ : std_logic;
SIGNAL \U_Ctl|count[5]~16_combout\ : std_logic;
SIGNAL \U_Ctl|count[5]~17\ : std_logic;
SIGNAL \U_Ctl|count[6]~19\ : std_logic;
SIGNAL \U_Ctl|count[7]~21\ : std_logic;
SIGNAL \U_Ctl|count[8]~22_combout\ : std_logic;
SIGNAL \U_Ctl|count[6]~18_combout\ : std_logic;
SIGNAL \U_Ctl|Equal0~1_combout\ : std_logic;
SIGNAL \U_Ctl|Equal0~0_combout\ : std_logic;
SIGNAL \U_Ctl|state.LOAD~0_combout\ : std_logic;
SIGNAL \U_Ctl|state.LOAD~regout\ : std_logic;
SIGNAL \U_Ctl|Equal0~2_combout\ : std_logic;
SIGNAL \U_Ctl|Selector1~0_combout\ : std_logic;
SIGNAL \U_Ctl|state.ADD~regout\ : std_logic;
SIGNAL \U_Ctl|state.SHIFT~feeder_combout\ : std_logic;
SIGNAL \U_Ctl|state.SHIFT~regout\ : std_logic;
SIGNAL \U_Ctl|SL_B~combout\ : std_logic;
SIGNAL \R_B|F~2_combout\ : std_logic;
SIGNAL \U_Ctl|EN_B~combout\ : std_logic;
SIGNAL \R_B|F~1_combout\ : std_logic;
SIGNAL \R_B|F~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \U_Ad|Sum[0]~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \U_Ad|Sum[0]~1\ : std_logic;
SIGNAL \U_Ad|Sum[1]~2_combout\ : std_logic;
SIGNAL \R_H|F~1_combout\ : std_logic;
SIGNAL \U_Ctl|EN_H~combout\ : std_logic;
SIGNAL \R_H|F~0_combout\ : std_logic;
SIGNAL \R_L|F[7]~feeder_combout\ : std_logic;
SIGNAL \R_L|F[6]~feeder_combout\ : std_logic;
SIGNAL \R_L|F[4]~feeder_combout\ : std_logic;
SIGNAL \R_L|F[3]~feeder_combout\ : std_logic;
SIGNAL \R_L|F[2]~feeder_combout\ : std_logic;
SIGNAL \U_Ad|Sum[1]~3\ : std_logic;
SIGNAL \U_Ad|Sum[2]~4_combout\ : std_logic;
SIGNAL \R_H|F~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \U_Ad|Sum[2]~5\ : std_logic;
SIGNAL \U_Ad|Sum[3]~7\ : std_logic;
SIGNAL \U_Ad|Sum[4]~8_combout\ : std_logic;
SIGNAL \R_H|F~4_combout\ : std_logic;
SIGNAL \U_Ad|Sum[3]~6_combout\ : std_logic;
SIGNAL \R_H|F~3_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \U_Ad|Sum[4]~9\ : std_logic;
SIGNAL \U_Ad|Sum[5]~10_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \U_Ad|Sum[5]~11\ : std_logic;
SIGNAL \U_Ad|Sum[6]~12_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \U_Ad|Sum[6]~13\ : std_logic;
SIGNAL \U_Ad|Sum[7]~14_combout\ : std_logic;
SIGNAL \U_Ad|Sum[7]~15\ : std_logic;
SIGNAL \U_Ad|Cout~0_combout\ : std_logic;
SIGNAL \R_C|F[0]~0_combout\ : std_logic;
SIGNAL \R_H|F~7_combout\ : std_logic;
SIGNAL \R_H|F~6_combout\ : std_logic;
SIGNAL \R_H|F~5_combout\ : std_logic;
SIGNAL \R_B|F\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R_H|F\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R_L|F\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R_A|F\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R_C|F\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_Ctl|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \B_IN~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A_IN~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ctl|ALT_INV_state.LOAD~regout\ : std_logic;

BEGIN

ww_Rst <= Rst;
ww_CLK <= CLK;
ww_SI <= SI;
Low <= ww_Low;
High <= ww_High;
ww_A_IN <= A_IN;
ww_B_IN <= B_IN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\Rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Rst~combout\);
\U_Ctl|ALT_INV_state.LOAD~regout\ <= NOT \U_Ctl|state.LOAD~regout\;

-- Location: LCFF_X4_Y23_N13
\U_Ctl|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[7]~20_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(7));

-- Location: LCFF_X4_Y23_N7
\U_Ctl|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[4]~14_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(4));

-- Location: LCCOMB_X4_Y23_N6
\U_Ctl|count[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[4]~14_combout\ = (\U_Ctl|count\(4) & (!\U_Ctl|count[3]~13\)) # (!\U_Ctl|count\(4) & ((\U_Ctl|count[3]~13\) # (GND)))
-- \U_Ctl|count[4]~15\ = CARRY((!\U_Ctl|count[3]~13\) # (!\U_Ctl|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(4),
	datad => VCC,
	cin => \U_Ctl|count[3]~13\,
	combout => \U_Ctl|count[4]~14_combout\,
	cout => \U_Ctl|count[4]~15\);

-- Location: LCCOMB_X4_Y23_N12
\U_Ctl|count[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[7]~20_combout\ = (\U_Ctl|count\(7) & (\U_Ctl|count[6]~19\ $ (GND))) # (!\U_Ctl|count\(7) & (!\U_Ctl|count[6]~19\ & VCC))
-- \U_Ctl|count[7]~21\ = CARRY((\U_Ctl|count\(7) & !\U_Ctl|count[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(7),
	datad => VCC,
	cin => \U_Ctl|count[6]~19\,
	combout => \U_Ctl|count[7]~20_combout\,
	cout => \U_Ctl|count[7]~21\);

-- Location: LCFF_X2_Y23_N21
\R_A|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \A_IN~combout\(2),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(2));

-- Location: LCCOMB_X2_Y23_N20
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\R_A|F\(2) & \R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_A|F\(2),
	datad => \R_B|F\(0),
	combout => \comb~2_combout\);

-- Location: LCFF_X2_Y23_N25
\R_A|F[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \A_IN~combout\(4),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(4));

-- Location: LCCOMB_X2_Y23_N24
\comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\R_A|F\(4) & \R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_A|F\(4),
	datad => \R_B|F\(0),
	combout => \comb~4_combout\);

-- Location: LCFF_X4_Y23_N21
\U_Ctl|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[0]~24_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(0));

-- Location: LCFF_X1_Y24_N25
\R_B|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_B|F~3_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(3));

-- Location: LCFF_X1_Y24_N11
\R_B|F[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_B|F~4_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(4));

-- Location: LCCOMB_X1_Y24_N24
\R_B|F~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_B|F~3_combout\ = (\U_Ctl|SL_B~combout\ & ((\R_B|F\(4)))) # (!\U_Ctl|SL_B~combout\ & (\B_IN~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|SL_B~combout\,
	datac => \B_IN~combout\(3),
	datad => \R_B|F\(4),
	combout => \R_B|F~3_combout\);

-- Location: LCFF_X1_Y24_N13
\R_B|F[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_B|F~5_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(5));

-- Location: LCCOMB_X1_Y24_N10
\R_B|F~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_B|F~4_combout\ = (\U_Ctl|SL_B~combout\ & ((\R_B|F\(5)))) # (!\U_Ctl|SL_B~combout\ & (\B_IN~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|SL_B~combout\,
	datac => \B_IN~combout\(4),
	datad => \R_B|F\(5),
	combout => \R_B|F~4_combout\);

-- Location: LCFF_X1_Y24_N7
\R_B|F[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_B|F~6_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(6));

-- Location: LCCOMB_X1_Y24_N12
\R_B|F~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_B|F~5_combout\ = (\U_Ctl|SL_B~combout\ & ((\R_B|F\(6)))) # (!\U_Ctl|SL_B~combout\ & (\B_IN~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|SL_B~combout\,
	datac => \B_IN~combout\(5),
	datad => \R_B|F\(6),
	combout => \R_B|F~5_combout\);

-- Location: LCFF_X1_Y24_N1
\R_B|F[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_B|F~7_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(7));

-- Location: LCCOMB_X1_Y24_N6
\R_B|F~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_B|F~6_combout\ = (\U_Ctl|SL_B~combout\ & ((\R_B|F\(7)))) # (!\U_Ctl|SL_B~combout\ & (\B_IN~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|SL_B~combout\,
	datac => \B_IN~combout\(6),
	datad => \R_B|F\(7),
	combout => \R_B|F~6_combout\);

-- Location: LCCOMB_X1_Y24_N0
\R_B|F~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_B|F~7_combout\ = (!\U_Ctl|SL_B~combout\ & \B_IN~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|SL_B~combout\,
	datad => \B_IN~combout\(7),
	combout => \R_B|F~7_combout\);

-- Location: LCCOMB_X4_Y23_N20
\U_Ctl|count[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[0]~24_combout\ = !\U_Ctl|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Ctl|count\(0),
	combout => \U_Ctl|count[0]~24_combout\);

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_IN[2]~I\ : cycloneii_io
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
	padio => ww_A_IN(2),
	combout => \A_IN~combout\(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_IN[4]~I\ : cycloneii_io
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
	padio => ww_A_IN(4),
	combout => \A_IN~combout\(4));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_IN[3]~I\ : cycloneii_io
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
	padio => ww_B_IN(3),
	combout => \B_IN~combout\(3));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_IN[4]~I\ : cycloneii_io
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
	padio => ww_B_IN(4),
	combout => \B_IN~combout\(4));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_IN[5]~I\ : cycloneii_io
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
	padio => ww_B_IN(5),
	combout => \B_IN~combout\(5));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_IN[6]~I\ : cycloneii_io
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
	padio => ww_B_IN(6),
	combout => \B_IN~combout\(6));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_IN[7]~I\ : cycloneii_io
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
	padio => ww_B_IN(7),
	combout => \B_IN~combout\(7));

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

-- Location: LCCOMB_X4_Y23_N0
\U_Ctl|count[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[1]~8_combout\ = (\U_Ctl|count\(0) & (\U_Ctl|count\(1) $ (VCC))) # (!\U_Ctl|count\(0) & (\U_Ctl|count\(1) & VCC))
-- \U_Ctl|count[1]~9\ = CARRY((\U_Ctl|count\(0) & \U_Ctl|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(0),
	datab => \U_Ctl|count\(1),
	datad => VCC,
	combout => \U_Ctl|count[1]~8_combout\,
	cout => \U_Ctl|count[1]~9\);

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

-- Location: LCFF_X4_Y23_N1
\U_Ctl|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[1]~8_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(1));

-- Location: LCCOMB_X4_Y23_N2
\U_Ctl|count[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[2]~10_combout\ = (\U_Ctl|count\(2) & (!\U_Ctl|count[1]~9\)) # (!\U_Ctl|count\(2) & ((\U_Ctl|count[1]~9\) # (GND)))
-- \U_Ctl|count[2]~11\ = CARRY((!\U_Ctl|count[1]~9\) # (!\U_Ctl|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|count\(2),
	datad => VCC,
	cin => \U_Ctl|count[1]~9\,
	combout => \U_Ctl|count[2]~10_combout\,
	cout => \U_Ctl|count[2]~11\);

-- Location: LCFF_X4_Y23_N3
\U_Ctl|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[2]~10_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(2));

-- Location: LCCOMB_X4_Y23_N4
\U_Ctl|count[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[3]~12_combout\ = (\U_Ctl|count\(3) & (\U_Ctl|count[2]~11\ $ (GND))) # (!\U_Ctl|count\(3) & (!\U_Ctl|count[2]~11\ & VCC))
-- \U_Ctl|count[3]~13\ = CARRY((\U_Ctl|count\(3) & !\U_Ctl|count[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|count\(3),
	datad => VCC,
	cin => \U_Ctl|count[2]~11\,
	combout => \U_Ctl|count[3]~12_combout\,
	cout => \U_Ctl|count[3]~13\);

-- Location: LCFF_X4_Y23_N5
\U_Ctl|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[3]~12_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(3));

-- Location: LCCOMB_X4_Y23_N8
\U_Ctl|count[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[5]~16_combout\ = (\U_Ctl|count\(5) & (\U_Ctl|count[4]~15\ $ (GND))) # (!\U_Ctl|count\(5) & (!\U_Ctl|count[4]~15\ & VCC))
-- \U_Ctl|count[5]~17\ = CARRY((\U_Ctl|count\(5) & !\U_Ctl|count[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|count\(5),
	datad => VCC,
	cin => \U_Ctl|count[4]~15\,
	combout => \U_Ctl|count[5]~16_combout\,
	cout => \U_Ctl|count[5]~17\);

-- Location: LCFF_X4_Y23_N9
\U_Ctl|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[5]~16_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(5));

-- Location: LCCOMB_X4_Y23_N10
\U_Ctl|count[6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[6]~18_combout\ = (\U_Ctl|count\(6) & (!\U_Ctl|count[5]~17\)) # (!\U_Ctl|count\(6) & ((\U_Ctl|count[5]~17\) # (GND)))
-- \U_Ctl|count[6]~19\ = CARRY((!\U_Ctl|count[5]~17\) # (!\U_Ctl|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(6),
	datad => VCC,
	cin => \U_Ctl|count[5]~17\,
	combout => \U_Ctl|count[6]~18_combout\,
	cout => \U_Ctl|count[6]~19\);

-- Location: LCCOMB_X4_Y23_N14
\U_Ctl|count[8]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|count[8]~22_combout\ = \U_Ctl|count\(8) $ (\U_Ctl|count[7]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|count\(8),
	cin => \U_Ctl|count[7]~21\,
	combout => \U_Ctl|count[8]~22_combout\);

-- Location: LCFF_X4_Y23_N15
\U_Ctl|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[8]~22_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(8));

-- Location: LCFF_X4_Y23_N11
\U_Ctl|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|count[6]~18_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|count\(6));

-- Location: LCCOMB_X4_Y23_N28
\U_Ctl|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|Equal0~1_combout\ = (!\U_Ctl|count\(7) & (!\U_Ctl|count\(5) & (!\U_Ctl|count\(8) & !\U_Ctl|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(7),
	datab => \U_Ctl|count\(5),
	datac => \U_Ctl|count\(8),
	datad => \U_Ctl|count\(6),
	combout => \U_Ctl|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y23_N30
\U_Ctl|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|Equal0~0_combout\ = (!\U_Ctl|count\(0) & (!\U_Ctl|count\(2) & (!\U_Ctl|count\(3) & !\U_Ctl|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(0),
	datab => \U_Ctl|count\(2),
	datac => \U_Ctl|count\(3),
	datad => \U_Ctl|count\(1),
	combout => \U_Ctl|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y23_N0
\U_Ctl|state.LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|state.LOAD~0_combout\ = (\U_Ctl|state.LOAD~regout\) # ((!\U_Ctl|count\(4) & (\U_Ctl|Equal0~1_combout\ & \U_Ctl|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(4),
	datab => \U_Ctl|Equal0~1_combout\,
	datac => \U_Ctl|state.LOAD~regout\,
	datad => \U_Ctl|Equal0~0_combout\,
	combout => \U_Ctl|state.LOAD~0_combout\);

-- Location: LCFF_X3_Y23_N1
\U_Ctl|state.LOAD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|state.LOAD~0_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|state.LOAD~regout\);

-- Location: LCCOMB_X3_Y23_N22
\U_Ctl|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|Equal0~2_combout\ = (\U_Ctl|Equal0~1_combout\ & \U_Ctl|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|Equal0~1_combout\,
	datad => \U_Ctl|Equal0~0_combout\,
	combout => \U_Ctl|Equal0~2_combout\);

-- Location: LCCOMB_X3_Y23_N18
\U_Ctl|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|Selector1~0_combout\ = (\U_Ctl|Equal0~2_combout\ & (!\U_Ctl|count\(4) & ((\U_Ctl|state.SHIFT~regout\) # (!\U_Ctl|state.LOAD~regout\)))) # (!\U_Ctl|Equal0~2_combout\ & (((\U_Ctl|state.SHIFT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|count\(4),
	datab => \U_Ctl|state.LOAD~regout\,
	datac => \U_Ctl|state.SHIFT~regout\,
	datad => \U_Ctl|Equal0~2_combout\,
	combout => \U_Ctl|Selector1~0_combout\);

-- Location: LCFF_X3_Y23_N19
\U_Ctl|state.ADD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|Selector1~0_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|state.ADD~regout\);

-- Location: LCCOMB_X3_Y23_N4
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

-- Location: LCFF_X3_Y23_N5
\U_Ctl|state.SHIFT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U_Ctl|state.SHIFT~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ctl|state.SHIFT~regout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_IN[0]~I\ : cycloneii_io
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
	padio => ww_A_IN(0),
	combout => \A_IN~combout\(0));

-- Location: LCFF_X2_Y23_N31
\R_A|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \A_IN~combout\(0),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(0));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_IN[0]~I\ : cycloneii_io
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
	padio => ww_B_IN(0),
	combout => \B_IN~combout\(0));

-- Location: LCCOMB_X1_Y24_N18
\U_Ctl|SL_B\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|SL_B~combout\ = (\U_Ctl|state.LOAD~regout\ & ((\U_Ctl|state.SHIFT~regout\) # (\U_Ctl|SL_B~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ctl|state.SHIFT~regout\,
	datab => \U_Ctl|state.LOAD~regout\,
	datad => \U_Ctl|SL_B~combout\,
	combout => \U_Ctl|SL_B~combout\);

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_IN[1]~I\ : cycloneii_io
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
	padio => ww_B_IN(1),
	combout => \B_IN~combout\(1));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_IN[2]~I\ : cycloneii_io
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
	padio => ww_B_IN(2),
	combout => \B_IN~combout\(2));

-- Location: LCCOMB_X1_Y24_N26
\R_B|F~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_B|F~2_combout\ = (\U_Ctl|SL_B~combout\ & (\R_B|F\(3))) # (!\U_Ctl|SL_B~combout\ & ((\B_IN~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_B|F\(3),
	datab => \U_Ctl|SL_B~combout\,
	datac => \B_IN~combout\(2),
	combout => \R_B|F~2_combout\);

-- Location: LCCOMB_X1_Y24_N16
\U_Ctl|EN_B\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|EN_B~combout\ = (\U_Ctl|state.SHIFT~regout\) # (!\U_Ctl|state.LOAD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.LOAD~regout\,
	datad => \U_Ctl|state.SHIFT~regout\,
	combout => \U_Ctl|EN_B~combout\);

-- Location: LCFF_X1_Y24_N27
\R_B|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_B|F~2_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(2));

-- Location: LCCOMB_X1_Y24_N4
\R_B|F~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_B|F~1_combout\ = (\U_Ctl|SL_B~combout\ & ((\R_B|F\(2)))) # (!\U_Ctl|SL_B~combout\ & (\B_IN~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|SL_B~combout\,
	datac => \B_IN~combout\(1),
	datad => \R_B|F\(2),
	combout => \R_B|F~1_combout\);

-- Location: LCFF_X1_Y24_N5
\R_B|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_B|F~1_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(1));

-- Location: LCCOMB_X1_Y24_N2
\R_B|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_B|F~0_combout\ = (\U_Ctl|SL_B~combout\ & ((\R_B|F\(1)))) # (!\U_Ctl|SL_B~combout\ & (\B_IN~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_IN~combout\(0),
	datac => \R_B|F\(1),
	datad => \U_Ctl|SL_B~combout\,
	combout => \R_B|F~0_combout\);

-- Location: LCFF_X2_Y23_N29
\R_B|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \R_B|F~0_combout\,
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_B|F\(0));

-- Location: LCCOMB_X2_Y23_N30
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\R_A|F\(0) & \R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_A|F\(0),
	datad => \R_B|F\(0),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X2_Y23_N0
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

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_IN[1]~I\ : cycloneii_io
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
	padio => ww_A_IN(1),
	combout => \A_IN~combout\(1));

-- Location: LCFF_X2_Y23_N19
\R_A|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \A_IN~combout\(1),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(1));

-- Location: LCCOMB_X2_Y23_N18
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\R_A|F\(1) & \R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_A|F\(1),
	datad => \R_B|F\(0),
	combout => \comb~1_combout\);

-- Location: LCCOMB_X2_Y23_N2
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

-- Location: LCCOMB_X1_Y23_N30
\R_H|F~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~1_combout\ = (\U_Ctl|state.SHIFT~regout\ & (\R_H|F\(2))) # (!\U_Ctl|state.SHIFT~regout\ & ((\U_Ad|Sum[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_H|F\(2),
	datab => \U_Ctl|state.SHIFT~regout\,
	datad => \U_Ad|Sum[1]~2_combout\,
	combout => \R_H|F~1_combout\);

-- Location: LCCOMB_X1_Y23_N26
\U_Ctl|EN_H\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ctl|EN_H~combout\ = (\U_Ctl|state.SHIFT~regout\) # (\U_Ctl|state.ADD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.SHIFT~regout\,
	datad => \U_Ctl|state.ADD~regout\,
	combout => \U_Ctl|EN_H~combout\);

-- Location: LCFF_X1_Y23_N31
\R_H|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~1_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(1));

-- Location: LCCOMB_X1_Y23_N2
\R_H|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~0_combout\ = (\U_Ctl|state.SHIFT~regout\ & ((\R_H|F\(1)))) # (!\U_Ctl|state.SHIFT~regout\ & (\U_Ad|Sum[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.SHIFT~regout\,
	datac => \U_Ad|Sum[0]~0_combout\,
	datad => \R_H|F\(1),
	combout => \R_H|F~0_combout\);

-- Location: LCFF_X1_Y23_N3
\R_H|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~0_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(0));

-- Location: LCCOMB_X1_Y23_N12
\R_L|F[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_L|F[7]~feeder_combout\ = \R_H|F\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_H|F\(0),
	combout => \R_L|F[7]~feeder_combout\);

-- Location: LCFF_X1_Y23_N13
\R_L|F[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_L|F[7]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(7));

-- Location: LCCOMB_X1_Y23_N20
\R_L|F[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_L|F[6]~feeder_combout\ = \R_L|F\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_L|F\(7),
	combout => \R_L|F[6]~feeder_combout\);

-- Location: LCFF_X1_Y23_N21
\R_L|F[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_L|F[6]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(6));

-- Location: LCFF_X1_Y23_N29
\R_L|F[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \R_L|F\(6),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(5));

-- Location: LCCOMB_X1_Y23_N0
\R_L|F[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_L|F[4]~feeder_combout\ = \R_L|F\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_L|F\(5),
	combout => \R_L|F[4]~feeder_combout\);

-- Location: LCFF_X1_Y23_N1
\R_L|F[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_L|F[4]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(4));

-- Location: LCCOMB_X1_Y23_N10
\R_L|F[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_L|F[3]~feeder_combout\ = \R_L|F\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_L|F\(4),
	combout => \R_L|F[3]~feeder_combout\);

-- Location: LCFF_X1_Y23_N11
\R_L|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_L|F[3]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(3));

-- Location: LCCOMB_X1_Y23_N16
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

-- Location: LCFF_X1_Y23_N17
\R_L|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_L|F[2]~feeder_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(2));

-- Location: LCFF_X1_Y23_N27
\R_L|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \R_L|F\(2),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(1));

-- Location: LCFF_X1_Y23_N23
\R_L|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \R_L|F\(1),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_L|F\(0));

-- Location: LCCOMB_X2_Y23_N4
\U_Ad|Sum[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Sum[2]~4_combout\ = ((\comb~2_combout\ $ (\R_H|F\(2) $ (!\U_Ad|Sum[1]~3\)))) # (GND)
-- \U_Ad|Sum[2]~5\ = CARRY((\comb~2_combout\ & ((\R_H|F\(2)) # (!\U_Ad|Sum[1]~3\))) # (!\comb~2_combout\ & (\R_H|F\(2) & !\U_Ad|Sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datab => \R_H|F\(2),
	datad => VCC,
	cin => \U_Ad|Sum[1]~3\,
	combout => \U_Ad|Sum[2]~4_combout\,
	cout => \U_Ad|Sum[2]~5\);

-- Location: LCCOMB_X1_Y23_N4
\R_H|F~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~2_combout\ = (\U_Ctl|state.SHIFT~regout\ & (\R_H|F\(3))) # (!\U_Ctl|state.SHIFT~regout\ & ((\U_Ad|Sum[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_H|F\(3),
	datac => \U_Ctl|state.SHIFT~regout\,
	datad => \U_Ad|Sum[2]~4_combout\,
	combout => \R_H|F~2_combout\);

-- Location: LCFF_X1_Y23_N5
\R_H|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~2_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(2));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_IN[3]~I\ : cycloneii_io
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
	padio => ww_A_IN(3),
	combout => \A_IN~combout\(3));

-- Location: LCFF_X2_Y23_N23
\R_A|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \A_IN~combout\(3),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(3));

-- Location: LCCOMB_X2_Y23_N22
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

-- Location: LCCOMB_X2_Y23_N6
\U_Ad|Sum[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Sum[3]~6_combout\ = (\R_H|F\(3) & ((\comb~3_combout\ & (\U_Ad|Sum[2]~5\ & VCC)) # (!\comb~3_combout\ & (!\U_Ad|Sum[2]~5\)))) # (!\R_H|F\(3) & ((\comb~3_combout\ & (!\U_Ad|Sum[2]~5\)) # (!\comb~3_combout\ & ((\U_Ad|Sum[2]~5\) # (GND)))))
-- \U_Ad|Sum[3]~7\ = CARRY((\R_H|F\(3) & (!\comb~3_combout\ & !\U_Ad|Sum[2]~5\)) # (!\R_H|F\(3) & ((!\U_Ad|Sum[2]~5\) # (!\comb~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R_H|F\(3),
	datab => \comb~3_combout\,
	datad => VCC,
	cin => \U_Ad|Sum[2]~5\,
	combout => \U_Ad|Sum[3]~6_combout\,
	cout => \U_Ad|Sum[3]~7\);

-- Location: LCCOMB_X2_Y23_N8
\U_Ad|Sum[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Sum[4]~8_combout\ = ((\comb~4_combout\ $ (\R_H|F\(4) $ (!\U_Ad|Sum[3]~7\)))) # (GND)
-- \U_Ad|Sum[4]~9\ = CARRY((\comb~4_combout\ & ((\R_H|F\(4)) # (!\U_Ad|Sum[3]~7\))) # (!\comb~4_combout\ & (\R_H|F\(4) & !\U_Ad|Sum[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb~4_combout\,
	datab => \R_H|F\(4),
	datad => VCC,
	cin => \U_Ad|Sum[3]~7\,
	combout => \U_Ad|Sum[4]~8_combout\,
	cout => \U_Ad|Sum[4]~9\);

-- Location: LCCOMB_X1_Y23_N6
\R_H|F~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~4_combout\ = (\U_Ctl|state.SHIFT~regout\ & (\R_H|F\(5))) # (!\U_Ctl|state.SHIFT~regout\ & ((\U_Ad|Sum[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_H|F\(5),
	datab => \U_Ctl|state.SHIFT~regout\,
	datac => \U_Ad|Sum[4]~8_combout\,
	combout => \R_H|F~4_combout\);

-- Location: LCFF_X1_Y23_N7
\R_H|F[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~4_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(4));

-- Location: LCCOMB_X1_Y23_N14
\R_H|F~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~3_combout\ = (\U_Ctl|state.SHIFT~regout\ & (\R_H|F\(4))) # (!\U_Ctl|state.SHIFT~regout\ & ((\U_Ad|Sum[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R_H|F\(4),
	datac => \U_Ctl|state.SHIFT~regout\,
	datad => \U_Ad|Sum[3]~6_combout\,
	combout => \R_H|F~3_combout\);

-- Location: LCFF_X1_Y23_N15
\R_H|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~3_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_IN[5]~I\ : cycloneii_io
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
	padio => ww_A_IN(5),
	combout => \A_IN~combout\(5));

-- Location: LCFF_X2_Y23_N27
\R_A|F[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \A_IN~combout\(5),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(5));

-- Location: LCCOMB_X2_Y23_N26
\comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\R_A|F\(5) & \R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_A|F\(5),
	datad => \R_B|F\(0),
	combout => \comb~5_combout\);

-- Location: LCCOMB_X2_Y23_N10
\U_Ad|Sum[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Sum[5]~10_combout\ = (\R_H|F\(5) & ((\comb~5_combout\ & (\U_Ad|Sum[4]~9\ & VCC)) # (!\comb~5_combout\ & (!\U_Ad|Sum[4]~9\)))) # (!\R_H|F\(5) & ((\comb~5_combout\ & (!\U_Ad|Sum[4]~9\)) # (!\comb~5_combout\ & ((\U_Ad|Sum[4]~9\) # (GND)))))
-- \U_Ad|Sum[5]~11\ = CARRY((\R_H|F\(5) & (!\comb~5_combout\ & !\U_Ad|Sum[4]~9\)) # (!\R_H|F\(5) & ((!\U_Ad|Sum[4]~9\) # (!\comb~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R_H|F\(5),
	datab => \comb~5_combout\,
	datad => VCC,
	cin => \U_Ad|Sum[4]~9\,
	combout => \U_Ad|Sum[5]~10_combout\,
	cout => \U_Ad|Sum[5]~11\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_IN[6]~I\ : cycloneii_io
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
	padio => ww_A_IN(6),
	combout => \A_IN~combout\(6));

-- Location: LCFF_X3_Y23_N25
\R_A|F[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \A_IN~combout\(6),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(6));

-- Location: LCCOMB_X3_Y23_N24
\comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\R_A|F\(6) & \R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_A|F\(6),
	datad => \R_B|F\(0),
	combout => \comb~6_combout\);

-- Location: LCCOMB_X2_Y23_N12
\U_Ad|Sum[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Sum[6]~12_combout\ = ((\R_H|F\(6) $ (\comb~6_combout\ $ (!\U_Ad|Sum[5]~11\)))) # (GND)
-- \U_Ad|Sum[6]~13\ = CARRY((\R_H|F\(6) & ((\comb~6_combout\) # (!\U_Ad|Sum[5]~11\))) # (!\R_H|F\(6) & (\comb~6_combout\ & !\U_Ad|Sum[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R_H|F\(6),
	datab => \comb~6_combout\,
	datad => VCC,
	cin => \U_Ad|Sum[5]~11\,
	combout => \U_Ad|Sum[6]~12_combout\,
	cout => \U_Ad|Sum[6]~13\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_IN[7]~I\ : cycloneii_io
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
	padio => ww_A_IN(7),
	combout => \A_IN~combout\(7));

-- Location: LCFF_X2_Y23_N9
\R_A|F[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \A_IN~combout\(7),
	aclr => \Rst~clkctrl_outclk\,
	sload => VCC,
	ena => \U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_A|F\(7));

-- Location: LCCOMB_X2_Y23_N28
\comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\R_B|F\(0) & \R_A|F\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_B|F\(0),
	datad => \R_A|F\(7),
	combout => \comb~7_combout\);

-- Location: LCCOMB_X2_Y23_N14
\U_Ad|Sum[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Sum[7]~14_combout\ = (\R_H|F\(7) & ((\comb~7_combout\ & (\U_Ad|Sum[6]~13\ & VCC)) # (!\comb~7_combout\ & (!\U_Ad|Sum[6]~13\)))) # (!\R_H|F\(7) & ((\comb~7_combout\ & (!\U_Ad|Sum[6]~13\)) # (!\comb~7_combout\ & ((\U_Ad|Sum[6]~13\) # (GND)))))
-- \U_Ad|Sum[7]~15\ = CARRY((\R_H|F\(7) & (!\comb~7_combout\ & !\U_Ad|Sum[6]~13\)) # (!\R_H|F\(7) & ((!\U_Ad|Sum[6]~13\) # (!\comb~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R_H|F\(7),
	datab => \comb~7_combout\,
	datad => VCC,
	cin => \U_Ad|Sum[6]~13\,
	combout => \U_Ad|Sum[7]~14_combout\,
	cout => \U_Ad|Sum[7]~15\);

-- Location: LCCOMB_X2_Y23_N16
\U_Ad|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ad|Cout~0_combout\ = !\U_Ad|Sum[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ad|Sum[7]~15\,
	combout => \U_Ad|Cout~0_combout\);

-- Location: LCCOMB_X3_Y23_N26
\R_C|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_C|F[0]~0_combout\ = (\U_Ctl|state.ADD~regout\ & ((\U_Ad|Cout~0_combout\))) # (!\U_Ctl|state.ADD~regout\ & (\R_C|F\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.ADD~regout\,
	datac => \R_C|F\(0),
	datad => \U_Ad|Cout~0_combout\,
	combout => \R_C|F[0]~0_combout\);

-- Location: LCFF_X3_Y23_N27
\R_C|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_C|F[0]~0_combout\,
	aclr => \Rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_C|F\(0));

-- Location: LCCOMB_X1_Y23_N18
\R_H|F~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~7_combout\ = (\U_Ctl|state.SHIFT~regout\ & ((\R_C|F\(0)))) # (!\U_Ctl|state.SHIFT~regout\ & (\U_Ad|Sum[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.SHIFT~regout\,
	datac => \U_Ad|Sum[7]~14_combout\,
	datad => \R_C|F\(0),
	combout => \R_H|F~7_combout\);

-- Location: LCFF_X1_Y23_N19
\R_H|F[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~7_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(7));

-- Location: LCCOMB_X1_Y23_N8
\R_H|F~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~6_combout\ = (\U_Ctl|state.SHIFT~regout\ & ((\R_H|F\(7)))) # (!\U_Ctl|state.SHIFT~regout\ & (\U_Ad|Sum[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.SHIFT~regout\,
	datac => \U_Ad|Sum[6]~12_combout\,
	datad => \R_H|F\(7),
	combout => \R_H|F~6_combout\);

-- Location: LCFF_X1_Y23_N9
\R_H|F[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~6_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(6));

-- Location: LCCOMB_X1_Y23_N24
\R_H|F~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \R_H|F~5_combout\ = (\U_Ctl|state.SHIFT~regout\ & ((\R_H|F\(6)))) # (!\U_Ctl|state.SHIFT~regout\ & (\U_Ad|Sum[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ctl|state.SHIFT~regout\,
	datac => \U_Ad|Sum[5]~10_combout\,
	datad => \R_H|F\(6),
	combout => \R_H|F~5_combout\);

-- Location: LCFF_X1_Y23_N25
\R_H|F[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \R_H|F~5_combout\,
	aclr => \Rst~clkctrl_outclk\,
	ena => \U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R_H|F\(5));

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
	padio => ww_SI);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Low[4]~I\ : cycloneii_io
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
	datain => \R_L|F\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Low(4));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Low[5]~I\ : cycloneii_io
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
	datain => \R_L|F\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Low(5));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Low[6]~I\ : cycloneii_io
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
	datain => \R_L|F\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Low(6));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Low[7]~I\ : cycloneii_io
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
	datain => \R_L|F\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Low(7));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\High[4]~I\ : cycloneii_io
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
	datain => \R_H|F\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_High(4));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\High[5]~I\ : cycloneii_io
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
	datain => \R_H|F\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_High(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\High[6]~I\ : cycloneii_io
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
	datain => \R_H|F\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_High(6));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\High[7]~I\ : cycloneii_io
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
	datain => \R_H|F\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_High(7));
END structure;


