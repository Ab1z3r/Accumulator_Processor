`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:08 02/07/2020 
// Design Name: 
// Module Name:    Control 
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
module Control(
    input [3:0] Opcode,
    input [3:0] funct,
    input CLK,
    input Reset,
	 input skip,
	 input [2:0] RegSelect,
	 input [2:0] RegSelect2,
	 input locationSelect,
	 output reg inputOnReset,
    output reg[2:0] ALUOp,
    output reg[3:0] ALUInput1,
    output reg[3:0] ALUInput2,
    output reg Delta,
    output reg Ext,
	 output reg [2:0] regDest,
    output reg PopPush,
    output reg RegWrite,
    output reg MemWrite,
    output reg Call,
    output reg [1:0] PCSelect,
    output reg IRWrite,
    output reg PCWrite,
    output reg IMWrite,
	 output reg writeToMem,
	 output reg [5:0] state=0
    );
	 
	 
	 always @ (*) begin
	 if(Opcode == 0)begin
		if(funct == 0||funct == 1||funct == 8||funct ==4)begin
			if(locationSelect == 0 && RegSelect == 1)
				writeToMem <= 1;
			else if(locationSelect == 1 && RegSelect2 == 1)
				writeToMem <= 1;
			else
				writeToMem <= 0;
			end
			else if(funct == 6 && RegSelect2==1)
		writeToMem <= 1;
		else
		writeToMem <= 0;
		end
		
		else if(Opcode == 1 && funct != 9 && funct != 10)begin
			if(RegSelect == 1)
			writeToMem <=1;
			else
			writeToMem <=0;
			
		end
		else
		writeToMem <=0;
		
		if(Reset == 1)begin
			state<=0;
			PCSelect<=1;
			inputOnReset<=1;
			RegWrite<=1;
			regDest<=0;
		end
	 end
	
	always @(posedge CLK) begin
		
		case(state) 
			0: begin				//first cycle of control
			PCWrite <= 1;
			IRWrite <=1;
			PCSelect <= 0;
			RegWrite <= 0;
			MemWrite <= 0;
			PopPush <= 0;
			Call <= 0;
			Delta <= 0;
			inputOnReset<=0;
			if(Reset == 0)
				state <= 1;
			else begin
				state<=0;
				PCSelect<=1;
				inputOnReset<=1;
				RegWrite<=1;
				regDest<=0;
				end
			end
			
			1: begin			//second cycle
			PCWrite <= 0;
			IRWrite <= 0;
			
			if(Opcode == 0 && funct == 0) //add
			state<=2;
			
			if(Opcode == 2)	//addi
			state<=4;
			
			if(Opcode == 3)	//addma
			state<=6;
			
			if(Opcode == 0 && funct == 1)	//and
			state<=8;
			
			if(Opcode == 4)	//call
			state<=10;
			
			if(Opcode == 1 && funct == 0)	//clrr
			state<=12;
			
			if(Opcode == 1 && funct == 1)	//decr
			state<=14;
			
			if(Opcode == 5)	//goto
			state<=16;
			
			if(Opcode == 1 && funct == 2)  //incr
			state<=17;
			
			if(Opcode == 0 && funct == 2)	 //jr
			state<=19;
			
			if(Opcode == 7)  //la
			state<=20;
			
			if(Opcode == 8)  //lui
			state<=22;
			
			if(Opcode ==9)  //luia
			state<=22;
			
			if(Opcode == 0 && funct == 6)  //move
			state<=25;
			
			if(Opcode == 0 && funct == 7)
			state<=44;
			
			if(Opcode == 0 && funct == 8)	//or
			state<=27;
			
			if(Opcode == 11) //ori
			state<=29;
			
			if(Opcode == 12)	//orim
			state<=31;
			
			if(Opcode == 1 && funct == 9)  //pop
			state<=33;
			
			if(Opcode == 1 && funct == 10) //push
			state<=33;
			
			if(Opcode == 0 && funct == 11)	//seq
			state<=37;
			
			if(Opcode == 13)	//seqi
			state<=39;
			
			if(Opcode == 0 && funct == 12)	//sgt
			state<=40;
			
			if(Opcode == 1 && funct == 13)	//shl
			state<=41;
			
			if(Opcode == 1 && funct == 14)	//shr
			state<=43;
			
			if(Opcode == 0 && funct == 15)	//slt
			state<=40;
			
			if(Opcode == 10)	//slti
			state<=39;
			
			if(Opcode == 0 && funct == 3)	//sne
			state<=37;
			
			if(Opcode == 14)	//snei
			state<=39;
			
			if(Opcode == 0 && funct == 4)	//sub
			state<=46;
			
			if(Opcode == 15)	//subi
			state<=48;
			
			if(Opcode == 6)
			state<=49;
			
			
			
		   end
			
			2: begin		//add third cycle
				ALUInput1 <= RegSelect;
				ALUInput2 <= RegSelect2;
				ALUOp <= 0;
				state <= 3;
			end
			
			3: begin 	//add/sub/or/and fourth cycle
				
				MemWrite <= writeToMem;
				
				RegWrite <=~writeToMem;
				if(locationSelect == 0)
				regDest <= RegSelect;
				else
				regDest <=RegSelect2;
				
				state <=0;
			end
			
			4: begin		//addi third cycle
				ALUInput1<=0;
				Ext<=1;
				ALUInput2<=8;
				ALUOp<=0;
				state<=5;
			end
			
			5: begin		//addi/subi fourth cycle
				RegWrite <=1;
				regDest <=0;
				state <=0;
			end
			
			6: begin  	//addm third cycle
				ALUInput1 <=9;
				Ext<=1;
				ALUInput2 <=8;
				ALUOp <=0;
				state<=7;
				
			end
			
			7: begin		//addm fourth cycle
				RegWrite<=1;
				regDest<=1;
				state<=0;
			end
			
			8: begin		//and third cycle
				ALUInput1 <= RegSelect;
				ALUInput2 <= RegSelect2;
				ALUOp <= 2;
				state<=3;
			end
			
			
			
			10: begin	//call third cycle
				Call <= 1;
				regDest <= 6;
				RegWrite <= 1;
				state <= 11;
			end
			
			11: begin   //call fourth cycle
				PCSelect<=3;
				PCWrite <=1;
				state<=0;
			end
			
			12: begin	//clrr third cycle
				ALUOp<=6;
				state<=13;
			end
			
			13: begin	//clrr/incr/decr/shr/shl fourth cycle
				if(writeToMem == 0) begin
					RegWrite <=1;
					regDest <= RegSelect;
				end
				else
				MemWrite<=1;
				
				state<=0;
			end
			
			14: begin	//decr third cycle
				Delta <=1;
				ALUInput1 <= regDest;
				ALUOp <=1;
				state <=13;
			end
			
			16: begin	//goto third cycle
				PCSelect <=3;
				PCWrite<=1;
				state<=0;
			end
			
			17: begin	//incr third cycle
				Delta <=1;
				ALUInput1 <= regDest;
				ALUOp <=0;
				state <=13;
			end
			
			
			19: begin	//jr third cycle
				ALUInput1 <= RegSelect;
				PCSelect<=2;
				PCWrite <= 1;
				state<=0;
			end
			
			20: begin	//la third cycle
				Ext <=0;
				ALUInput2 <= 8;
				ALUOp <= 7;
				state <=21;
			end
			
			21: begin	//la fourth cycle
				RegWrite <=1;
				regDest <= 1;
				state<=0;
			end
			
			22: begin	//lui/luia third cycle
				ALUInput2 <= 8;
				Ext <= 1;
				ALUOp <=7;
				
				if(Opcode == 8)
				state<=23;
				else
				state <=24;
			end
			
			23: begin	//lui fourth cycle
				RegWrite <= 1;
				regDest<=0;
				state<=0;
			end
			
			
			24: begin	//luia fourth cycle
				RegWrite<=1;
				regDest<=7;
				state<=0;
			end
			
			25: begin	//movethird cycle
				ALUInput2 <= RegSelect;
				ALUOp<=7;
				state<=26;
			end
			
			26: begin
			
			if(writeToMem == 0) begin //move fourth cycle
					RegWrite <=1;
					regDest <= RegSelect2;
				end
				else
				MemWrite<=1;
				
				state<=0;
				
				end

			
			27: begin	//or third cycle
				ALUInput1 <= RegSelect;
				ALUInput2 <= RegSelect2;
				ALUOp <= 3;
				state<= 3;
				
			end
			
			
			
			
			29: begin	//ori third cycle
				ALUInput1 <= 0;
				Ext <= 1;
				ALUInput2 <= 8;
				ALUOp <=3;
				state<=30;
			end
			
			30: begin	//ori fourth cycle
				RegWrite<=1;
				regDest<=0;
				state<=0;
			end
			
			31: begin	//orim third cycle
				ALUInput1 <= 9;
				Ext <= 1;
				ALUInput2 <= 8;
				ALUOp <=3;
				state<=32;
			end	
			
			32: begin	//orim fourth cycle
				RegWrite<=1;
				regDest<=1;
				state<=0;
			end
			
			33: begin	//pop/push third cycle
				ALUInput1 <=5;
				ALUOp <=0;
				Delta <=1;
				state<=34;
			end
			
			34: begin	//pop/push fourth cycle
				PopPush <=1;
				if(funct == 9)
				state<=35;
				else
				state<=36;
			end
			
			35: begin	//pop fifth cycle
				regDest<= RegSelect;
				RegWrite <=1;
				state<=0;
			end
			
			
			36: begin	//Push fifth cycle
				MemWrite<=1;
				state<=0;
			end
			
			37: begin	//seq/sne third cycle
				ALUInput1<=0;
				ALUInput2<= RegSelect;
				ALUOp<=1;
				Delta<=0;
				state <=38;
			end
			
			38: begin	//all skip instructions fourth cycle
				//if(skip == 1) begin
					PCWrite<=skip;
					//PCSelect<=skip;
				//end
				state<=0;
			end
			
			39: begin	//seqi/snei/slti third cycle
				ALUInput1 <= 0;
				Ext <= 1;
				ALUInput2 <= 8;
				ALUOp <=1;
				state <=38;
			end	
			
		
			
			40: begin	//sgt/slt third cycle
				ALUInput1 <=0;
				ALUInput2<= RegSelect;
				state<=38;
			end
			
			
			
			41: begin	//shl	third cycle
				Delta <=1;
				ALUInput1 <=RegSelect;
				ALUOp <=4;
				state <=13;
			end
			
			
			
			43: begin	//shr third cycle
				Delta <=1;
				ALUInput1 <= RegSelect;
				ALUOp <=5;
				state <=13;
			end
			
			44: begin //movem third cycle
				ALUInput2 <= RegSelect;
				ALUOp<=7;
				state<=45;
			end
			
			45: begin //movem fourth cycle
				RegWrite<=1;
				regDest<= 1;
				state<=0;
			end
			
			
			46: begin	//sub third cycle
				ALUInput1 <= RegSelect;
				ALUInput2 <= RegSelect2;
				ALUOp <=1;
				state <=3;
			end
			
			
			48: begin	//subi third cycle
			ALUInput1 <=0;
			Ext<=1;
			ALUInput2<=8;
			ALUOp<=1;
			state<=5;
			end
			
			49: begin
			ALUOp<=0;
			ALUInput1<=0;
			ALUInput2<=0;
			Delta<=0;
			Ext<=0;
			regDest<=0;
			PopPush<=0;
			RegWrite<=0;
			MemWrite<=0;
			Call<=0;
			PCSelect<=0;
			IRWrite<=0;
			PCWrite<=0;
			IMWrite<=0;
			state<=49;
			end
			

		
	endcase
end
endmodule
