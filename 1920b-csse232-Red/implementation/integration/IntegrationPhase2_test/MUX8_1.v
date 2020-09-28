`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:17 02/11/2020 
// Design Name: 
// Module Name:    MUX8_1 
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
module MUX8_1(
    
    input [15:0] A,
    input [15:0] B,
    input [15:0] C,
    input [15:0] D,
    input [15:0] E,
    input [15:0] F,
    input [15:0] G,
    input [15:0] H,
    input [2:0] Op,
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
	
	if (Op == 4)
	out = E;
	
	if (Op == 5)
	out = F;
	
	if (Op == 6)
	out = G;
	
	if (Op == 7)
	out = H;
	end




endmodule
