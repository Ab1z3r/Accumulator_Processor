`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:45 02/10/2020 
// Design Name: 
// Module Name:    MUX2-1 
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
module MUX2_1(
	 input [15:0] A,
    input [15:0] B,
    input Op,
    output [15:0] Output
    );
	reg [15:0] out;
	assign Output = out;
	always @ (*) begin
	if (Op == 0)
		out = A;
	if (Op == 1)
		out = B;
	end
endmodule
