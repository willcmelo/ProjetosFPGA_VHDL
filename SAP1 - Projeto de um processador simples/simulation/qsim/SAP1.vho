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

-- DATE "04/13/2021 22:56:04"

-- 
-- Device: Altera EP4CE30F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SAP1 IS
    PORT (
	CK : IN std_logic;
	MR : IN std_logic;
	DISP0 : BUFFER std_logic_vector(7 DOWNTO 0);
	DISP1 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END SAP1;

-- Design Ports Information
-- DISP0[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[2]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[4]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[6]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP0[7]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISP1[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MR	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SAP1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CK : std_logic;
SIGNAL ww_MR : std_logic;
SIGNAL ww_DISP0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DISP1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \MR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISP0[0]~output_o\ : std_logic;
SIGNAL \DISP0[1]~output_o\ : std_logic;
SIGNAL \DISP0[2]~output_o\ : std_logic;
SIGNAL \DISP0[3]~output_o\ : std_logic;
SIGNAL \DISP0[4]~output_o\ : std_logic;
SIGNAL \DISP0[5]~output_o\ : std_logic;
SIGNAL \DISP0[6]~output_o\ : std_logic;
SIGNAL \DISP0[7]~output_o\ : std_logic;
SIGNAL \DISP1[0]~output_o\ : std_logic;
SIGNAL \DISP1[1]~output_o\ : std_logic;
SIGNAL \DISP1[2]~output_o\ : std_logic;
SIGNAL \DISP1[3]~output_o\ : std_logic;
SIGNAL \DISP1[4]~output_o\ : std_logic;
SIGNAL \DISP1[5]~output_o\ : std_logic;
SIGNAL \DISP1[6]~output_o\ : std_logic;
SIGNAL \DISP1[7]~output_o\ : std_logic;
SIGNAL \CK~input_o\ : std_logic;
SIGNAL \CK~inputclkctrl_outclk\ : std_logic;
SIGNAL \acc|DATA_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \MR~input_o\ : std_logic;
SIGNAL \MR~inputclkctrl_outclk\ : std_logic;
SIGNAL \cu|cnt[0]~2_combout\ : std_logic;
SIGNAL \cu|cnt[2]~1_combout\ : std_logic;
SIGNAL \cu|Equal0~0_combout\ : std_logic;
SIGNAL \cu|cnt[1]~0_combout\ : std_logic;
SIGNAL \cu|Mux4~1_combout\ : std_logic;
SIGNAL \cu|Mux6~0_combout\ : std_logic;
SIGNAL \reg_b|DATA_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \cu|Mux8~0_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[0]~49_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[2]~21_combout\ : std_logic;
SIGNAL \cu|Mux4~0_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[2]~20_combout\ : std_logic;
SIGNAL \cu|Mux11~0_combout\ : std_logic;
SIGNAL \cu|Mux11~1_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[1]~15_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[1]~16_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[0]~9_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[0]~8_combout\ : std_logic;
SIGNAL \ula|Add0~0_combout\ : std_logic;
SIGNAL \ula|Add1~0_combout\ : std_logic;
SIGNAL \PC|cnt~2_combout\ : std_logic;
SIGNAL \cu|Equal0~1_combout\ : std_logic;
SIGNAL \cu|Mux3~0_combout\ : std_logic;
SIGNAL \cu|Mux2~0_combout\ : std_logic;
SIGNAL \memory|Mux6~0_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[3]~10_combout\ : std_logic;
SIGNAL \cu|Mux10~0_combout\ : std_logic;
SIGNAL \cu|Mux10~1_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[3]~48_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[3]~11_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[3]~47_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[0]~12_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[0]~13_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[0]~14_combout\ : std_logic;
SIGNAL \ula|Add0~1\ : std_logic;
SIGNAL \ula|Add0~2_combout\ : std_logic;
SIGNAL \ula|Add1~1\ : std_logic;
SIGNAL \ula|Add1~2_combout\ : std_logic;
SIGNAL \PC|cnt~3_combout\ : std_logic;
SIGNAL \memory|Mux5~0_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[1]~17_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[1]~18_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[1]~19_combout\ : std_logic;
SIGNAL \ula|Add0~3\ : std_logic;
SIGNAL \ula|Add0~4_combout\ : std_logic;
SIGNAL \ula|Add1~3\ : std_logic;
SIGNAL \ula|Add1~4_combout\ : std_logic;
SIGNAL \memory|Mux4~0_combout\ : std_logic;
SIGNAL \PC|cnt~5_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[2]~22_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[2]~23_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[2]~24_combout\ : std_logic;
SIGNAL \ula|Add0~5\ : std_logic;
SIGNAL \ula|Add0~7\ : std_logic;
SIGNAL \ula|Add0~9\ : std_logic;
SIGNAL \ula|Add0~10_combout\ : std_logic;
SIGNAL \ula|Add1~5\ : std_logic;
SIGNAL \ula|Add1~7\ : std_logic;
SIGNAL \ula|Add1~9\ : std_logic;
SIGNAL \ula|Add1~10_combout\ : std_logic;
SIGNAL \cu|Mux5~0_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[6]~30_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[5]~36_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[5]~37_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[5]~38_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[5]~39_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[5]~40_combout\ : std_logic;
SIGNAL \cu|Mux9~0_combout\ : std_logic;
SIGNAL \cu|Mux9~1_combout\ : std_logic;
SIGNAL \ula|Add1~8_combout\ : std_logic;
SIGNAL \ula|Add0~8_combout\ : std_logic;
SIGNAL \memory|Mux2~0_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[6]~32_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[6]~31_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[4]~33_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[4]~34_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[4]~35_combout\ : std_logic;
SIGNAL \cu|Mux8~1_combout\ : std_logic;
SIGNAL \ula|Add1~11\ : std_logic;
SIGNAL \ula|Add1~12_combout\ : std_logic;
SIGNAL \ula|Add0~11\ : std_logic;
SIGNAL \ula|Add0~12_combout\ : std_logic;
SIGNAL \memory|Mux0~0_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[6]~41_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[6]~42_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[6]~43_combout\ : std_logic;
SIGNAL \cu|Mux5~1_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[3]~25_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[3]~26_combout\ : std_logic;
SIGNAL \ula|Add0~6_combout\ : std_logic;
SIGNAL \ula|Add1~6_combout\ : std_logic;
SIGNAL \memory|Mux3~0_combout\ : std_logic;
SIGNAL \PC|Add0~0_combout\ : std_logic;
SIGNAL \PC|cnt~4_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[3]~27_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[3]~28_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[3]~29_combout\ : std_logic;
SIGNAL \out_reg|DATA_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \out_reg|DATA_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \out_reg|Mux13~0_combout\ : std_logic;
SIGNAL \out_reg|Mux12~0_combout\ : std_logic;
SIGNAL \out_reg|Mux11~0_combout\ : std_logic;
SIGNAL \out_reg|Mux10~0_combout\ : std_logic;
SIGNAL \out_reg|Mux9~0_combout\ : std_logic;
SIGNAL \out_reg|Mux8~0_combout\ : std_logic;
SIGNAL \out_reg|Mux7~0_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[7]~44_combout\ : std_logic;
SIGNAL \ula|Add1~13\ : std_logic;
SIGNAL \ula|Add1~14_combout\ : std_logic;
SIGNAL \ula|Add0~13\ : std_logic;
SIGNAL \ula|Add0~14_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[7]~45_combout\ : std_logic;
SIGNAL \multiplex_bar|main_bus[7]~46_combout\ : std_logic;
SIGNAL \out_reg|Mux6~0_combout\ : std_logic;
SIGNAL \out_reg|Mux5~0_combout\ : std_logic;
SIGNAL \out_reg|Mux4~0_combout\ : std_logic;
SIGNAL \out_reg|Mux3~0_combout\ : std_logic;
SIGNAL \out_reg|Mux2~0_combout\ : std_logic;
SIGNAL \out_reg|Mux1~0_combout\ : std_logic;
SIGNAL \out_reg|Mux0~0_combout\ : std_logic;
SIGNAL \out_reg|DATA_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ir|DATA_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cu|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PC|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \acc|DATA_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_b|DATA_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mar|DATA_OUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_CK~inputclkctrl_outclk\ : std_logic;
SIGNAL \cu|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \out_reg|ALT_INV_Mux13~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CK <= CK;
ww_MR <= MR;
DISP0 <= ww_DISP0;
DISP1 <= ww_DISP1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MR~input_o\);

\CK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK~input_o\);
\ALT_INV_CK~inputclkctrl_outclk\ <= NOT \CK~inputclkctrl_outclk\;
\cu|ALT_INV_Equal0~0_combout\ <= NOT \cu|Equal0~0_combout\;
\out_reg|ALT_INV_Mux1~0_combout\ <= NOT \out_reg|Mux1~0_combout\;
\out_reg|ALT_INV_Mux2~0_combout\ <= NOT \out_reg|Mux2~0_combout\;
\out_reg|ALT_INV_Mux3~0_combout\ <= NOT \out_reg|Mux3~0_combout\;
\out_reg|ALT_INV_Mux4~0_combout\ <= NOT \out_reg|Mux4~0_combout\;
\out_reg|ALT_INV_Mux5~0_combout\ <= NOT \out_reg|Mux5~0_combout\;
\out_reg|ALT_INV_Mux6~0_combout\ <= NOT \out_reg|Mux6~0_combout\;
\out_reg|ALT_INV_Mux8~0_combout\ <= NOT \out_reg|Mux8~0_combout\;
\out_reg|ALT_INV_Mux9~0_combout\ <= NOT \out_reg|Mux9~0_combout\;
\out_reg|ALT_INV_Mux10~0_combout\ <= NOT \out_reg|Mux10~0_combout\;
\out_reg|ALT_INV_Mux11~0_combout\ <= NOT \out_reg|Mux11~0_combout\;
\out_reg|ALT_INV_Mux12~0_combout\ <= NOT \out_reg|Mux12~0_combout\;
\out_reg|ALT_INV_Mux13~0_combout\ <= NOT \out_reg|Mux13~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X67_Y37_N16
\DISP0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[0]~output_o\);

