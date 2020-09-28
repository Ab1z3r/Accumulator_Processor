`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:06:36 02/04/2020
// Design Name:   Register_File
// Module Name:   C:/Users/giambajt/1920b-csse232-Red/work/ALU4b/Register_File_tb.v
// Project Name:  ALU4b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_File
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_File_tb;

	// Inputs
	reg CLK;
	reg [2:0] regDest;
	reg [15:0] DataWrite;
	reg regWrite;

	// Outputs
	wire [15:0] wr;
	wire [15:0] ma;
	wire [15:0] ar;
	wire [15:0] na;
	wire [15:0] rv;
	wire [15:0] sp;
	wire [15:0] ra;
	wire [15:0] tp;

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.CLK(CLK), 
		.regDest(regDest), 
		.DataWrite(DataWrite), 
		.regWrite(regWrite), 
		.wr(wr), 
		.ma(ma), 
		.ar(ar), 
		.na(na), 
		.rv(rv), 
		.sp(sp), 
		.ra(ra), 
		.tp(tp)
	);

	initial begin
		// Initialize Inputs
		CLK = 1;
		regDest = 0;
		DataWrite = 0;
		regWrite = 0;
forever begin
		#20;
		CLK<=~CLK;
		end
		// Wait 100 ns for global reset to finish
		
		  
		// Add stimulus here

	end
	initial begin
	#105;
      DataWrite <= 300;
		regWrite <= 1;
		#10;
		 if(wr == 0)
		 $display("Pass Test 1");
		 else
		 $display("Fail");
		 
		 regWrite<=0;
		 DataWrite<= 435;
		 #20;
		 if(wr == 0)
		 $display("Pass Test 2");
		 else
		 $display("Fail");
		 
		 
		 regDest<=1;
		 DataWrite <= 3401;
		regWrite <= 1;
		#20;
		 if(ma == 3401)
		 $display("Pass Test 3");
		 else
		 $display("Fail");
		 
		 
		 DataWrite <= 345;
		 regWrite<=0;
		 #20;
		 if(ma == 3401)
		 $display("Pass Test 4");
		 else
		 $display("Fail");
		 
		 
		 regDest<=2;
		 DataWrite <= 45632;
		regWrite <= 1;
		#20;
		 if(ar == 45632)
		 $display("Pass Test 5");
		 else
		 $display("Fail");
		 
		 
		 DataWrite <=543;
		 regWrite<=0;
		 #20;
		 if(ar == 45632)
		 $display("Pass Test 6");
		 else
		 $display("Fail");
		 
		 
		 regDest <=3;
		 DataWrite <=54315;
		 regWrite<=1;
		 #20;
		 if(na == 54315)
		 $display("Pass Test 7");
		 else
		 $display("Fail");
		 
		 DataWrite<=5442;
		 regWrite <= 0;
		 #20;
		 if(na == 54315)
		 $display("Pass Test 8");
		 else
		 $display("Fail");
		 
		 regDest <=4;
		 DataWrite <=2;
		 regWrite<=1;
		 #20;
		 if(rv == 2)
		 $display("Pass Test 9");
		 else
		 $display("Fail");
		 
		 DataWrite<=5432;
		 regWrite <= 0;
		 #20;
		 if(rv == 2)
		 $display("Pass Test 10");
		 else
		 $display("Fail");
		 
		 regDest <=5;
		 DataWrite <=34556;
		 regWrite<=1;
		 #20;
		 if(sp == 34556)
		 $display("Pass Test 11");
		 else
		 $display("Fail");
		 
		 DataWrite<=3431;
		 regWrite <= 0;
		 #20;
		 if(sp == 34556)
		 $display("Pass Test 12");
		 else
		 $display("Fail");
		 
		 regDest <=6;
		 DataWrite <=0;
		 regWrite<=1;
		 #20;
		 if(ra == 0)
		 $display("Pass Test 13");
		 else
		 $display("Fail");
		 
		 DataWrite<=1;
		 regWrite <= 0;
		 #20;
		 if(ra == 0)
		 $display("Pass Test 14");
		 else
		 $display("Fail");
		 
		 regDest <=7;
		 DataWrite <=10002;
		 regWrite<=1;
		 #20;
		 if(tp == 10002)
		 $display("Pass Test 15");
		 else
		 $display("Fail");
		 
		 DataWrite<=0;
		 regWrite <= 0;
		 #20;
		 if(tp == 10002)
		 $display("Pass Test 16");
		 else
		 $display("Fail");
		  
		  end
endmodule

