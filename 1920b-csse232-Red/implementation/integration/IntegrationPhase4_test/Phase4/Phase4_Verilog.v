`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:50 02/14/2020 
// Design Name: 
// Module Name:    Phase4_Verilog 
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
module Phase4_Verilog(
	input Reset,
	input [15:0] initialNumber,
	output [15:0] finalOutput,
	//input CLK
	output CLKOutput,
	output [15:0] ALUOutOutput,
	output [15:0] wrOutput,
	output [15:0] maOutput,
	output [15:0] arOutput,
	output [15:0] naOutput,
	output [15:0] rvOutput,
	output [15:0] spOutput,
	output [15:0] raOutput,
	output [15:0] tpOutput,
	output [15:0] DataMemOutput,
	output [15:0] IMMOutput,
	output [15:0] IRInput,
	output [15:0] PCOutput,
	output [15:0] ALUInput1Output,
	output [15:0] ALUInput2Output,
	output [5:0] stateOutput,
	output [15:0] IMOutput,
	output [15:0] DataMemAddrPopPushMuxOutput,
	output memWriteOutput
    );
	 
wire CLK;
wire notCLK;
wire [15:0] PCOutWire;
wire [2:0] PCTopOut;
wire [15:0] muxToPC;
wire [15:0] IMOutWire;
wire [15:0] Adder1Out;
wire [15:0] Adder2Out;
wire [15:0] IMData;
wire [15:0] BaseOffset;
wire [11:0] LeftShiftIn;
wire [12:0] LeftShiftOut;
wire [15:0] numberTwo;
wire [14:0] IMin;
wire [15:0] zero;
wire floatWire;
wire IRWriteControl;
wire callControl;
wire PopPushControl;
wire [2:0]regDestControl;
wire regWriteControl;
wire ExtControl;
wire IMWriteControl;
wire MemWriteControl;
wire [3:0] ALUInput1Control;
wire [3:0] ALUInput2Control;
wire DeltaControl;
wire [2:0] ALUOpControl;
wire [1:0] PCSelectControl;
wire PCWriteControl;
wire inputOnResetControl;
wire [2:0] IRRegSelectOut;
wire [2:0] IRRegSelect2Out;
wire [11:0] IRImmOut;
wire [3:0] IRDeltaOut;
wire IRLocationSelectOut;
wire [3:0] IROpcodeOut;
wire [3:0] IRfunctOut;
wire [15:0] CallMuxOut;
wire [15:0] RegFilePopPushMuxOut;
wire [15:0] ALUOutRegOut;
wire [15:0] ALUOut;
wire [15:0] DataMemOut;
wire [15:0] wrOut;
wire [15:0] maOut;
wire [15:0] arOut;
wire [15:0] naOut;
wire [15:0] rvOut;
wire [15:0] spOut;
wire [15:0] raOut;
wire [15:0] tpOut;
wire [15:0] SignExtendOut;
wire [15:0] ZeroExtendOut;
wire [15:0] ExtMuxOut;
wire [15:0] DataMemAddrPopPushMuxOut;
wire [15:0] RegFileToDataMemMuxOut;
wire [15:0] DataMemDataPopPushMuxOut;
wire [15:0] ALUInput1Out;
wire [15:0] ALUInput2Out;
wire [15:0] DeltaZeroExtOut;
wire [15:0] DeltaALUInput2MuxOut;
wire [15:0] ALUInput1MuxOut;
wire [15:0] ALUInput2MuxOut;
wire [15:0] inputRegOut;
wire [15:0] inputMuxOut;
wire ALUZero;
wire ALUOverflow;
wire ALUGreaterThan;
wire ALULessThan;
wire constantOne;
wire MiniControllerSkip;
wire writeToMemDead;
wire [5:0] stateDead;
//wire ResetProcessor;

assign notCLK = ~CLK;
assign CLKOutput = CLK;
assign constantOne = 1;
assign IMin = PCOutWire [15:1];
assign LeftShiftIn = IRImmOut;
assign BaseOffset = {PCTopOut,LeftShiftOut};
assign numberTwo = 2;
assign zero = 0;

assign finalOutput = wrOut;
assign CLKOutput = CLK;
assign ALUOutOutput = ALUOut;
assign wrOutput = wrOut;
assign maOutput = maOut;
assign arOutput = arOut;
assign naOutput = naOut;
assign rvOutput = rvOut;
assign spOutput = spOut;
assign raOutput = raOut;
assign tpOutput = tpOut;
assign DataMemOutput = DataMemOut;
assign IMMOutput = ExtMuxOut;
assign IRInput = IMOutWire;
assign PCOutput = PCOutWire;
assign ALUInput1Output = ALUInput1MuxOut;
assign ALUInput2Output = DeltaALUInput2MuxOut;
assign stateOutput = stateDead;
assign IMOutput = IMOutWire;
assign DataMemAddrPopPushMuxOutput = DataMemAddrPopPushMuxOut;
assign memWriteOutput = MemWriteControl;



Clock clk(
	 .CLK(CLK)
	 );
	 
Register InputReg(
	.CLK(CLK),
	.A(initialNumber),
	.regWrite(constantOne),
	.out(inputRegOut)
);

mux_16b_2input inputMux(
	.A(RegFilePopPushMuxOut),
	.B(inputRegOut),
	.Op(inputOnResetControl),
	.Output(inputMuxOut)
);

PCRegister pc(
	.Din(muxToPC),
	.PCWrite(PCWriteControl),
	.CLK(CLK),
	.Out(PCOutWire),
	.TopOut(PCTopOut)
);

InstrMem16b IM(
	.addra(IMin),
	.dina(IMData),
	.wea(IMWriteControl),
	.clka(CLK),
	.douta(IMOutWire)

);

mux_16b_4input mux(
	.A(Adder1Out),
	.B(zero),
	.C(ALUInput1MuxOut),
	.D(BaseOffset),
	.Op(PCSelectControl),
	.Output(muxToPC)

);

Left_Shifter shift(
	.A(LeftShiftIn),
	.R(LeftShiftOut)

);

Adder16b Adder1(
	.a(PCOutWire),
	.b(numberTwo),
	.o(Adder1Out),
	.ci(zero),
	.co(floatWire)

);

/*Adder16b Adder2(
	.a(Adder1Out),
	.b(numberTwo),
	.o(Adder2Out),
	.ci(zero),
	.co(floatWire)

);*/

IRReg_withControl irReg(
	.Din(IMOutWire),
	.CLK(CLK),
	.IRWrite(IRWriteControl),
	.RegSelect(IRRegSelectOut),
	.RegSelect2(IRRegSelect2Out),
	.Imm(IRImmOut),
	.Delta(IRDeltaOut),
	.LocationSelect(IRLocationSelectOut),
	.Opcode(IROpcodeOut),
	.funct(IRfunctOut)
);

mux_16b_2input callMux(
	.A(ALUOutRegOut),
	.B(PCOutWire),
	.Op(callControl),
	.Output(CallMuxOut)
);

mux_16b_2input RegFilePopPushMux(
	.A(CallMuxOut),
	.B(DataMemOut),
	.Op(PopPushControl),
	.Output(RegFilePopPushMuxOut)
);

Register_File regFile(
	.CLK(CLK),
	.regDest(regDestControl),
	.regWrite(regWriteControl),
	.DataWrite(inputMuxOut),  //RegFilePopPushMuxOut
	.wr(wrOut),
	.ma(maOut),
	.ar(arOut),
	.na(naOut),
	.rv(rvOut),
	.sp(spOut),
	.ra(raOut),
	.tp(tpOut)
);

Sign_Extender signExtend(
	.A(IRImmOut),
	.R(SignExtendOut)
);

Zero_Extender zeroExtend(
	.A(IRImmOut),
	.R(ZeroExtendOut)
);

mux_16b_2input ExtMux(
	.A(SignExtendOut),
	.B(ZeroExtendOut),
	.Op(ExtControl),
	.Output(ExtMuxOut)
);

mux_16b_2input DataMemAddrPopPushMux(
	.A(maOut),
	.B(ALUOutRegOut),
	.Op(PopPushControl),
	.Output(DataMemAddrPopPushMuxOut)
);

mux_16b_8input RegFileToDataMemMux(
	.A(wrOut),
	.B(maOut),
	.C(arOut),
	.D(naOut),
	.E(rvOut),
	.F(spOut),
	.G(raOut),
	.H(tpOut),
	.Op(IRRegSelectOut),
	.Output(RegFileToDataMemMuxOut)
);

mux_16b_2input DataMemDataPopPushMux(
	.A(ALUOutRegOut),
	.B(RegFileToDataMemMuxOut),
	.Op(PopPushControl),
	.Output(DataMemDataPopPushMuxOut)
);

DataMem16b DM(
	.addra(DataMemAddrPopPushMuxOut),
	.dina(DataMemDataPopPushMuxOut),
	.wea(MemWriteControl),
	.clka(notCLK),
	.douta(DataMemOut)

);

mux_16b_10input ALUInput1Mux(
	.A(wrOut),
	.B(DataMemOut),
	.C(arOut),
	.D(naOut),
	.E(rvOut),
	.F(spOut),
	.G(raOut),
	.H(tpOut),
	.I(ExtMuxOut),
	.J(maOut),
	.Op(ALUInput1Control),
	.Output(ALUInput1MuxOut)
);

mux_16b_10input ALUInput2Mux(
	.A(wrOut),
	.B(DataMemOut),
	.C(arOut),
	.D(naOut),
	.E(rvOut),
	.F(spOut),
	.G(raOut),
	.H(tpOut),
	.I(ExtMuxOut),
	.J(maOut),
	.Op(ALUInput2Control),
	.Output(ALUInput2MuxOut)
);

ZeroExtend_4bto16b DeltaZeroExt(
	.A(IRDeltaOut),
	.R(DeltaZeroExtOut)
);

mux_16b_2input DeltaALUInput2Mux(
	.A(ALUInput2MuxOut),
	.B(DeltaZeroExtOut),
	.Op(DeltaControl),
	.Output(DeltaALUInput2MuxOut)
);

ALU16b alu(
	.A(ALUInput1MuxOut),
	.B(DeltaALUInput2MuxOut),
	.Op(ALUOpControl),
	.ALUout(ALUOut),
	.zero(ALUZero),
	.overflow(ALUOverflow),
	.greaterThan(ALUGreaterThan),
	.lessThan(ALULessThan)
	
);

Register ALUOutReg(
	.CLK(CLK),
	.A(ALUOut),
	.regWrite(constantOne),
	.out(ALUOutRegOut)
);

miniController miniControl(
	.Opcode(IROpcodeOut),
	.isZero(ALUZero),
	.greaterThan(ALUGreaterThan),
	.lessThan(ALULessThan),
	.skip(MiniControllerSkip),
	.funct(IRfunctOut)
);

Control control(
	.Opcode(IROpcodeOut),
	.funct(IRfunctOut),
	.CLK(CLK),
	.Reset(Reset),
	.skip(MiniControllerSkip),
	.RegSelect(IRRegSelectOut),
	.RegSelect2(IRRegSelect2Out),
	.locationSelect(IRLocationSelectOut),
	.ALUOp(ALUOpControl),
	.ALUInput1(ALUInput1Control),
	.ALUInput2(ALUInput2Control),
	.Delta(DeltaControl),
	.Ext(ExtControl),
	.regDest(regDestControl),
	.PopPush(PopPushControl),
	.RegWrite(regWriteControl),
	.MemWrite(MemWriteControl),
	.Call(callControl),
	.PCSelect(PCSelectControl),
	.IRWrite(IRWriteControl),
	.PCWrite(PCWriteControl),
	.inputOnReset(inputOnResetControl),
	.IMWrite(IMWriteControl),
	.writeToMem(writeToMemDead),
	.state(stateDead)
	
);






endmodule
