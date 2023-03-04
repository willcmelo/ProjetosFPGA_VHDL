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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/09/2021 21:35:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          reset_sync
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reset_sync_vhd_vec_tst IS
END reset_sync_vhd_vec_tst;
ARCHITECTURE reset_sync_arch OF reset_sync_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i_clk : STD_LOGIC;
SIGNAL i_external_reset_n : STD_LOGIC;
SIGNAL o_reset : STD_LOGIC;
SIGNAL o_reset_n : STD_LOGIC;
COMPONENT reset_sync
	PORT (
	i_clk : IN STD_LOGIC;
	i_external_reset_n : IN STD_LOGIC;
	o_reset : OUT STD_LOGIC;
	o_reset_n : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : reset_sync
	PORT MAP (
-- list connections between master ports and signals
	i_clk => i_clk,
	i_external_reset_n => i_external_reset_n,
	o_reset => o_reset,
	o_reset_n => o_reset_n
	);

-- i_clk
t_prcs_i_clk: PROCESS
BEGIN
LOOP
	i_clk <= '0';
	WAIT FOR 5000 ps;
	i_clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_i_clk;

-- i_external_reset_n
t_prcs_i_external_reset_n: PROCESS
BEGIN
	i_external_reset_n <= '1';
	WAIT FOR 50000 ps;
	i_external_reset_n <= '0';
	WAIT FOR 60000 ps;
	i_external_reset_n <= '1';
	WAIT FOR 110000 ps;
	i_external_reset_n <= '0';
	WAIT FOR 50000 ps;
	i_external_reset_n <= '1';
	WAIT FOR 60000 ps;
	i_external_reset_n <= '0';
	WAIT FOR 20000 ps;
	i_external_reset_n <= '1';
WAIT;
END PROCESS t_prcs_i_external_reset_n;
END reset_sync_arch;
