`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:26:35 01/30/2020 
// Design Name: 
// Module Name:    Adder4b 
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
module Adder16b(
    input [15:0] a,
    input [15:0] b,
    output [15:0] o,
    input ci,
	 output co
    );
	wire C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16;
	
	add1b add1(
	.a(a[0]),
	.b(b[0]),
	.r(o[0]),
	.ci(ci),
	.co(C1)
	);
	
	add1b add2(
	.a(a[1]),
	.b(b[1]),
	.r(o[1]),
	.ci(C1),
	.co(C2)
	);
	
	add1b add3(
	.a(a[2]),
	.b(b[2]),
	.r(o[2]),
	.ci(C2),
	.co(C3)
	);
	
	add1b add4(
	.a(a[3]),
	.b(b[3]),
	.r(o[3]),
	.ci(C3),
	.co(C4)
	);
	
	add1b add5(
	.a(a[4]),
	.b(b[4]),
	.r(o[4]),
	.ci(C4),
	.co(C5)
	);
	
	add1b add6(
	.a(a[5]),
	.b(b[5]),
	.r(o[5]),
	.ci(C5),
	.co(C6)
	);
	
	add1b add7(
	.a(a[6]),
	.b(b[6]),
	.r(o[6]),
	.ci(C6),
	.co(C7)
	);
	
	add1b add8(
	.a(a[7]),
	.b(b[7]),
	.r(o[7]),
	.ci(C7),
	.co(C8)
	);
	
	add1b add9(
	.a(a[8]),
	.b(b[8]),
	.r(o[8]),
	.ci(C8),
	.co(C9)
	);
	
	add1b add10(
	.a(a[9]),
	.b(b[9]),
	.r(o[9]),
	.ci(C9),
	.co(C10)
	);
	
	add1b add11(
	.a(a[10]),
	.b(b[10]),
	.r(o[10]),
	.ci(C10),
	.co(C11)
	);
	
	add1b add12(
	.a(a[11]),
	.b(b[11]),
	.r(o[11]),
	.ci(C11),
	.co(C12)
	);
	
	add1b add13(
	.a(a[12]),
	.b(b[12]),
	.r(o[12]),
	.ci(C12),
	.co(C13)
	);
	
	add1b add14(
	.a(a[13]),
	.b(b[13]),
	.r(o[13]),
	.ci(C13),
	.co(C14)
	);
	
	add1b add15(
	.a(a[14]),
	.b(b[14]),
	.r(o[14]),
	.ci(C14),
	.co(C15)
	);
	
	add1b add16(
	.a(a[15]),
	.b(b[15]),
	.r(o[15]),
	.ci(C15),
	.co(co)
	);

endmodule
