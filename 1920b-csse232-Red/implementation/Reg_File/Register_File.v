`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:34 02/04/2020 
// Design Name: 
// Module Name:    Register_File 
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
module Register_File(
	 input CLK,
    input [2:0] regDest,
    input [15:0] DataWrite,
    input regWrite,
    output [15:0] wr,
    output [15:0] ma,
    output [15:0] ar,
    output [15:0] na,
    output [15:0] rv,
    output [15:0] sp,
    output [15:0] ra,
    output [15:0] tp
    );
	 reg [15:0] wrIn;
	 reg [15:0] maIn;
	 reg [15:0] arIn;
	 reg [15:0] naIn;
	 reg [15:0] rvIn;
	 reg [15:0] spIn;
	 reg [15:0] raIn;
	 reg [15:0] tpIn;
	 
	Register wrReg(
	.CLK(CLK),
	.A(wrIn),
	.out(wr),
	.regWrite(regWrite)
	);
	
	Register maReg(
	.CLK(CLK),
	.A(maIn),
	.out(ma),
	.regWrite(regWrite)
	);
	
	Register arReg(
	.CLK(CLK),
	.A(arIn),
	.out(ar),
	.regWrite(regWrite)
	);
	
	Register naReg(
	.CLK(CLK),
	.A(naIn),
	.out(na),
	.regWrite(regWrite)
	);
	
	Register rvReg(
	.CLK(CLK),
	.A(rvIn),
	.out(rv),
	.regWrite(regWrite)
	);
	
	spRegister spReg(
	.CLK(CLK),
	.A(spIn),
	.out(sp),
	.regWrite(regWrite)
	);
	
	Register raReg(
	.CLK(CLK),
	.A(raIn),
	.out(ra),
	.regWrite(regWrite)
	);
	
	Register tpReg(
	.CLK(CLK),
	.A(tpIn),
	.out(tp),
	.regWrite(regWrite)
	);
	
always @ (*) begin
if(regWrite==1 && regDest == 0) 
wrIn <= DataWrite;
else
wrIn <= wr;



if(regWrite==1 && regDest == 1)
maIn <= DataWrite;
else
maIn <=ma;




if(regWrite==1 && regDest == 2)
arIn <= DataWrite;
else 
arIn<=ar;



if(regWrite==1 && regDest == 3)
naIn <= DataWrite;
else
naIn <=na;


if(regWrite==1 && regDest == 4)
rvIn <= DataWrite;
else
rvIn <=rv;



if(regWrite==1 && regDest == 5)
spIn <= DataWrite;
else
spIn <=sp;



if(regWrite==1 && regDest == 6)
raIn <= DataWrite;
else
raIn <=ra;



if(regWrite==1 && regDest == 7)
tpIn <= DataWrite;
else
tpIn <=tp;


end

endmodule
