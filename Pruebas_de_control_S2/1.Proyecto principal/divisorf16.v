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
// CREATED		"Sat Nov 11 18:28:38 2023"

module divisorf16(
	A,
	A16
);


input wire	A;
output reg	A16;

wire	SYNTHESIZED_WIRE_8;
reg	JKFF_inst;
reg	JKFF_inst2;
reg	JKFF_inst3;

assign	SYNTHESIZED_WIRE_8 = 1;




always@(posedge A)
begin
	JKFF_inst <= ~JKFF_inst & SYNTHESIZED_WIRE_8 | JKFF_inst & ~SYNTHESIZED_WIRE_8;
end


always@(posedge JKFF_inst)
begin
	JKFF_inst2 <= ~JKFF_inst2 & SYNTHESIZED_WIRE_8 | JKFF_inst2 & ~SYNTHESIZED_WIRE_8;
end


always@(posedge JKFF_inst2)
begin
	JKFF_inst3 <= ~JKFF_inst3 & SYNTHESIZED_WIRE_8 | JKFF_inst3 & ~SYNTHESIZED_WIRE_8;
end



always@(posedge JKFF_inst3)
begin
	A16 <= ~A16 & SYNTHESIZED_WIRE_8 | A16 & ~SYNTHESIZED_WIRE_8;
end


endmodule
