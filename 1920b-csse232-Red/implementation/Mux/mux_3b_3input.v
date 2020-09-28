`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:39 01/28/2020 
// Design Name: 
// Module Name:    mux_3b_3input 
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
module mux_3b_3input(
    input [2:0] A,
    input [2:0] B,
    input [2:0] C,
    input [1:0] Op,
    output [2:0] Output
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
	end

endmodule
