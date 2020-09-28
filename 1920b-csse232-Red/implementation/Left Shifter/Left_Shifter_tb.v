`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:05:20 02/04/2020
// Design Name:   Left_Shifter
// Module Name:   C:/Users/zhuy9/Documents/202020/CSSE232-CompArc/Project_Workspace_232r/LShifter/Left_Shifter/Left_Shifter_tb.v
// Project Name:  Left_Shifter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Left_Shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Left_Shifter_tb;

	// Inputs
	reg [11:0] A;

	// Outputs
	wire [12:0] R;

	// Instantiate the Unit Under Test (UUT)
	Left_Shifter uut (
		.A(A), 
		.R(R)
	);

	initial begin
	A = 12'b111111111111;
		#1
		
		if(R==13'b1111111111110) begin
			$display("[+] PASS");
		end
		else begin
			$display("[-] FAIL");
		end
		
		A = 12'b101010101010;
		#1
		
		if(R==13'b1010101010100) begin
			$display("[+] PASS");
		end
		else begin
			$display("[-] FAIL");
		end
		
		A = 12'b001100110011;
		#1
		
		if(R==13'b11001100110) begin
			$display("[+] PASS");
		end
		else begin
			$display("[-] FAIL");
		end
		
		$display("there are three tests in total");

	end
      
endmodule

