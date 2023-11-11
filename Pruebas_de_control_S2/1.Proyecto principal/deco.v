// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Sat Nov 11 18:22:22 2023"

module deco(
	A1,
	B1,
	A2,
	B2,
	C2,
	C3,
	C1,
	C0,
	D0,
	D1,
	D2,
	D3,
	Y1,
	Y2
);


input wire	A1;
input wire	B1;
input wire	A2;
input wire	B2;
input wire	C2;
input wire	C3;
input wire	C1;
input wire	C0;
input wire	D0;
input wire	D1;
input wire	D2;
input wire	D3;
output wire	Y1;
output wire	Y2;

wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;




assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_17 & D0;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_16 & A2 & D1;

assign	SYNTHESIZED_WIRE_14 = B2 & SYNTHESIZED_WIRE_17 & D2;

assign	SYNTHESIZED_WIRE_15 = B2 & A2 & D3;

assign	SYNTHESIZED_WIRE_19 =  ~A1;

assign	SYNTHESIZED_WIRE_18 =  ~B1;

assign	SYNTHESIZED_WIRE_16 =  ~B2;

assign	SYNTHESIZED_WIRE_17 =  ~A2;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_19 & C0;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_18 & A1 & C1;

assign	SYNTHESIZED_WIRE_10 = B1 & SYNTHESIZED_WIRE_19 & C2;

assign	SYNTHESIZED_WIRE_11 = B1 & A1 & C3;

assign	Y1 = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11;

assign	Y2 = SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15;


endmodule
