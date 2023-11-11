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

-- DATE "11/11/2023 18:31:58"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PWLcontrol IS
    PORT (
	enable_isq : OUT std_logic;
	clk : IN std_logic;
	rueda11 : IN std_logic;
	rueda12 : IN std_logic;
	rueda21 : IN std_logic;
	rueda22 : IN std_logic;
	enable_der : OUT std_logic
	);
END PWLcontrol;

-- Design Ports Information
-- enable_isq	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_der	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rueda11	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rueda12	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rueda21	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rueda22	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWLcontrol IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable_isq : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rueda11 : std_logic;
SIGNAL ww_rueda12 : std_logic;
SIGNAL ww_rueda21 : std_logic;
SIGNAL ww_rueda22 : std_logic;
SIGNAL ww_enable_der : std_logic;
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst11|JKFF_inst2~q\ : std_logic;
SIGNAL \inst13|JKFF_inst2~q\ : std_logic;
SIGNAL \inst11|JKFF_inst~q\ : std_logic;
SIGNAL \inst13|JKFF_inst~q\ : std_logic;
SIGNAL \inst9|Y1~0_combout\ : std_logic;
SIGNAL \inst9|Y1~combout\ : std_logic;
SIGNAL \inst9|Y2~0_combout\ : std_logic;
SIGNAL \inst9|Y2~combout\ : std_logic;
SIGNAL \inst11|JKFF_inst3~0_combout\ : std_logic;
SIGNAL \inst13|JKFF_inst3~0_combout\ : std_logic;
SIGNAL \inst11|JKFF_inst2~0_combout\ : std_logic;
SIGNAL \inst13|JKFF_inst2~0_combout\ : std_logic;
SIGNAL \inst11|JKFF_inst~0_combout\ : std_logic;
SIGNAL \inst13|JKFF_inst~0_combout\ : std_logic;
SIGNAL \rueda11~input_o\ : std_logic;
SIGNAL \rueda12~input_o\ : std_logic;
SIGNAL \rueda21~input_o\ : std_logic;
SIGNAL \rueda22~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst11|JKFF_inst2~feeder_combout\ : std_logic;
SIGNAL \inst13|JKFF_inst2~feeder_combout\ : std_logic;
SIGNAL \inst11|JKFF_inst~feeder_combout\ : std_logic;
SIGNAL \inst13|JKFF_inst~feeder_combout\ : std_logic;
SIGNAL \inst11|JKFF_inst3~feeder_combout\ : std_logic;
SIGNAL \inst11|JKFF_inst3~q\ : std_logic;
SIGNAL \inst11|A16~0_combout\ : std_logic;
SIGNAL \inst11|A16~q\ : std_logic;
SIGNAL \inst13|JKFF_inst3~feeder_combout\ : std_logic;
SIGNAL \inst13|JKFF_inst3~q\ : std_logic;
SIGNAL \inst13|A16~0_combout\ : std_logic;
SIGNAL \inst13|A16~q\ : std_logic;
SIGNAL \inst4|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);

BEGIN

enable_isq <= ww_enable_isq;
ww_clk <= clk;
ww_rueda11 <= rueda11;
ww_rueda12 <= rueda12;
ww_rueda21 <= rueda21;
ww_rueda22 <= rueda22;
enable_der <= ww_enable_der;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst4|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~inputclkctrl_outclk\);

\inst4|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst4|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst4|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|altpll_component|auto_generated|wire_pll1_clk\(1));

\inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|altpll_component|auto_generated|wire_pll1_clk\(2));

\inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(2));

\inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(1));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|altpll_component|auto_generated|wire_pll1_clk\(1));

\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: PLL_3
\inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 240,
	c0_initial => 1,
	c0_low => 240,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 240,
	c2_initial => 1,
	c2_low => 240,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 250,
	c3_initial => 1,
	c3_low => 250,
	c3_mode => "even",
	c3_ph => 0,
	c3_use_casc_in => "on",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "unused",
	clk0_divide_by => 0,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 0,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 40000,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_counter => "c3",
	clk2_divide_by => 40000,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 1,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock1",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 4891,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 416,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: PLL_2
