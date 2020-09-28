`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:44:38 01/28/2020
// Design Name:   mux_16b_2input
// Module Name:   C:/Users/giambajt/1920b-csse232-Red/work/alu/mux_16b_2input_tb_0.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_16b_2input
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_16b_2input_tb_0;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg Op;

	// Outputs
	wire [15:0] Output;

	// Instantiate the Unit Under Test (UUT)
	mux_16b_2input uut (
		.A(A), 
		.B(B), 
		.Op(Op), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		A = 57;
		B = 10034;
		Op = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		if(Output == A)
		$display("pass test 1");
		else
		$display("Fail");
		
		#20;
		
		Op = 1;
		#20;
		
		if(Output == B)
		$display("pass test 2");
		else
		$display("Fail");
		
        
		// Add stimulus here

	end
      
endmodule

