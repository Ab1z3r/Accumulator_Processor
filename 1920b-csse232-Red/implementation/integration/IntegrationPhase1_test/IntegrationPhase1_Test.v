
module IntegrationPhase1_Test;


// Inputs

   reg [15:0] jrIn;
	reg [1:0] PCSelect;
	reg PCWrite;
	reg IMWrite;
	reg CLK;
	reg [15:0] IRin;
	

// Output
   wire [15:0] IMOut;
   wire [15:0] PCOut;
   

// Instantiate the UUT
   Phase1 UUT (
		.jrIn(jrIn), 
		.PCSelect(PCSelect), 
		.PCWrite(PCWrite), 
		.IMWrite(IMWrite), 
		.CLK(CLK),
		.IMOut(IMOut),
		.PCOut(PCOut),
		.IRin(IRin)
   );
// Initialize Inputs


initial begin
	jrIn = 0;
	PCSelect = 0;
	PCWrite = 0;
	IMWrite = 0;
	CLK = 1;
	IRin = 0;
	
	forever begin
	#40;
	CLK = ~CLK;
	end
	end
	/*
		Assume that the instructions in the instruction registers start at 0x0 and follow the format:
		
	   0000011010100000  : 0x0
		0010000000000100  : 0x2
		0000011000001010  : 0x4
		0001101011000000  : 0x6
		0000011001000000  : 0x8
		0001101000000100  : 0xa
		1010000000000000  : 0xc
	*/
	
	

	//RegPC_A = 16'b0000000000001000;  // The PC points to 0x6

	
	/*
	
	When Starting the MUX has the values:
	
	0 : 0x2
	1 : 0x4
	2 : 0x6
	3 : 0x0d40
	
	*/
	initial begin
	/*jrIn <= 0;  // The PC points to 0x6
	PCSelect <= 2;
	PCWrite <= 1;*/
	#90;
	if(PCOut == 0 && IMOut == 16'b0000011010100000)begin
		$display("[+] PASS 1");
	end
	

	PCSelect <= 0;
	PCWrite <= 1;
	#80;
	if(PCOut == 1 && IMOut == 16'b0010000000000100)begin
		$display("[+] PASS 2");
	end
	
	
	PCSelect <= 1;
	PCWrite <= 0;
	#80;
	
	if(PCOut == 16'b1 && IMOut == 16'b0010000000000100)begin
		$display("[+] PASS 3");
	end
	
	
	PCSelect <= 1;
	PCWrite <= 1;
	#80;
	
	if(PCOut == 3 && IMOut == 16'b0001101011000000)begin
		$display("[+] PASS 4");
	end
 
 
	PCSelect <= 2;
	PCWrite <= 0;
	#80;
	
	if(PCOut == 3 && IMOut == 16'b0001101011000000)begin
		$display("[+] PASS 5");
	end
	
	jrIn <= 5;
	PCSelect <= 2;
	PCWrite <= 1;
	#80;
	

	if(PCOut == 5 && IMOut == 16'b0001101000000100)begin
		$display("[+] PASS 6");
	end
		
	IRin <= 3;
	PCSelect <= 3;
	PCWrite <= 0;
	#80;
	
	if(PCOut == 5 && IMOut == 16'b0001101000000100)begin
		$display("[+] PASS 7");
	end
	
	
	PCSelect <= 3;
	PCWrite <= 1;
	#80;
	
	if(PCOut == 6 && IMOut == 16'b1010000000000000)begin
		$display("[+] PASS 8");
	end
	
	
end

endmodule