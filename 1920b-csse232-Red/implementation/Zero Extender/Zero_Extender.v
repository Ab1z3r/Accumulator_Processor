`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		 csse232
// Engineer: 		 Team Red
// 
// Create Date:    11:35:16 02/02/2020 
// Design Name: 
// Module Name:    Zero_Extender 
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
module Zero_Extender(
    input [11:0] A,
    output reg [15:0] R
    );
	always@* begin
	R <= {4'b0000, A}; 
	end 
endmodule
