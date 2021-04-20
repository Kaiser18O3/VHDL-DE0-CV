-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/18/2021 14:20:28"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	USRD IS
    PORT (
	clock_50 : IN std_logic;
	echo : IN std_logic;
	trigger : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END USRD;

-- Design Ports Information
-- trigger	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- echo	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF USRD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_echo : std_logic;
SIGNAL ww_trigger : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \USR|Add0~21_sumout\ : std_logic;
SIGNAL \USR|Add0~14\ : std_logic;
SIGNAL \USR|Add0~9_sumout\ : std_logic;
SIGNAL \USR|Add0~42\ : std_logic;
SIGNAL \USR|Add0~53_sumout\ : std_logic;
SIGNAL \USR|Add0~54\ : std_logic;
SIGNAL \USR|Add0~37_sumout\ : std_logic;
SIGNAL \USR|Add0~38\ : std_logic;
SIGNAL \USR|Add0~49_sumout\ : std_logic;
SIGNAL \echo~input_o\ : std_logic;
SIGNAL \USR|nanos[15]~0_combout\ : std_logic;
SIGNAL \USR|Add0~10\ : std_logic;
SIGNAL \USR|Add0~5_sumout\ : std_logic;
SIGNAL \USR|Add0~6\ : std_logic;
SIGNAL \USR|Add0~1_sumout\ : std_logic;
SIGNAL \USR|Add0~2\ : std_logic;
SIGNAL \USR|Add0~33_sumout\ : std_logic;
SIGNAL \USR|Add0~34\ : std_logic;
SIGNAL \USR|Add0~29_sumout\ : std_logic;
SIGNAL \USR|Add0~30\ : std_logic;
SIGNAL \USR|Add0~45_sumout\ : std_logic;
SIGNAL \USR|Add0~46\ : std_logic;
SIGNAL \USR|Add0~41_sumout\ : std_logic;
SIGNAL \USR|LessThan2~0_combout\ : std_logic;
SIGNAL \USR|Add0~22\ : std_logic;
SIGNAL \USR|Add0~25_sumout\ : std_logic;
SIGNAL \USR|Add0~26\ : std_logic;
SIGNAL \USR|Add0~17_sumout\ : std_logic;
SIGNAL \USR|Add0~18\ : std_logic;
SIGNAL \USR|Add0~13_sumout\ : std_logic;
SIGNAL \USR|q_trigger~0_combout\ : std_logic;
SIGNAL \USR|Equal0~1_combout\ : std_logic;
SIGNAL \USR|q_trigger~1_combout\ : std_logic;
SIGNAL \USR|LessThan1~0_combout\ : std_logic;
SIGNAL \USR|q_trigger~2_combout\ : std_logic;
SIGNAL \USR|Equal0~0_combout\ : std_logic;
SIGNAL \USR|q_trigger~3_combout\ : std_logic;
SIGNAL \USR|Equal0~3_combout\ : std_logic;
SIGNAL \USR|Equal0~2_combout\ : std_logic;
SIGNAL \USR|teiler~2_combout\ : std_logic;
SIGNAL \USR|teiler[2]~DUPLICATE_q\ : std_logic;
SIGNAL \USR|teiler~3_combout\ : std_logic;
SIGNAL \USR|Add1~1_combout\ : std_logic;
SIGNAL \USR|teiler~1_combout\ : std_logic;
SIGNAL \USR|Add1~0_combout\ : std_logic;
SIGNAL \USR|teiler~0_combout\ : std_logic;
SIGNAL \USR|process_0~0_combout\ : std_logic;
SIGNAL \USR|clk_mm~q\ : std_logic;
SIGNAL \USR|icnt_mm~4_combout\ : std_logic;
SIGNAL \USR|icnt_mm~3_combout\ : std_logic;
SIGNAL \USR|Add4~0_combout\ : std_logic;
SIGNAL \USR|icnt_mm~1_combout\ : std_logic;
SIGNAL \USR|Equal1~0_combout\ : std_logic;
SIGNAL \USR|icnt_mm~0_combout\ : std_logic;
SIGNAL \Anzeige_1|Mux6~0_combout\ : std_logic;
SIGNAL \Anzeige_1|Mux5~0_combout\ : std_logic;
SIGNAL \Anzeige_1|Mux4~0_combout\ : std_logic;
SIGNAL \Anzeige_1|Mux3~0_combout\ : std_logic;
SIGNAL \Anzeige_1|Mux2~0_combout\ : std_logic;
SIGNAL \Anzeige_1|Mux1~0_combout\ : std_logic;
SIGNAL \Anzeige_1|Mux0~0_combout\ : std_logic;
SIGNAL \USR|icnt_cm~0_combout\ : std_logic;
SIGNAL \USR|icnt_mm[3]~2_combout\ : std_logic;
SIGNAL \USR|icnt_cm~1_combout\ : std_logic;
SIGNAL \USR|icnt_cm~3_combout\ : std_logic;
SIGNAL \USR|Equal2~0_combout\ : std_logic;
SIGNAL \USR|Add3~0_combout\ : std_logic;
SIGNAL \USR|icnt_cm~2_combout\ : std_logic;
SIGNAL \USR|q_cm[3]~feeder_combout\ : std_logic;
SIGNAL \USR|q_cm[2]~feeder_combout\ : std_logic;
SIGNAL \Anzeige_2|Mux6~0_combout\ : std_logic;
SIGNAL \Anzeige_2|Mux5~0_combout\ : std_logic;
SIGNAL \Anzeige_2|Mux4~0_combout\ : std_logic;
SIGNAL \Anzeige_2|Mux3~0_combout\ : std_logic;
SIGNAL \Anzeige_2|Mux2~0_combout\ : std_logic;
SIGNAL \Anzeige_2|Mux1~0_combout\ : std_logic;
SIGNAL \Anzeige_2|Mux0~0_combout\ : std_logic;
SIGNAL \USR|icnt_dm~4_combout\ : std_logic;
SIGNAL \USR|icnt_dm[3]~0_combout\ : std_logic;
SIGNAL \USR|q_dm[0]~feeder_combout\ : std_logic;
SIGNAL \USR|Add2~0_combout\ : std_logic;
SIGNAL \USR|icnt_dm~2_combout\ : std_logic;
SIGNAL \USR|Equal3~0_combout\ : std_logic;
SIGNAL \USR|icnt_dm~1_combout\ : std_logic;
SIGNAL \USR|icnt_dm~3_combout\ : std_logic;
SIGNAL \USR|q_dm[1]~feeder_combout\ : std_logic;
SIGNAL \Anzeige_3|Mux6~0_combout\ : std_logic;
SIGNAL \Anzeige_3|Mux5~0_combout\ : std_logic;
SIGNAL \Anzeige_3|Mux4~0_combout\ : std_logic;
SIGNAL \Anzeige_3|Mux3~0_combout\ : std_logic;
SIGNAL \Anzeige_3|Mux2~0_combout\ : std_logic;
SIGNAL \Anzeige_3|Mux1~0_combout\ : std_logic;
SIGNAL \Anzeige_3|Mux0~0_combout\ : std_logic;
SIGNAL \USR|nanos\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \USR|q_mm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USR|q_cm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USR|q_dm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USR|icnt_mm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USR|icnt_cm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USR|icnt_dm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USR|teiler\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \USR|ALT_INV_q_mm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USR|ALT_INV_q_trigger~3_combout\ : std_logic;
SIGNAL \USR|ALT_INV_q_trigger~2_combout\ : std_logic;
SIGNAL \USR|ALT_INV_q_trigger~1_combout\ : std_logic;
SIGNAL \USR|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \USR|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_q_trigger~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_nanos\ : std_logic_vector(15 DOWNTO 2);
SIGNAL \USR|ALT_INV_teiler[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_echo~input_o\ : std_logic;
SIGNAL \USR|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \USR|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_teiler\ : std_logic_vector(5 DOWNTO 2);
SIGNAL \USR|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_Add4~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \USR|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \USR|ALT_INV_icnt_dm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USR|ALT_INV_icnt_cm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USR|ALT_INV_icnt_mm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Anzeige_3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_q_dm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Anzeige_2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \USR|ALT_INV_q_cm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Anzeige_1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_echo <= echo;
trigger <= ww_trigger;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\USR|ALT_INV_q_mm\(3) <= NOT \USR|q_mm\(3);
\USR|ALT_INV_q_mm\(2) <= NOT \USR|q_mm\(2);
\USR|ALT_INV_q_mm\(1) <= NOT \USR|q_mm\(1);
\USR|ALT_INV_q_mm\(0) <= NOT \USR|q_mm\(0);
\USR|ALT_INV_q_trigger~3_combout\ <= NOT \USR|q_trigger~3_combout\;
\USR|ALT_INV_q_trigger~2_combout\ <= NOT \USR|q_trigger~2_combout\;
\USR|ALT_INV_q_trigger~1_combout\ <= NOT \USR|q_trigger~1_combout\;
\USR|ALT_INV_Equal0~1_combout\ <= NOT \USR|Equal0~1_combout\;
\USR|ALT_INV_Equal0~0_combout\ <= NOT \USR|Equal0~0_combout\;
\USR|ALT_INV_q_trigger~0_combout\ <= NOT \USR|q_trigger~0_combout\;
\USR|ALT_INV_LessThan1~0_combout\ <= NOT \USR|LessThan1~0_combout\;
\USR|ALT_INV_nanos\(13) <= NOT \USR|nanos\(13);
\USR|ALT_INV_nanos\(15) <= NOT \USR|nanos\(15);
\USR|ALT_INV_nanos\(11) <= NOT \USR|nanos\(11);
\USR|ALT_INV_nanos\(12) <= NOT \USR|nanos\(12);
\USR|ALT_INV_nanos\(14) <= NOT \USR|nanos\(14);
\USR|ALT_INV_nanos\(9) <= NOT \USR|nanos\(9);
\USR|ALT_INV_nanos\(10) <= NOT \USR|nanos\(10);
\USR|ALT_INV_nanos\(3) <= NOT \USR|nanos\(3);
\USR|ALT_INV_nanos\(2) <= NOT \USR|nanos\(2);
\USR|ALT_INV_nanos\(4) <= NOT \USR|nanos\(4);
\USR|ALT_INV_nanos\(5) <= NOT \USR|nanos\(5);
\USR|ALT_INV_nanos\(6) <= NOT \USR|nanos\(6);
\USR|ALT_INV_nanos\(7) <= NOT \USR|nanos\(7);
\USR|ALT_INV_nanos\(8) <= NOT \USR|nanos\(8);
\USR|ALT_INV_teiler[2]~DUPLICATE_q\ <= NOT \USR|teiler[2]~DUPLICATE_q\;
\ALT_INV_echo~input_o\ <= NOT \echo~input_o\;
\USR|ALT_INV_Add1~1_combout\ <= NOT \USR|Add1~1_combout\;
\USR|ALT_INV_Add1~0_combout\ <= NOT \USR|Add1~0_combout\;
\USR|ALT_INV_teiler\(3) <= NOT \USR|teiler\(3);
\USR|ALT_INV_teiler\(2) <= NOT \USR|teiler\(2);
\USR|ALT_INV_teiler\(4) <= NOT \USR|teiler\(4);
\USR|ALT_INV_teiler\(5) <= NOT \USR|teiler\(5);
\USR|ALT_INV_Add2~0_combout\ <= NOT \USR|Add2~0_combout\;
\USR|ALT_INV_Equal3~0_combout\ <= NOT \USR|Equal3~0_combout\;
\USR|ALT_INV_Add3~0_combout\ <= NOT \USR|Add3~0_combout\;
\USR|ALT_INV_Equal2~0_combout\ <= NOT \USR|Equal2~0_combout\;
\USR|ALT_INV_Add4~0_combout\ <= NOT \USR|Add4~0_combout\;
\USR|ALT_INV_Equal1~0_combout\ <= NOT \USR|Equal1~0_combout\;
\USR|ALT_INV_Equal0~3_combout\ <= NOT \USR|Equal0~3_combout\;
\USR|ALT_INV_Equal0~2_combout\ <= NOT \USR|Equal0~2_combout\;
\USR|ALT_INV_icnt_dm\(3) <= NOT \USR|icnt_dm\(3);
\USR|ALT_INV_icnt_dm\(2) <= NOT \USR|icnt_dm\(2);
\USR|ALT_INV_icnt_dm\(1) <= NOT \USR|icnt_dm\(1);
\USR|ALT_INV_icnt_dm\(0) <= NOT \USR|icnt_dm\(0);
\USR|ALT_INV_icnt_cm\(3) <= NOT \USR|icnt_cm\(3);
\USR|ALT_INV_icnt_cm\(2) <= NOT \USR|icnt_cm\(2);
\USR|ALT_INV_icnt_cm\(1) <= NOT \USR|icnt_cm\(1);
\USR|ALT_INV_icnt_cm\(0) <= NOT \USR|icnt_cm\(0);
\USR|ALT_INV_icnt_mm\(3) <= NOT \USR|icnt_mm\(3);
\USR|ALT_INV_icnt_mm\(2) <= NOT \USR|icnt_mm\(2);
\USR|ALT_INV_icnt_mm\(1) <= NOT \USR|icnt_mm\(1);
\USR|ALT_INV_icnt_mm\(0) <= NOT \USR|icnt_mm\(0);
\Anzeige_3|ALT_INV_Mux0~0_combout\ <= NOT \Anzeige_3|Mux0~0_combout\;
\USR|ALT_INV_q_dm\(3) <= NOT \USR|q_dm\(3);
\USR|ALT_INV_q_dm\(2) <= NOT \USR|q_dm\(2);
\USR|ALT_INV_q_dm\(1) <= NOT \USR|q_dm\(1);
\USR|ALT_INV_q_dm\(0) <= NOT \USR|q_dm\(0);
\Anzeige_2|ALT_INV_Mux0~0_combout\ <= NOT \Anzeige_2|Mux0~0_combout\;
\USR|ALT_INV_q_cm\(3) <= NOT \USR|q_cm\(3);
\USR|ALT_INV_q_cm\(2) <= NOT \USR|q_cm\(2);
\USR|ALT_INV_q_cm\(1) <= NOT \USR|q_cm\(1);
\USR|ALT_INV_q_cm\(0) <= NOT \USR|q_cm\(0);
\Anzeige_1|ALT_INV_Mux0~0_combout\ <= NOT \Anzeige_1|Mux0~0_combout\;

-- Location: IOOBUF_X54_Y20_N56
\trigger~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \USR|ALT_INV_q_trigger~3_combout\,
	devoe => ww_devoe,
	o => ww_trigger);

-- Location: IOOBUF_X54_Y18_N79
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X54_Y20_N5
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X54_Y18_N45
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X54_Y20_N22
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X54_Y21_N22
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X54_Y20_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X54_Y18_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X54_Y15_N5
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X54_Y19_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X54_Y15_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X54_Y19_N39
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X54_Y19_N5
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X54_Y17_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X54_Y15_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X54_Y17_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X54_Y16_N5
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X54_Y17_N39
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X54_Y15_N22
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X54_Y19_N22
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X54_Y16_N56
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X54_Y17_N5
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Anzeige_3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOIBUF_X54_Y18_N61
\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G10
\clock_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~input_o\,
	outclk => \clock_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X50_Y18_N0
\USR|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~21_sumout\ = SUM(( \USR|nanos\(2) ) + ( VCC ) + ( !VCC ))
-- \USR|Add0~22\ = CARRY(( \USR|nanos\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \USR|ALT_INV_nanos\(2),
	cin => GND,
	sumout => \USR|Add0~21_sumout\,
	cout => \USR|Add0~22\);

-- Location: LABCELL_X50_Y18_N9
\USR|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~13_sumout\ = SUM(( \USR|nanos\(5) ) + ( GND ) + ( \USR|Add0~18\ ))
-- \USR|Add0~14\ = CARRY(( \USR|nanos\(5) ) + ( GND ) + ( \USR|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \USR|ALT_INV_nanos\(5),
	cin => \USR|Add0~18\,
	sumout => \USR|Add0~13_sumout\,
	cout => \USR|Add0~14\);

-- Location: LABCELL_X50_Y18_N12
\USR|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~9_sumout\ = SUM(( \USR|nanos\(6) ) + ( GND ) + ( \USR|Add0~14\ ))
-- \USR|Add0~10\ = CARRY(( \USR|nanos\(6) ) + ( GND ) + ( \USR|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \USR|ALT_INV_nanos\(6),
	cin => \USR|Add0~14\,
	sumout => \USR|Add0~9_sumout\,
	cout => \USR|Add0~10\);

-- Location: LABCELL_X50_Y18_N30
\USR|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~41_sumout\ = SUM(( \USR|nanos\(12) ) + ( GND ) + ( \USR|Add0~46\ ))
-- \USR|Add0~42\ = CARRY(( \USR|nanos\(12) ) + ( GND ) + ( \USR|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_nanos\(12),
	cin => \USR|Add0~46\,
	sumout => \USR|Add0~41_sumout\,
	cout => \USR|Add0~42\);

-- Location: LABCELL_X50_Y18_N33
\USR|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~53_sumout\ = SUM(( \USR|nanos\(13) ) + ( GND ) + ( \USR|Add0~42\ ))
-- \USR|Add0~54\ = CARRY(( \USR|nanos\(13) ) + ( GND ) + ( \USR|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_nanos\(13),
	cin => \USR|Add0~42\,
	sumout => \USR|Add0~53_sumout\,
	cout => \USR|Add0~54\);

-- Location: FF_X50_Y18_N35
\USR|nanos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~53_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(13));

-- Location: LABCELL_X50_Y18_N36
\USR|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~37_sumout\ = SUM(( \USR|nanos\(14) ) + ( GND ) + ( \USR|Add0~54\ ))
-- \USR|Add0~38\ = CARRY(( \USR|nanos\(14) ) + ( GND ) + ( \USR|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \USR|ALT_INV_nanos\(14),
	cin => \USR|Add0~54\,
	sumout => \USR|Add0~37_sumout\,
	cout => \USR|Add0~38\);

-- Location: FF_X50_Y18_N38
\USR|nanos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~37_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(14));

-- Location: LABCELL_X50_Y18_N39
\USR|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~49_sumout\ = SUM(( \USR|nanos\(15) ) + ( GND ) + ( \USR|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \USR|ALT_INV_nanos\(15),
	cin => \USR|Add0~38\,
	sumout => \USR|Add0~49_sumout\);

-- Location: FF_X50_Y18_N41
\USR|nanos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~49_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(15));

-- Location: IOIBUF_X54_Y16_N21
\echo~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo,
	o => \echo~input_o\);

-- Location: LABCELL_X50_Y18_N45
\USR|nanos[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|nanos[15]~0_combout\ = ( \USR|nanos\(13) & ( (!\USR|nanos\(14)) # ((!\USR|nanos\(15)) # ((!\USR|nanos\(12)) # (\echo~input_o\))) ) ) # ( !\USR|nanos\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_nanos\(14),
	datab => \USR|ALT_INV_nanos\(15),
	datac => \USR|ALT_INV_nanos\(12),
	datad => \ALT_INV_echo~input_o\,
	dataf => \USR|ALT_INV_nanos\(13),
	combout => \USR|nanos[15]~0_combout\);

-- Location: FF_X49_Y18_N59
\USR|nanos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \USR|Add0~9_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	sload => VCC,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(6));

-- Location: LABCELL_X50_Y18_N15
\USR|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~5_sumout\ = SUM(( \USR|nanos\(7) ) + ( GND ) + ( \USR|Add0~10\ ))
-- \USR|Add0~6\ = CARRY(( \USR|nanos\(7) ) + ( GND ) + ( \USR|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \USR|ALT_INV_nanos\(7),
	cin => \USR|Add0~10\,
	sumout => \USR|Add0~5_sumout\,
	cout => \USR|Add0~6\);

-- Location: FF_X50_Y18_N17
\USR|nanos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~5_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(7));

-- Location: LABCELL_X50_Y18_N18
\USR|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~1_sumout\ = SUM(( \USR|nanos\(8) ) + ( GND ) + ( \USR|Add0~6\ ))
-- \USR|Add0~2\ = CARRY(( \USR|nanos\(8) ) + ( GND ) + ( \USR|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \USR|ALT_INV_nanos\(8),
	cin => \USR|Add0~6\,
	sumout => \USR|Add0~1_sumout\,
	cout => \USR|Add0~2\);

-- Location: FF_X50_Y18_N20
\USR|nanos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~1_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(8));

-- Location: LABCELL_X50_Y18_N21
\USR|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~33_sumout\ = SUM(( \USR|nanos\(9) ) + ( GND ) + ( \USR|Add0~2\ ))
-- \USR|Add0~34\ = CARRY(( \USR|nanos\(9) ) + ( GND ) + ( \USR|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \USR|ALT_INV_nanos\(9),
	cin => \USR|Add0~2\,
	sumout => \USR|Add0~33_sumout\,
	cout => \USR|Add0~34\);

-- Location: FF_X50_Y18_N23
\USR|nanos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~33_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(9));

-- Location: LABCELL_X50_Y18_N24
\USR|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~29_sumout\ = SUM(( \USR|nanos\(10) ) + ( GND ) + ( \USR|Add0~34\ ))
-- \USR|Add0~30\ = CARRY(( \USR|nanos\(10) ) + ( GND ) + ( \USR|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \USR|ALT_INV_nanos\(10),
	cin => \USR|Add0~34\,
	sumout => \USR|Add0~29_sumout\,
	cout => \USR|Add0~30\);

-- Location: FF_X50_Y18_N26
\USR|nanos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~29_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(10));

-- Location: LABCELL_X50_Y18_N27
\USR|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~45_sumout\ = SUM(( \USR|nanos\(11) ) + ( GND ) + ( \USR|Add0~30\ ))
-- \USR|Add0~46\ = CARRY(( \USR|nanos\(11) ) + ( GND ) + ( \USR|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \USR|ALT_INV_nanos\(11),
	cin => \USR|Add0~30\,
	sumout => \USR|Add0~45_sumout\,
	cout => \USR|Add0~46\);

-- Location: FF_X50_Y18_N29
\USR|nanos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~45_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(11));

-- Location: FF_X50_Y18_N32
\USR|nanos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~41_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(12));

-- Location: LABCELL_X50_Y18_N54
\USR|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|LessThan2~0_combout\ = ( \USR|nanos\(15) & ( (\USR|nanos\(12) & (\USR|nanos\(13) & \USR|nanos\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_nanos\(12),
	datac => \USR|ALT_INV_nanos\(13),
	datad => \USR|ALT_INV_nanos\(14),
	dataf => \USR|ALT_INV_nanos\(15),
	combout => \USR|LessThan2~0_combout\);

-- Location: FF_X50_Y18_N2
\USR|nanos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~21_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(2));

-- Location: LABCELL_X50_Y18_N3
\USR|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~25_sumout\ = SUM(( \USR|nanos\(3) ) + ( GND ) + ( \USR|Add0~22\ ))
-- \USR|Add0~26\ = CARRY(( \USR|nanos\(3) ) + ( GND ) + ( \USR|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \USR|ALT_INV_nanos\(3),
	cin => \USR|Add0~22\,
	sumout => \USR|Add0~25_sumout\,
	cout => \USR|Add0~26\);

-- Location: FF_X50_Y18_N5
\USR|nanos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~25_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(3));

-- Location: LABCELL_X50_Y18_N6
\USR|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add0~17_sumout\ = SUM(( \USR|nanos\(4) ) + ( VCC ) + ( \USR|Add0~26\ ))
-- \USR|Add0~18\ = CARRY(( \USR|nanos\(4) ) + ( VCC ) + ( \USR|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_nanos\(4),
	cin => \USR|Add0~26\,
	sumout => \USR|Add0~17_sumout\,
	cout => \USR|Add0~18\);

-- Location: FF_X50_Y18_N8
\USR|nanos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~17_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(4));

-- Location: FF_X50_Y18_N11
\USR|nanos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|Add0~13_sumout\,
	sclr => \USR|LessThan2~0_combout\,
	ena => \USR|nanos[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|nanos\(5));

-- Location: MLABCELL_X49_Y18_N54
\USR|q_trigger~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|q_trigger~0_combout\ = ( \USR|nanos\(3) & ( \USR|nanos\(2) & ( (!\USR|nanos\(5) & (!\USR|nanos\(6) & (!\USR|nanos\(7) & !\USR|nanos\(4)))) ) ) ) # ( !\USR|nanos\(3) & ( \USR|nanos\(2) & ( (!\USR|nanos\(5) & (!\USR|nanos\(6) & (!\USR|nanos\(7) & 
-- !\USR|nanos\(4)))) ) ) ) # ( \USR|nanos\(3) & ( !\USR|nanos\(2) & ( (!\USR|nanos\(5) & (!\USR|nanos\(6) & (!\USR|nanos\(7) & !\USR|nanos\(4)))) ) ) ) # ( !\USR|nanos\(3) & ( !\USR|nanos\(2) & ( (!\USR|nanos\(5) & (!\USR|nanos\(6) & !\USR|nanos\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_nanos\(5),
	datab => \USR|ALT_INV_nanos\(6),
	datac => \USR|ALT_INV_nanos\(7),
	datad => \USR|ALT_INV_nanos\(4),
	datae => \USR|ALT_INV_nanos\(3),
	dataf => \USR|ALT_INV_nanos\(2),
	combout => \USR|q_trigger~0_combout\);

