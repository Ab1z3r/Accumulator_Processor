`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:39 01/30/2020 
// Design Name: 
// Module Name:    ALU4b 
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
module ALU16b(
    input [15:0] A,
    input [15:0] B,
	 //input cin,
    output zero,
    output overflow,
	 output greaterThan,
	 output lessThan,
    input [2:0] Op,
    output [15:0] ALUout
    );
	 reg ci;
	 reg greater;
	 reg less;
	 reg [15:0] out;
	 wire [15:0] addO;
	 wire [15:0] andO;
	 wire [15:0] orO;
	 wire [15:0] slO;
	 wire [15:0] srO;
	 wire [15:0] zeroO;
	 wire [15:0] notB;
	 reg muxOp;
	 wire [15:0] muxOut;
	 //assign cin = muxOp;
	assign zero= ~ALUout[0]&~ALUout[1]&~ALUout[2]&~ALUout[3]&~ALUout[4]&~ALUout[5]&~ALUout[6]&~ALUout[7]&~ALUout[8]&~ALUout[9]&~ALUout[10]&
	~ALUout[11]&~ALUout[12]&~ALUout[13]&~ALUout[14]&~ALUout[15];
	assign andO = A&B;
	assign orO = A|B;
	
	assign slO = A<<B;
	assign srO = A>>B;
	assign zeroO = 0;
	assign notB = ~B;
	assign greaterThan = greater;
	assign lessThan = less;
	
	mux_16b_2input mux(
		.A(B),
		.B(notB),
		.Op(muxOp),
		.Output(muxOut)
		
	);
	
	Adder16b adder(
	.a(A),
	.b(muxOut),
	.o(addO),
	.ci(ci),
	.co(overflow)
	);
	
	
	always @ (*) begin
	
	if(Op == 3'b000) begin
	muxOp <= 0;
	out <= addO;
	ci<=0;
	end
	if(Op == 3'b001)begin
	muxOp <= 1;
	ci<=1;
	out <= addO;
	
	end
	if(Op == 3'b010)
	out = andO;
	
	if(Op == 3'b011)
	out = orO;
	
	if(Op == 3'b100)
	out = slO;
	
	if(Op == 3'b101)
	out = srO;
	
	if(Op == 3'b110)
	out = zeroO;
	
	if(Op == 3'b111)
	out = B;
	
	if(A>B)
	greater <= 1;
	else
	greater <= 0;
	
	if (A<B)
	less <=1;
	else
	less<=0;
	
	end
	assign ALUout = out;
endmodule
