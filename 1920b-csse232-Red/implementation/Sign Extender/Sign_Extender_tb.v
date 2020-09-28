`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 		csse232
// Engineer:		Team Red
//
// Create Date:   12:11:57 02/02/2020
// Design Name:   Sign_Extender
// Module Name:   C:/Users/zhuy9/Documents/202020/CSSE232-CompArc/Temp-proj-workspace/Sign_Extender/Sign_Extender_tb.v
// Project Name:  Sign_Extender
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sign_Extender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Sign_Extender_tb;

	// Inputs
	reg [11:0] A;

	// Outputs
	wire [15:0] R;

	// Instantiate the Unit Under Test (UUT)
	Sign_Extender uut (
		.A(A), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		A = 12'b000000000000;
		#1;
		
		if(R == 0)begin
			$display("[+] Pass 1");
		end
		else begin
			$display("[-] Fail 1");
		end
		
		
		A = 12'b111111111111;
		#1;
		
		if(R == 16'b1111111111111111)begin
			$display("[+] Pass 2");
		end
		else begin
			$display("[-] Fail 2");
		end
		
		A = 12'b100010001000;
		#1;
		
		if(R == 16'b1111100010001000)begin
			$display("[+] Pass 3");
		end
		else begin
			$display("[-] Fail 3");
		end
		
		A = 12'b001111111111;
		#1
		
		if(R == 16'b0000001111111111)begin
			$display("[+] Pass 4");
		end
		else begin
			$display("[-] Fail 4");
		end

	end
      
endmodule

