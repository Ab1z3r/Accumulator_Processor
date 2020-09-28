`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		 csse232
// Engineer: 		 Team Red
// 
// Create Date:    12:10:08 02/02/2020 
// Design Name: 
// Module Name:    Sign_Extender 
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
module Sign_Extender(
    input [11:0] A,
    output reg [15:0] R
    );
	 // copy the 12th digit
	 always@* begin
	 if (A[11] == 1'b0) 
		R <= {4'b0000, A}; 
	 if (A[11] == 1'b1)
		R <= {4'b1111, A};
	end 
endmodule
