`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:33:12 02/10/2020
// Design Name:   InstructionRegister
// Module Name:   C:/Users/giambajt/1920b-csse232-Red/work/Registers/InstructionRegister_tb.v
// Project Name:  Registers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstructionRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module InstructionRegister_tb;

	// Inputs
	reg [15:0] Din;
	reg CLK;

	// Outputs
	wire [2:0] RegSelect;
	wire [2:0] RegSelect2;
	wire [11:0] Imm;
	wire [3:0] Delta;
	wire LocationSelect;
	wire [3:0] Opcode;
	wire [3:0] funct;

	// Instantiate the Unit Under Test (UUT)
	InstructionRegister uut (
		.Din(Din), 
		.CLK(CLK), 
		.RegSelect(RegSelect), 
		.RegSelect2(RegSelect2), 
		.Imm(Imm), 
		.Delta(Delta), 
		.LocationSelect(LocationSelect), 
		.Opcode(Opcode), 
		.funct(funct)
	);

	initial begin
		// Initialize Inputs
		Din = 0;
		CLK = 0;
		
		forever begin
		CLK=~CLK;
		#20;
		end
		#100;
		end
		// Wait 100 ns for global reset to finish
		
       initial begin
		Din <=16'b0001011010100110;
		// Add stimulus here
		#20;
		Din <=34534;
		#50;
		Din<=1;
	end
      
endmodule

