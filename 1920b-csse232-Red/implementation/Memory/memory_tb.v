`timescale 1ns / 1ps

module memory_tb;

	// Inputs
	reg [15:0] addra;
	reg [15:0] DataWrite;
	reg MemWrite;
	// reg clk; // need a clock later

	// Output(s)
	wire [15:0] DataOut;
	
	// Var(s)
	integer i;

	// Instantiate the Unit Under Test (UUT)
	memory uut (
		.addra(addra), 
		.DataWrite(DataWrite), 
		.MemWrite(MemWrite),  
		.DataOut(DataOut)
	);
	
	initial begin
		
		address = 0;
		DataWrite = 0;
		MemWrite = 0;

		#50;
		
		// test data write
		// write first
		MemWrite = 1;
		for(i = 0; i < 21; i = i + 2) begin
			addra = i;
			DataWrite = i * 100;
			#10;
		end
		//then display
		MemWrite = 0;
		for(i = 0; i < 21; i = i + 2) begin
			addr = i;
			#10;
			if(DataOut != i * 100) begin
				$display("[-] Fail");
			else
				$display("[+] Pass");
			end	
		end
	end
endmodule

