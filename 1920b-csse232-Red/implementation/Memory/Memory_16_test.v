`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:47:10 02/10/2020
// Design Name:   Memory_16
// Module Name:   C:/Users/zhuy9/Documents/202020/CSSE232-CompArc/Project_Workspace_232r/Memory/Memory_16b/Memory_16_test.v
// Project Name:  Memory_16b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Memory_16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Memory_16_test;

	// Inputs
	reg clka;
	reg [0:0] wea;
	reg [12:0] addra;
	reg [15:0] dina;

	// Outputs
	wire [15:0] douta;

	// Instantiate the Unit Under Test (UUT)
	Memory_16 uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);

   
   initial begin
        #10;
		  clka = 0;
        forever
          begin
             #10; 
				 clka <= ~clka;
          end
     end
   
   initial begin
	// Initialize Inputs
	addra = 0;
	dina = 0;
	wea = 0;

	// Wait 100 ns for global reset to finish
	#100;
        
	// Add stimulus here

	wea = 1;
	dina = 1000;
	addra = 0;
	#20;
	
	dina = 2000;
	addra = 1;
	#20;
	
	dina = 3000;
	addra = 2;
	#20;
	
	dina = 4000;
	addra = 3;
	#20;
	wea = 0;
	#20;
	
		addra = 0;
		#10;
		if (douta == 1000) begin
		$display("[+] PASS");
		end else begin
		$display ("[-] FAIL");
		end
		#10;
		addra = 3;
		#10;
		if (douta == 4000) begin
		$display("[+] PASS");
		end else begin
		$display ("[-] FAIL");
		end
		#10;
		addra = 2;	
		#10;
		if (douta == 3000) begin
		$display("[+] PASS");
		end else begin
		$display ("[-] FAIL");
		end
		#10;
		addra = 1;
		#10;
		if (douta == 2000) begin
		$display("[+] PASS");
		end else begin
		$display ("[-] FAIL");
		end
	end
      
endmodule

