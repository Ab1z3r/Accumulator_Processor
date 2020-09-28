`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:50 02/14/2020 
// Design Name: 
// Module Name:    ZeroExtend_4bto16b 
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
module ZeroExtend_4bto16b(
    input [3:0] A,
    output reg[15:0] R
    );
always@(*) begin
	R <= {12'b000000000000, A}; 
	end 

endmodule
