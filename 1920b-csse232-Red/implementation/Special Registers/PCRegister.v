`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:03 02/10/2020 
// Design Name: 
// Module Name:    PCRegister 
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
module PCRegister(
    input [15:0] Din,
    input PCWrite,
	 input CLK,
    output reg [15:0] Out,
    output reg [2:0] TopOut
    );
	 initial begin
	 Out <=0;
	 TopOut <=0;
	 end

always @ (negedge (CLK))begin
if(PCWrite == 1)begin
	Out <= Din;
	TopOut<= Din[15:13];
	end
end
endmodule
