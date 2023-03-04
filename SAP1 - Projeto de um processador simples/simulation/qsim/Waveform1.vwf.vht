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
-- Generated on "04/13/2021 22:46:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SAP1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SAP1_vhd_vec_tst IS
END SAP1_vhd_vec_tst;
ARCHITECTURE SAP1_arch OF SAP1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CK : STD_LOGIC;
SIGNAL DISP0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DISP1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MR : STD_LOGIC;
COMPONENT SAP1
	PORT (
	CK : IN STD_LOGIC;
	DISP0 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	DISP1 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	MR : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SAP1
	PORT MAP (
-- list connections between master ports and signals
	CK => CK,
	DISP0 => DISP0,
	DISP1 => DISP1,
	MR => MR
	);

-- CK
t_prcs_CK: PROCESS
BEGIN
LOOP
	CK <= '0';
	WAIT FOR 5000 ps;
	CK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CK;

-- MR
t_prcs_MR: PROCESS
BEGIN
	MR <= '0';
	WAIT FOR 50000 ps;
	MR <= '1';
WAIT;
END PROCESS t_prcs_MR;
END SAP1_arch;