-- Location: IOOBUF_X59_Y43_N2
\DISP0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[1]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\DISP0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux11~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[2]~output_o\);

-- Location: IOOBUF_X67_Y38_N23
\DISP0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[3]~output_o\);

-- Location: IOOBUF_X59_Y43_N9
\DISP0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[4]~output_o\);

-- Location: IOOBUF_X67_Y38_N16
\DISP0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[5]~output_o\);

-- Location: IOOBUF_X67_Y38_N9
\DISP0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \DISP0[6]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\DISP0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DISP0[7]~output_o\);

-- Location: IOOBUF_X61_Y43_N2
\DISP1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[0]~output_o\);

-- Location: IOOBUF_X56_Y43_N9
\DISP1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[1]~output_o\);

-- Location: IOOBUF_X61_Y43_N16
\DISP1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[2]~output_o\);

-- Location: IOOBUF_X61_Y43_N30
\DISP1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[3]~output_o\);

-- Location: IOOBUF_X56_Y43_N16
\DISP1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[4]~output_o\);

-- Location: IOOBUF_X67_Y39_N23
\DISP1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[5]~output_o\);

-- Location: IOOBUF_X61_Y43_N9
\DISP1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_reg|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DISP1[6]~output_o\);

-- Location: IOOBUF_X1_Y43_N16
\DISP1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DISP1[7]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\CK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CK,
	o => \CK~input_o\);

-- Location: CLKCTRL_G2
\CK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CK~inputclkctrl_outclk\);

-- Location: LCCOMB_X66_Y38_N24
\acc|DATA_OUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|DATA_OUT[4]~feeder_combout\ = \multiplex_bar|main_bus[4]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplex_bar|main_bus[4]~35_combout\,
	combout => \acc|DATA_OUT[4]~feeder_combout\);

-- Location: IOIBUF_X0_Y21_N15
\MR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MR,
	o => \MR~input_o\);

-- Location: CLKCTRL_G4
\MR~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MR~inputclkctrl_outclk\);

-- Location: LCCOMB_X64_Y38_N30
\cu|cnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|cnt[0]~2_combout\ = !\cu|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cu|cnt\(0),
	combout => \cu|cnt[0]~2_combout\);

-- Location: LCCOMB_X64_Y38_N12
\cu|cnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|cnt[2]~1_combout\ = \cu|cnt\(2) $ (((\cu|cnt\(1) & \cu|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|cnt\(1),
	datab => \cu|cnt\(0),
	datad => \cu|cnt\(2),
	combout => \cu|cnt[2]~1_combout\);

-- Location: FF_X63_Y38_N13
\cu|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CK~inputclkctrl_outclk\,
	asdata => \cu|cnt[2]~1_combout\,
	clrn => \cu|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|cnt\(2));

-- Location: LCCOMB_X63_Y38_N4
\cu|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Equal0~0_combout\ = (!\cu|cnt\(1) & (\cu|cnt\(0) & \cu|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|cnt\(1),
	datab => \cu|cnt\(0),
	datad => \cu|cnt\(2),
	combout => \cu|Equal0~0_combout\);

-- Location: FF_X63_Y38_N21
\cu|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CK~inputclkctrl_outclk\,
	asdata => \cu|cnt[0]~2_combout\,
	clrn => \cu|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|cnt\(0));

-- Location: LCCOMB_X64_Y38_N20
\cu|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|cnt[1]~0_combout\ = \cu|cnt\(1) $ (\cu|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cu|cnt\(1),
	datad => \cu|cnt\(0),
	combout => \cu|cnt[1]~0_combout\);

-- Location: FF_X63_Y38_N27
\cu|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CK~inputclkctrl_outclk\,
	asdata => \cu|cnt[1]~0_combout\,
	clrn => \cu|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cu|cnt\(1));

-- Location: FF_X59_Y38_N11
\acc|DATA_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[5]~40_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|DATA_OUT\(5));

-- Location: LCCOMB_X61_Y38_N28
\cu|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux4~1_combout\ = (!\cu|cnt\(2) & \cu|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cu|cnt\(2),
	datad => \cu|cnt\(0),
	combout => \cu|Mux4~1_combout\);

-- Location: LCCOMB_X61_Y38_N26
\cu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux6~0_combout\ = (!\ir|DATA_OUT\(6) & (\cu|cnt\(1) & (\ir|DATA_OUT\(5) & \cu|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(6),
	datab => \cu|cnt\(1),
	datac => \ir|DATA_OUT\(5),
	datad => \cu|Mux4~1_combout\,
	combout => \cu|Mux6~0_combout\);

-- Location: FF_X61_Y38_N19
\reg_b|DATA_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \multiplex_bar|main_bus[5]~40_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_b|DATA_OUT\(5));

-- Location: LCCOMB_X65_Y38_N26
\reg_b|DATA_OUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_b|DATA_OUT[4]~feeder_combout\ = \multiplex_bar|main_bus[4]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplex_bar|main_bus[4]~35_combout\,
	combout => \reg_b|DATA_OUT[4]~feeder_combout\);

-- Location: FF_X65_Y38_N27
\reg_b|DATA_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \reg_b|DATA_OUT[4]~feeder_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_b|DATA_OUT\(4));

-- Location: FF_X59_Y38_N7
\acc|DATA_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[3]~29_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|DATA_OUT\(3));

-- Location: FF_X60_Y38_N31
\reg_b|DATA_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \multiplex_bar|main_bus[3]~29_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_b|DATA_OUT\(3));

