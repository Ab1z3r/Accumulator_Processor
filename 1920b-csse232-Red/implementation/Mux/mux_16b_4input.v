`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:01:04 01/28/2020 
// Design Name: 
// Module Name:    mux_16b_4input 
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
module mux_16b_4input(
    input [15:0] A,
    input [15:0] B,
    input [15:0] C,
    input [15:0] D,
    input [1:0] Op,
    output [15:0] Output
    );
 reg [15:0] out;
	 assign Output = out;
always @ (*) begin
	if (Op == 0)
	out = A;
	
	if (Op == 1)
	out = B;
	
	if (Op == 2)
	out = C;
	
	if (Op == 3)
	out = D;
	end

endmodule
