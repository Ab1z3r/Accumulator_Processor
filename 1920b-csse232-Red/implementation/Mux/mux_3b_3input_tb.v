`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:12:38 01/28/2020
// Design Name:   mux_3b_3input
// Module Name:   C:/Users/giambajt/1920b-csse232-Red/work/alu/mux_3b_3input_tb.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_3b_3input
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_3b_3input_tb;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;
	reg [2:0] C;
	reg [1:0] Op;

	// Outputs
	wire [2:0] Output;

	// Instantiate the Unit Under Test (UUT)
	mux_3b_3input uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.Op(Op), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		A = 1345;
		B = 10034;
		C = 345;
		Op = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
		
		if(Output == A)
		$display("pass test 1");
		else
		$display("Fail");
		
		#20;
		
		Op = 2'b01;
		#20;
		
		if(Output == B)
		$display("pass test 2");
		else
		$display("Fail");
		
		#20;
		
		Op = 2'b10;
		#20;
		
		if(Output == C)
		$display("pass test 3");
		else
		$display("Fail");
		
		#20;
		
		Op = 2'b11;
		#20;
		
		if(Output == C)
		$display("pass test 4");
		else
		$display("Fail");
		
        
		// Add stimulus here

	end
      
endmodule