-- Location: LCCOMB_X62_Y38_N4
\cu|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux8~0_combout\ = (!\cu|cnt\(0) & (\ir|DATA_OUT\(6) & (!\cu|cnt\(2) & \cu|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|cnt\(0),
	datab => \ir|DATA_OUT\(6),
	datac => \cu|cnt\(2),
	datad => \cu|cnt\(1),
	combout => \cu|Mux8~0_combout\);

-- Location: LCCOMB_X62_Y38_N22
\multiplex_bar|main_bus[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[0]~49_combout\ = (!\cu|Mux5~1_combout\ & (((!\cu|Mux8~0_combout\) # (!\ir|DATA_OUT\(4))) # (!\ir|DATA_OUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(5),
	datab => \ir|DATA_OUT\(4),
	datac => \cu|Mux8~0_combout\,
	datad => \cu|Mux5~1_combout\,
	combout => \multiplex_bar|main_bus[0]~49_combout\);

-- Location: FF_X59_Y38_N5
\acc|DATA_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[2]~24_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|DATA_OUT\(2));

-- Location: LCCOMB_X61_Y38_N0
\multiplex_bar|main_bus[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[2]~21_combout\ = (\cu|Mux8~0_combout\ & (\ir|DATA_OUT\(5) & (\acc|DATA_OUT\(2) & \ir|DATA_OUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux8~0_combout\,
	datab => \ir|DATA_OUT\(5),
	datac => \acc|DATA_OUT\(2),
	datad => \ir|DATA_OUT\(4),
	combout => \multiplex_bar|main_bus[2]~21_combout\);

-- Location: LCCOMB_X61_Y38_N14
\cu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux4~0_combout\ = (\cu|cnt\(0) & (!\cu|cnt\(2) & !\cu|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|cnt\(0),
	datac => \cu|cnt\(2),
	datad => \cu|cnt\(1),
	combout => \cu|Mux4~0_combout\);

-- Location: FF_X61_Y38_N11
\ir|DATA_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[2]~24_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|DATA_OUT\(2));

-- Location: LCCOMB_X61_Y38_N10
\multiplex_bar|main_bus[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[2]~20_combout\ = (\cu|Mux5~1_combout\ & (\ir|DATA_OUT\(2) & !\cu|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux5~1_combout\,
	datac => \ir|DATA_OUT\(2),
	datad => \cu|Mux8~1_combout\,
	combout => \multiplex_bar|main_bus[2]~20_combout\);

-- Location: LCCOMB_X63_Y38_N26
\cu|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux11~0_combout\ = (\ir|DATA_OUT\(5) & (!\cu|cnt\(0) & (!\cu|cnt\(1) & \cu|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(5),
	datab => \cu|cnt\(0),
	datac => \cu|cnt\(1),
	datad => \cu|cnt\(2),
	combout => \cu|Mux11~0_combout\);

-- Location: LCCOMB_X63_Y38_N6
\cu|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux11~1_combout\ = (!\ir|DATA_OUT\(6) & \cu|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(6),
	datad => \cu|Mux11~0_combout\,
	combout => \cu|Mux11~1_combout\);

-- Location: FF_X61_Y38_N31
\ir|DATA_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[1]~19_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|DATA_OUT\(1));

-- Location: LCCOMB_X61_Y38_N30
\multiplex_bar|main_bus[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[1]~15_combout\ = (\cu|Mux5~1_combout\ & (\ir|DATA_OUT\(1) & !\cu|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux5~1_combout\,
	datac => \ir|DATA_OUT\(1),
	datad => \cu|Mux8~1_combout\,
	combout => \multiplex_bar|main_bus[1]~15_combout\);

-- Location: FF_X59_Y38_N3
\acc|DATA_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[1]~19_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|DATA_OUT\(1));

-- Location: LCCOMB_X61_Y38_N12
\multiplex_bar|main_bus[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[1]~16_combout\ = (\acc|DATA_OUT\(1) & (\ir|DATA_OUT\(4) & (\ir|DATA_OUT\(5) & \cu|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|DATA_OUT\(1),
	datab => \ir|DATA_OUT\(4),
	datac => \ir|DATA_OUT\(5),
	datad => \cu|Mux8~0_combout\,
	combout => \multiplex_bar|main_bus[1]~16_combout\);

-- Location: LCCOMB_X62_Y38_N10
\multiplex_bar|main_bus[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[0]~9_combout\ = (\ir|DATA_OUT\(5) & (\cu|Mux8~0_combout\ & (\ir|DATA_OUT\(4) & \acc|DATA_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(5),
	datab => \cu|Mux8~0_combout\,
	datac => \ir|DATA_OUT\(4),
	datad => \acc|DATA_OUT\(0),
	combout => \multiplex_bar|main_bus[0]~9_combout\);

-- Location: FF_X62_Y38_N17
\ir|DATA_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[0]~14_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|DATA_OUT\(0));

-- Location: LCCOMB_X62_Y38_N16
\multiplex_bar|main_bus[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[0]~8_combout\ = (\cu|Mux5~1_combout\ & (\ir|DATA_OUT\(0) & !\cu|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux5~1_combout\,
	datac => \ir|DATA_OUT\(0),
	datad => \cu|Mux8~1_combout\,
	combout => \multiplex_bar|main_bus[0]~8_combout\);

-- Location: FF_X62_Y38_N1
\reg_b|DATA_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[0]~14_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_b|DATA_OUT\(0));

-- Location: LCCOMB_X59_Y38_N16
\ula|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~0_combout\ = (\acc|DATA_OUT\(0) & (\reg_b|DATA_OUT\(0) $ (VCC))) # (!\acc|DATA_OUT\(0) & (\reg_b|DATA_OUT\(0) & VCC))
-- \ula|Add0~1\ = CARRY((\acc|DATA_OUT\(0) & \reg_b|DATA_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|DATA_OUT\(0),
	datab => \reg_b|DATA_OUT\(0),
	datad => VCC,
	combout => \ula|Add0~0_combout\,
	cout => \ula|Add0~1\);

-- Location: LCCOMB_X59_Y38_N0
\ula|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add1~0_combout\ = (\acc|DATA_OUT\(0) & ((GND) # (!\reg_b|DATA_OUT\(0)))) # (!\acc|DATA_OUT\(0) & (\reg_b|DATA_OUT\(0) $ (GND)))
-- \ula|Add1~1\ = CARRY((\acc|DATA_OUT\(0)) # (!\reg_b|DATA_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|DATA_OUT\(0),
	datab => \reg_b|DATA_OUT\(0),
	datad => VCC,
	combout => \ula|Add1~0_combout\,
	cout => \ula|Add1~1\);

-- Location: LCCOMB_X64_Y38_N2
\PC|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|cnt~2_combout\ = (!\PC|cnt\(0) & ((\cu|cnt\(1)) # ((!\cu|cnt\(2)) # (!\cu|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|cnt\(1),
	datab => \cu|cnt\(0),
	datac => \PC|cnt\(0),
	datad => \cu|cnt\(2),
	combout => \PC|cnt~2_combout\);

-- Location: LCCOMB_X64_Y38_N22
\cu|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Equal0~1_combout\ = (!\cu|cnt\(1) & \cu|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cu|cnt\(1),
	datad => \cu|cnt\(0),
	combout => \cu|Equal0~1_combout\);

-- Location: FF_X64_Y38_N3
\PC|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CK~inputclkctrl_outclk\,
	d => \PC|cnt~2_combout\,
	ena => \cu|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|cnt\(0));

-- Location: LCCOMB_X62_Y38_N2
\cu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux3~0_combout\ = (\cu|cnt\(1) & ((\ir|DATA_OUT\(6)) # ((!\ir|DATA_OUT\(5) & !\ir|DATA_OUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(5),
	datab => \ir|DATA_OUT\(6),
	datac => \ir|DATA_OUT\(4),
	datad => \cu|cnt\(1),
	combout => \cu|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y38_N20
\cu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux2~0_combout\ = (!\cu|Mux3~0_combout\ & (!\cu|cnt\(0) & !\cu|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux3~0_combout\,
	datac => \cu|cnt\(0),
	datad => \cu|cnt\(2),
	combout => \cu|Mux2~0_combout\);

-- Location: FF_X63_Y38_N1
\mar|DATA_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \multiplex_bar|main_bus[0]~14_combout\,
	clrn => \cu|ALT_INV_Equal0~0_combout\,
	ena => \cu|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar|DATA_OUT\(0));

-- Location: FF_X63_Y38_N5
\mar|DATA_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[3]~29_combout\,
	clrn => \cu|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	ena => \cu|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar|DATA_OUT\(3));

-- Location: FF_X63_Y38_N7
\mar|DATA_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[2]~24_combout\,
	clrn => \cu|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	ena => \cu|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar|DATA_OUT\(2));

-- Location: FF_X63_Y38_N15
\mar|DATA_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[1]~19_combout\,
	clrn => \cu|ALT_INV_Equal0~0_combout\,
	sload => VCC,
	ena => \cu|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar|DATA_OUT\(1));

-- Location: LCCOMB_X64_Y38_N24
\memory|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory|Mux6~0_combout\ = (!\mar|DATA_OUT\(0) & ((\mar|DATA_OUT\(3)) # ((!\mar|DATA_OUT\(2) & \mar|DATA_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|DATA_OUT\(0),
	datab => \mar|DATA_OUT\(3),
	datac => \mar|DATA_OUT\(2),
	datad => \mar|DATA_OUT\(1),
	combout => \memory|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y38_N14
\multiplex_bar|main_bus[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[3]~10_combout\ = (!\cu|cnt\(1) & (!\cu|cnt\(0) & !\cu|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|cnt\(1),
	datab => \cu|cnt\(0),
	datad => \cu|cnt\(2),
	combout => \multiplex_bar|main_bus[3]~10_combout\);

-- Location: LCCOMB_X63_Y38_N30
\cu|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux10~0_combout\ = (\ir|DATA_OUT\(4) & ((\cu|cnt\(0) & (\cu|cnt\(1) & !\cu|cnt\(2))) # (!\cu|cnt\(0) & (!\cu|cnt\(1) & \cu|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(4),
	datab => \cu|cnt\(0),
	datac => \cu|cnt\(1),
	datad => \cu|cnt\(2),
	combout => \cu|Mux10~0_combout\);

-- Location: LCCOMB_X63_Y38_N28
\cu|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux10~1_combout\ = (\ir|DATA_OUT\(6)) # ((!\ir|DATA_OUT\(5)) # (!\cu|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(6),
	datac => \cu|Mux10~0_combout\,
	datad => \ir|DATA_OUT\(5),
	combout => \cu|Mux10~1_combout\);

-- Location: LCCOMB_X63_Y38_N22
\multiplex_bar|main_bus[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[3]~48_combout\ = (\multiplex_bar|main_bus[3]~10_combout\) # ((!\ir|DATA_OUT\(6) & (\cu|Mux11~0_combout\ & \cu|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(6),
	datab => \cu|Mux11~0_combout\,
	datac => \multiplex_bar|main_bus[3]~10_combout\,
	datad => \cu|Mux10~1_combout\,
	combout => \multiplex_bar|main_bus[3]~48_combout\);

-- Location: LCCOMB_X62_Y38_N28
\multiplex_bar|main_bus[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[3]~11_combout\ = (\cu|cnt\(0) & (!\cu|cnt\(2) & !\cu|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|cnt\(0),
	datac => \cu|cnt\(2),
	datad => \cu|Mux3~0_combout\,
	combout => \multiplex_bar|main_bus[3]~11_combout\);

-- Location: LCCOMB_X63_Y38_N16
\multiplex_bar|main_bus[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[3]~47_combout\ = (\ir|DATA_OUT\(6) & (((\multiplex_bar|main_bus[3]~10_combout\) # (\multiplex_bar|main_bus[3]~11_combout\)))) # (!\ir|DATA_OUT\(6) & (!\cu|Mux11~0_combout\ & ((\multiplex_bar|main_bus[3]~10_combout\) # 
-- (\multiplex_bar|main_bus[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(6),
	datab => \cu|Mux11~0_combout\,
	datac => \multiplex_bar|main_bus[3]~10_combout\,
	datad => \multiplex_bar|main_bus[3]~11_combout\,
	combout => \multiplex_bar|main_bus[3]~47_combout\);

-- Location: LCCOMB_X63_Y38_N2
\multiplex_bar|main_bus[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[0]~12_combout\ = (\multiplex_bar|main_bus[3]~48_combout\ & ((\PC|cnt\(0)) # ((!\multiplex_bar|main_bus[3]~47_combout\)))) # (!\multiplex_bar|main_bus[3]~48_combout\ & (((\memory|Mux6~0_combout\ & 
-- \multiplex_bar|main_bus[3]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|cnt\(0),
	datab => \memory|Mux6~0_combout\,
	datac => \multiplex_bar|main_bus[3]~48_combout\,
	datad => \multiplex_bar|main_bus[3]~47_combout\,
	combout => \multiplex_bar|main_bus[0]~12_combout\);

-- Location: LCCOMB_X63_Y38_N24
\multiplex_bar|main_bus[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[0]~13_combout\ = (\cu|Mux11~1_combout\ & ((\multiplex_bar|main_bus[0]~12_combout\ & (\ula|Add0~0_combout\)) # (!\multiplex_bar|main_bus[0]~12_combout\ & ((\ula|Add1~0_combout\))))) # (!\cu|Mux11~1_combout\ & 
-- (((\multiplex_bar|main_bus[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux11~1_combout\,
	datab => \ula|Add0~0_combout\,
	datac => \ula|Add1~0_combout\,
	datad => \multiplex_bar|main_bus[0]~12_combout\,
	combout => \multiplex_bar|main_bus[0]~13_combout\);

-- Location: LCCOMB_X63_Y38_N0
\multiplex_bar|main_bus[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[0]~14_combout\ = (\multiplex_bar|main_bus[0]~9_combout\) # ((\multiplex_bar|main_bus[0]~8_combout\) # ((\multiplex_bar|main_bus[0]~49_combout\ & \multiplex_bar|main_bus[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplex_bar|main_bus[0]~9_combout\,
	datab => \multiplex_bar|main_bus[0]~49_combout\,
	datac => \multiplex_bar|main_bus[0]~8_combout\,
	datad => \multiplex_bar|main_bus[0]~13_combout\,
	combout => \multiplex_bar|main_bus[0]~14_combout\);

-- Location: FF_X59_Y38_N17
\acc|DATA_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[0]~14_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|DATA_OUT\(0));

-- Location: LCCOMB_X59_Y38_N18
\ula|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~2_combout\ = (\reg_b|DATA_OUT\(1) & ((\acc|DATA_OUT\(1) & (\ula|Add0~1\ & VCC)) # (!\acc|DATA_OUT\(1) & (!\ula|Add0~1\)))) # (!\reg_b|DATA_OUT\(1) & ((\acc|DATA_OUT\(1) & (!\ula|Add0~1\)) # (!\acc|DATA_OUT\(1) & ((\ula|Add0~1\) # (GND)))))
-- \ula|Add0~3\ = CARRY((\reg_b|DATA_OUT\(1) & (!\acc|DATA_OUT\(1) & !\ula|Add0~1\)) # (!\reg_b|DATA_OUT\(1) & ((!\ula|Add0~1\) # (!\acc|DATA_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b|DATA_OUT\(1),
	datab => \acc|DATA_OUT\(1),
	datad => VCC,
	cin => \ula|Add0~1\,
	combout => \ula|Add0~2_combout\,
	cout => \ula|Add0~3\);

-- Location: LCCOMB_X59_Y38_N2
\ula|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add1~2_combout\ = (\reg_b|DATA_OUT\(1) & ((\acc|DATA_OUT\(1) & (!\ula|Add1~1\)) # (!\acc|DATA_OUT\(1) & ((\ula|Add1~1\) # (GND))))) # (!\reg_b|DATA_OUT\(1) & ((\acc|DATA_OUT\(1) & (\ula|Add1~1\ & VCC)) # (!\acc|DATA_OUT\(1) & (!\ula|Add1~1\))))
-- \ula|Add1~3\ = CARRY((\reg_b|DATA_OUT\(1) & ((!\ula|Add1~1\) # (!\acc|DATA_OUT\(1)))) # (!\reg_b|DATA_OUT\(1) & (!\acc|DATA_OUT\(1) & !\ula|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b|DATA_OUT\(1),
	datab => \acc|DATA_OUT\(1),
	datad => VCC,
	cin => \ula|Add1~1\,
	combout => \ula|Add1~2_combout\,
	cout => \ula|Add1~3\);

-- Location: LCCOMB_X64_Y38_N10
\PC|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|cnt~3_combout\ = (!\cu|Equal0~0_combout\ & (\PC|cnt\(0) $ (\PC|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|cnt\(0),
	datac => \PC|cnt\(1),
	datad => \cu|Equal0~0_combout\,
	combout => \PC|cnt~3_combout\);

-- Location: FF_X64_Y38_N11
\PC|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CK~inputclkctrl_outclk\,
	d => \PC|cnt~3_combout\,
	ena => \cu|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|cnt\(1));

-- Location: LCCOMB_X64_Y38_N28
\memory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory|Mux5~0_combout\ = (\mar|DATA_OUT\(3) & (\mar|DATA_OUT\(0) $ (((\mar|DATA_OUT\(1)))))) # (!\mar|DATA_OUT\(3) & (!\mar|DATA_OUT\(0) & (\mar|DATA_OUT\(2) & !\mar|DATA_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|DATA_OUT\(0),
	datab => \mar|DATA_OUT\(2),
	datac => \mar|DATA_OUT\(3),
	datad => \mar|DATA_OUT\(1),
	combout => \memory|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y38_N18
\multiplex_bar|main_bus[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[1]~17_combout\ = (\multiplex_bar|main_bus[3]~48_combout\ & ((\PC|cnt\(1)) # ((!\multiplex_bar|main_bus[3]~47_combout\)))) # (!\multiplex_bar|main_bus[3]~48_combout\ & (((\memory|Mux5~0_combout\ & 
-- \multiplex_bar|main_bus[3]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|cnt\(1),
	datab => \memory|Mux5~0_combout\,
	datac => \multiplex_bar|main_bus[3]~48_combout\,
	datad => \multiplex_bar|main_bus[3]~47_combout\,
	combout => \multiplex_bar|main_bus[1]~17_combout\);

-- Location: LCCOMB_X63_Y38_N8
\multiplex_bar|main_bus[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[1]~18_combout\ = (\cu|Mux11~1_combout\ & ((\multiplex_bar|main_bus[1]~17_combout\ & (\ula|Add0~2_combout\)) # (!\multiplex_bar|main_bus[1]~17_combout\ & ((\ula|Add1~2_combout\))))) # (!\cu|Mux11~1_combout\ & 
-- (((\multiplex_bar|main_bus[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux11~1_combout\,
	datab => \ula|Add0~2_combout\,
	datac => \ula|Add1~2_combout\,
	datad => \multiplex_bar|main_bus[1]~17_combout\,
	combout => \multiplex_bar|main_bus[1]~18_combout\);

-- Location: LCCOMB_X60_Y38_N6
\multiplex_bar|main_bus[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[1]~19_combout\ = (\multiplex_bar|main_bus[1]~15_combout\) # ((\multiplex_bar|main_bus[1]~16_combout\) # ((\multiplex_bar|main_bus[0]~49_combout\ & \multiplex_bar|main_bus[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplex_bar|main_bus[1]~15_combout\,
	datab => \multiplex_bar|main_bus[1]~16_combout\,
	datac => \multiplex_bar|main_bus[0]~49_combout\,
	datad => \multiplex_bar|main_bus[1]~18_combout\,
	combout => \multiplex_bar|main_bus[1]~19_combout\);

-- Location: FF_X60_Y38_N7
\reg_b|DATA_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \multiplex_bar|main_bus[1]~19_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_b|DATA_OUT\(1));

-- Location: LCCOMB_X59_Y38_N20
\ula|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~4_combout\ = ((\reg_b|DATA_OUT\(2) $ (\acc|DATA_OUT\(2) $ (!\ula|Add0~3\)))) # (GND)
-- \ula|Add0~5\ = CARRY((\reg_b|DATA_OUT\(2) & ((\acc|DATA_OUT\(2)) # (!\ula|Add0~3\))) # (!\reg_b|DATA_OUT\(2) & (\acc|DATA_OUT\(2) & !\ula|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b|DATA_OUT\(2),
	datab => \acc|DATA_OUT\(2),
	datad => VCC,
	cin => \ula|Add0~3\,
	combout => \ula|Add0~4_combout\,
	cout => \ula|Add0~5\);

-- Location: LCCOMB_X59_Y38_N4
\ula|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add1~4_combout\ = ((\reg_b|DATA_OUT\(2) $ (\acc|DATA_OUT\(2) $ (\ula|Add1~3\)))) # (GND)
-- \ula|Add1~5\ = CARRY((\reg_b|DATA_OUT\(2) & (\acc|DATA_OUT\(2) & !\ula|Add1~3\)) # (!\reg_b|DATA_OUT\(2) & ((\acc|DATA_OUT\(2)) # (!\ula|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b|DATA_OUT\(2),
	datab => \acc|DATA_OUT\(2),
	datad => VCC,
	cin => \ula|Add1~3\,
	combout => \ula|Add1~4_combout\,
	cout => \ula|Add1~5\);

-- Location: LCCOMB_X64_Y38_N16
\memory|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory|Mux4~0_combout\ = (\mar|DATA_OUT\(3) & (\mar|DATA_OUT\(2) $ (((\mar|DATA_OUT\(0) & \mar|DATA_OUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|DATA_OUT\(0),
	datab => \mar|DATA_OUT\(2),
	datac => \mar|DATA_OUT\(3),
	datad => \mar|DATA_OUT\(1),
	combout => \memory|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y38_N18
\PC|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|cnt~5_combout\ = (!\cu|Equal0~0_combout\ & (\PC|cnt\(2) $ (((\PC|cnt\(1) & \PC|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|cnt\(1),
	datab => \PC|cnt\(0),
	datac => \PC|cnt\(2),
	datad => \cu|Equal0~0_combout\,
	combout => \PC|cnt~5_combout\);

-- Location: FF_X64_Y38_N19
\PC|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CK~inputclkctrl_outclk\,
	d => \PC|cnt~5_combout\,
	ena => \cu|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|cnt\(2));

-- Location: LCCOMB_X60_Y38_N2
\multiplex_bar|main_bus[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[2]~22_combout\ = (\multiplex_bar|main_bus[3]~48_combout\ & (((\PC|cnt\(2)) # (!\multiplex_bar|main_bus[3]~47_combout\)))) # (!\multiplex_bar|main_bus[3]~48_combout\ & (\memory|Mux4~0_combout\ & 
-- ((\multiplex_bar|main_bus[3]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Mux4~0_combout\,
	datab => \PC|cnt\(2),
	datac => \multiplex_bar|main_bus[3]~48_combout\,
	datad => \multiplex_bar|main_bus[3]~47_combout\,
	combout => \multiplex_bar|main_bus[2]~22_combout\);

-- Location: LCCOMB_X60_Y38_N28
\multiplex_bar|main_bus[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[2]~23_combout\ = (\cu|Mux11~1_combout\ & ((\multiplex_bar|main_bus[2]~22_combout\ & (\ula|Add0~4_combout\)) # (!\multiplex_bar|main_bus[2]~22_combout\ & ((\ula|Add1~4_combout\))))) # (!\cu|Mux11~1_combout\ & 
-- (((\multiplex_bar|main_bus[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux11~1_combout\,
	datab => \ula|Add0~4_combout\,
	datac => \ula|Add1~4_combout\,
	datad => \multiplex_bar|main_bus[2]~22_combout\,
	combout => \multiplex_bar|main_bus[2]~23_combout\);

-- Location: LCCOMB_X60_Y38_N8
\multiplex_bar|main_bus[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[2]~24_combout\ = (\multiplex_bar|main_bus[2]~21_combout\) # ((\multiplex_bar|main_bus[2]~20_combout\) # ((\multiplex_bar|main_bus[0]~49_combout\ & \multiplex_bar|main_bus[2]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplex_bar|main_bus[0]~49_combout\,
	datab => \multiplex_bar|main_bus[2]~21_combout\,
	datac => \multiplex_bar|main_bus[2]~20_combout\,
	datad => \multiplex_bar|main_bus[2]~23_combout\,
	combout => \multiplex_bar|main_bus[2]~24_combout\);

-- Location: FF_X60_Y38_N9
\reg_b|DATA_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \multiplex_bar|main_bus[2]~24_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_b|DATA_OUT\(2));

-- Location: LCCOMB_X59_Y38_N22
\ula|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~6_combout\ = (\acc|DATA_OUT\(3) & ((\reg_b|DATA_OUT\(3) & (\ula|Add0~5\ & VCC)) # (!\reg_b|DATA_OUT\(3) & (!\ula|Add0~5\)))) # (!\acc|DATA_OUT\(3) & ((\reg_b|DATA_OUT\(3) & (!\ula|Add0~5\)) # (!\reg_b|DATA_OUT\(3) & ((\ula|Add0~5\) # (GND)))))
-- \ula|Add0~7\ = CARRY((\acc|DATA_OUT\(3) & (!\reg_b|DATA_OUT\(3) & !\ula|Add0~5\)) # (!\acc|DATA_OUT\(3) & ((!\ula|Add0~5\) # (!\reg_b|DATA_OUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc|DATA_OUT\(3),
	datab => \reg_b|DATA_OUT\(3),
	datad => VCC,
	cin => \ula|Add0~5\,
	combout => \ula|Add0~6_combout\,
	cout => \ula|Add0~7\);

-- Location: LCCOMB_X59_Y38_N24
\ula|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~8_combout\ = ((\reg_b|DATA_OUT\(4) $ (\acc|DATA_OUT\(4) $ (!\ula|Add0~7\)))) # (GND)
-- \ula|Add0~9\ = CARRY((\reg_b|DATA_OUT\(4) & ((\acc|DATA_OUT\(4)) # (!\ula|Add0~7\))) # (!\reg_b|DATA_OUT\(4) & (\acc|DATA_OUT\(4) & !\ula|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b|DATA_OUT\(4),
	datab => \acc|DATA_OUT\(4),
	datad => VCC,
	cin => \ula|Add0~7\,
	combout => \ula|Add0~8_combout\,
	cout => \ula|Add0~9\);

-- Location: LCCOMB_X59_Y38_N26
\ula|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~10_combout\ = (\reg_b|DATA_OUT\(5) & ((\acc|DATA_OUT\(5) & (\ula|Add0~9\ & VCC)) # (!\acc|DATA_OUT\(5) & (!\ula|Add0~9\)))) # (!\reg_b|DATA_OUT\(5) & ((\acc|DATA_OUT\(5) & (!\ula|Add0~9\)) # (!\acc|DATA_OUT\(5) & ((\ula|Add0~9\) # (GND)))))
-- \ula|Add0~11\ = CARRY((\reg_b|DATA_OUT\(5) & (!\acc|DATA_OUT\(5) & !\ula|Add0~9\)) # (!\reg_b|DATA_OUT\(5) & ((!\ula|Add0~9\) # (!\acc|DATA_OUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b|DATA_OUT\(5),
	datab => \acc|DATA_OUT\(5),
	datad => VCC,
	cin => \ula|Add0~9\,
	combout => \ula|Add0~10_combout\,
	cout => \ula|Add0~11\);

-- Location: LCCOMB_X59_Y38_N6
\ula|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add1~6_combout\ = (\acc|DATA_OUT\(3) & ((\reg_b|DATA_OUT\(3) & (!\ula|Add1~5\)) # (!\reg_b|DATA_OUT\(3) & (\ula|Add1~5\ & VCC)))) # (!\acc|DATA_OUT\(3) & ((\reg_b|DATA_OUT\(3) & ((\ula|Add1~5\) # (GND))) # (!\reg_b|DATA_OUT\(3) & (!\ula|Add1~5\))))
-- \ula|Add1~7\ = CARRY((\acc|DATA_OUT\(3) & (\reg_b|DATA_OUT\(3) & !\ula|Add1~5\)) # (!\acc|DATA_OUT\(3) & ((\reg_b|DATA_OUT\(3)) # (!\ula|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc|DATA_OUT\(3),
	datab => \reg_b|DATA_OUT\(3),
	datad => VCC,
	cin => \ula|Add1~5\,
	combout => \ula|Add1~6_combout\,
	cout => \ula|Add1~7\);

-- Location: LCCOMB_X59_Y38_N8
\ula|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add1~8_combout\ = ((\reg_b|DATA_OUT\(4) $ (\acc|DATA_OUT\(4) $ (\ula|Add1~7\)))) # (GND)
-- \ula|Add1~9\ = CARRY((\reg_b|DATA_OUT\(4) & (\acc|DATA_OUT\(4) & !\ula|Add1~7\)) # (!\reg_b|DATA_OUT\(4) & ((\acc|DATA_OUT\(4)) # (!\ula|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b|DATA_OUT\(4),
	datab => \acc|DATA_OUT\(4),
	datad => VCC,
	cin => \ula|Add1~7\,
	combout => \ula|Add1~8_combout\,
	cout => \ula|Add1~9\);

-- Location: LCCOMB_X59_Y38_N10
\ula|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add1~10_combout\ = (\reg_b|DATA_OUT\(5) & ((\acc|DATA_OUT\(5) & (!\ula|Add1~9\)) # (!\acc|DATA_OUT\(5) & ((\ula|Add1~9\) # (GND))))) # (!\reg_b|DATA_OUT\(5) & ((\acc|DATA_OUT\(5) & (\ula|Add1~9\ & VCC)) # (!\acc|DATA_OUT\(5) & (!\ula|Add1~9\))))
-- \ula|Add1~11\ = CARRY((\reg_b|DATA_OUT\(5) & ((!\ula|Add1~9\) # (!\acc|DATA_OUT\(5)))) # (!\reg_b|DATA_OUT\(5) & (!\acc|DATA_OUT\(5) & !\ula|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_b|DATA_OUT\(5),
	datab => \acc|DATA_OUT\(5),
	datad => VCC,
	cin => \ula|Add1~9\,
	combout => \ula|Add1~10_combout\,
	cout => \ula|Add1~11\);

-- Location: LCCOMB_X62_Y38_N6
\cu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux5~0_combout\ = (!\cu|cnt\(0) & (\cu|cnt\(1) & ((\ir|DATA_OUT\(5)) # (\ir|DATA_OUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(5),
	datab => \ir|DATA_OUT\(4),
	datac => \cu|cnt\(0),
	datad => \cu|cnt\(1),
	combout => \cu|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y38_N8
\multiplex_bar|main_bus[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[6]~30_combout\ = (!\ir|DATA_OUT\(6) & (\cu|Mux11~0_combout\ & ((\cu|cnt\(2)) # (!\cu|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux5~0_combout\,
	datab => \cu|cnt\(2),
	datac => \ir|DATA_OUT\(6),
	datad => \cu|Mux11~0_combout\,
	combout => \multiplex_bar|main_bus[6]~30_combout\);

-- Location: LCCOMB_X64_Y38_N26
\multiplex_bar|main_bus[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[5]~36_combout\ = (!\mar|DATA_OUT\(3) & ((\mar|DATA_OUT\(0)) # ((\mar|DATA_OUT\(2)) # (\mar|DATA_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|DATA_OUT\(0),
	datab => \mar|DATA_OUT\(3),
	datac => \mar|DATA_OUT\(2),
	datad => \mar|DATA_OUT\(1),
	combout => \multiplex_bar|main_bus[5]~36_combout\);

-- Location: LCCOMB_X61_Y38_N24
\multiplex_bar|main_bus[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[5]~37_combout\ = (\cu|Mux5~1_combout\ & (\ir|DATA_OUT\(5))) # (!\cu|Mux5~1_combout\ & (((\multiplex_bar|main_bus[5]~36_combout\ & \multiplex_bar|main_bus[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(5),
	datab => \multiplex_bar|main_bus[5]~36_combout\,
	datac => \cu|Mux5~1_combout\,
	datad => \multiplex_bar|main_bus[3]~11_combout\,
	combout => \multiplex_bar|main_bus[5]~37_combout\);

-- Location: LCCOMB_X61_Y38_N6
\multiplex_bar|main_bus[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[5]~38_combout\ = (\multiplex_bar|main_bus[6]~30_combout\ & ((\cu|Mux5~1_combout\) # ((\cu|Mux10~1_combout\)))) # (!\multiplex_bar|main_bus[6]~30_combout\ & (((\multiplex_bar|main_bus[5]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux5~1_combout\,
	datab => \cu|Mux10~1_combout\,
	datac => \multiplex_bar|main_bus[6]~30_combout\,
	datad => \multiplex_bar|main_bus[5]~37_combout\,
	combout => \multiplex_bar|main_bus[5]~38_combout\);

-- Location: LCCOMB_X61_Y38_N16
\multiplex_bar|main_bus[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[5]~39_combout\ = (\multiplex_bar|main_bus[6]~30_combout\ & ((\multiplex_bar|main_bus[5]~38_combout\ & (\ula|Add0~10_combout\)) # (!\multiplex_bar|main_bus[5]~38_combout\ & ((\ula|Add1~10_combout\))))) # 
-- (!\multiplex_bar|main_bus[6]~30_combout\ & (((\multiplex_bar|main_bus[5]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~10_combout\,
	datab => \ula|Add1~10_combout\,
	datac => \multiplex_bar|main_bus[6]~30_combout\,
	datad => \multiplex_bar|main_bus[5]~38_combout\,
	combout => \multiplex_bar|main_bus[5]~39_combout\);

-- Location: LCCOMB_X61_Y38_N18
\multiplex_bar|main_bus[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[5]~40_combout\ = (\cu|Mux8~1_combout\ & (\acc|DATA_OUT\(5))) # (!\cu|Mux8~1_combout\ & ((\multiplex_bar|main_bus[5]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux8~1_combout\,
	datac => \acc|DATA_OUT\(5),
	datad => \multiplex_bar|main_bus[5]~39_combout\,
	combout => \multiplex_bar|main_bus[5]~40_combout\);

-- Location: FF_X61_Y38_N9
\ir|DATA_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[5]~40_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|DATA_OUT\(5));

-- Location: LCCOMB_X63_Y38_N12
\cu|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux9~0_combout\ = (\cu|cnt\(1) & (\cu|cnt\(0) & (!\cu|cnt\(2) & !\ir|DATA_OUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|cnt\(1),
	datab => \cu|cnt\(0),
	datac => \cu|cnt\(2),
	datad => \ir|DATA_OUT\(5),
	combout => \cu|Mux9~0_combout\);

-- Location: LCCOMB_X63_Y38_N10
\cu|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux9~1_combout\ = (!\ir|DATA_OUT\(6) & ((\cu|Mux11~0_combout\) # ((\cu|Mux9~0_combout\ & \ir|DATA_OUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux9~0_combout\,
	datab => \cu|Mux11~0_combout\,
	datac => \ir|DATA_OUT\(4),
	datad => \ir|DATA_OUT\(6),
	combout => \cu|Mux9~1_combout\);

-- Location: FF_X66_Y38_N25
\acc|DATA_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \acc|DATA_OUT[4]~feeder_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|DATA_OUT\(4));

-- Location: LCCOMB_X64_Y38_N8
\memory|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory|Mux2~0_combout\ = (\mar|DATA_OUT\(3)) # ((!\mar|DATA_OUT\(0) & (\mar|DATA_OUT\(2) $ (\mar|DATA_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|DATA_OUT\(0),
	datab => \mar|DATA_OUT\(2),
	datac => \mar|DATA_OUT\(3),
	datad => \mar|DATA_OUT\(1),
	combout => \memory|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y38_N14
\multiplex_bar|main_bus[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[6]~32_combout\ = (\cu|Mux5~1_combout\) # ((\cu|Mux10~1_combout\ & \multiplex_bar|main_bus[6]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu|Mux10~1_combout\,
	datac => \multiplex_bar|main_bus[6]~30_combout\,
	datad => \cu|Mux5~1_combout\,
	combout => \multiplex_bar|main_bus[6]~32_combout\);

-- Location: LCCOMB_X62_Y38_N0
\multiplex_bar|main_bus[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[6]~31_combout\ = (!\multiplex_bar|main_bus[6]~30_combout\ & ((\cu|Mux5~1_combout\) # (\multiplex_bar|main_bus[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux5~1_combout\,
	datab => \multiplex_bar|main_bus[3]~11_combout\,
	datad => \multiplex_bar|main_bus[6]~30_combout\,
	combout => \multiplex_bar|main_bus[6]~31_combout\);

-- Location: LCCOMB_X62_Y38_N20
\multiplex_bar|main_bus[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[4]~33_combout\ = (\multiplex_bar|main_bus[6]~32_combout\ & (((\ir|DATA_OUT\(4)) # (!\multiplex_bar|main_bus[6]~31_combout\)))) # (!\multiplex_bar|main_bus[6]~32_combout\ & (!\memory|Mux2~0_combout\ & 
-- ((\multiplex_bar|main_bus[6]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Mux2~0_combout\,
	datab => \ir|DATA_OUT\(4),
	datac => \multiplex_bar|main_bus[6]~32_combout\,
	datad => \multiplex_bar|main_bus[6]~31_combout\,
	combout => \multiplex_bar|main_bus[4]~33_combout\);

-- Location: LCCOMB_X65_Y38_N28
\multiplex_bar|main_bus[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[4]~34_combout\ = (\multiplex_bar|main_bus[6]~30_combout\ & ((\multiplex_bar|main_bus[4]~33_combout\ & ((\ula|Add0~8_combout\))) # (!\multiplex_bar|main_bus[4]~33_combout\ & (\ula|Add1~8_combout\)))) # 
-- (!\multiplex_bar|main_bus[6]~30_combout\ & (((\multiplex_bar|main_bus[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add1~8_combout\,
	datab => \ula|Add0~8_combout\,
	datac => \multiplex_bar|main_bus[6]~30_combout\,
	datad => \multiplex_bar|main_bus[4]~33_combout\,
	combout => \multiplex_bar|main_bus[4]~34_combout\);

-- Location: LCCOMB_X65_Y38_N12
\multiplex_bar|main_bus[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[4]~35_combout\ = (\cu|Mux8~1_combout\ & (\acc|DATA_OUT\(4))) # (!\cu|Mux8~1_combout\ & ((\multiplex_bar|main_bus[4]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|DATA_OUT\(4),
	datac => \cu|Mux8~1_combout\,
	datad => \multiplex_bar|main_bus[4]~34_combout\,
	combout => \multiplex_bar|main_bus[4]~35_combout\);

-- Location: FF_X65_Y38_N13
\ir|DATA_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \multiplex_bar|main_bus[4]~35_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|DATA_OUT\(4));

-- Location: LCCOMB_X61_Y38_N8
\cu|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux8~1_combout\ = (\ir|DATA_OUT\(4) & (\ir|DATA_OUT\(5) & \cu|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(4),
	datac => \ir|DATA_OUT\(5),
	datad => \cu|Mux8~0_combout\,
	combout => \cu|Mux8~1_combout\);

-- Location: FF_X59_Y38_N13
\acc|DATA_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[6]~43_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|DATA_OUT\(6));

-- Location: FF_X62_Y38_N27
\reg_b|DATA_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \multiplex_bar|main_bus[6]~43_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_b|DATA_OUT\(6));

-- Location: LCCOMB_X59_Y38_N12
\ula|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add1~12_combout\ = ((\acc|DATA_OUT\(6) $ (\reg_b|DATA_OUT\(6) $ (\ula|Add1~11\)))) # (GND)
-- \ula|Add1~13\ = CARRY((\acc|DATA_OUT\(6) & ((!\ula|Add1~11\) # (!\reg_b|DATA_OUT\(6)))) # (!\acc|DATA_OUT\(6) & (!\reg_b|DATA_OUT\(6) & !\ula|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc|DATA_OUT\(6),
	datab => \reg_b|DATA_OUT\(6),
	datad => VCC,
	cin => \ula|Add1~11\,
	combout => \ula|Add1~12_combout\,
	cout => \ula|Add1~13\);

-- Location: LCCOMB_X59_Y38_N28
\ula|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~12_combout\ = ((\acc|DATA_OUT\(6) $ (\reg_b|DATA_OUT\(6) $ (!\ula|Add0~11\)))) # (GND)
-- \ula|Add0~13\ = CARRY((\acc|DATA_OUT\(6) & ((\reg_b|DATA_OUT\(6)) # (!\ula|Add0~11\))) # (!\acc|DATA_OUT\(6) & (\reg_b|DATA_OUT\(6) & !\ula|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc|DATA_OUT\(6),
	datab => \reg_b|DATA_OUT\(6),
	datad => VCC,
	cin => \ula|Add0~11\,
	combout => \ula|Add0~12_combout\,
	cout => \ula|Add0~13\);

-- Location: LCCOMB_X64_Y38_N14
\memory|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory|Mux0~0_combout\ = (\mar|DATA_OUT\(0) & !\mar|DATA_OUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|DATA_OUT\(0),
	datab => \mar|DATA_OUT\(3),
	combout => \memory|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y38_N12
\multiplex_bar|main_bus[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[6]~41_combout\ = (\multiplex_bar|main_bus[6]~32_combout\ & (((\ir|DATA_OUT\(6)) # (!\multiplex_bar|main_bus[6]~31_combout\)))) # (!\multiplex_bar|main_bus[6]~32_combout\ & (\memory|Mux0~0_combout\ & 
-- ((\multiplex_bar|main_bus[6]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Mux0~0_combout\,
	datab => \ir|DATA_OUT\(6),
	datac => \multiplex_bar|main_bus[6]~32_combout\,
	datad => \multiplex_bar|main_bus[6]~31_combout\,
	combout => \multiplex_bar|main_bus[6]~41_combout\);

-- Location: LCCOMB_X62_Y38_N18
\multiplex_bar|main_bus[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[6]~42_combout\ = (\multiplex_bar|main_bus[6]~30_combout\ & ((\multiplex_bar|main_bus[6]~41_combout\ & ((\ula|Add0~12_combout\))) # (!\multiplex_bar|main_bus[6]~41_combout\ & (\ula|Add1~12_combout\)))) # 
-- (!\multiplex_bar|main_bus[6]~30_combout\ & (((\multiplex_bar|main_bus[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplex_bar|main_bus[6]~30_combout\,
	datab => \ula|Add1~12_combout\,
	datac => \ula|Add0~12_combout\,
	datad => \multiplex_bar|main_bus[6]~41_combout\,
	combout => \multiplex_bar|main_bus[6]~42_combout\);

-- Location: LCCOMB_X62_Y38_N26
\multiplex_bar|main_bus[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[6]~43_combout\ = (\cu|Mux8~1_combout\ & (\acc|DATA_OUT\(6))) # (!\cu|Mux8~1_combout\ & ((\multiplex_bar|main_bus[6]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux8~1_combout\,
	datac => \acc|DATA_OUT\(6),
	datad => \multiplex_bar|main_bus[6]~42_combout\,
	combout => \multiplex_bar|main_bus[6]~43_combout\);

-- Location: FF_X62_Y38_N9
\ir|DATA_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[6]~43_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|DATA_OUT\(6));

-- Location: LCCOMB_X62_Y38_N30
\cu|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cu|Mux5~1_combout\ = (!\ir|DATA_OUT\(6) & (!\cu|cnt\(2) & \cu|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|DATA_OUT\(6),
	datac => \cu|cnt\(2),
	datad => \cu|Mux5~0_combout\,
	combout => \cu|Mux5~1_combout\);

-- Location: FF_X61_Y38_N3
\ir|DATA_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[3]~29_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|DATA_OUT\(3));

-- Location: LCCOMB_X61_Y38_N2
\multiplex_bar|main_bus[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[3]~25_combout\ = (\cu|Mux5~1_combout\ & (\ir|DATA_OUT\(3) & !\cu|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux5~1_combout\,
	datac => \ir|DATA_OUT\(3),
	datad => \cu|Mux8~1_combout\,
	combout => \multiplex_bar|main_bus[3]~25_combout\);

-- Location: LCCOMB_X61_Y38_N20
\multiplex_bar|main_bus[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[3]~26_combout\ = (\cu|Mux8~0_combout\ & (\ir|DATA_OUT\(5) & (\acc|DATA_OUT\(3) & \ir|DATA_OUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux8~0_combout\,
	datab => \ir|DATA_OUT\(5),
	datac => \acc|DATA_OUT\(3),
	datad => \ir|DATA_OUT\(4),
	combout => \multiplex_bar|main_bus[3]~26_combout\);

-- Location: LCCOMB_X64_Y38_N4
\memory|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory|Mux3~0_combout\ = (\mar|DATA_OUT\(0) & (((!\mar|DATA_OUT\(1)) # (!\mar|DATA_OUT\(3))) # (!\mar|DATA_OUT\(2)))) # (!\mar|DATA_OUT\(0) & (((\mar|DATA_OUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|DATA_OUT\(0),
	datab => \mar|DATA_OUT\(2),
	datac => \mar|DATA_OUT\(3),
	datad => \mar|DATA_OUT\(1),
	combout => \memory|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y38_N0
\PC|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Add0~0_combout\ = (\PC|cnt\(0) & \PC|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|cnt\(0),
	datad => \PC|cnt\(1),
	combout => \PC|Add0~0_combout\);

-- Location: LCCOMB_X64_Y38_N6
\PC|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|cnt~4_combout\ = (!\cu|Equal0~0_combout\ & (\PC|cnt\(3) $ (((\PC|cnt\(2) & \PC|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|cnt\(2),
	datab => \PC|Add0~0_combout\,
	datac => \PC|cnt\(3),
	datad => \cu|Equal0~0_combout\,
	combout => \PC|cnt~4_combout\);

-- Location: FF_X64_Y38_N7
\PC|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CK~inputclkctrl_outclk\,
	d => \PC|cnt~4_combout\,
	ena => \cu|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|cnt\(3));

-- Location: LCCOMB_X60_Y38_N12
\multiplex_bar|main_bus[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[3]~27_combout\ = (\multiplex_bar|main_bus[3]~48_combout\ & (((\PC|cnt\(3)) # (!\multiplex_bar|main_bus[3]~47_combout\)))) # (!\multiplex_bar|main_bus[3]~48_combout\ & (!\memory|Mux3~0_combout\ & 
-- ((\multiplex_bar|main_bus[3]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Mux3~0_combout\,
	datab => \PC|cnt\(3),
	datac => \multiplex_bar|main_bus[3]~48_combout\,
	datad => \multiplex_bar|main_bus[3]~47_combout\,
	combout => \multiplex_bar|main_bus[3]~27_combout\);

-- Location: LCCOMB_X60_Y38_N10
\multiplex_bar|main_bus[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[3]~28_combout\ = (\cu|Mux11~1_combout\ & ((\multiplex_bar|main_bus[3]~27_combout\ & (\ula|Add0~6_combout\)) # (!\multiplex_bar|main_bus[3]~27_combout\ & ((\ula|Add1~6_combout\))))) # (!\cu|Mux11~1_combout\ & 
-- (((\multiplex_bar|main_bus[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux11~1_combout\,
	datab => \ula|Add0~6_combout\,
	datac => \ula|Add1~6_combout\,
	datad => \multiplex_bar|main_bus[3]~27_combout\,
	combout => \multiplex_bar|main_bus[3]~28_combout\);

-- Location: LCCOMB_X60_Y38_N30
\multiplex_bar|main_bus[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[3]~29_combout\ = (\multiplex_bar|main_bus[3]~25_combout\) # ((\multiplex_bar|main_bus[3]~26_combout\) # ((\multiplex_bar|main_bus[0]~49_combout\ & \multiplex_bar|main_bus[3]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplex_bar|main_bus[3]~25_combout\,
	datab => \multiplex_bar|main_bus[3]~26_combout\,
	datac => \multiplex_bar|main_bus[0]~49_combout\,
	datad => \multiplex_bar|main_bus[3]~28_combout\,
	combout => \multiplex_bar|main_bus[3]~29_combout\);

-- Location: FF_X60_Y38_N1
\out_reg|DATA_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[3]~29_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_reg|DATA_OUT\(3));

-- Location: LCCOMB_X60_Y38_N4
\out_reg|DATA_OUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|DATA_OUT[1]~feeder_combout\ = \multiplex_bar|main_bus[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplex_bar|main_bus[1]~19_combout\,
	combout => \out_reg|DATA_OUT[1]~feeder_combout\);

-- Location: FF_X60_Y38_N5
\out_reg|DATA_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \out_reg|DATA_OUT[1]~feeder_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_reg|DATA_OUT\(1));

-- Location: LCCOMB_X60_Y38_N14
\out_reg|DATA_OUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|DATA_OUT[2]~feeder_combout\ = \multiplex_bar|main_bus[2]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplex_bar|main_bus[2]~24_combout\,
	combout => \out_reg|DATA_OUT[2]~feeder_combout\);

-- Location: FF_X60_Y38_N15
\out_reg|DATA_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \out_reg|DATA_OUT[2]~feeder_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_reg|DATA_OUT\(2));

-- Location: FF_X64_Y38_N13
\out_reg|DATA_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[0]~14_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_reg|DATA_OUT\(0));

-- Location: LCCOMB_X60_Y38_N18
\out_reg|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux13~0_combout\ = (\out_reg|DATA_OUT\(1) & (\out_reg|DATA_OUT\(3))) # (!\out_reg|DATA_OUT\(1) & (\out_reg|DATA_OUT\(2) $ (((!\out_reg|DATA_OUT\(3) & \out_reg|DATA_OUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(3),
	datab => \out_reg|DATA_OUT\(1),
	datac => \out_reg|DATA_OUT\(2),
	datad => \out_reg|DATA_OUT\(0),
	combout => \out_reg|Mux13~0_combout\);

-- Location: LCCOMB_X60_Y38_N24
\out_reg|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux12~0_combout\ = (\out_reg|DATA_OUT\(3) & ((\out_reg|DATA_OUT\(1)) # ((\out_reg|DATA_OUT\(2))))) # (!\out_reg|DATA_OUT\(3) & (\out_reg|DATA_OUT\(2) & (\out_reg|DATA_OUT\(1) $ (\out_reg|DATA_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(3),
	datab => \out_reg|DATA_OUT\(1),
	datac => \out_reg|DATA_OUT\(2),
	datad => \out_reg|DATA_OUT\(0),
	combout => \out_reg|Mux12~0_combout\);

-- Location: LCCOMB_X60_Y38_N26
\out_reg|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux11~0_combout\ = (\out_reg|DATA_OUT\(2) & (\out_reg|DATA_OUT\(3))) # (!\out_reg|DATA_OUT\(2) & (\out_reg|DATA_OUT\(1) & ((\out_reg|DATA_OUT\(3)) # (!\out_reg|DATA_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(3),
	datab => \out_reg|DATA_OUT\(1),
	datac => \out_reg|DATA_OUT\(2),
	datad => \out_reg|DATA_OUT\(0),
	combout => \out_reg|Mux11~0_combout\);

-- Location: LCCOMB_X60_Y38_N16
\out_reg|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux10~0_combout\ = (\out_reg|DATA_OUT\(1) & ((\out_reg|DATA_OUT\(3)) # ((\out_reg|DATA_OUT\(2) & \out_reg|DATA_OUT\(0))))) # (!\out_reg|DATA_OUT\(1) & (\out_reg|DATA_OUT\(2) $ (((!\out_reg|DATA_OUT\(3) & \out_reg|DATA_OUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(3),
	datab => \out_reg|DATA_OUT\(1),
	datac => \out_reg|DATA_OUT\(2),
	datad => \out_reg|DATA_OUT\(0),
	combout => \out_reg|Mux10~0_combout\);

-- Location: LCCOMB_X60_Y38_N22
\out_reg|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux9~0_combout\ = (\out_reg|DATA_OUT\(0)) # ((\out_reg|DATA_OUT\(1) & (\out_reg|DATA_OUT\(3))) # (!\out_reg|DATA_OUT\(1) & ((\out_reg|DATA_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(3),
	datab => \out_reg|DATA_OUT\(1),
	datac => \out_reg|DATA_OUT\(2),
	datad => \out_reg|DATA_OUT\(0),
	combout => \out_reg|Mux9~0_combout\);

-- Location: LCCOMB_X60_Y38_N20
\out_reg|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux8~0_combout\ = (\out_reg|DATA_OUT\(2) & ((\out_reg|DATA_OUT\(3)) # ((\out_reg|DATA_OUT\(1) & \out_reg|DATA_OUT\(0))))) # (!\out_reg|DATA_OUT\(2) & ((\out_reg|DATA_OUT\(1)) # ((!\out_reg|DATA_OUT\(3) & \out_reg|DATA_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(3),
	datab => \out_reg|DATA_OUT\(1),
	datac => \out_reg|DATA_OUT\(2),
	datad => \out_reg|DATA_OUT\(0),
	combout => \out_reg|Mux8~0_combout\);

-- Location: LCCOMB_X60_Y38_N0
\out_reg|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux7~0_combout\ = (\out_reg|DATA_OUT\(1) & (!\out_reg|DATA_OUT\(3) & ((!\out_reg|DATA_OUT\(2)) # (!\out_reg|DATA_OUT\(0))))) # (!\out_reg|DATA_OUT\(1) & ((\out_reg|DATA_OUT\(3) $ (\out_reg|DATA_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(0),
	datab => \out_reg|DATA_OUT\(1),
	datac => \out_reg|DATA_OUT\(3),
	datad => \out_reg|DATA_OUT\(2),
	combout => \out_reg|Mux7~0_combout\);

-- Location: FF_X59_Y38_N15
\acc|DATA_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[7]~46_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|DATA_OUT\(7));

-- Location: FF_X61_Y38_N23
\ir|DATA_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[7]~46_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|DATA_OUT\(7));

-- Location: LCCOMB_X61_Y38_N22
\multiplex_bar|main_bus[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[7]~44_combout\ = (!\ir|DATA_OUT\(6) & (!\cu|cnt\(2) & (\ir|DATA_OUT\(7) & \cu|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|DATA_OUT\(6),
	datab => \cu|cnt\(2),
	datac => \ir|DATA_OUT\(7),
	datad => \cu|Mux5~0_combout\,
	combout => \multiplex_bar|main_bus[7]~44_combout\);

-- Location: FF_X61_Y38_N5
\reg_b|DATA_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \multiplex_bar|main_bus[7]~46_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	ena => \cu|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_b|DATA_OUT\(7));

-- Location: LCCOMB_X59_Y38_N14
\ula|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add1~14_combout\ = \acc|DATA_OUT\(7) $ (\ula|Add1~13\ $ (!\reg_b|DATA_OUT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acc|DATA_OUT\(7),
	datad => \reg_b|DATA_OUT\(7),
	cin => \ula|Add1~13\,
	combout => \ula|Add1~14_combout\);

-- Location: LCCOMB_X59_Y38_N30
\ula|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~14_combout\ = \acc|DATA_OUT\(7) $ (\ula|Add0~13\ $ (\reg_b|DATA_OUT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acc|DATA_OUT\(7),
	datad => \reg_b|DATA_OUT\(7),
	cin => \ula|Add0~13\,
	combout => \ula|Add0~14_combout\);

-- Location: LCCOMB_X62_Y38_N24
\multiplex_bar|main_bus[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[7]~45_combout\ = (\multiplex_bar|main_bus[6]~30_combout\ & ((\cu|Mux10~1_combout\ & ((\ula|Add0~14_combout\))) # (!\cu|Mux10~1_combout\ & (\ula|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplex_bar|main_bus[6]~30_combout\,
	datab => \ula|Add1~14_combout\,
	datac => \ula|Add0~14_combout\,
	datad => \cu|Mux10~1_combout\,
	combout => \multiplex_bar|main_bus[7]~45_combout\);

-- Location: LCCOMB_X61_Y38_N4
\multiplex_bar|main_bus[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplex_bar|main_bus[7]~46_combout\ = (\cu|Mux8~1_combout\ & (\acc|DATA_OUT\(7))) # (!\cu|Mux8~1_combout\ & (((\multiplex_bar|main_bus[7]~44_combout\) # (\multiplex_bar|main_bus[7]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu|Mux8~1_combout\,
	datab => \acc|DATA_OUT\(7),
	datac => \multiplex_bar|main_bus[7]~44_combout\,
	datad => \multiplex_bar|main_bus[7]~45_combout\,
	combout => \multiplex_bar|main_bus[7]~46_combout\);

-- Location: FF_X64_Y38_N31
\out_reg|DATA_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[7]~46_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_reg|DATA_OUT\(7));

-- Location: FF_X64_Y38_N1
\out_reg|DATA_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[6]~43_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_reg|DATA_OUT\(6));

-- Location: FF_X64_Y38_N15
\out_reg|DATA_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[4]~35_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_reg|DATA_OUT\(4));

-- Location: FF_X59_Y38_N9
\out_reg|DATA_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	asdata => \multiplex_bar|main_bus[5]~40_combout\,
	clrn => \MR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cu|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_reg|DATA_OUT\(5));

-- Location: LCCOMB_X61_Y39_N4
\out_reg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux6~0_combout\ = (\out_reg|DATA_OUT\(5) & (\out_reg|DATA_OUT\(7))) # (!\out_reg|DATA_OUT\(5) & (\out_reg|DATA_OUT\(6) $ (((!\out_reg|DATA_OUT\(7) & \out_reg|DATA_OUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(7),
	datab => \out_reg|DATA_OUT\(6),
	datac => \out_reg|DATA_OUT\(4),
	datad => \out_reg|DATA_OUT\(5),
	combout => \out_reg|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y39_N26
\out_reg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux5~0_combout\ = (\out_reg|DATA_OUT\(7) & ((\out_reg|DATA_OUT\(6)) # ((\out_reg|DATA_OUT\(5))))) # (!\out_reg|DATA_OUT\(7) & (\out_reg|DATA_OUT\(6) & (\out_reg|DATA_OUT\(4) $ (\out_reg|DATA_OUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(7),
	datab => \out_reg|DATA_OUT\(6),
	datac => \out_reg|DATA_OUT\(4),
	datad => \out_reg|DATA_OUT\(5),
	combout => \out_reg|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y39_N8
\out_reg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux4~0_combout\ = (\out_reg|DATA_OUT\(6) & (\out_reg|DATA_OUT\(7))) # (!\out_reg|DATA_OUT\(6) & (\out_reg|DATA_OUT\(5) & ((\out_reg|DATA_OUT\(7)) # (!\out_reg|DATA_OUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(7),
	datab => \out_reg|DATA_OUT\(6),
	datac => \out_reg|DATA_OUT\(4),
	datad => \out_reg|DATA_OUT\(5),
	combout => \out_reg|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y39_N2
\out_reg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux3~0_combout\ = (\out_reg|DATA_OUT\(5) & ((\out_reg|DATA_OUT\(7)) # ((\out_reg|DATA_OUT\(6) & \out_reg|DATA_OUT\(4))))) # (!\out_reg|DATA_OUT\(5) & (\out_reg|DATA_OUT\(6) $ (((!\out_reg|DATA_OUT\(7) & \out_reg|DATA_OUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(7),
	datab => \out_reg|DATA_OUT\(6),
	datac => \out_reg|DATA_OUT\(4),
	datad => \out_reg|DATA_OUT\(5),
	combout => \out_reg|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y39_N24
\out_reg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux2~0_combout\ = (\out_reg|DATA_OUT\(4)) # ((\out_reg|DATA_OUT\(5) & (\out_reg|DATA_OUT\(7))) # (!\out_reg|DATA_OUT\(5) & ((\out_reg|DATA_OUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(7),
	datab => \out_reg|DATA_OUT\(6),
	datac => \out_reg|DATA_OUT\(4),
	datad => \out_reg|DATA_OUT\(5),
	combout => \out_reg|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y39_N10
\out_reg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux1~0_combout\ = (\out_reg|DATA_OUT\(6) & ((\out_reg|DATA_OUT\(7)) # ((\out_reg|DATA_OUT\(4) & \out_reg|DATA_OUT\(5))))) # (!\out_reg|DATA_OUT\(6) & ((\out_reg|DATA_OUT\(5)) # ((!\out_reg|DATA_OUT\(7) & \out_reg|DATA_OUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(7),
	datab => \out_reg|DATA_OUT\(6),
	datac => \out_reg|DATA_OUT\(4),
	datad => \out_reg|DATA_OUT\(5),
	combout => \out_reg|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y39_N12
\out_reg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_reg|Mux0~0_combout\ = (\out_reg|DATA_OUT\(6) & (!\out_reg|DATA_OUT\(7) & ((!\out_reg|DATA_OUT\(5)) # (!\out_reg|DATA_OUT\(4))))) # (!\out_reg|DATA_OUT\(6) & (\out_reg|DATA_OUT\(7) $ (((\out_reg|DATA_OUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_reg|DATA_OUT\(7),
	datab => \out_reg|DATA_OUT\(6),
	datac => \out_reg|DATA_OUT\(4),
	datad => \out_reg|DATA_OUT\(5),
	combout => \out_reg|Mux0~0_combout\);

ww_DISP0(0) <= \DISP0[0]~output_o\;

ww_DISP0(1) <= \DISP0[1]~output_o\;

ww_DISP0(2) <= \DISP0[2]~output_o\;

ww_DISP0(3) <= \DISP0[3]~output_o\;

ww_DISP0(4) <= \DISP0[4]~output_o\;

ww_DISP0(5) <= \DISP0[5]~output_o\;

ww_DISP0(6) <= \DISP0[6]~output_o\;

ww_DISP0(7) <= \DISP0[7]~output_o\;

ww_DISP1(0) <= \DISP1[0]~output_o\;

ww_DISP1(1) <= \DISP1[1]~output_o\;

ww_DISP1(2) <= \DISP1[2]~output_o\;

ww_DISP1(3) <= \DISP1[3]~output_o\;

ww_DISP1(4) <= \DISP1[4]~output_o\;

ww_DISP1(5) <= \DISP1[5]~output_o\;

ww_DISP1(6) <= \DISP1[6]~output_o\;

ww_DISP1(7) <= \DISP1[7]~output_o\;
END structure;


