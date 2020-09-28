`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:04 02/07/2020 
// Design Name: 
// Module Name:    miniController 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module miniController(
    input [3:0] Opcode,
    input isZero,
    input greaterThan,
    input lessThan,
    output reg skip,
    input [3:0] funct
    );

always @ (*) begin
	if(Opcode == 0 && funct == 11 && isZero == 1)  //seq
		skip <= 1;
		
	else if(Opcode == 13 && isZero == 1)//seqi
	   skip <= 1;
		else if(Opcode == 0 && funct == 12 && greaterThan == 1)//sgt
		skip<=1;
		else if(Opcode == 0 && funct == 15 && lessThan == 1)//slt
		skip<=1;
		else if(Opcode == 10 && lessThan == 1)//slti
		skip<=1;
		else if(Opcode == 0 && funct == 3 && isZero == 0)//sne
		skip<=1;
		else if(Opcode == 14  && isZero ==0)//snei
		skip<=1;
		
	else
	skip<=0;
	
	
end

endmodule
