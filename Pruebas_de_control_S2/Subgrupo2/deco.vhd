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
-- CREATED		"Sat Nov 11 18:14:58 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY deco IS 
	PORT
	(
		1C0 :  IN  STD_LOGIC;
		1C1 :  IN  STD_LOGIC;
		1C2 :  IN  STD_LOGIC;
		1C3 :  IN  STD_LOGIC;
		2C0 :  IN  STD_LOGIC;
		2C1 :  IN  STD_LOGIC;
		2C2 :  IN  STD_LOGIC;
		2C3 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		1Y :  OUT  STD_LOGIC;
		2Y :  OUT  STD_LOGIC
	);
END deco;

ARCHITECTURE bdf_type OF deco IS 

SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_16 AND SYNTHESIZED_WIRE_17 AND 2C0;


SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_16 AND A2 AND 2C1;


SYNTHESIZED_WIRE_14 <= B2 AND SYNTHESIZED_WIRE_17 AND 2C2;


SYNTHESIZED_WIRE_15 <= B2 AND A2 AND 2C3;


SYNTHESIZED_WIRE_19 <= NOT(A1);



SYNTHESIZED_WIRE_18 <= NOT(B1);



SYNTHESIZED_WIRE_16 <= NOT(B2);



SYNTHESIZED_WIRE_17 <= NOT(A2);



SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_19 AND 1C0;


SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_18 AND A1 AND 1C1;


SYNTHESIZED_WIRE_10 <= B1 AND SYNTHESIZED_WIRE_19 AND 1C2;


SYNTHESIZED_WIRE_11 <= B1 AND A1 AND 1C3;


1Y <= SYNTHESIZED_WIRE_8 OR SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11;


2Y <= SYNTHESIZED_WIRE_12 OR SYNTHESIZED_WIRE_13 OR SYNTHESIZED_WIRE_14 OR SYNTHESIZED_WIRE_15;


END bdf_type;