\inst1|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 240,
	c0_initial => 1,
	c0_low => 240,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 244,
	c1_initial => 1,
	c1_low => 256,
	c1_mode => "odd",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 240,
	c2_initial => 1,
	c2_low => 240,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 250,
	c3_initial => 1,
	c3_low => 250,
	c3_mode => "even",
	c3_ph => 0,
	c3_use_casc_in => "on",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 40000,
	clk0_duty_cycle => 49,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c3",
	clk1_divide_by => 40000,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 4891,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 416,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: PLL_1
\inst4|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 240,
	c0_initial => 1,
	c0_low => 240,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 240,
	c2_initial => 1,
	c2_low => 240,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 250,
	c3_initial => 1,
	c3_low => 250,
	c3_mode => "even",
	c3_ph => 0,
	c3_use_casc_in => "on",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "unused",
	clk0_divide_by => 0,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 0,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 40000,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_counter => "c3",
	clk2_divide_by => 40000,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 1,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock2",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3518,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 416,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst4|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst4|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst4|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst4|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: FF_X16_Y33_N15
\inst11|JKFF_inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|JKFF_inst~q\,
	d => \inst11|JKFF_inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|JKFF_inst2~q\);

-- Location: FF_X1_Y33_N29
\inst13|JKFF_inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|JKFF_inst~q\,
	d => \inst13|JKFF_inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|JKFF_inst2~q\);

-- Location: FF_X16_Y33_N21
\inst11|JKFF_inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|Y1~combout\,
	d => \inst11|JKFF_inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|JKFF_inst~q\);

-- Location: FF_X1_Y33_N27
\inst13|JKFF_inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|Y2~combout\,
	d => \inst13|JKFF_inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|JKFF_inst~q\);

-- Location: LCCOMB_X16_Y33_N24
\inst9|Y1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Y1~0_combout\ = (\rueda11~input_o\ & ((\rueda12~input_o\) # ((GLOBAL(\inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\))))) # (!\rueda11~input_o\ & (\rueda12~input_o\ & 
-- (GLOBAL(\inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rueda11~input_o\,
	datab => \rueda12~input_o\,
	datac => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	datad => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	combout => \inst9|Y1~0_combout\);

-- Location: LCCOMB_X16_Y33_N6
\inst9|Y1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Y1~combout\ = LCELL((\inst9|Y1~0_combout\) # ((!\rueda11~input_o\ & (!\rueda12~input_o\ & GLOBAL(\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rueda11~input_o\,
	datab => \rueda12~input_o\,
	datac => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datad => \inst9|Y1~0_combout\,
	combout => \inst9|Y1~combout\);

-- Location: LCCOMB_X1_Y33_N6
\inst9|Y2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Y2~0_combout\ = (\rueda21~input_o\ & ((\rueda22~input_o\) # ((GLOBAL(\inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\))))) # (!\rueda21~input_o\ & (\rueda22~input_o\ & 
-- (GLOBAL(\inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rueda21~input_o\,
	datab => \rueda22~input_o\,
	datac => \inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	datad => \inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	combout => \inst9|Y2~0_combout\);

-- Location: LCCOMB_X1_Y33_N30
\inst9|Y2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Y2~combout\ = LCELL((\inst9|Y2~0_combout\) # ((!\rueda21~input_o\ & (!\rueda22~input_o\ & GLOBAL(\inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rueda21~input_o\,
	datab => \rueda22~input_o\,
	datac => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	datad => \inst9|Y2~0_combout\,
	combout => \inst9|Y2~combout\);

-- Location: LCCOMB_X17_Y33_N12
\inst11|JKFF_inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|JKFF_inst3~0_combout\ = !\inst11|JKFF_inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|JKFF_inst3~q\,
	combout => \inst11|JKFF_inst3~0_combout\);

-- Location: LCCOMB_X2_Y33_N12
\inst13|JKFF_inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|JKFF_inst3~0_combout\ = !\inst13|JKFF_inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|JKFF_inst3~q\,
	combout => \inst13|JKFF_inst3~0_combout\);

-- Location: LCCOMB_X16_Y33_N26
\inst11|JKFF_inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|JKFF_inst2~0_combout\ = !\inst11|JKFF_inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|JKFF_inst2~q\,
	combout => \inst11|JKFF_inst2~0_combout\);

-- Location: LCCOMB_X1_Y33_N22
\inst13|JKFF_inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|JKFF_inst2~0_combout\ = !\inst13|JKFF_inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|JKFF_inst2~q\,
	combout => \inst13|JKFF_inst2~0_combout\);

-- Location: LCCOMB_X16_Y33_N28
\inst11|JKFF_inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|JKFF_inst~0_combout\ = !\inst11|JKFF_inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|JKFF_inst~q\,
	combout => \inst11|JKFF_inst~0_combout\);

-- Location: LCCOMB_X1_Y33_N8
\inst13|JKFF_inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|JKFF_inst~0_combout\ = !\inst13|JKFF_inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|JKFF_inst~q\,
	combout => \inst13|JKFF_inst~0_combout\);

