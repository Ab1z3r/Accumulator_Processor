`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:41 02/04/2020 
// Design Name: 
// Module Name:    Left_Shifter 
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
module Left_Shifter(
    input [11:0] A,
    output reg [12:0] R
    );
	
	always@* begin
	R <= {A, 1'b0}; 
	end 


endmodule
