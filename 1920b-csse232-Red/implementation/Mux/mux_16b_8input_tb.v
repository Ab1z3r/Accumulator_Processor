`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:16:21 01/28/2020
// Design Name:   mux_16b_8input
// Module Name:   C:/Users/giambajt/1920b-csse232-Red/work/alu/mux_16b_8input_tb.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_16b_8input
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_16b_8input_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [15:0] C;
	reg [15:0] D;
	reg [15:0] E;
	reg [15:0] F;
	reg [15:0] G;
	reg [15:0] H;
	reg [2:0] Op;

	// Outputs
	wire [15:0] Output;

	// Instantiate the Unit Under Test (UUT)
	mux_16b_8input uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F), 
		.G(G), 
		.H(H), 
		.Op(Op), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		A = 235;
		B = 2346;
		C = 134;
		D = 2376;
		E = 768;
		F = 876;
		G = 2457;
		H = 456;
		Op = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		if(Output == A)
		$display("pass test 1");
		else
		$display("Fail");
		
		#20;
		
		Op = 3'b001;
		#20;
		
		if(Output == B)
		$display("pass test 2");
		else
		$display("Fail");
		
       #20;
		
		Op = 3'b010;
		#20;
		
		if(Output == C)
		$display("pass test 3");
		else
		$display("Fail");
		// Add stimulus here
		
		#20;
		
		Op = 3'b011;
		#20;
		
		if(Output == D)
		$display("pass test 4");
		else
		$display("Fail");
		#20;
		
		Op = 3'b100;
		#20;
		
		if(Output == E)
		$display("pass test 5");
		else
		$display("Fail");
		#20;
		
		Op = 3'b101;
		#20;
		
		if(Output == F)
		$display("pass test 6");
		else
		$display("Fail");
		
		#20;
		
		Op = 3'b110;
		#20;
		
		if(Output == G)
		$display("pass test 7");
		else
		$display("Fail");
		
		#20;
		
		Op = 3'b111;
		#20;
		
		if(Output == H)
		$display("pass test 8");
		else
		$display("Fail");

	end
      
endmodule

