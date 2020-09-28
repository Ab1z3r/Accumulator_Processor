// Verilog test fixture created from schematic C:\Users\zhouy12\Desktop\232 Michelle\IntegrationPhase4_Test\integrationPhase4.sch - Tue Feb 11 22:16:29 2020

`timescale 1ns / 1ps

module integrationPhase4_integrationPhase4_sch_tb();

// Inputs
   reg [15:0] wr;
   reg [15:0] Mem;
   reg [15:0] na;
   reg [15:0] ar;
   reg [15:0] rv;
   reg [15:0] sp;
   reg [15:0] ra;
   reg [15:0] tp;
   reg [15:0] Ext;
   reg [15:0] ma;
   reg [3:0] ALUInput2;
   reg [3:0] ALUInput1;
   reg Delta;
   reg [15:0] Din;
   reg [2:0] ALUOp;

// Output
   wire [15:0] ALUOut;
   wire zero;
   wire overflow;
   wire greaterThan;
   wire lessThan;

// Bidirs

// Instantiate the UUT
   integrationPhase3 UUT (
		.wr(wr), 
		.Mem(Mem), 
		.na(na), 
		.ar(ar), 
		.rv(rv), 
		.sp(sp), 
		.ra(ra), 
		.tp(tp), 
		.Ext(Ext), 
		.ma(ma), 
		.ALUInput2(ALUInput2), 
		.ALUInput1(ALUInput1), 
		.Delta(Delta), 
		.Din(Din), 
		.ALUOut(ALUOut), 
		.ALUOp(ALUOp), 
		.zero(zero), 
		.overflow(overflow), 
		.greaterThan(greaterThan), 
		.lessThan(lessThan)
   );
// Initialize Inputs
	initial begin
	
		wr = 16'b0000000000000000; //4'b0000
		Mem = 16'b0000000000000001; //4'b0001
		ar = 16'b0000000000000010; //4'b0010
		na = 16'b0000000000000011; //4'b0011
		rv = 16'b0000000000000100; //4'b0100
		sp = 16'b0000000000000101; //4'b0101
		ra = 16'b0000000000000110; //4'b0110
		tp = 16'b0000000000000111; //4'b0111
		Ext = 16'b0000000000001000; //4'b1000
		ma = 16'b0000000000001001; //4'b1001
		Din = 16'b0000000000001010; 
		
		
		//--------------------------------------Test1: ADD-------------------------------------------
		ALUInput1 = 4'b0001; //Mem
		ALUInput2 = 4'b0010; //ar
		Delta = 0; // If it is set to 0, The ALU takes value from the ALUInput2.
		ALUOp = 3'b000; //ADD
		#1;
	
		if(ALUOut==16'b0000000000000011 && zero==0 && greaterThan==0 && lessThan==1)begin
			$display("[+] PASS Test1");
		end
		else begin
				$display("[-] FAIL Test1");
		end
		
		//--------------------------------------Test2: SUB-------------------------------------------
		#100
		ALUInput1 = 4'b0111; //tp
		ALUInput2 = 4'b0010; //ar
		Delta = 0; 
		ALUOp = 3'b001; //SUB
		#1;
	
		if(ALUOut==16'b0000000000000101 && zero==0 && greaterThan==1 && lessThan==0)begin
			$display("[+] PASS Test2");
		end
		else begin
				$display("[-] FAIL Test2");
		end
	
		//--------------------------------------Test3: AND-------------------------------------------
		#100
		ALUInput1 <= 4'b0111; //tp
		ALUInput2 <= 4'b0010; //ar
		Delta <= 0; 
		ALUOp <= 3'b010; //AND
		#1;
	
		if(ALUOut==16'b0000000000000010 && zero==0 && greaterThan==1 && lessThan==0)begin
			$display("[+] PASS Test3");
		end
		else begin
				$display("[-] FAIL Test3");
		end
	
		//--------------------------------------Test4: OR-------------------------------------------
		#100
		ALUInput1 <= 4'b0111; //tp
		ALUInput2 <= 4'b0010; //ar
		Delta <= 0; 
		ALUOp <= 3'b011; //OR
		#1;
	
		if(ALUOut==16'b0000000000000111 && zero==0 && greaterThan==1 && lessThan==0)begin
			$display("[+] PASS Test4");
		end
		else begin
				$display("[-] FAIL Test4");
		end
		
		//--------------------------------------Test5: Din-------------------------------------------
		#100
		ALUInput1 <= 4'b0000; //wr
		ALUInput2 <= 4'b0010; //ar
		Delta <= 1; 
		ALUOp <= 3'b000;
		#1;
	
		if(ALUOut==16'b0000000000001010 && zero==0 && greaterThan==0 && lessThan==1)begin
			$display("[+] PASS Test5");
		end
		else begin
				$display("[-] FAIL Test5");
		end
	
		
	end
endmodule
