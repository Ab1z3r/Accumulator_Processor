`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:02:42 01/28/2020
// Design Name:   mux_16b_4input
// Module Name:   C:/Users/giambajt/1920b-csse232-Red/work/alu/mux_16b_4input_tb.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_16b_4input
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_16b_4input_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [15:0] C;
	reg [15:0] D;
	reg [1:0] Op;

	// Outputs
	wire [15:0] Output;

	// Instantiate the Unit Under Test (UUT)
	mux_16b_4input uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.Op(Op), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		// Initialize Inputs
		A = 570;
		B = 1344;
		C = 3465;
		D = 8949;
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
		// Add stimulus here
		
		#20;
		
		Op = 2'b11;
		#20;
		
		if(Output == D)
		$display("pass test 4");
		else
		$display("Fail");

	end
      
endmodule

