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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sat Nov 11 20:54:09 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY divisor IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		A16 :  OUT  STD_LOGIC;
		A2 :  OUT  STD_LOGIC;
		A4 :  OUT  STD_LOGIC;
		A8 :  OUT  STD_LOGIC
	);
END divisor;

ARCHITECTURE bdf_type OF divisor IS 

SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	JKFF_inst :  STD_LOGIC;
SIGNAL	JKFF_inst2 :  STD_LOGIC;
SIGNAL	JKFF_inst3 :  STD_LOGIC;


BEGIN 
A2 <= JKFF_inst;
A4 <= JKFF_inst2;
A8 <= JKFF_inst3;
SYNTHESIZED_WIRE_8 <= '1';



PROCESS(A)
VARIABLE synthesized_var_for_JKFF_inst : STD_LOGIC;
BEGIN
IF (RISING_EDGE(A)) THEN
	synthesized_var_for_JKFF_inst := (NOT(synthesized_var_for_JKFF_inst) AND SYNTHESIZED_WIRE_8) OR (synthesized_var_for_JKFF_inst AND (NOT(SYNTHESIZED_WIRE_8)));
END IF;
	JKFF_inst <= synthesized_var_for_JKFF_inst;
END PROCESS;


PROCESS(JKFF_inst)
VARIABLE synthesized_var_for_JKFF_inst2 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(JKFF_inst)) THEN
	synthesized_var_for_JKFF_inst2 := (NOT(synthesized_var_for_JKFF_inst2) AND SYNTHESIZED_WIRE_8) OR (synthesized_var_for_JKFF_inst2 AND (NOT(SYNTHESIZED_WIRE_8)));
END IF;
	JKFF_inst2 <= synthesized_var_for_JKFF_inst2;
END PROCESS;


PROCESS(JKFF_inst2)
VARIABLE synthesized_var_for_JKFF_inst3 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(JKFF_inst2)) THEN
	synthesized_var_for_JKFF_inst3 := (NOT(synthesized_var_for_JKFF_inst3) AND SYNTHESIZED_WIRE_8) OR (synthesized_var_for_JKFF_inst3 AND (NOT(SYNTHESIZED_WIRE_8)));
END IF;
	JKFF_inst3 <= synthesized_var_for_JKFF_inst3;
END PROCESS;



PROCESS(JKFF_inst3)
VARIABLE synthesized_var_for_A16 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(JKFF_inst3)) THEN
	synthesized_var_for_A16 := (NOT(synthesized_var_for_A16) AND SYNTHESIZED_WIRE_8) OR (synthesized_var_for_A16 AND (NOT(SYNTHESIZED_WIRE_8)));
END IF;
	A16 <= synthesized_var_for_A16;
END PROCESS;


END bdf_type;