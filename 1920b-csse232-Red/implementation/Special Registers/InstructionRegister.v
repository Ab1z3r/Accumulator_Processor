`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:58 02/10/2020 
// Design Name: 
// Module Name:    InstructionRegister 
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
module InstructionRegister(
    input [15:0] Din,
    input CLK,
    output reg [2:0] RegSelect,
    output reg[2:0] RegSelect2,
    output reg [11:0] Imm,
    output reg[3:0] Delta,
    output reg LocationSelect,
	 output reg [3:0] Opcode,
	 output reg [3:0] funct
    );
always @ (negedge (CLK))begin
	RegSelect <= Din[7:5];
	RegSelect2<= Din[3:1];
	Imm <= Din[11:0];
	Delta <= Din[4:1];
	LocationSelect <= Din[0];
	Opcode <= Din[15:12];
	funct <= Din[11:8];
end

endmodule
