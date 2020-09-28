// Verilog test fixture created from schematic C:\Users\zhuy9\Documents\202020\CSSE232-CompArc\Project_Workspace_232r\Register_File\RegisterFile\MemAndReg.sch - Mon Feb 10 21:55:31 2020

`timescale 1ns / 1ps

module MemAndReg_MemAndReg_sch_tb;

// Inputs
   reg CLK;
   reg MemWrite;
   reg [15:0] DataWriteMem;
   reg [15:0] ma;
   reg EXT;
   reg [11:0] IR;

// Output
   wire [15:0] Mem_Out;
   wire [15:0] Imm_Out;

// Bidirs

// Instantiate the UUT
   MemAndReg UUT (
		.CLK(CLK), 
		.Mem_Out(Mem_Out), 
		.MemWrite(MemWrite), 
		.DataWriteMem(DataWriteMem), 
		.ma(ma), 
		.Imm_Out(Imm_Out), 
		.EXT(EXT), 
		.IR(IR)
   );
// Initialize Inputs
   //`ifdef auto_init
      
		
	//set up the clock
	initial begin
		CLK = 0;
		forever begin
			#10;
			CLK <= ~CLK;
		end
	end

		
		initial begin
		CLK <= 0;
		MemWrite <= 0;
		DataWriteMem <= 0;
		ma <= 0;
		EXT <= 0;
		IR <= 0;
		#20;
	
		/*
		Assume that the instructions in the data memory starts at 0x0 and follows the format:
	   0000011010100000  : 0x0
		0010000000000100  : 0x1
		0000011000001010  : 0x2
		0001101011000000  : 0x3
		0000011001000000  : 0x4
		0001101000000100  : 0x5
		1010000000000000  : 0x6
		*/
		
		MemWrite <= 1;
		#10;
		ma <= 0;
		#10;
		DataWriteMem <= 100;
	   #10;
		ma <= 1;
		#10;
		DataWriteMem <= 200;
	   #10;
		ma <= 2;		
		#10;
		DataWriteMem <= 300;
	   #10;
		ma <= 3; 		
		#10;
		DataWriteMem <= 400;
	   #10;
		ma <= 4;
		#10;
		DataWriteMem <= 500;
	   #10;
		ma <= 5;
		#10;
		DataWriteMem <= 600;
	   #10;
		ma <= 6;
		#10;
		DataWriteMem <= 700;
	   #10;
		MemWrite <= 0;
		#80;
		
		EXT <= 1'b0;
		ma <= 0; // dispplay at address
		IR <= 12'b111111111111;
		#40;
		if ((Mem_Out == 100) && (Imm_Out == 16'b1111111111111111)) begin
			$display("[+] PASS");
		end
		else begin
			$display("[-] FAIL");
		end

		IR <= 12'b111111111111;
		ma <= 3;
		EXT <= 1'b1;
		#40;
		if ((Mem_Out == 400) && (Imm_Out == 16'b0000111111111111)) begin
			$display("[+] PASS");
		end
		else begin
			$display("[-] FAIL");
		end

		IR <= 12'b111111111111;
		ma <= 1;
		EXT <= 1'b0;
		#40;
		if ((Mem_Out == 200) && (Imm_Out == 16'b1111111111111111)) begin
			$display("[+] PASS");
		end
		else begin
			$display("[-] FAIL");
		end

		IR <= 12'b010101010101;
		ma <= 3;
		EXT <= 1'b1;
		#40;
		if ((Mem_Out == 400) && (Imm_Out == 16'b0000010101010101)) begin
			$display("[+] PASS");
		end
		else begin
			$display("[-] FAIL");
		end

		IR <= 12'b000011110000;
		ma <= 6;
		EXT <= 1'b0;
		#40;
		if ((Mem_Out == 700) && (Imm_Out == 16'b0000000011110000)) begin
			$display("[+] PASS");
		end
		else begin
			$display("[-] FAIL");
		end

		
		end
		
   //`endif
endmodule
