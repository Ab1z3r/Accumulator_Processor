`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:21 02/10/2020 
// Design Name: 
// Module Name:    Phase1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Phase1(
    input [15:0] jrIn,
	 input PCWrite,
    input IMWrite,
	 input [15:0] IRin,
	 input CLK,
    input [1:0] PCSelect,
    output [15:0] PCOut,
    output [15:0] IMOut
    );
wire [15:0] PCOutWire;
wire [2:0] PCTopOut;
wire [15:0] muxToPC;
wire [15:0] IMOutWire;
wire [15:0] Adder1Out;
wire [15:0] Adder2Out;
wire [15:0] IMData;
wire [15:0] BaseOffset;
wire [11:0] LeftShiftIn;
wire [12:0] LeftShiftOut;
wire [15:0] numberOne;
wire zero;
wire floatWire;


assign LeftShiftIn = IRin[11:0];
assign BaseOffset = {PCTopOut,LeftShiftOut};
assign numberOne = 1;
assign zero = 0;
assign PCOut = PCOutWire;
assign IMOut = IMOutWire;

PCRegister pc(
	.Din(muxToPC),
	.PCWrite(PCWrite),
	.CLK(CLK),
	.Out(PCOutWire),
	.TopOut(PCTopOut)
);

InstrMemory IM(
	.addra(PCOutWire),
	.dina(IMData),
	.wea(IMWrite),
	.clka(CLK),
	.douta(IMOutWire)

);

mux_16b_4input mux(
	.A(Adder1Out),
	.B(Adder2Out),
	.C(jrIn),
	.D(BaseOffset),
	.Op(PCSelect),
	.Output(muxToPC)

);

Left_Shifter shift(
	.A(LeftShiftIn),
	.R(LeftShiftOut)

);

Adder16b Adder1(
	.a(PCOutWire),
	.b(numberOne),
	.o(Adder1Out),
	.ci(zero),
	.co(floatWire)

);

Adder16b Adder2(
	.a(Adder1Out),
	.b(numberOne),
	.o(Adder2Out),
	.ci(zero),
	.co(floatWire)

);




endmodule
