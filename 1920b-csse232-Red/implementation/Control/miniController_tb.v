`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:05:55 02/07/2020
// Design Name:   miniController
// Module Name:   C:/Users/giambajt/1920b-csse232-Red/work/Control/miniController_tb.v
// Project Name:  Control
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: miniController
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module miniController_tb;

	// Inputs
	reg [3:0] Opcode;
	reg isZero;
	reg greaterThan;
	reg lessThan;
	reg [3:0] funct;

	// Outputs
	wire skip;

	// Instantiate the Unit Under Test (UUT)
	miniController uut (
		.Opcode(Opcode), 
		.isZero(isZero), 
		.greaterThan(greaterThan), 
		.lessThan(lessThan), 
		.skip(skip), 
		.funct(funct)
	);

	initial begin
		// Initialize Inputs
		Opcode = 0;
		isZero = 0;
		greaterThan = 0;
		lessThan = 0;
		funct = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Opcode <= 0;
		funct <= 11;
		isZero <=1;
		#20;
		if(skip == 1)
		 $display("Pass Test 1");
		 else
		 $display("Fail");
		isZero <=0;
		#20;
		if(skip == 0)
		 $display("Pass Test 2");
		 else
		 $display("Fail");
		 
		 Opcode<=13;
		 isZero<=1;
		 #20;
		if(skip == 1)
		 $display("Pass Test 3");
		 else
		 $display("Fail");
		 isZero<=0;
		 #20;
		if(skip == 0)
		 $display("Pass Test 4");
		 else
		 $display("Fail");
		
		Opcode <= 0;
		funct <= 12;
		greaterThan <=1;
		#20;
		if(skip == 1)
		 $display("Pass Test 5");
		 else
		 $display("Fail");
		greaterThan <=0;
		#20;
		if(skip == 0)
		 $display("Pass Test 6");
		 else
		 $display("Fail");
		 
		 Opcode <= 0;
		funct <= 15;
		lessThan <=1;
		#20;
		if(skip == 1)
		 $display("Pass Test 7");
		 else
		 $display("Fail");
		lessThan <=0;
		#20;
		if(skip == 0)
		 $display("Pass Test 8");
		 else
		 $display("Fail");
		 
		 Opcode <= 10;
		
		lessThan <=1;
		#20;
		if(skip == 1)
		 $display("Pass Test 10");
		 else
		 $display("Fail");
		lessThan <=0;
		#20;
		if(skip == 0)
		 $display("Pass Test 10");
		 else
		 $display("Fail");
		 
		 Opcode <= 0;
		funct <= 3;
		isZero <=0;
		#20;
		if(skip == 1)
		 $display("Pass Test 11");
		 else
		 $display("Fail");
		isZero <=1;
		#20;
		if(skip == 0)
		 $display("Pass Test 12");
		 else
		 $display("Fail");
		 
		 Opcode <= 14;

		isZero <=0;
		#20;
		if(skip == 1)
		 $display("Pass Test 13");
		 else
		 $display("Fail");
		isZero <=1;
		#20;
		if(skip == 0)
		 $display("Pass Test 4");
		 else
		 $display("Fail");
		
	end
      
endmodule

