`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:28:26 02/10/2020
// Design Name:   PCRegister
// Module Name:   C:/Users/giambajt/1920b-csse232-Red/work/Registers/PCRegister_tb.v
// Project Name:  Registers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCRegister_tb;

	// Inputs
	reg [15:0] Din;
	reg PCWrite;
	reg CLK;

	// Outputs
	wire [15:0] Out;
	wire [2:0] TopOut;

	// Instantiate the Unit Under Test (UUT)
	PCRegister uut (
		.Din(Din), 
		.PCWrite(PCWrite), 
		.Out(Out), 
		.TopOut(TopOut),
		.CLK(CLK)
	);

	initial begin
		// Initialize Inputs
		Din = 0;
		PCWrite = 0;
		CLK = 0;
		forever begin
		#20;
		CLK = ~CLK;
		end
		end
		// Wait 100 ns for global reset to finish
		initial begin
		
		
		Din <= 16534;
		#20;
		PCWrite <=1;
		#20;
		PCWrite <=0;
		#20; 
		Din <=634;
        
		// Add stimulus here

	end
      
endmodule

