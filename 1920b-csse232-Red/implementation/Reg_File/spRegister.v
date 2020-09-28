`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:06:06 02/11/2020 
// Design Name: 
// Module Name:    spRegister 
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
module spRegister(
    input CLK,
    input [15:0] A,
    input regWrite,
    output reg[15:0] out
    );

initial begin
	 out <=8191;
	 end;
always @ (negedge (CLK))begin
if(regWrite ==1)
	out<=A;

end
endmodule
