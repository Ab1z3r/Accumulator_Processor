`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:35:56 02/09/2020
// Design Name:   Control
// Module Name:   C:/Users/giambajt/1920b-csse232-Red/work/Control/Control_tb.v
// Project Name:  Control
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Control_tb;

	// Inputs
	reg [3:0] Opcode;
	reg [3:0] funct;
	reg CLK;
	reg Reset;
	reg skip;
	reg [2:0] RegSelect;
	reg [2:0] RegSelect2;
	reg locationSelect;

	// Outputs
	wire [2:0] ALUOp;
	wire [3:0] ALUInput1;
	wire [3:0] ALUInput2;
	wire Delta;
	wire Ext;
	wire PopPush;
	wire RegWrite;
	wire MemWrite;
	wire [2:0]regDest;
	wire Call;
	wire [1:0] PCSelect;
	wire IRWrite;
	wire PCWrite;
	wire IMWrite;
	wire writeToMem;
	wire [5:0] state;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.Opcode(Opcode), 
		.funct(funct), 
		.CLK(CLK), 
		.Reset(Reset), 
		.skip(skip), 
		.RegSelect(RegSelect), 
		.RegSelect2(RegSelect2), 
		.locationSelect(locationSelect), 
		.ALUOp(ALUOp), 
		.ALUInput1(ALUInput1), 
		.ALUInput2(ALUInput2), 
		.Delta(Delta), 
		.Ext(Ext), 
		.PopPush(PopPush), 
		.RegWrite(RegWrite), 
		.MemWrite(MemWrite), 
		.Call(Call), 
		.regDest(regDest),
		.PCSelect(PCSelect), 
		.IRWrite(IRWrite), 
		.PCWrite(PCWrite), 
		.IMWrite(IMWrite),
		.writeToMem(writeToMem),
		.state(state)
	);

	initial begin
		// Initialize Inputs
		Opcode = 0;
		funct = 0;
		CLK = 1;
		Reset = 0;
		skip = 0;
		RegSelect = 0;
		RegSelect2 = 0;
		locationSelect = 0;
		forever begin
		#20;
		CLK<=~CLK;
		end

		end
		initial begin
		
		/*
			Two R type tests
		*/ 
		 
		// add $wr, $sp, 0
		
		#5;
		
		if(PCWrite==1 && IRWrite==1 && PCSelect== 0 && RegWrite == 0 && MemWrite == 0 && PopPush == 0 && Call == 0 && Delta == 0 && state == 1)
		 $display("add stage 1 pass");
		else
		 $display("add stage 1 fail");
		 
		 
		Opcode <= 0; 
		funct <= 0; 
		RegSelect <= 0;
		RegSelect2 <= 5;
		 
		#40;
		
		if(PCWrite==0 && IRWrite == 0 && state == 2)
		 $display("add stage 2 pass");
		else
		 $display("add stage 2 fail");


		#40

		if(ALUInput1== RegSelect && ALUInput2 == RegSelect2 && ALUOp == 0 && state == 3)
		 $display("add stage 3 pass");
		else
		 $display("add stage 3 fail");
		 
		#40
		
		if(MemWrite== 0 && RegWrite==1 && regDest==RegSelect && state==0)
		 $display("add stage 4 pass");
		else
		 $display("add stage 4 fail");
		 
		 
	   // jr $tp
		
		#40;
		
		if(PCWrite==1 && IRWrite==1 && PCSelect== 0 && RegWrite == 0 && MemWrite == 0 && PopPush == 0 && Call == 0 && Delta == 0 && state == 1)
		 $display("jr stage 1 pass");
		else
		 $display("jr stage 1 fail");
		 
		 
		Opcode <= 0; 
		funct <= 2; 
		RegSelect <= 7;
		 
		#40;
		
		if(PCWrite==0 && IRWrite == 0 && state == 19)
		 $display("jr stage 2 pass");
		else
		 $display("jr stage 2 fail");


		#40

		if(ALUInput1== RegSelect && PCSelect==2 && PCWrite == 1 && state==0)
		 $display("jr stage 3 pass");
		else
		 $display("jr stage 3 fail");
		 
		 
		/*
			Two I/J type tests
		*/ 
		 
		 //goto 0011 0010 0001 1101
		 
		 #40;
		
		if(PCWrite==1 && IRWrite==1 && PCSelect== 0 && RegWrite == 0 && MemWrite == 0 && PopPush == 0 && Call == 0 && Delta == 0 && state == 1)
		 $display("goto stage 1 pass");
		else
		 $display("goto stage 1 fail");
		 
		 
		Opcode <= 5;
		 
		#40;
		
		if(PCWrite==0 && IRWrite == 0 && state == 16)
		 $display("goto stage 2 pass");
		else
		 $display("goto stage 2 fail");


		#40

		if(PCSelect==3 && PCWrite==1 && state==0)
		 $display("goto stage 3 pass");
		else
		 $display("goto stage 3 fail");
		 
		 
		// luia 0x5
		
		#40;
		
		if(PCWrite==1 && IRWrite==1 && PCSelect== 0 && RegWrite == 0 && MemWrite == 0 && PopPush == 0 && Call == 0 && Delta == 0 && state == 1)
		 $display("luia stage 1 pass");
		else
		 $display("luia stage 1 fail");
		 
		 
		Opcode <= 9;
		 
		#40;
		
		if(PCWrite==0 && IRWrite == 0 && state == 22)
		 $display("luia stage 2 pass");
		else
		 $display("luia stage 2 fail");
		 
		
		#40
		
		if(ALUInput2==8 && Ext==1 && ALUOp==7 && state==24)
		 $display("luia stage 3 pass");
		else
		 $display("luia stage 3 fail");
		 
		#40
		
		if(RegWrite==1 && regDest==7 && state==0)
		 $display("luia stage 4 pass");
		else
		 $display("luia stage 4 fail");
		 
		 
		/*
			Two D type tests
		*/ 

		 
		 // pop $wr, 0x5
		 
		 #40;
		
		if(PCWrite==1 && IRWrite==1 && PCSelect== 0 && RegWrite == 0 && MemWrite == 0 && PopPush == 0 && Call == 0 && Delta == 0 && state == 1)
		 $display("pop stage 1 pass");
		else
		 $display("pop stage 1 fail");
		 
		 
		Opcode <= 1;
		funct <= 9;
		 
		#40;
		
		if(PCWrite==0 && IRWrite == 0 && state == 33)
		 $display("pop stage 2 pass");
		else
		 $display("pop stage 2 fail");
		 
		 
		#40
		
		if(ALUInput1==5 && ALUOp==0 && Delta==1 && state==34)
		 $display("pop stage 3 pass");
		else
		 $display("pop stage 3 fail");
		 
	   
		#40
		
		if(PopPush==1 && state==35)
		 $display("pop stage 4 pass");
		else
		 $display("pop stage 4 fail");
		 
	   #40
		
		if(regDest== RegSelect && RegWrite ==1 && state==0)
		 $display("pop stage 5 pass");
		else
		 $display("pop stage 5 fail");
		 
		
		
		// shl $tp, 0x5
		
		 #40;
		
		if(PCWrite==1 && IRWrite==1 && PCSelect== 0 && RegWrite == 0 && MemWrite == 0 && PopPush == 0 && Call == 0 && Delta == 0 && state == 1)
		 $display("shl stage 1 pass");
		else
		 $display("shl stage 1 fail");
		 
		 
		Opcode <= 1;
		funct <= 13;
		RegSelect <= 7;
		 
		#40;
		
		if(PCWrite==0 && IRWrite == 0 && state == 41)
		 $display("shl stage 2 pass");
		else
		 $display("shl stage 2 fail");
		 
		 
		#40
		
		if(Delta==1 && ALUInput1==RegSelect && ALUOp==4 && state==13)
		 $display("shl stage 3 pass");
		else
		 $display("shl stage 3 fail");
		 
		 
		#40
		
		if(RegWrite==1 && regDest== RegSelect && state==0)
		 $display("shl stage 4 pass");
		else
		 $display("shl stage 4 fail");


		 
		 
		 
		 
		 

	end
      
endmodule

