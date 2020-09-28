// Inputs
   reg [2:0] OP;
   reg [15:0] A;
   reg [15:0] B;

// Output
   wire isZero;
	wire islessThan;
	wire isgreaterThan;
	wire isoverflow
   wire [15:0] R;

// Bidirs

// Instantiate the UUT
   alu4 UUT (
		.OP(OP), 
		.A(A), 
		.B(B), 
		.isZero(isZero), 
		.islessThan(islessThan), 
		.isgreaterThan(isgreaterThan), 
		.isoverflow(isoverflow), 
		.R(R)
   );
// Initialize Inputs

   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		/**
			Test ADD with different inputs and opcode 000
		**/

	initial begin
	
		A = 16'b0000000000000000;
		B = 16'b0000000000000000;
		OP = 3'b000;
		#1
		
		if((R==(A+B)) and (isZero==1) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS ADD 1")
		end
		else begin
			$display("[-] FAIL ADD 1")
		end
		
		
		A = 16'b1111111111111111;
		B = 16'b1111111111111111;
		OP = 3'b000;
		#1
		
		if((isZero==0) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==1))begin
			$display("[+] PASS ADD 2")
		end
		else begin
			$display("[-] FAIL ADD 2")
		end
		
		
		A = 16'b1000000000000001;
		B = 16'b0000000000000001;
		OP = 3'b000;
		#1
		
		if((R==(A+B)) and (isZero==0) and (islessThan==1) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS ADD 3")
		end
		else begin
			$display("[-] FAIL ADD 3")
		end
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		/**
			Test SUB with different inputs and opcode 001
		**/

		
		A = 16'b0000000000000000;
		B = 16'b0000000000000000;
		OP = 3'b001;
		#1
		
		if((R==(A-B)) and (isZero==1) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS SUB 1")
		end
		else begin
			$display("[-] FAIL SUB 1")
		end
		
		
		A = 16'b1111111111111111;
		B = 16'b1111111111111111;
		OP = 3'b001;
		#1
		
		if((R==(A-B)) and (isZero==1) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS SUB 2")
		end
		else begin
			$display("[-] FAIL SUB 2")
		end
		
		
		A = 16'b1111111111111111;
		B = 16'b0000000000000001;
		OP = 3'b001;
		#1
		
		if((isZero==0) and (islessThan==1) and (isgreaterThan==0) and (isoverflow==1))begin
			$display("[+] PASS SUB 3")
		end
		else begin
			$display("[-] FAIL SUB 3")
		end
		
		
		A = 16'b1000100000010001;
		B = 16'b1000100000010001;
		OP = 3'b001;
		#1
		
		if((R==(A-B)) and (isZero==1) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS SUB 4")
		end
		else begin
			$display("[-] FAIL SUB 4")
		end
		
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/**
			Test AND with different inputs and opcode 010
		**/

		
		A = 16'00000000000000000;
		B = 16'00000000000000000;
		OP = 3'b010;
		#1
		
		if((R==(A&B)) and (isZero==1) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS AND 1")
		end
		else begin
			$display("[-] FAIL AND 1")
		end
		
		A = 16'11111111111111111;
		B = 16'11111111111111111;
		OP = 3'b010;
		#1
		
		if((R==(A&B)) and (isZero==0) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS AND 2")
		end
		else begin
			$display("[-] FAIL AND 2")
		end
		
		
		A = 16'10011100101101010;
		B = 16'01100011010010101;
		OP = 3'b010;
		#1
		
		if((R==(A&B)) and (isZero==0) and (islessThan==1) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS AND 3")
		end
		else begin
			$display("[-] FAIL AND 3")
		end
		
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/**
			Test OR with different inputs and opcode 011
		**/
		
		A = 16'00000000000000000;
		B = 16'00000000000000000;
		OP = 3'b010;
		#1
		
		if((R==(A|B)) and (isZero==1) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS OR 1")
		end
		else begin
			$display("[-] FAIL OR 1")
		end
		
		A = 16'11111111111111111;
		B = 16'11111111111111111;
		OP = 3'b010;
		#1
		
		if((R==(A|B)) and (isZero==0) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS OR 2")
		end
		else begin
			$display("[-] FAIL OR 2")
		end
		
		
		A = 16'10011100101101010;
		B = 16'01100011010010101;
		OP = 3'b010;
		#1
		
		if((R==(A|B)) and (isZero==0) and (islessThan==1) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS OR 3")
		end
		else begin
			$display("[-] FAIL OR 3")
		end
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/**
			Test XOR with different inputs and opcode 100
		**/
		
		
		A = 16'00000000000000000;
		B = 16'00000000000000000;
		OP = 3'b100;
		#1
		
		if((R==(A^B)) and (isZero==1) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS OR 1")
		end
		else begin
			$display("[-] FAIL OR 1")
		end
		
		A = 16'11111111111111111;
		B = 16'11111111111111111;
		OP = 3'b100;
		#1
		
		if((R==(A^B)) and (isZero==0) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS OR 2")
		end
		else begin
			$display("[-] FAIL OR 2")
		end
		
		
		A = 16'10011100101101010;
		B = 16'01100011010010101;
		OP = 3'b100;
		#1
		
		if((R==(A^B)) and (isZero==0) and (islessThan==1) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS OR 3")
		end
		else begin
			$display("[-] FAIL OR 3")
		end
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/**
			Test CLEAR with different inputs and opcode 101
		**/
		
		
		A = 16'00000000000000000;
		B = 16'00000000000000000;
		OP = 3'b101;
		#1
		
		if((R==0) and (isZero==1) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS CLEAR 1")
		end
		else begin
			$display("[-] FAIL CLEAR 1")
		end
		
		A = 16'11111111111111111;
		B = 16'00000000000000000;
		OP = 3'b101;
		#1
		
		if((R==0) and (isZero==1) and (islessThan==0) and (isgreaterThan==0) and (isoverflow==0))begin
			$display("[+] PASS CLEAR 2")
		end
		else begin
			$display("[-] FAIL CLEAR 2")
		end


		A = 16'10010011110011001;
		B = 16'11001001000010010;
		OP = 3'b101;
		#1
		
		if((R==0) and (isZero==1) and (islessThan==0) and (isgreaterThan==1) and (isoverflow==0))begin
			$display("[+] PASS CLEAR 3")
		end
		else begin
			$display("[-] FAIL CLEAR 3")
		end

=
		
	end


