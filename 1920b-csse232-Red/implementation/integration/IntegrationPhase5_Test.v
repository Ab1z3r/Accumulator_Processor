// Inputs
   reg [2:0] PC_Select;
   reg PC_Write;
   reg IM_Write;
	reg Reg_Write;
	reg Mem_Write;
	reg [3:0] ALU_Input1;
	reg [3:0] ALU_Input2;
	
// Output
   wire [15:0] ALU_Out;
   wire [15:0] RegFile_$wr;
	wire [15:0] DataMem_Out;

// Bidirs

// Instantiate the UUT
   add1b UUT (
		.PC_Select(PC_Select), 
		.PC_Write(PC_Write),
		.IM_Write(IM_Write),
		.Reg_Write(Reg_Write),
		.Mem_Write(Mem_Write),
		.ALU_Input1(ALU_Input1),
		.ALU_Input2(ALU_Input2),
		.ALU_Out(ALU_Out)
		.RegFile_$wr(RegFile_$wr),
		.DataMem_Out(DataMem_Out)
   );

initial begin
	
	/*
		Assume that the instructions in the Instruction memory and Data Memory starts at 0x0 and follows the format:
		
	   0000011010100000  : 0x0 : move $sp, $wr
		0010000000000100  : 0x2 : addi 0x4
		0000011000001010  : 0x4 : move $wr, $sp
		0001101011000000  : 0x6 : push $ra, 0
		0000011001000000  : 0x8 : move $ar, $wr
		0001101000000100  : 0xa : push $wr, 2
		1010000000000000  : 0xc : slti 0x0
	*/
	
	// Also assume that the starting value of PC is 0x0, $wr is 0x0 ,$sp is 0xb and $ma is 0x4
	
	PC_Select = 3'b010;
	PC_Write = 0;
	IM_Write = 0;
	Reg_Write = 0;
	Mem_Write = 0;
	ALU_Input1 = 4'b0001;
	ALU_Input2 = 4'b0010;
	
	#1;
	
	if(ALU_Out == 16'b0000000000000100 && RegFile_$wr == 16'b0000000000000000 && DataMem_Out == 16'b0000011000001010) begin
				$display("[+] PASS");
	end
	
	//-------------------------------------------//
	
	// $wr is now 0xb
	
	PC_Select = 3'b000;
	PC_Write = 1;
	IM_Write = 0;
	Reg_Write = 0;
	Mem_Write = 0;
	ALU_Input1 = 4'b0001;
	ALU_Input2 = 4'b0000;
	
	#1;
	
	if(ALU_Out == 16'b0000000000001111 && RegFile_$wr == 16'b0000000000001011 && DataMem_Out == 16'b0000011000001010) begin
				$display("[+] PASS");
	end
	
	//-------------------------------------------//