-- Location: MLABCELL_X49_Y18_N42
\USR|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Equal0~1_combout\ = ( !\USR|nanos\(12) & ( (!\USR|nanos\(11) & !\USR|nanos\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \USR|ALT_INV_nanos\(11),
	datad => \USR|ALT_INV_nanos\(14),
	dataf => \USR|ALT_INV_nanos\(12),
	combout => \USR|Equal0~1_combout\);

-- Location: LABCELL_X50_Y18_N42
\USR|q_trigger~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|q_trigger~1_combout\ = ( \USR|nanos\(10) & ( (\USR|nanos\(14) & (\USR|nanos\(11) & \USR|nanos\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_nanos\(14),
	datac => \USR|ALT_INV_nanos\(11),
	datad => \USR|ALT_INV_nanos\(9),
	dataf => \USR|ALT_INV_nanos\(10),
	combout => \USR|q_trigger~1_combout\);

-- Location: MLABCELL_X49_Y18_N30
\USR|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|LessThan1~0_combout\ = ( !\USR|nanos\(8) & ( (!\USR|nanos\(5) & (!\USR|nanos\(7) & !\USR|nanos\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_nanos\(5),
	datac => \USR|ALT_INV_nanos\(7),
	datad => \USR|ALT_INV_nanos\(6),
	dataf => \USR|ALT_INV_nanos\(8),
	combout => \USR|LessThan1~0_combout\);

-- Location: LABCELL_X50_Y18_N48
\USR|q_trigger~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|q_trigger~2_combout\ = ( \USR|nanos\(12) & ( (\USR|nanos\(13) & (!\USR|nanos\(15) & !\USR|nanos\(14))) ) ) # ( !\USR|nanos\(12) & ( (!\USR|nanos\(15) & (!\USR|nanos\(13) $ (!\USR|nanos\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_nanos\(13),
	datab => \USR|ALT_INV_nanos\(15),
	datac => \USR|ALT_INV_nanos\(14),
	dataf => \USR|ALT_INV_nanos\(12),
	combout => \USR|q_trigger~2_combout\);

-- Location: LABCELL_X50_Y18_N57
\USR|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Equal0~0_combout\ = ( \USR|nanos\(10) & ( (\USR|nanos\(8) & \USR|nanos\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_nanos\(8),
	datad => \USR|ALT_INV_nanos\(9),
	dataf => \USR|ALT_INV_nanos\(10),
	combout => \USR|Equal0~0_combout\);

-- Location: MLABCELL_X49_Y18_N36
\USR|q_trigger~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|q_trigger~3_combout\ = ( \USR|q_trigger~2_combout\ & ( \USR|Equal0~0_combout\ & ( (!\USR|q_trigger~0_combout\ & (((\USR|q_trigger~1_combout\ & !\USR|LessThan1~0_combout\)))) # (\USR|q_trigger~0_combout\ & (((\USR|q_trigger~1_combout\ & 
-- !\USR|LessThan1~0_combout\)) # (\USR|Equal0~1_combout\))) ) ) ) # ( !\USR|q_trigger~2_combout\ & ( \USR|Equal0~0_combout\ ) ) # ( \USR|q_trigger~2_combout\ & ( !\USR|Equal0~0_combout\ & ( ((\USR|q_trigger~1_combout\ & !\USR|LessThan1~0_combout\)) # 
-- (\USR|Equal0~1_combout\) ) ) ) # ( !\USR|q_trigger~2_combout\ & ( !\USR|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001111110011001111111111111111110001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_trigger~0_combout\,
	datab => \USR|ALT_INV_Equal0~1_combout\,
	datac => \USR|ALT_INV_q_trigger~1_combout\,
	datad => \USR|ALT_INV_LessThan1~0_combout\,
	datae => \USR|ALT_INV_q_trigger~2_combout\,
	dataf => \USR|ALT_INV_Equal0~0_combout\,
	combout => \USR|q_trigger~3_combout\);

-- Location: MLABCELL_X49_Y18_N3
\USR|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Equal0~3_combout\ = ( !\USR|nanos\(5) & ( !\USR|nanos\(12) & ( (!\USR|nanos\(7) & (!\USR|nanos\(6) & (!\USR|nanos\(14) & !\USR|nanos\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_nanos\(7),
	datab => \USR|ALT_INV_nanos\(6),
	datac => \USR|ALT_INV_nanos\(14),
	datad => \USR|ALT_INV_nanos\(11),
	datae => \USR|ALT_INV_nanos\(5),
	dataf => \USR|ALT_INV_nanos\(12),
	combout => \USR|Equal0~3_combout\);

-- Location: FF_X49_Y18_N52
\USR|teiler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|teiler~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|teiler\(2));

-- Location: LABCELL_X50_Y18_N51
\USR|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Equal0~2_combout\ = ( !\USR|nanos\(2) & ( (\USR|nanos\(13) & (!\USR|nanos\(15) & (\USR|nanos\(4) & !\USR|nanos\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_nanos\(13),
	datab => \USR|ALT_INV_nanos\(15),
	datac => \USR|ALT_INV_nanos\(4),
	datad => \USR|ALT_INV_nanos\(3),
	dataf => \USR|ALT_INV_nanos\(2),
	combout => \USR|Equal0~2_combout\);

-- Location: MLABCELL_X49_Y18_N51
\USR|teiler~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|teiler~2_combout\ = ( \USR|Equal0~2_combout\ & ( (!\USR|teiler\(5) & (!\USR|teiler\(2) & ((!\USR|Equal0~3_combout\) # (!\USR|Equal0~0_combout\)))) ) ) # ( !\USR|Equal0~2_combout\ & ( (!\USR|teiler\(5) & !\USR|teiler\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_Equal0~3_combout\,
	datab => \USR|ALT_INV_teiler\(5),
	datac => \USR|ALT_INV_Equal0~0_combout\,
	datad => \USR|ALT_INV_teiler\(2),
	dataf => \USR|ALT_INV_Equal0~2_combout\,
	combout => \USR|teiler~2_combout\);

-- Location: FF_X49_Y18_N53
\USR|teiler[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|teiler~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|teiler[2]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y18_N12
\USR|teiler~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|teiler~3_combout\ = ( \USR|teiler\(3) & ( \USR|Equal0~2_combout\ & ( (!\USR|teiler[2]~DUPLICATE_q\ & (!\USR|teiler\(5) & ((!\USR|Equal0~3_combout\) # (!\USR|Equal0~0_combout\)))) ) ) ) # ( !\USR|teiler\(3) & ( \USR|Equal0~2_combout\ & ( 
-- (\USR|teiler[2]~DUPLICATE_q\ & (!\USR|teiler\(5) & ((!\USR|Equal0~3_combout\) # (!\USR|Equal0~0_combout\)))) ) ) ) # ( \USR|teiler\(3) & ( !\USR|Equal0~2_combout\ & ( (!\USR|teiler[2]~DUPLICATE_q\ & !\USR|teiler\(5)) ) ) ) # ( !\USR|teiler\(3) & ( 
-- !\USR|Equal0~2_combout\ & ( (\USR|teiler[2]~DUPLICATE_q\ & !\USR|teiler\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100010001000100001000100010000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_teiler[2]~DUPLICATE_q\,
	datab => \USR|ALT_INV_teiler\(5),
	datac => \USR|ALT_INV_Equal0~3_combout\,
	datad => \USR|ALT_INV_Equal0~0_combout\,
	datae => \USR|ALT_INV_teiler\(3),
	dataf => \USR|ALT_INV_Equal0~2_combout\,
	combout => \USR|teiler~3_combout\);

-- Location: FF_X49_Y18_N14
\USR|teiler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|teiler~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|teiler\(3));

-- Location: MLABCELL_X49_Y18_N9
\USR|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add1~1_combout\ = ( \USR|teiler\(4) & ( (!\USR|teiler\(3)) # (!\USR|teiler\(2)) ) ) # ( !\USR|teiler\(4) & ( (\USR|teiler\(3) & \USR|teiler\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \USR|ALT_INV_teiler\(3),
	datad => \USR|ALT_INV_teiler\(2),
	dataf => \USR|ALT_INV_teiler\(4),
	combout => \USR|Add1~1_combout\);

-- Location: MLABCELL_X49_Y18_N18
\USR|teiler~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|teiler~1_combout\ = ( \USR|Equal0~2_combout\ & ( (!\USR|teiler\(5) & (!\USR|Add1~1_combout\ & ((!\USR|Equal0~0_combout\) # (!\USR|Equal0~3_combout\)))) ) ) # ( !\USR|Equal0~2_combout\ & ( (!\USR|teiler\(5) & !\USR|Add1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_Equal0~0_combout\,
	datab => \USR|ALT_INV_teiler\(5),
	datac => \USR|ALT_INV_Equal0~3_combout\,
	datad => \USR|ALT_INV_Add1~1_combout\,
	dataf => \USR|ALT_INV_Equal0~2_combout\,
	combout => \USR|teiler~1_combout\);

-- Location: FF_X49_Y18_N20
\USR|teiler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|teiler~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|teiler\(4));

-- Location: MLABCELL_X49_Y18_N48
\USR|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add1~0_combout\ = ( !\USR|teiler\(4) & ( (!\USR|teiler[2]~DUPLICATE_q\) # (!\USR|teiler\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \USR|ALT_INV_teiler[2]~DUPLICATE_q\,
	datad => \USR|ALT_INV_teiler\(3),
	dataf => \USR|ALT_INV_teiler\(4),
	combout => \USR|Add1~0_combout\);

-- Location: MLABCELL_X49_Y18_N6
\USR|teiler~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|teiler~0_combout\ = ( \USR|Equal0~3_combout\ & ( (!\USR|Add1~0_combout\ & (!\USR|teiler\(5) & ((!\USR|Equal0~0_combout\) # (!\USR|Equal0~2_combout\)))) ) ) # ( !\USR|Equal0~3_combout\ & ( (!\USR|Add1~0_combout\ & !\USR|teiler\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_Add1~0_combout\,
	datab => \USR|ALT_INV_Equal0~0_combout\,
	datac => \USR|ALT_INV_Equal0~2_combout\,
	datad => \USR|ALT_INV_teiler\(5),
	dataf => \USR|ALT_INV_Equal0~3_combout\,
	combout => \USR|teiler~0_combout\);

-- Location: FF_X49_Y18_N8
\USR|teiler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|teiler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|teiler\(5));

-- Location: MLABCELL_X49_Y18_N33
\USR|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|process_0~0_combout\ = ( \USR|Equal0~2_combout\ & ( ((\USR|Equal0~0_combout\ & \USR|Equal0~3_combout\)) # (\USR|teiler\(5)) ) ) # ( !\USR|Equal0~2_combout\ & ( \USR|teiler\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_teiler\(5),
	datac => \USR|ALT_INV_Equal0~0_combout\,
	datad => \USR|ALT_INV_Equal0~3_combout\,
	dataf => \USR|ALT_INV_Equal0~2_combout\,
	combout => \USR|process_0~0_combout\);

-- Location: FF_X49_Y18_N35
\USR|clk_mm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \USR|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|clk_mm~q\);

-- Location: LABCELL_X47_Y18_N57
\USR|icnt_mm~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_mm~4_combout\ = ( \USR|Equal0~0_combout\ & ( (!\USR|icnt_mm\(0) & ((!\USR|Equal0~2_combout\) # (!\USR|Equal0~3_combout\))) ) ) # ( !\USR|Equal0~0_combout\ & ( !\USR|icnt_mm\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_Equal0~2_combout\,
	datac => \USR|ALT_INV_icnt_mm\(0),
	datad => \USR|ALT_INV_Equal0~3_combout\,
	dataf => \USR|ALT_INV_Equal0~0_combout\,
	combout => \USR|icnt_mm~4_combout\);

-- Location: FF_X47_Y18_N29
\USR|icnt_mm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	asdata => \USR|icnt_mm~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_mm\(0));

-- Location: LABCELL_X47_Y18_N12
\USR|icnt_mm~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_mm~3_combout\ = ( \USR|Equal0~2_combout\ & ( \USR|icnt_mm\(2) & ( (!\USR|icnt_mm\(1) & ((!\USR|Equal0~0_combout\) # ((!\USR|Equal0~3_combout\)))) # (\USR|icnt_mm\(1) & (!\USR|icnt_mm\(0) & ((!\USR|Equal0~0_combout\) # 
-- (!\USR|Equal0~3_combout\)))) ) ) ) # ( !\USR|Equal0~2_combout\ & ( \USR|icnt_mm\(2) & ( (!\USR|icnt_mm\(1)) # (!\USR|icnt_mm\(0)) ) ) ) # ( \USR|Equal0~2_combout\ & ( !\USR|icnt_mm\(2) & ( (\USR|icnt_mm\(1) & (\USR|icnt_mm\(0) & ((!\USR|Equal0~0_combout\) 
-- # (!\USR|Equal0~3_combout\)))) ) ) ) # ( !\USR|Equal0~2_combout\ & ( !\USR|icnt_mm\(2) & ( (\USR|icnt_mm\(1) & \USR|icnt_mm\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010011111010111110101111101011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_icnt_mm\(1),
	datab => \USR|ALT_INV_Equal0~0_combout\,
	datac => \USR|ALT_INV_icnt_mm\(0),
	datad => \USR|ALT_INV_Equal0~3_combout\,
	datae => \USR|ALT_INV_Equal0~2_combout\,
	dataf => \USR|ALT_INV_icnt_mm\(2),
	combout => \USR|icnt_mm~3_combout\);

-- Location: FF_X47_Y18_N50
\USR|icnt_mm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	asdata => \USR|icnt_mm~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_mm\(2));

-- Location: LABCELL_X47_Y18_N39
\USR|Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add4~0_combout\ = ( \USR|icnt_mm\(3) & ( (!\USR|icnt_mm\(1)) # ((!\USR|icnt_mm\(2)) # (!\USR|icnt_mm\(0))) ) ) # ( !\USR|icnt_mm\(3) & ( (\USR|icnt_mm\(1) & (\USR|icnt_mm\(2) & \USR|icnt_mm\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_icnt_mm\(1),
	datac => \USR|ALT_INV_icnt_mm\(2),
	datad => \USR|ALT_INV_icnt_mm\(0),
	dataf => \USR|ALT_INV_icnt_mm\(3),
	combout => \USR|Add4~0_combout\);

-- Location: LABCELL_X47_Y18_N54
\USR|icnt_mm~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_mm~1_combout\ = ( \USR|Add4~0_combout\ & ( (!\USR|Equal1~0_combout\ & ((!\USR|Equal0~2_combout\) # ((!\USR|Equal0~0_combout\) # (!\USR|Equal0~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110010001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_Equal0~2_combout\,
	datab => \USR|ALT_INV_Equal1~0_combout\,
	datac => \USR|ALT_INV_Equal0~0_combout\,
	datad => \USR|ALT_INV_Equal0~3_combout\,
	dataf => \USR|ALT_INV_Add4~0_combout\,
	combout => \USR|icnt_mm~1_combout\);

-- Location: FF_X47_Y18_N56
\USR|icnt_mm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	d => \USR|icnt_mm~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_mm\(3));

-- Location: LABCELL_X47_Y18_N9
\USR|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Equal1~0_combout\ = ( !\USR|icnt_mm\(1) & ( (\USR|icnt_mm\(3) & (\USR|icnt_mm\(0) & !\USR|icnt_mm\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_icnt_mm\(3),
	datac => \USR|ALT_INV_icnt_mm\(0),
	datad => \USR|ALT_INV_icnt_mm\(2),
	datae => \USR|ALT_INV_icnt_mm\(1),
	combout => \USR|Equal1~0_combout\);

-- Location: LABCELL_X47_Y18_N30
\USR|icnt_mm~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_mm~0_combout\ = ( \USR|Equal0~3_combout\ & ( \USR|icnt_mm\(1) & ( (!\USR|icnt_mm\(0) & (!\USR|Equal1~0_combout\ & ((!\USR|Equal0~0_combout\) # (!\USR|Equal0~2_combout\)))) ) ) ) # ( !\USR|Equal0~3_combout\ & ( \USR|icnt_mm\(1) & ( 
-- (!\USR|icnt_mm\(0) & !\USR|Equal1~0_combout\) ) ) ) # ( \USR|Equal0~3_combout\ & ( !\USR|icnt_mm\(1) & ( (\USR|icnt_mm\(0) & (!\USR|Equal1~0_combout\ & ((!\USR|Equal0~0_combout\) # (!\USR|Equal0~2_combout\)))) ) ) ) # ( !\USR|Equal0~3_combout\ & ( 
-- !\USR|icnt_mm\(1) & ( (\USR|icnt_mm\(0) & !\USR|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101000000000010101010000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_icnt_mm\(0),
	datab => \USR|ALT_INV_Equal0~0_combout\,
	datac => \USR|ALT_INV_Equal0~2_combout\,
	datad => \USR|ALT_INV_Equal1~0_combout\,
	datae => \USR|ALT_INV_Equal0~3_combout\,
	dataf => \USR|ALT_INV_icnt_mm\(1),
	combout => \USR|icnt_mm~0_combout\);

-- Location: FF_X47_Y18_N23
\USR|icnt_mm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	asdata => \USR|icnt_mm~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_mm\(1));

-- Location: FF_X47_Y18_N35
\USR|q_mm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \USR|icnt_mm\(1),
	sload => VCC,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_mm\(1));

-- Location: FF_X47_Y18_N8
\USR|q_mm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \USR|icnt_mm\(0),
	sload => VCC,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_mm\(0));

-- Location: FF_X47_Y18_N17
\USR|q_mm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \USR|icnt_mm\(2),
	sload => VCC,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_mm\(2));

-- Location: FF_X47_Y18_N5
\USR|q_mm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \USR|icnt_mm\(3),
	sload => VCC,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_mm\(3));

-- Location: LABCELL_X47_Y18_N51
\Anzeige_1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_1|Mux6~0_combout\ = ( \USR|q_mm\(3) & ( (\USR|q_mm\(0) & (!\USR|q_mm\(1) $ (!\USR|q_mm\(2)))) ) ) # ( !\USR|q_mm\(3) & ( (!\USR|q_mm\(1) & (!\USR|q_mm\(0) $ (!\USR|q_mm\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000000100100001001000101000001010000001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_mm\(1),
	datab => \USR|ALT_INV_q_mm\(0),
	datac => \USR|ALT_INV_q_mm\(2),
	datae => \USR|ALT_INV_q_mm\(3),
	combout => \Anzeige_1|Mux6~0_combout\);

-- Location: LABCELL_X47_Y18_N42
\Anzeige_1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_1|Mux5~0_combout\ = ( \USR|q_mm\(0) & ( (!\USR|q_mm\(1) & (\USR|q_mm\(2) & !\USR|q_mm\(3))) # (\USR|q_mm\(1) & ((\USR|q_mm\(3)))) ) ) # ( !\USR|q_mm\(0) & ( (\USR|q_mm\(2) & ((\USR|q_mm\(3)) # (\USR|q_mm\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_q_mm\(2),
	datac => \USR|ALT_INV_q_mm\(1),
	datad => \USR|ALT_INV_q_mm\(3),
	dataf => \USR|ALT_INV_q_mm\(0),
	combout => \Anzeige_1|Mux5~0_combout\);

-- Location: LABCELL_X47_Y18_N45
\Anzeige_1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_1|Mux4~0_combout\ = ( \USR|q_mm\(0) & ( (\USR|q_mm\(1) & (\USR|q_mm\(2) & \USR|q_mm\(3))) ) ) # ( !\USR|q_mm\(0) & ( (!\USR|q_mm\(2) & (\USR|q_mm\(1) & !\USR|q_mm\(3))) # (\USR|q_mm\(2) & ((\USR|q_mm\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110011010001000011001100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_mm\(1),
	datab => \USR|ALT_INV_q_mm\(2),
	datad => \USR|ALT_INV_q_mm\(3),
	dataf => \USR|ALT_INV_q_mm\(0),
	combout => \Anzeige_1|Mux4~0_combout\);

-- Location: LABCELL_X47_Y18_N36
\Anzeige_1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_1|Mux3~0_combout\ = ( \USR|q_mm\(2) & ( (!\USR|q_mm\(1) & (!\USR|q_mm\(3) & !\USR|q_mm\(0))) # (\USR|q_mm\(1) & ((\USR|q_mm\(0)))) ) ) # ( !\USR|q_mm\(2) & ( (!\USR|q_mm\(3) & (!\USR|q_mm\(1) & \USR|q_mm\(0))) # (\USR|q_mm\(3) & (\USR|q_mm\(1) & 
-- !\USR|q_mm\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_q_mm\(3),
	datac => \USR|ALT_INV_q_mm\(1),
	datad => \USR|ALT_INV_q_mm\(0),
	dataf => \USR|ALT_INV_q_mm\(2),
	combout => \Anzeige_1|Mux3~0_combout\);

-- Location: LABCELL_X47_Y18_N18
\Anzeige_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_1|Mux2~0_combout\ = ( \USR|q_mm\(3) & ( (\USR|q_mm\(0) & (!\USR|q_mm\(2) & !\USR|q_mm\(1))) ) ) # ( !\USR|q_mm\(3) & ( ((\USR|q_mm\(2) & !\USR|q_mm\(1))) # (\USR|q_mm\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101010000000100000001110101011101010100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_mm\(0),
	datab => \USR|ALT_INV_q_mm\(2),
	datac => \USR|ALT_INV_q_mm\(1),
	datae => \USR|ALT_INV_q_mm\(3),
	combout => \Anzeige_1|Mux2~0_combout\);

-- Location: LABCELL_X47_Y18_N0
\Anzeige_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_1|Mux1~0_combout\ = ( \USR|q_mm\(3) & ( (\USR|q_mm\(0) & (\USR|q_mm\(2) & !\USR|q_mm\(1))) ) ) # ( !\USR|q_mm\(3) & ( (!\USR|q_mm\(0) & (!\USR|q_mm\(2) & \USR|q_mm\(1))) # (\USR|q_mm\(0) & ((!\USR|q_mm\(2)) # (\USR|q_mm\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101000100000001000001001101010011010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_mm\(0),
	datab => \USR|ALT_INV_q_mm\(2),
	datac => \USR|ALT_INV_q_mm\(1),
	datae => \USR|ALT_INV_q_mm\(3),
	combout => \Anzeige_1|Mux1~0_combout\);

-- Location: LABCELL_X47_Y18_N24
\Anzeige_1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_1|Mux0~0_combout\ = ( \USR|q_mm\(3) & ( \USR|q_mm\(1) ) ) # ( !\USR|q_mm\(3) & ( \USR|q_mm\(1) & ( (!\USR|q_mm\(2)) # (!\USR|q_mm\(0)) ) ) ) # ( \USR|q_mm\(3) & ( !\USR|q_mm\(1) & ( (!\USR|q_mm\(2)) # (\USR|q_mm\(0)) ) ) ) # ( !\USR|q_mm\(3) & ( 
-- !\USR|q_mm\(1) & ( \USR|q_mm\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011111100111111111100111111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_q_mm\(2),
	datac => \USR|ALT_INV_q_mm\(0),
	datae => \USR|ALT_INV_q_mm\(3),
	dataf => \USR|ALT_INV_q_mm\(1),
	combout => \Anzeige_1|Mux0~0_combout\);

-- Location: LABCELL_X48_Y18_N33
\USR|icnt_cm~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_cm~0_combout\ = ( \USR|Equal0~2_combout\ & ( (!\USR|icnt_cm\(0) & ((!\USR|Equal0~0_combout\) # (!\USR|Equal0~3_combout\))) ) ) # ( !\USR|Equal0~2_combout\ & ( !\USR|icnt_cm\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_icnt_cm\(0),
	datac => \USR|ALT_INV_Equal0~0_combout\,
	datad => \USR|ALT_INV_Equal0~3_combout\,
	dataf => \USR|ALT_INV_Equal0~2_combout\,
	combout => \USR|icnt_cm~0_combout\);

-- Location: MLABCELL_X49_Y18_N45
\USR|icnt_mm[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_mm[3]~2_combout\ = ( \USR|Equal1~0_combout\ ) # ( !\USR|Equal1~0_combout\ & ( (\USR|Equal0~2_combout\ & (\USR|Equal0~0_combout\ & \USR|Equal0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_Equal0~2_combout\,
	datac => \USR|ALT_INV_Equal0~0_combout\,
	datad => \USR|ALT_INV_Equal0~3_combout\,
	dataf => \USR|ALT_INV_Equal1~0_combout\,
	combout => \USR|icnt_mm[3]~2_combout\);

-- Location: FF_X48_Y18_N29
\USR|icnt_cm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	asdata => \USR|icnt_cm~0_combout\,
	sload => VCC,
	ena => \USR|icnt_mm[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_cm\(0));

-- Location: LABCELL_X48_Y18_N0
\USR|icnt_cm~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_cm~1_combout\ = ( \USR|Equal0~0_combout\ & ( \USR|Equal0~2_combout\ & ( (!\USR|Equal0~3_combout\ & (!\USR|Equal2~0_combout\ & (!\USR|icnt_cm\(0) $ (!\USR|icnt_cm\(1))))) ) ) ) # ( !\USR|Equal0~0_combout\ & ( \USR|Equal0~2_combout\ & ( 
-- (!\USR|Equal2~0_combout\ & (!\USR|icnt_cm\(0) $ (!\USR|icnt_cm\(1)))) ) ) ) # ( \USR|Equal0~0_combout\ & ( !\USR|Equal0~2_combout\ & ( (!\USR|Equal2~0_combout\ & (!\USR|icnt_cm\(0) $ (!\USR|icnt_cm\(1)))) ) ) ) # ( !\USR|Equal0~0_combout\ & ( 
-- !\USR|Equal0~2_combout\ & ( (!\USR|Equal2~0_combout\ & (!\USR|icnt_cm\(0) $ (!\USR|icnt_cm\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000001100110000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_icnt_cm\(0),
	datab => \USR|ALT_INV_icnt_cm\(1),
	datac => \USR|ALT_INV_Equal0~3_combout\,
	datad => \USR|ALT_INV_Equal2~0_combout\,
	datae => \USR|ALT_INV_Equal0~0_combout\,
	dataf => \USR|ALT_INV_Equal0~2_combout\,
	combout => \USR|icnt_cm~1_combout\);

-- Location: FF_X48_Y18_N23
\USR|icnt_cm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	asdata => \USR|icnt_cm~1_combout\,
	sload => VCC,
	ena => \USR|icnt_mm[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_cm\(1));

-- Location: LABCELL_X48_Y18_N39
\USR|icnt_cm~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_cm~3_combout\ = ( \USR|Equal0~0_combout\ & ( \USR|icnt_cm\(0) & ( (!\USR|Equal0~2_combout\ & (!\USR|icnt_cm\(1) $ ((!\USR|icnt_cm\(2))))) # (\USR|Equal0~2_combout\ & (!\USR|Equal0~3_combout\ & (!\USR|icnt_cm\(1) $ (!\USR|icnt_cm\(2))))) ) ) ) # 
-- ( !\USR|Equal0~0_combout\ & ( \USR|icnt_cm\(0) & ( !\USR|icnt_cm\(1) $ (!\USR|icnt_cm\(2)) ) ) ) # ( \USR|Equal0~0_combout\ & ( !\USR|icnt_cm\(0) & ( (\USR|icnt_cm\(2) & ((!\USR|Equal0~2_combout\) # (!\USR|Equal0~3_combout\))) ) ) ) # ( 
-- !\USR|Equal0~0_combout\ & ( !\USR|icnt_cm\(0) & ( \USR|icnt_cm\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011000001100110011001100110011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_icnt_cm\(1),
	datab => \USR|ALT_INV_icnt_cm\(2),
	datac => \USR|ALT_INV_Equal0~2_combout\,
	datad => \USR|ALT_INV_Equal0~3_combout\,
	datae => \USR|ALT_INV_Equal0~0_combout\,
	dataf => \USR|ALT_INV_icnt_cm\(0),
	combout => \USR|icnt_cm~3_combout\);

-- Location: FF_X48_Y18_N11
\USR|icnt_cm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	asdata => \USR|icnt_cm~3_combout\,
	sload => VCC,
	ena => \USR|icnt_mm[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_cm\(2));

-- Location: LABCELL_X48_Y18_N48
\USR|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Equal2~0_combout\ = ( !\USR|icnt_cm\(1) & ( !\USR|icnt_cm\(2) & ( (\USR|icnt_cm\(0) & \USR|icnt_cm\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \USR|ALT_INV_icnt_cm\(0),
	datad => \USR|ALT_INV_icnt_cm\(3),
	datae => \USR|ALT_INV_icnt_cm\(1),
	dataf => \USR|ALT_INV_icnt_cm\(2),
	combout => \USR|Equal2~0_combout\);

-- Location: LABCELL_X48_Y18_N30
\USR|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add3~0_combout\ = ( \USR|icnt_cm\(3) & ( (!\USR|icnt_cm\(0)) # ((!\USR|icnt_cm\(2)) # (!\USR|icnt_cm\(1))) ) ) # ( !\USR|icnt_cm\(3) & ( (\USR|icnt_cm\(0) & (\USR|icnt_cm\(2) & \USR|icnt_cm\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_icnt_cm\(0),
	datab => \USR|ALT_INV_icnt_cm\(2),
	datac => \USR|ALT_INV_icnt_cm\(1),
	dataf => \USR|ALT_INV_icnt_cm\(3),
	combout => \USR|Add3~0_combout\);

-- Location: LABCELL_X48_Y18_N6
\USR|icnt_cm~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_cm~2_combout\ = ( \USR|Equal0~2_combout\ & ( \USR|Add3~0_combout\ & ( (!\USR|Equal2~0_combout\ & ((!\USR|Equal0~3_combout\) # (!\USR|Equal0~0_combout\))) ) ) ) # ( !\USR|Equal0~2_combout\ & ( \USR|Add3~0_combout\ & ( !\USR|Equal2~0_combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_Equal2~0_combout\,
	datac => \USR|ALT_INV_Equal0~3_combout\,
	datad => \USR|ALT_INV_Equal0~0_combout\,
	datae => \USR|ALT_INV_Equal0~2_combout\,
	dataf => \USR|ALT_INV_Add3~0_combout\,
	combout => \USR|icnt_cm~2_combout\);

-- Location: FF_X48_Y18_N8
\USR|icnt_cm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	d => \USR|icnt_cm~2_combout\,
	ena => \USR|icnt_mm[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_cm\(3));

-- Location: MLABCELL_X49_Y17_N0
\USR|q_cm[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|q_cm[3]~feeder_combout\ = ( \USR|icnt_cm\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \USR|ALT_INV_icnt_cm\(3),
	combout => \USR|q_cm[3]~feeder_combout\);

-- Location: FF_X49_Y17_N2
\USR|q_cm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|q_cm[3]~feeder_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_cm\(3));

-- Location: FF_X49_Y17_N47
\USR|q_cm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \USR|icnt_cm\(1),
	sload => VCC,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_cm\(1));

-- Location: MLABCELL_X49_Y17_N3
\USR|q_cm[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|q_cm[2]~feeder_combout\ = ( \USR|icnt_cm\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \USR|ALT_INV_icnt_cm\(2),
	combout => \USR|q_cm[2]~feeder_combout\);

-- Location: FF_X49_Y17_N5
\USR|q_cm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|q_cm[2]~feeder_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_cm\(2));

-- Location: FF_X49_Y17_N50
\USR|q_cm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \USR|icnt_cm\(0),
	sload => VCC,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_cm\(0));

-- Location: MLABCELL_X49_Y17_N57
\Anzeige_2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_2|Mux6~0_combout\ = ( \USR|q_cm\(0) & ( (!\USR|q_cm\(3) & (!\USR|q_cm\(1) & !\USR|q_cm\(2))) # (\USR|q_cm\(3) & (!\USR|q_cm\(1) $ (!\USR|q_cm\(2)))) ) ) # ( !\USR|q_cm\(0) & ( (!\USR|q_cm\(3) & (!\USR|q_cm\(1) & \USR|q_cm\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010011001010001001001100101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_cm\(3),
	datab => \USR|ALT_INV_q_cm\(1),
	datad => \USR|ALT_INV_q_cm\(2),
	dataf => \USR|ALT_INV_q_cm\(0),
	combout => \Anzeige_2|Mux6~0_combout\);

-- Location: MLABCELL_X49_Y17_N27
\Anzeige_2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_2|Mux5~0_combout\ = ( \USR|q_cm\(0) & ( (!\USR|q_cm\(3) & (!\USR|q_cm\(1) & \USR|q_cm\(2))) # (\USR|q_cm\(3) & (\USR|q_cm\(1))) ) ) # ( !\USR|q_cm\(0) & ( (\USR|q_cm\(2) & ((\USR|q_cm\(1)) # (\USR|q_cm\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_cm\(3),
	datab => \USR|ALT_INV_q_cm\(1),
	datad => \USR|ALT_INV_q_cm\(2),
	dataf => \USR|ALT_INV_q_cm\(0),
	combout => \Anzeige_2|Mux5~0_combout\);

-- Location: MLABCELL_X49_Y17_N24
\Anzeige_2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_2|Mux4~0_combout\ = ( \USR|q_cm\(0) & ( (\USR|q_cm\(3) & (\USR|q_cm\(1) & \USR|q_cm\(2))) ) ) # ( !\USR|q_cm\(0) & ( (!\USR|q_cm\(3) & (\USR|q_cm\(1) & !\USR|q_cm\(2))) # (\USR|q_cm\(3) & ((\USR|q_cm\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_cm\(3),
	datab => \USR|ALT_INV_q_cm\(1),
	datac => \USR|ALT_INV_q_cm\(2),
	dataf => \USR|ALT_INV_q_cm\(0),
	combout => \Anzeige_2|Mux4~0_combout\);

-- Location: MLABCELL_X49_Y17_N18
\Anzeige_2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_2|Mux3~0_combout\ = ( \USR|q_cm\(0) & ( (!\USR|q_cm\(1) & (!\USR|q_cm\(3) & !\USR|q_cm\(2))) # (\USR|q_cm\(1) & ((\USR|q_cm\(2)))) ) ) # ( !\USR|q_cm\(0) & ( (!\USR|q_cm\(1) & (!\USR|q_cm\(3) & \USR|q_cm\(2))) # (\USR|q_cm\(1) & (\USR|q_cm\(3) & 
-- !\USR|q_cm\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_q_cm\(1),
	datac => \USR|ALT_INV_q_cm\(3),
	datad => \USR|ALT_INV_q_cm\(2),
	dataf => \USR|ALT_INV_q_cm\(0),
	combout => \Anzeige_2|Mux3~0_combout\);

-- Location: MLABCELL_X49_Y17_N54
\Anzeige_2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_2|Mux2~0_combout\ = ( \USR|q_cm\(0) & ( (!\USR|q_cm\(3)) # ((!\USR|q_cm\(1) & !\USR|q_cm\(2))) ) ) # ( !\USR|q_cm\(0) & ( (!\USR|q_cm\(3) & (!\USR|q_cm\(1) & \USR|q_cm\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_cm\(3),
	datab => \USR|ALT_INV_q_cm\(1),
	datac => \USR|ALT_INV_q_cm\(2),
	dataf => \USR|ALT_INV_q_cm\(0),
	combout => \Anzeige_2|Mux2~0_combout\);

-- Location: MLABCELL_X49_Y17_N21
\Anzeige_2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_2|Mux1~0_combout\ = ( \USR|q_cm\(0) & ( !\USR|q_cm\(3) $ (((!\USR|q_cm\(1) & \USR|q_cm\(2)))) ) ) # ( !\USR|q_cm\(0) & ( (!\USR|q_cm\(3) & (\USR|q_cm\(1) & !\USR|q_cm\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010101010011001101010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_cm\(3),
	datab => \USR|ALT_INV_q_cm\(1),
	datad => \USR|ALT_INV_q_cm\(2),
	dataf => \USR|ALT_INV_q_cm\(0),
	combout => \Anzeige_2|Mux1~0_combout\);

-- Location: MLABCELL_X49_Y17_N42
\Anzeige_2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_2|Mux0~0_combout\ = ( \USR|q_cm\(2) & ( (!\USR|q_cm\(3) & ((!\USR|q_cm\(1)) # (!\USR|q_cm\(0)))) # (\USR|q_cm\(3) & ((\USR|q_cm\(0)) # (\USR|q_cm\(1)))) ) ) # ( !\USR|q_cm\(2) & ( (\USR|q_cm\(1)) # (\USR|q_cm\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111101111011011110101110111011101111011110110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_cm\(3),
	datab => \USR|ALT_INV_q_cm\(1),
	datac => \USR|ALT_INV_q_cm\(0),
	datae => \USR|ALT_INV_q_cm\(2),
	combout => \Anzeige_2|Mux0~0_combout\);

-- Location: LABCELL_X48_Y18_N57
\USR|icnt_dm~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_dm~4_combout\ = ( \USR|Equal0~0_combout\ & ( (!\USR|icnt_dm\(0) & ((!\USR|Equal0~2_combout\) # (!\USR|Equal0~3_combout\))) ) ) # ( !\USR|Equal0~0_combout\ & ( !\USR|icnt_dm\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_Equal0~2_combout\,
	datac => \USR|ALT_INV_icnt_dm\(0),
	datad => \USR|ALT_INV_Equal0~3_combout\,
	dataf => \USR|ALT_INV_Equal0~0_combout\,
	combout => \USR|icnt_dm~4_combout\);

-- Location: LABCELL_X48_Y18_N12
\USR|icnt_dm[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_dm[3]~0_combout\ = ( \USR|Equal0~3_combout\ & ( \USR|Equal0~0_combout\ & ( ((\USR|Equal2~0_combout\ & \USR|Equal1~0_combout\)) # (\USR|Equal0~2_combout\) ) ) ) # ( !\USR|Equal0~3_combout\ & ( \USR|Equal0~0_combout\ & ( (\USR|Equal2~0_combout\ & 
-- \USR|Equal1~0_combout\) ) ) ) # ( \USR|Equal0~3_combout\ & ( !\USR|Equal0~0_combout\ & ( (\USR|Equal2~0_combout\ & \USR|Equal1~0_combout\) ) ) ) # ( !\USR|Equal0~3_combout\ & ( !\USR|Equal0~0_combout\ & ( (\USR|Equal2~0_combout\ & \USR|Equal1~0_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_Equal0~2_combout\,
	datac => \USR|ALT_INV_Equal2~0_combout\,
	datad => \USR|ALT_INV_Equal1~0_combout\,
	datae => \USR|ALT_INV_Equal0~3_combout\,
	dataf => \USR|ALT_INV_Equal0~0_combout\,
	combout => \USR|icnt_dm[3]~0_combout\);

-- Location: FF_X48_Y18_N17
\USR|icnt_dm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	asdata => \USR|icnt_dm~4_combout\,
	sload => VCC,
	ena => \USR|icnt_dm[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_dm\(0));

-- Location: MLABCELL_X49_Y17_N15
\USR|q_dm[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|q_dm[0]~feeder_combout\ = ( \USR|icnt_dm\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \USR|ALT_INV_icnt_dm\(0),
	combout => \USR|q_dm[0]~feeder_combout\);

-- Location: FF_X49_Y17_N17
\USR|q_dm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|q_dm[0]~feeder_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_dm\(0));

-- Location: LABCELL_X48_Y18_N27
\USR|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Add2~0_combout\ = ( \USR|icnt_dm\(3) & ( (!\USR|icnt_dm\(2)) # ((!\USR|icnt_dm\(1)) # (!\USR|icnt_dm\(0))) ) ) # ( !\USR|icnt_dm\(3) & ( (\USR|icnt_dm\(2) & (\USR|icnt_dm\(1) & \USR|icnt_dm\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_icnt_dm\(2),
	datab => \USR|ALT_INV_icnt_dm\(1),
	datac => \USR|ALT_INV_icnt_dm\(0),
	dataf => \USR|ALT_INV_icnt_dm\(3),
	combout => \USR|Add2~0_combout\);

-- Location: LABCELL_X48_Y18_N54
\USR|icnt_dm~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_dm~2_combout\ = ( \USR|Add2~0_combout\ & ( (!\USR|Equal3~0_combout\ & ((!\USR|Equal0~2_combout\) # ((!\USR|Equal0~3_combout\) # (!\USR|Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_Equal3~0_combout\,
	datab => \USR|ALT_INV_Equal0~2_combout\,
	datac => \USR|ALT_INV_Equal0~3_combout\,
	datad => \USR|ALT_INV_Equal0~0_combout\,
	dataf => \USR|ALT_INV_Add2~0_combout\,
	combout => \USR|icnt_dm~2_combout\);

-- Location: FF_X48_Y18_N56
\USR|icnt_dm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	d => \USR|icnt_dm~2_combout\,
	ena => \USR|icnt_dm[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_dm\(3));

-- Location: LABCELL_X48_Y18_N24
\USR|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|Equal3~0_combout\ = ( \USR|icnt_dm\(0) & ( (!\USR|icnt_dm\(1) & (!\USR|icnt_dm\(2) & \USR|icnt_dm\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_icnt_dm\(1),
	datac => \USR|ALT_INV_icnt_dm\(2),
	datad => \USR|ALT_INV_icnt_dm\(3),
	dataf => \USR|ALT_INV_icnt_dm\(0),
	combout => \USR|Equal3~0_combout\);

-- Location: LABCELL_X48_Y18_N18
\USR|icnt_dm~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_dm~1_combout\ = ( \USR|Equal0~3_combout\ & ( \USR|Equal0~0_combout\ & ( (!\USR|Equal0~2_combout\ & (!\USR|Equal3~0_combout\ & (!\USR|icnt_dm\(0) $ (!\USR|icnt_dm\(1))))) ) ) ) # ( !\USR|Equal0~3_combout\ & ( \USR|Equal0~0_combout\ & ( 
-- (!\USR|Equal3~0_combout\ & (!\USR|icnt_dm\(0) $ (!\USR|icnt_dm\(1)))) ) ) ) # ( \USR|Equal0~3_combout\ & ( !\USR|Equal0~0_combout\ & ( (!\USR|Equal3~0_combout\ & (!\USR|icnt_dm\(0) $ (!\USR|icnt_dm\(1)))) ) ) ) # ( !\USR|Equal0~3_combout\ & ( 
-- !\USR|Equal0~0_combout\ & ( (!\USR|Equal3~0_combout\ & (!\USR|icnt_dm\(0) $ (!\USR|icnt_dm\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000110000110000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_Equal0~2_combout\,
	datab => \USR|ALT_INV_icnt_dm\(0),
	datac => \USR|ALT_INV_Equal3~0_combout\,
	datad => \USR|ALT_INV_icnt_dm\(1),
	datae => \USR|ALT_INV_Equal0~3_combout\,
	dataf => \USR|ALT_INV_Equal0~0_combout\,
	combout => \USR|icnt_dm~1_combout\);

-- Location: FF_X48_Y18_N32
\USR|icnt_dm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	asdata => \USR|icnt_dm~1_combout\,
	sload => VCC,
	ena => \USR|icnt_dm[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_dm\(1));

-- Location: LABCELL_X48_Y18_N42
\USR|icnt_dm~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|icnt_dm~3_combout\ = ( \USR|Equal0~0_combout\ & ( \USR|icnt_dm\(0) & ( (!\USR|Equal0~3_combout\ & (!\USR|icnt_dm\(2) $ ((!\USR|icnt_dm\(1))))) # (\USR|Equal0~3_combout\ & (!\USR|Equal0~2_combout\ & (!\USR|icnt_dm\(2) $ (!\USR|icnt_dm\(1))))) ) ) ) # 
-- ( !\USR|Equal0~0_combout\ & ( \USR|icnt_dm\(0) & ( !\USR|icnt_dm\(2) $ (!\USR|icnt_dm\(1)) ) ) ) # ( \USR|Equal0~0_combout\ & ( !\USR|icnt_dm\(0) & ( (\USR|icnt_dm\(2) & ((!\USR|Equal0~3_combout\) # (!\USR|Equal0~2_combout\))) ) ) ) # ( 
-- !\USR|Equal0~0_combout\ & ( !\USR|icnt_dm\(0) & ( \USR|icnt_dm\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101000001100110011001100110011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_icnt_dm\(2),
	datab => \USR|ALT_INV_icnt_dm\(1),
	datac => \USR|ALT_INV_Equal0~3_combout\,
	datad => \USR|ALT_INV_Equal0~2_combout\,
	datae => \USR|ALT_INV_Equal0~0_combout\,
	dataf => \USR|ALT_INV_icnt_dm\(0),
	combout => \USR|icnt_dm~3_combout\);

-- Location: FF_X48_Y18_N53
\USR|icnt_dm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USR|clk_mm~q\,
	asdata => \USR|icnt_dm~3_combout\,
	sload => VCC,
	ena => \USR|icnt_dm[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|icnt_dm\(2));

-- Location: FF_X49_Y17_N35
\USR|q_dm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \USR|icnt_dm\(2),
	sload => VCC,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_dm\(2));

-- Location: FF_X49_Y17_N32
\USR|q_dm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \USR|icnt_dm\(3),
	sload => VCC,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_dm\(3));

-- Location: MLABCELL_X49_Y17_N12
\USR|q_dm[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \USR|q_dm[1]~feeder_combout\ = ( \USR|icnt_dm\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \USR|ALT_INV_icnt_dm\(1),
	combout => \USR|q_dm[1]~feeder_combout\);

-- Location: FF_X49_Y17_N14
\USR|q_dm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \USR|q_dm[1]~feeder_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USR|q_dm\(1));

-- Location: MLABCELL_X49_Y17_N36
\Anzeige_3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_3|Mux6~0_combout\ = ( \USR|q_dm\(1) & ( (\USR|q_dm\(0) & (!\USR|q_dm\(2) & \USR|q_dm\(3))) ) ) # ( !\USR|q_dm\(1) & ( (!\USR|q_dm\(0) & (\USR|q_dm\(2) & !\USR|q_dm\(3))) # (\USR|q_dm\(0) & (!\USR|q_dm\(2) $ (\USR|q_dm\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_q_dm\(0),
	datac => \USR|ALT_INV_q_dm\(2),
	datad => \USR|ALT_INV_q_dm\(3),
	dataf => \USR|ALT_INV_q_dm\(1),
	combout => \Anzeige_3|Mux6~0_combout\);

-- Location: MLABCELL_X49_Y17_N39
\Anzeige_3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_3|Mux5~0_combout\ = ( \USR|q_dm\(0) & ( (!\USR|q_dm\(1) & (\USR|q_dm\(2) & !\USR|q_dm\(3))) # (\USR|q_dm\(1) & ((\USR|q_dm\(3)))) ) ) # ( !\USR|q_dm\(0) & ( (\USR|q_dm\(2) & ((\USR|q_dm\(3)) # (\USR|q_dm\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_dm\(2),
	datac => \USR|ALT_INV_q_dm\(1),
	datad => \USR|ALT_INV_q_dm\(3),
	dataf => \USR|ALT_INV_q_dm\(0),
	combout => \Anzeige_3|Mux5~0_combout\);

-- Location: MLABCELL_X49_Y17_N6
\Anzeige_3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_3|Mux4~0_combout\ = ( \USR|q_dm\(1) & ( (!\USR|q_dm\(2) & (!\USR|q_dm\(0) & !\USR|q_dm\(3))) # (\USR|q_dm\(2) & ((\USR|q_dm\(3)))) ) ) # ( !\USR|q_dm\(1) & ( (!\USR|q_dm\(0) & (\USR|q_dm\(2) & \USR|q_dm\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \USR|ALT_INV_q_dm\(0),
	datac => \USR|ALT_INV_q_dm\(2),
	datad => \USR|ALT_INV_q_dm\(3),
	dataf => \USR|ALT_INV_q_dm\(1),
	combout => \Anzeige_3|Mux4~0_combout\);

-- Location: MLABCELL_X49_Y17_N9
\Anzeige_3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_3|Mux3~0_combout\ = ( \USR|q_dm\(3) & ( (\USR|q_dm\(1) & (!\USR|q_dm\(2) $ (\USR|q_dm\(0)))) ) ) # ( !\USR|q_dm\(3) & ( (!\USR|q_dm\(2) & (\USR|q_dm\(0) & !\USR|q_dm\(1))) # (\USR|q_dm\(2) & (!\USR|q_dm\(0) $ (\USR|q_dm\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_dm\(2),
	datab => \USR|ALT_INV_q_dm\(0),
	datac => \USR|ALT_INV_q_dm\(1),
	dataf => \USR|ALT_INV_q_dm\(3),
	combout => \Anzeige_3|Mux3~0_combout\);

-- Location: MLABCELL_X49_Y17_N51
\Anzeige_3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_3|Mux2~0_combout\ = ( \USR|q_dm\(1) & ( (\USR|q_dm\(0) & !\USR|q_dm\(3)) ) ) # ( !\USR|q_dm\(1) & ( (!\USR|q_dm\(2) & (\USR|q_dm\(0))) # (\USR|q_dm\(2) & ((!\USR|q_dm\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010001100000011000001110010011100100011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_dm\(2),
	datab => \USR|ALT_INV_q_dm\(0),
	datac => \USR|ALT_INV_q_dm\(3),
	datae => \USR|ALT_INV_q_dm\(1),
	combout => \Anzeige_3|Mux2~0_combout\);

-- Location: MLABCELL_X49_Y17_N33
\Anzeige_3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_3|Mux1~0_combout\ = (!\USR|q_dm\(1) & (\USR|q_dm\(0) & (!\USR|q_dm\(3) $ (\USR|q_dm\(2))))) # (\USR|q_dm\(1) & (!\USR|q_dm\(3) & ((!\USR|q_dm\(2)) # (\USR|q_dm\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010010011100000001001001110000000100100111000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_dm\(1),
	datab => \USR|ALT_INV_q_dm\(0),
	datac => \USR|ALT_INV_q_dm\(3),
	datad => \USR|ALT_INV_q_dm\(2),
	combout => \Anzeige_3|Mux1~0_combout\);

-- Location: MLABCELL_X49_Y17_N30
\Anzeige_3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Anzeige_3|Mux0~0_combout\ = (!\USR|q_dm\(0) & ((!\USR|q_dm\(2) $ (!\USR|q_dm\(3))) # (\USR|q_dm\(1)))) # (\USR|q_dm\(0) & ((!\USR|q_dm\(1) $ (!\USR|q_dm\(2))) # (\USR|q_dm\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111011110111010111101111011101011110111101110101111011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \USR|ALT_INV_q_dm\(1),
	datab => \USR|ALT_INV_q_dm\(0),
	datac => \USR|ALT_INV_q_dm\(2),
	datad => \USR|ALT_INV_q_dm\(3),
	combout => \Anzeige_3|Mux0~0_combout\);

-- Location: MLABCELL_X34_Y4_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


