
`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 		csse232
// Engineer:		red
//
// Create Date:   13:47:10 02/11/2020
// Design Name:   PhaseTwo
// Project Name:  PhaseTwo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PhaseTwo_PhaseTwo_sch_tb();

// Inputs
   reg EXT;
   reg [0:0] MemWrite;
   reg CLK;
   reg RegWrite;
   reg [2:0] RegDest;
   reg [15:0] IRInput;
   reg [15:0] ALUoutput;
   reg PopPush;
   reg [15:0] fromPC;
   reg Call;
	reg IRWrite;
	// temp for debug use

	

// Output
   wire [15:0] Imm_Out;
   wire [15:0] Mem_Out;
   wire [15:0] sp;
   wire [15:0] ra;
   wire [15:0] tp;
   wire [15:0] wr;
   wire [15:0] ma;
   wire [15:0] ar;
   wire [15:0] na;
   wire [15:0] rv;
   wire LocationSelect;
   wire [3:0] IR41Delta;
   wire [2:0] RegSelect;
   wire [2:0] RegSelect2;
   wire [3:0] funct;
   wire [3:0] Opcode;

// Bidirs

// Instantiate the UUT
   PhaseTwo UUT (
		.Imm_Out(Imm_Out), 
		.EXT(EXT), 
		.Mem_Out(Mem_Out),
		.sp(sp), 
		.ra(ra), 
		.tp(tp), 
		.MemWrite(MemWrite), 
		.CLK(CLK), 
		.RegWrite(RegWrite), 
		.RegDest(RegDest), 
		.wr(wr), 
		.ma(ma), 
		.ar(ar), 
		.na(na), 
		.rv(rv), 
		.IRWrite(IRWrite),
		.IRInput(IRInput), 
		.ALUoutput(ALUoutput), 
		.PopPush(PopPush), 
		.LocationSelect(LocationSelect), 
		.IR41Delta(IR41Delta), 
		.RegSelect(RegSelect), 
		.RegSelect2(RegSelect2), 
		.fromPC(fromPC), 
		.Call(Call), 
		.funct(funct), 
		.Opcode(Opcode)
   );
// Initialize Inputs
   // `ifdef auto_init
		//set up the clock
		initial begin
			CLK = 1;
			forever begin
				#20;
				CLK <= ~CLK;
			end
		end

		
      initial begin
		EXT = 0;
		MemWrite = 0;
		//CLK = 0;
		RegWrite = 0;
		RegDest = 0;
		IRInput = 0;
		ALUoutput = 0;
		PopPush = 0;
		fromPC = 0;
		Call = 0;
		IRWrite = 0;
		#40;
		
		/*
		The memory is intiated with ...
		0000,
		AAAA,
		0001,
		BBBB,
		0002,
		CCCC,
		0003,
		DDDD,
		0004,
		EEEE,
		0005,
		1111,
		0006,
		2222;
		*/

		if (wr == 16'h0000)
			$display("[+] PASS 1 initial data");
		else
			$display("[-] FAIL 1 intial data");
			
		if (sp == 16'b1111111111111)
			$display("[+] PASS 2 initial data");
		else
			$display("[-] FAIL 2 intial data");
		
		#40;
		IRWrite <= 1;
		#40;
		IRInput <= 16'b0000111100000000;
		#40;
		IRWrite <= 0;
		EXT <= 0;
		
		if(LocationSelect == 1'b0)
			$display("[+] PASS 3 initial IR");
		else
			$display("[-] FAIL 3 initial IR");
			
		if(RegSelect == 3'b000)
			$display("[+] PASS 4 initial regselect");
		else
			$display("[-] FAIL 4 initial regselect");
		
		#40;
		if(Imm_Out == 16'b1111111100000000)
			$display("[+] PASS 5 ext");
		else
			$display("[-] FAIL 5 ext");
		
		EXT <= 1;
		if(RegSelect2 == 3'b000)
			$display("[+] PASS 6 regselect2");
		else
			$display("[-] FAIL 6 regselect2");
		
		#40;
		if(Imm_Out == 16'b0000111100000000)
			$display("[+] PASS 7 ext");
		else
			$display("[-] FAIL 7 ext");
		
		#40;
		EXT <= 0;
		//write reg (from PC)
		RegWrite <= 1;
		RegDest <= 3'b001; // write ma = 3
		fromPC <= 16'h0003;
		Call <= 1;
		PopPush <= 0;
		#40;
		// reg is written
		RegDest <= 3'b000;
		if (ma == 16'h0003)
			$display("[+] PASS 8 write reg");
		else
			$display("[-] FAIL 8 write reg");
		RegWrite <= 0;
		PopPush <= 0;
		#40;
		Call <= 0;
		// read mem
		// from reg to mem
		if (Mem_Out == 16'hbbbb)
			$display("[+] PASS 9 reg2mem");
		else
			$display("[-] FAIL 9 reg2mem");
	
		PopPush <= 1;
		RegWrite <= 1;
		RegDest <= 3'b001; // ma
		#40;
		if (ma == 16'hbbbb)
			$display("[+] PASS 10 mem2reg");
		else
			$display("[-] FAIL 10 mem2reg");
		
		RegDest <= 3'b000;
		RegWrite <= 0;
		PopPush <= 0;
		IRWrite <= 1;
		IRInput <= 16'b0000111100100000;
		#40;
		IRWrite <= 0;
		EXT <= 0;
		
		if(RegSelect == 3'b001)
			$display("[+] PASS 11 reg select");
		else
			$display("[-] FAIL 11 reg select");
		PopPush <= 1;
		
		// write mem from reg
		
		ALUoutput <= 16'b0000000000000111;
		MemWrite <= 1'b1;
		#40;
		// finish writing mem
		// read
		
		MemWrite <= 1'b0;
		#40;
		ALUoutput <= 16'b0000000000000111;
		#40;
		if(Mem_Out == 16'hbbbb)
			$display("[+] PASS 12 MUX2mem");
		else
			$display("[-] FAIL 12 MUX2mem");
		PopPush <= 0;

		
		
		
		
		end
   // `endif
endmodule
