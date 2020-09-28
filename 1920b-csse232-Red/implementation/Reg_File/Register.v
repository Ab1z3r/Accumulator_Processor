`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:06:52 02/04/2020 
// Design Name: 
// Module Name:    Register 
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
module Register(
    input CLK,
    input [15:0] A,
	 input regWrite,
    output reg[15:0] out
    );
	 //reg o;
	 //assign out = o;
	 initial begin
	 out <=0;
	 end;
always @ (negedge (CLK))begin
if(regWrite ==1)
	out<=A;

end

endmodule
