`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       csse232
// Engineer:		Team Red
//
// Create Date:   11:37:09 02/02/2020
// Design Name:   Zero_Extender
// Module Name:   C:/Users/zhuy9/Documents/202020/CSSE232-CompArc/Temp-proj-workspace/Zero_Extender/Zero_Extender_tb.v
// Project Name:  Zero_Extender
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Zero_Extender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Zero_Extender_tb;

	// Inputs
	reg [11:0] A;

	// Outputs
	wire [15:0] R;

	// Instantiate the Unit Under Test (UUT)
	Zero_Extender uut (
		.A(A), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		A = 12'b000000000000;
		#1;
		
		$display("-- 4 tests on Zero Extender --");
		if(R == 16'b0000000000000000)begin
			$display("[+] Pass 1");
		end
		else begin
			$display("[-] Fail 1");
		end
		
		
		A = 12'b111111111111;
		#1;
		
		if(R == 16'b0000111111111111)begin
			$display("[+] Pass 2");
		end
		else begin
			$display("[-] Fail 2");
		end
		
		A = 12'b100010001000;
		#1;
		
		if(R==16'b0000100010001000)begin
			$display("[+] Pass 3");
		end
		else begin
			$display("[-] Fail 3");
		end
		
		A = 12'b101010101010;
		#1;
		
		if(R == 16'b0000101010101010)begin
			$display("[+] Pass 4");
		end
		else begin
			$display("[-] Fail 4");
		end
		$display("-- end of Zero Extender tests --");
	end
      
endmodule