-- Location: IOIBUF_X16_Y34_N15
\rueda11~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rueda11,
	o => \rueda11~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\rueda12~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rueda12,
	o => \rueda12~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\rueda21~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rueda21,
	o => \rueda21~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\rueda22~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rueda22,
	o => \rueda22~input_o\);

-- Location: IOIBUF_X25_Y34_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);

-- Location: CLKCTRL_G13
\inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: CLKCTRL_G11
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: CLKCTRL_G8
\inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y33_N14
\inst11|JKFF_inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|JKFF_inst2~feeder_combout\ = \inst11|JKFF_inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|JKFF_inst2~0_combout\,
	combout => \inst11|JKFF_inst2~feeder_combout\);

-- Location: LCCOMB_X1_Y33_N28
\inst13|JKFF_inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|JKFF_inst2~feeder_combout\ = \inst13|JKFF_inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|JKFF_inst2~0_combout\,
	combout => \inst13|JKFF_inst2~feeder_combout\);

-- Location: LCCOMB_X16_Y33_N20
\inst11|JKFF_inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|JKFF_inst~feeder_combout\ = \inst11|JKFF_inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|JKFF_inst~0_combout\,
	combout => \inst11|JKFF_inst~feeder_combout\);

-- Location: LCCOMB_X1_Y33_N26
\inst13|JKFF_inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|JKFF_inst~feeder_combout\ = \inst13|JKFF_inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|JKFF_inst~0_combout\,
	combout => \inst13|JKFF_inst~feeder_combout\);

-- Location: IOOBUF_X20_Y34_N23
\enable_isq~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|A16~q\,
	devoe => ww_devoe,
	o => ww_enable_isq);

-- Location: IOOBUF_X38_Y34_N2
\enable_der~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|A16~q\,
	devoe => ww_devoe,
	o => ww_enable_der);

-- Location: LCCOMB_X17_Y33_N24
\inst11|JKFF_inst3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|JKFF_inst3~feeder_combout\ = \inst11|JKFF_inst3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|JKFF_inst3~0_combout\,
	combout => \inst11|JKFF_inst3~feeder_combout\);

-- Location: FF_X17_Y33_N25
\inst11|JKFF_inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|JKFF_inst2~q\,
	d => \inst11|JKFF_inst3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|JKFF_inst3~q\);

-- Location: LCCOMB_X17_Y33_N28
\inst11|A16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|A16~0_combout\ = !\inst11|A16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|A16~q\,
	combout => \inst11|A16~0_combout\);

-- Location: FF_X17_Y33_N29
\inst11|A16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|JKFF_inst3~q\,
	d => \inst11|A16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|A16~q\);

-- Location: LCCOMB_X2_Y33_N24
\inst13|JKFF_inst3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|JKFF_inst3~feeder_combout\ = \inst13|JKFF_inst3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|JKFF_inst3~0_combout\,
	combout => \inst13|JKFF_inst3~feeder_combout\);

-- Location: FF_X2_Y33_N25
\inst13|JKFF_inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|JKFF_inst2~q\,
	d => \inst13|JKFF_inst3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|JKFF_inst3~q\);

-- Location: LCCOMB_X2_Y33_N26
\inst13|A16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|A16~0_combout\ = !\inst13|A16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|A16~q\,
	combout => \inst13|A16~0_combout\);

-- Location: FF_X2_Y33_N27
\inst13|A16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|JKFF_inst3~q\,
	d => \inst13|A16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|A16~q\);
END structure;


