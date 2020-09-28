`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:21:35 01/28/2020
// Design Name:   mux_16b_10input
// Module Name:   C:/Users/giambajt/1920b-csse232-Red/work/alu/mux_16b_10input_tb.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_16b_10input
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_16b_10input_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [15:0] C;
	reg [15:0] D;
	reg [15:0] E;
	reg [15:0] F;
	reg [15:0] G;
	reg [15:0] H;
	reg [15:0] I;
	reg [15:0] J;
	reg [4:0] Op;
	
	//Output
	wire [15:0] Output;

	// Instantiate the Unit Under Test (UUT)
	mux_16b_10input uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F), 
		.G(G), 
		.H(H), 
		.I(I), 
		.J(J), 
		.Op(Op), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		A = 34555;
		B = 32489;
		C = 545;
		D = 13;
		E = 6452;
		F = 789;
		G = 564;
		H = 4565;
		I = 1;
		J = 4575;
		Op = 4'b0000;
	

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		if(Output == A)
		$display("pass test 1");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b0001;
		#20;
		
		if(Output == B)
		$display("pass test 2");
		else
		$display("Fail");
		
       #20;
		
		Op = 4'b0010;
		#20;
		
		if(Output == C)
		$display("pass test 3");
		else
		$display("Fail");
		// Add stimulus here
		
		#20;
		
		Op = 4'b0011;
		#20;
		
		if(Output == D)
		$display("pass test 4");
		else
		$display("Fail");
		#20;
		
		Op = 4'b0100;
		#20;
		
		if(Output == E)
		$display("pass test 5");
		else
		$display("Fail");
		#20;
		
		Op = 4'b0101;
		#20;
		
		if(Output == F)
		$display("pass test 6");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b0110;
		#20;
		
		if(Output == G)
		$display("pass test 7");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b0111;
		#20;
		
		if(Output == H)
		$display("pass test 8");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b1000;
		#20;
		
		if(Output == I)
		$display("pass test 9");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b1001;
		#20;
		
		if(Output == J)
		$display("pass test 10");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b1010;
		#20;
		
		if(Output == 0)
		$display("pass test 11");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b1011;
		#20;
		
		if(Output == 0)
		$display("pass test 12");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b1100;
		#20;
		
		if(Output == 0)
		$display("pass test 13");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b1101;
		#20;
		
		if(Output == 0)
		$display("pass test 14");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b1110;
		#20;
		
		if(Output == 0)
		$display("pass test 15");
		else
		$display("Fail");
		
		#20;
		
		Op = 4'b1111;
		#20;
		
		if(Output == 0)
		$display("pass test 16");
		else
		$display("Fail");
	end
      
endmodule

