`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:08:19 02/14/2020
// Design Name:   Phase4_Verilog
// Module Name:   C:/Users/giambajt/Documents/CSSE 232/1920b-csse232-Red/implementation/integration/IntegrationPhase3_test/Integration4_test/Phase4/Phase4_Verilog_tb.v
// Project Name:  Phase4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Phase4_Verilog
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Phase4_Verilog_tb;
	reg Reset;
	reg [15:0] initialNumber;
	// Outputs
	
	wire CLKOutput;
	
	wire [15:0] finalOutput;
	wire [15:0] ALUOutOutput;
	wire [15:0] wrOutput;
	wire [15:0] maOutput;
	wire [15:0] arOutput;
	wire [15:0] naOutput;
	wire [15:0] rvOutput;
	wire [15:0] spOutput;
	wire [15:0] raOutput;
	wire [15:0] tpOutput;
	wire [15:0] DataMemOutput;
	wire [15:0] IMMOutput;
	wire [15:0] IRInput;
	wire [15:0] PCOutput;
	wire [15:0] ALUInput1Output;
	wire [15:0] ALUInput2Output;
	wire [5:0] stateOutput;
	wire [15:0] IMOutput;
	wire [15:0] DataMemAddrPopPushMuxOutput;
	wire memWriteOutput;

	// Instantiate the Unit Under Test (UUT)
	Phase4_Verilog uut (
		.CLKOutput(CLKOutput), 
		.Reset(Reset),
		.initialNumber(initialNumber),
		.finalOutput(finalOutput),
		.ALUOutOutput(ALUOutOutput), 
		.wrOutput(wrOutput), 
		.maOutput(maOutput), 
		.arOutput(arOutput), 
		.naOutput(naOutput), 
		.rvOutput(rvOutput), 
		.spOutput(spOutput), 
		.raOutput(raOutput), 
		.tpOutput(tpOutput), 
		.DataMemOutput(DataMemOutput), 
		.IMMOutput(IMMOutput), 
		.IRInput(IRInput), 
		.PCOutput(PCOutput), 
		.ALUInput1Output(ALUInput1Output), 
		.ALUInput2Output(ALUInput2Output),
		.stateOutput(stateOutput),
		.IMOutput(IMOutput),
		.DataMemAddrPopPushMuxOutput(DataMemAddrPopPushMuxOutput),
		.memWriteOutput(memWriteOutput)
	);

	initial begin
		// Initialize Inputs
	Reset<=0;
	initialNumber<=5;	
	
	Reset<=1;
	#200;
	Reset<=0;
		#405;
		
		#5000;
		Reset<=1;
	#200;
	Reset<=0;
		#405;
		
		/*if(wrOutput == 4)
		$display("Pass addi test");
		else
		$display("Fail addi test");
		
		#400;
		
		if(DataMemOutput == 4)
		$display("Pass add test");
		else
		$display("Fail add test");
		
		#400;
		
		if(maOutput == 2)
		$display("Pass addm test");
		else
		$display("Fail addm test");
		
		#100;
		
		if(DataMemOutput == 0)
		$display("Pass addm pt. 2 test");
		else
		$display("Fail addm pt. 2 test");
		
		#300;
		
		if(wrOutput == 4)
		$display("Pass and test");
		else
		$display("Fail and test");
		
		#400;
		
		if(wrOutput == 0)
		$display("Pass clrr test");
		else
		$display("Fail clrr test");
		
		#400;
		
		if(naOutput == 6)
		$display("Pass incr test");
		else
		$display("Fail incr test");
		
		#400;
		
		if(naOutput == 2)
		$display("Pass decr test");
		else
		$display("Fail decr test");
		
		#400;
		
		if(maOutput == 20)
		$display("Pass la test");
		else
		$display("Fail la test");
		
		#400;
		
		if(wrOutput == 2)
		$display("Pass move test");
		else
		$display("Fail move test");
		
		#400;
		
		if(DataMemOutput == 2)
		$display("Pass move Mem test");
		else
		$display("Fail move Mem test");
		
		#400;
		
		if(wrOutput == 16'h1fff)
		$display("Pass or test");
		else
		$display("Fail or test");
		
		#400;
		
		if(wrOutput == 0)
		$display("Pass clrr test");
		else
		$display("Fail clrr test");
		
		#400;
		
		if(wrOutput == 15)
		$display("Pass ori test");
		else
		$display("Fail ori test");
		
		#400;
		
		if(maOutput == 22)
		$display("Pass orim test");
		else
		$display("Fail orim test");
		
		#100;
		
		if(DataMemOutput == 0)
		$display("Pass orim pt. 2 test");
		else
		$display("Fail orim pt. 2 test");
		
		#300;
		
		if(wrOutput == 16'h1fff)
		$display("Pass move test");
		else
		$display("Fail move test");
		
		#400;
		
		if(wrOutput == 16'h1ffb)
		$display("Pass subi test");
		else
		$display("Fail subi test");
		
		#400;
		
		if(spOutput == 16'h1ffb)
		$display("Pass move test");
		else
		$display("Fail move test");
		
		#500;
		
		if(DataMemOutput == 2)
		$display("Pass push test");
		else
		$display("Fail push test");
		
		#500;
		
		if(wrOutput == 2)
		$display("Pass pop test");
		else
		$display("Fail pop test");
		
		#500;
		
		if(DataMemOutput == 2)
		$display("Pass sub test");
		else
		$display("Fail sub test");
		
		#300;
		
		if(wrOutput == 8)
		$display("Pass shl test");
		else
		$display("Fail shl test");
		
		#400;
		
		if(wrOutput == 4)
		$display("Pass shr test");
		else
		$display("Fail shr test");
		
		#400;
		
		if(PCOutput == 48)
		$display("Pass sgt test");
		else
		$display("Fail sgt test");
		
		#400;
		
		if(PCOutput == 52)
		$display("Pass slt test");
		else
		$display("Fail slt test");
		
		#400;
		
		if(PCOutput == 56)
		$display("Pass sne test");
		else
		$display("Fail sne test");
		
		#400;
		
		if(wrOutput == 1)
		$display("Pass decr test");
		else
		$display("Fail decr test");
		
		#800;
		
		if(PCOutput == 64)
		$display("Pass seq test");
		else
		$display("Fail seq test");
		
		#400;
		
		if(PCOutput == 68)
		$display("Pass seqi test");
		else
		$display("Fail seqi test");
		
		#400;
		
		if(PCOutput == 72)
		$display("Pass snei test");
		else
		$display("Fail snei test");
		
		#400;
		
		if(PCOutput == 76)
		$display("Pass slti test");
		else
		$display("Fail slti test");
		
		#300;
		
		if(PCOutput == 84)
		$display("Pass goto test");
		else
		$display("Fail goto test");
		
		#400;
		
		if(PCOutput == 94 && raOutput == 86)
		$display("Pass call test");
		else
		$display("Fail call test");
		
		#300;
		
		if(PCOutput == 86)
		$display("Pass jr test");
		else
		$display("Fail jr test");
		
		#400;
		
		if(wrOutput == 4)
		$display("Pass lui test");
		else
		$display("Fail lui test");
		
		#400;
		
		if(tpOutput == 6)
		$display("Pass luia test");
		else
		$display("Fail luia test");
		
		#400;
		
		if(maOutput == 0)
		$display("Pass movem test");
		else
		$display("Fail movem test");
		#2050;*/
		
		/*Reset<=1;
		#3000;
		Reset<=0;
		if(wrOutput <=5)
		$display("Pass reset test");
		else
		$display("Fail rest test");*/
		
		
		
		
        
		// Add stimulus here

	end
      
endmodule

