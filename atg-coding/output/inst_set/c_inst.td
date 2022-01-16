class C_BEQZ_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b110;
	bits<9> imm;
	bits<3> rs1;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{7-7};
	let Inst{11-10} = imm{3-2};
	let Inst{6-5} = imm{6-5};
	let Inst{4-3} = imm{1-0};
	let Inst{2-2} = imm{4-4};
	let Inst{9-7} = rs1;
	let Inst{1-0} = opcode;
}
class C_BEQZ_AUX: C_BEQZ_FM2, TSFlagTemplate<InstFormatCB>, Sched<[WriteJmp]>;
class C_BNEZ_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b111;
	bits<9> imm;
	bits<3> rs1;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{7-7};
	let Inst{11-10} = imm{3-2};
	let Inst{6-5} = imm{6-5};
	let Inst{4-3} = imm{1-0};
	let Inst{2-2} = imm{4-4};
	let Inst{9-7} = rs1;
	let Inst{1-0} = opcode;
}
class C_BNEZ_AUX: C_BNEZ_FM2, TSFlagTemplate<InstFormatCB>, Sched<[WriteJmp]>;
class C_ADDI_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b000;
	bits<10> imm;
	bits<5> rd;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-2} = imm{4-0};
	let Inst{11-7} = rd;
	let Inst{1-0} = opcode;
}
class C_ADDI_AUX: C_ADDI_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteIALU, ReadIALU]>;
class C_ADDI16SP_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b011;
	bits<10> imm;
	bits<5> rd = 0b00010;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{9-9};
	let Inst{6-6} = imm{4-4};
	let Inst{5-5} = imm{6-6};
	let Inst{4-3} = imm{8-7};
	let Inst{2-2} = imm{5-5};
	let Inst{11-7} = rd;
	let Inst{1-0} = opcode;
}
class C_ADDI16SP_AUX: C_ADDI16SP_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteIALU, ReadIALU]>;
class C_ADDIW_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b001;
	bits<10> imm;
	bits<5> rd;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-2} = imm{4-0};
	let Inst{11-7} = rd;
	let Inst{1-0} = opcode;
}
def C_ADDIW: Instruction, C_ADDIW_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteIALU32, ReadIALU32]>{
	let Size = 2;
	let AsmString = "c.addiw	$rd, $imm";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins GPRNoX0:$rd, simm6:$imm);
	let OutOperandList = (outs GPRNoX0:$rd_wb);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtC, IsRV64];
}
class C_ANDI_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b100;
	bits<9> imm;
	bits<2> funct2 = 0b10;
	bits<3> rs1;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-2} = imm{4-0};
	let Inst{11-10} = funct2;
	let Inst{9-7} = rs1;
	let Inst{1-0} = opcode;
}
class C_ANDI_AUX: C_ANDI_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteIALU, ReadIALU]>;
class C_FLDSP_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b001;
	bits<10> imm;
	bits<5> rd;
	bits<2> opcode = 0b10;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-5} = imm{4-3};
	let Inst{4-2} = imm{8-6};
	let Inst{11-7} = rd;
	let Inst{1-0} = opcode;
}
def C_FLDSP: Instruction, C_FLDSP_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteFLD64, ReadMemBase]>{
	let Size = 2;
	let AsmString = "c.fldsp	$rd, ${imm}(${rs1})";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins SP:$rs1, uimm9_lsb000:$imm);
	let OutOperandList = (outs FPR64:$rd);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtC, HasStdExtD];
}
class C_FLWSP_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b011;
	bits<10> imm;
	bits<5> rd;
	bits<2> opcode = 0b10;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-4} = imm{4-2};
	let Inst{3-2} = imm{7-6};
	let Inst{11-7} = rd;
	let Inst{1-0} = opcode;
}
class C_FLWSP_AUX: C_FLWSP_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteFLD32, ReadMemBase]>;
class C_LDSP_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b011;
	bits<10> imm;
	bits<5> rd;
	bits<2> opcode = 0b10;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-5} = imm{4-3};
	let Inst{4-2} = imm{8-6};
	let Inst{11-7} = rd;
	let Inst{1-0} = opcode;
}
def C_LDSP: Instruction, C_LDSP_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteLDD, ReadMemBase]>{
	let Size = 2;
	let AsmString = "c.ldsp	$rd, ${imm}(${rs1})";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins SP:$rs1, uimm9_lsb000:$imm);
	let OutOperandList = (outs GPRNoX0:$rd);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtC, IsRV64];
}
class C_LI_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b010;
	bits<10> imm;
	bits<5> rd;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-2} = imm{4-0};
	let Inst{11-7} = rd;
	let Inst{1-0} = opcode;
}
class C_LI_AUX: C_LI_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteIALU]>;
class C_LUI_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b011;
	bits<10> imm;
	bits<5> rd;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-2} = imm{4-0};
	let Inst{11-7} = rd;
	let Inst{1-0} = opcode;
}
class C_LUI_AUX: C_LUI_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteIALU]>;
class C_LWSP_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b010;
	bits<10> imm;
	bits<5> rd;
	bits<2> opcode = 0b10;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-4} = imm{4-2};
	let Inst{3-2} = imm{7-6};
	let Inst{11-7} = rd;
	let Inst{1-0} = opcode;
}
class C_LWSP_AUX: C_LWSP_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteLDW, ReadMemBase]>;
class C_NOP_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b000;
	bits<5> rd = 0b00000;
	bits<5> immediate = 0b00000;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = 0b0;
	let Inst{11-7} = rd;
	let Inst{6-2} = immediate;
	let Inst{1-0} = opcode;
}
class C_NOP_AUX: C_NOP_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteNop]>;
class C_SLLI_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b000;
	bits<10> imm;
	bits<5> rd;
	bits<2> opcode = 0b10;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-2} = imm{4-0};
	let Inst{11-7} = rd;
	let Inst{1-0} = opcode;
}
class C_SLLI_AUX: C_SLLI_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteShift, ReadShift]>;
class C_SRAI_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b100;
	bits<9> imm;
	bits<2> funct2 = 0b01;
	bits<3> rs1;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-2} = imm{4-0};
	let Inst{11-10} = funct2;
	let Inst{9-7} = rs1;
	let Inst{1-0} = opcode;
}
class C_SRAI_AUX: C_SRAI_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteShift, ReadShift]>;
class C_SRLI_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b100;
	bits<9> imm;
	bits<2> funct2 = 0b00;
	bits<3> rs1;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = imm{5-5};
	let Inst{6-2} = imm{4-0};
	let Inst{11-10} = funct2;
	let Inst{9-7} = rs1;
	let Inst{1-0} = opcode;
}
class C_SRLI_AUX: C_SRLI_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteShift, ReadShift]>;
class C_ADDI4SPN_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b000;
	bits<10> imm;
	bits<3> rd;
	bits<2> opcode = 0b00;
	let Inst{15-13} = funct3;
	let Inst{12-11} = imm{5-4};
	let Inst{10-7} = imm{9-6};
	let Inst{6-6} = imm{2-2};
	let Inst{5-5} = imm{3-3};
	let Inst{4-2} = rd;
	let Inst{1-0} = opcode;
}
class C_ADDI4SPN_AUX: C_ADDI4SPN_FM2, TSFlagTemplate<InstFormatCIW>, Sched<[WriteIALU, ReadIALU]>;
class C_J_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b101;
	bits<11> offset;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = offset{10-10};
	let Inst{11-11} = offset{3-3};
	let Inst{10-9} = offset{8-7};
	let Inst{8-8} = offset{9-9};
	let Inst{7-7} = offset{5-5};
	let Inst{6-6} = offset{6-6};
	let Inst{5-3} = offset{2-0};
	let Inst{2-2} = offset{4-4};
	let Inst{1-0} = opcode;
}
class C_J_AUX: C_J_FM2, TSFlagTemplate<InstFormatCJ>, Sched<[WriteJmp]>;
class C_JAL_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b001;
	bits<11> offset;
	bits<2> opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-12} = offset{10-10};
	let Inst{11-11} = offset{3-3};
	let Inst{10-9} = offset{8-7};
	let Inst{8-8} = offset{9-9};
	let Inst{7-7} = offset{5-5};
	let Inst{6-6} = offset{6-6};
	let Inst{5-3} = offset{2-0};
	let Inst{2-2} = offset{4-4};
	let Inst{1-0} = opcode;
}
class C_JAL_AUX: C_JAL_FM2, TSFlagTemplate<InstFormatCJ>, Sched<[WriteJal]>;
class C_FLD_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b001;
	bits<8> imm;
	bits<3> rs1;
	bits<3> rd;
	bits<2> opcode = 0b00;
	let Inst{15-13} = funct3;
	let Inst{12-10} = imm{5-3};
	let Inst{6-5} = imm{7-6};
	let Inst{9-7} = rs1;
	let Inst{4-2} = rd;
	let Inst{1-0} = opcode;
}
def C_FLD: Instruction, C_FLD_FM2, TSFlagTemplate<InstFormatCL>, Sched<[WriteFLD64, ReadMemBase]>{
	let Size = 2;
	let AsmString = "c.fld	$rd, ${imm}(${rs1})";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins GPRC:$rs1, uimm8_lsb000:$imm);
	let OutOperandList = (outs FPR64C:$rd);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtC, HasStdExtD];
}
class C_FLW_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b011;
	bits<7> imm;
	bits<3> rs1;
	bits<3> rd;
	bits<2> opcode = 0b00;
	let Inst{15-13} = funct3;
	let Inst{12-10} = imm{5-3};
	let Inst{6-6} = imm{2-2};
	let Inst{5-5} = imm{6-6};
	let Inst{9-7} = rs1;
	let Inst{4-2} = rd;
	let Inst{1-0} = opcode;
}
class C_FLW_AUX: C_FLW_FM2, TSFlagTemplate<InstFormatCL>, Sched<[WriteFLD32, ReadMemBase]>;
class C_LD_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b011;
	bits<8> imm;
	bits<3> rs1;
	bits<3> rd;
	bits<2> opcode = 0b00;
	let Inst{15-13} = funct3;
	let Inst{12-10} = imm{5-3};
	let Inst{6-5} = imm{7-6};
	let Inst{9-7} = rs1;
	let Inst{4-2} = rd;
	let Inst{1-0} = opcode;
}
def C_LD: Instruction, C_LD_FM2, TSFlagTemplate<InstFormatCL>, Sched<[WriteLDD, ReadMemBase]>{
	let Size = 2;
	let AsmString = "c.ld	$rd, ${imm}(${rs1})";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins GPRC:$rs1, uimm8_lsb000:$imm);
	let OutOperandList = (outs GPRC:$rd);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtC, IsRV64];
}
class C_LW_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b010;
	bits<7> imm;
	bits<3> rs1;
	bits<3> rd;
	bits<2> opcode = 0b00;
	let Inst{15-13} = funct3;
	let Inst{12-10} = imm{5-3};
	let Inst{6-6} = imm{2-2};
	let Inst{5-5} = imm{6-6};
	let Inst{9-7} = rs1;
	let Inst{4-2} = rd;
	let Inst{1-0} = opcode;
}
class C_LW_AUX: C_LW_FM2, TSFlagTemplate<InstFormatCL>, Sched<[WriteLDW, ReadMemBase]>;
class C_ADD_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<4> funct4 = 0b1001;
	bits<5> rs1;
	bits<5> rs2;
	bits<2> opcode = 0b10;
	let Inst{15-12} = funct4;
	let Inst{11-7} = rs1;
	let Inst{6-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_ADD_AUX: C_ADD_FM2, TSFlagTemplate<InstFormatCR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class C_ADDW_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<6> funct6 = 0b100111;
	bits<3> rd;
	bits<2> funct2 = 0b01;
	bits<3> rs2;
	bits<2> opcode = 0b01;
	let Inst{15-10} = funct6;
	let Inst{9-7} = rd;
	let Inst{6-5} = funct2;
	let Inst{4-2} = rs2;
	let Inst{1-0} = opcode;
}
def C_ADDW: Instruction, C_ADDW_FM2, TSFlagTemplate<InstFormatCR>, Sched<[WriteIALU32, ReadIALU32, ReadIALU32]>{
	let Size = 2;
	let AsmString = "c.addw	$rd, $rs2";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins GPRC:$rd, GPRC:$rs2);
	let OutOperandList = (outs GPRC:$rd_wb);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtC, IsRV64];
}
class C_AND_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<6> funct6 = 0b100011;
	bits<3> rd;
	bits<2> funct2 = 0b11;
	bits<3> rs2;
	bits<2> opcode = 0b01;
	let Inst{15-10} = funct6;
	let Inst{9-7} = rd;
	let Inst{6-5} = funct2;
	let Inst{4-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_AND_AUX: C_AND_FM2, TSFlagTemplate<InstFormatCR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class C_EBREAK_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<4> funct4 = 0b1001;
	bits<5> rd = 0b00000;
	bits<5> rs2 = 0b00000;
	bits<2> opcode = 0b10;
	let Inst{15-12} = funct4;
	let Inst{11-7} = rd;
	let Inst{6-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_EBREAK_AUX: C_EBREAK_FM2, TSFlagTemplate<InstFormatCR>, Sched<[]>;
class C_JALR_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<4> funct4 = 0b1001;
	bits<5> rs1;
	bits<5> rd = 0b00000;
	bits<2> opcode = 0b10;
	let Inst{15-12} = funct4;
	let Inst{11-7} = rs1;
	let Inst{6-2} = rd;
	let Inst{1-0} = opcode;
}
class C_JALR_AUX: C_JALR_FM2, TSFlagTemplate<InstFormatCR>, Sched<[WriteJalr, ReadJalr]>;
class C_JR_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<4> funct4 = 0b1000;
	bits<5> rs1;
	bits<5> rd = 0b00000;
	bits<2> opcode = 0b10;
	let Inst{15-12} = funct4;
	let Inst{11-7} = rs1;
	let Inst{6-2} = rd;
	let Inst{1-0} = opcode;
}
class C_JR_AUX: C_JR_FM2, TSFlagTemplate<InstFormatCR>, Sched<[WriteJmpReg]>;
class C_MV_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<4> funct4 = 0b1000;
	bits<5> rs1;
	bits<5> rs2;
	bits<2> opcode = 0b10;
	let Inst{15-12} = funct4;
	let Inst{11-7} = rs1;
	let Inst{6-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_MV_AUX: C_MV_FM2, TSFlagTemplate<InstFormatCR>, Sched<[WriteIALU, ReadIALU]>;
class C_OR_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<6> funct6 = 0b100011;
	bits<3> rd;
	bits<2> funct2 = 0b10;
	bits<3> rs2;
	bits<2> opcode = 0b01;
	let Inst{15-10} = funct6;
	let Inst{9-7} = rd;
	let Inst{6-5} = funct2;
	let Inst{4-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_OR_AUX: C_OR_FM2, TSFlagTemplate<InstFormatCR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class C_SUB_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<6> funct6 = 0b100011;
	bits<3> rd;
	bits<2> funct2 = 0b00;
	bits<3> rs2;
	bits<2> opcode = 0b01;
	let Inst{15-10} = funct6;
	let Inst{9-7} = rd;
	let Inst{6-5} = funct2;
	let Inst{4-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_SUB_AUX: C_SUB_FM2, TSFlagTemplate<InstFormatCR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class C_SUBW_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<6> funct6 = 0b100111;
	bits<3> rd;
	bits<2> funct2 = 0b00;
	bits<3> rs2;
	bits<2> opcode = 0b01;
	let Inst{15-10} = funct6;
	let Inst{9-7} = rd;
	let Inst{6-5} = funct2;
	let Inst{4-2} = rs2;
	let Inst{1-0} = opcode;
}
def C_SUBW: Instruction, C_SUBW_FM2, TSFlagTemplate<InstFormatCR>, Sched<[WriteIALU32, ReadIALU32, ReadIALU32]>{
	let Size = 2;
	let AsmString = "c.subw	$rd, $rs2";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins GPRC:$rd, GPRC:$rs2);
	let OutOperandList = (outs GPRC:$rd_wb);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtC, IsRV64];
}
class C_XOR_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<6> funct6 = 0b100011;
	bits<3> rd;
	bits<2> funct2 = 0b01;
	bits<3> rs2;
	bits<2> opcode = 0b01;
	let Inst{15-10} = funct6;
	let Inst{9-7} = rd;
	let Inst{6-5} = funct2;
	let Inst{4-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_XOR_AUX: C_XOR_FM2, TSFlagTemplate<InstFormatCR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class C_FSD_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b101;
	bits<8> imm;
	bits<3> rs1;
	bits<3> rs2;
	bits<2> opcode = 0b00;
	let Inst{15-13} = funct3;
	let Inst{12-10} = imm{5-3};
	let Inst{6-5} = imm{7-6};
	let Inst{9-7} = rs1;
	let Inst{4-2} = rs2;
	let Inst{1-0} = opcode;
}
def C_FSD: Instruction, C_FSD_FM2, TSFlagTemplate<InstFormatCS>, Sched<[WriteFST64, ReadStoreData, ReadMemBase]>{
	let Size = 2;
	let AsmString = "c.fsd	$rs2, ${imm}(${rs1})";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins FPR64C:$rs2, GPRC:$rs1, uimm8_lsb000:$imm);
	let OutOperandList = (outs);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtC, HasStdExtD];
}
class C_FSW_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b111;
	bits<7> imm;
	bits<3> rs1;
	bits<3> rs2;
	bits<2> opcode = 0b00;
	let Inst{15-13} = funct3;
	let Inst{12-10} = imm{5-3};
	let Inst{6-6} = imm{2-2};
	let Inst{5-5} = imm{6-6};
	let Inst{9-7} = rs1;
	let Inst{4-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_FSW_AUX: C_FSW_FM2, TSFlagTemplate<InstFormatCS>, Sched<[WriteFST32, ReadStoreData, ReadMemBase]>;
class C_SD_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b111;
	bits<8> imm;
	bits<3> rs1;
	bits<3> rs2;
	bits<2> opcode = 0b00;
	let Inst{15-13} = funct3;
	let Inst{12-10} = imm{5-3};
	let Inst{6-5} = imm{7-6};
	let Inst{9-7} = rs1;
	let Inst{4-2} = rs2;
	let Inst{1-0} = opcode;
}
def C_SD: Instruction, C_SD_FM2, TSFlagTemplate<InstFormatCS>, Sched<[WriteSTD, ReadStoreData, ReadMemBase]>{
	let Size = 2;
	let AsmString = "c.sd	$rs2, ${imm}(${rs1})";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins GPRC:$rs2, GPRC:$rs1, uimm8_lsb000:$imm);
	let OutOperandList = (outs);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtC, IsRV64];
}
class C_SW_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b110;
	bits<7> imm;
	bits<3> rs1;
	bits<3> rs2;
	bits<2> opcode = 0b00;
	let Inst{15-13} = funct3;
	let Inst{12-10} = imm{5-3};
	let Inst{6-6} = imm{2-2};
	let Inst{5-5} = imm{6-6};
	let Inst{9-7} = rs1;
	let Inst{4-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_SW_AUX: C_SW_FM2, TSFlagTemplate<InstFormatCS>, Sched<[WriteSTW, ReadStoreData, ReadMemBase]>;
class C_FSDSP_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b101;
	bits<10> imm;
	bits<5> rs2;
	bits<2> opcode = 0b10;
	let Inst{15-13} = funct3;
	let Inst{12-10} = imm{5-3};
	let Inst{9-7} = imm{8-6};
	let Inst{6-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_FSDSP_AUX: C_FSDSP_FM2, TSFlagTemplate<InstFormatCSS>, Sched<[WriteFST64, ReadStoreData, ReadMemBase]>;
class C_FSWSP_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b111;
	bits<10> imm;
	bits<5> rs2;
	bits<2> opcode = 0b10;
	let Inst{15-13} = funct3;
	let Inst{12-9} = imm{5-2};
	let Inst{8-7} = imm{7-6};
	let Inst{6-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_FSWSP_AUX: C_FSWSP_FM2, TSFlagTemplate<InstFormatCSS>, Sched<[WriteFST32, ReadStoreData, ReadMemBase]>;
class C_SDSP_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b111;
	bits<10> imm;
	bits<5> rs2;
	bits<2> opcode = 0b10;
	let Inst{15-13} = funct3;
	let Inst{12-10} = imm{5-3};
	let Inst{9-7} = imm{8-6};
	let Inst{6-2} = rs2;
	let Inst{1-0} = opcode;
}
def C_SDSP: Instruction, C_SDSP_FM2, TSFlagTemplate<InstFormatCSS>, Sched<[WriteSTD, ReadStoreData, ReadMemBase]>{
	let Size = 2;
	let AsmString = "c.sdsp	$rs2, ${imm}(${rs1})";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins GPR:$rs2, SP:$rs1, uimm9_lsb000:$imm);
	let OutOperandList = (outs);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtC, IsRV64];
}
class C_SWSP_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b110;
	bits<10> imm;
	bits<5> rs2;
	bits<2> opcode = 0b10;
	let Inst{15-13} = funct3;
	let Inst{12-9} = imm{5-2};
	let Inst{8-7} = imm{7-6};
	let Inst{6-2} = rs2;
	let Inst{1-0} = opcode;
}
class C_SWSP_AUX: C_SWSP_FM2, TSFlagTemplate<InstFormatCSS>, Sched<[WriteSTW, ReadStoreData, ReadMemBase]>;
class C_SLLI64_HINT_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<2> Opcode = 0b10;
	let Inst{15-13} = funct3;
	let Inst{12-12} = 0b0;
	let Inst{11-7} = rd;
	let Inst{6-2} = 0b00000;
	let Inst{1-0} = Opcode;
}
class C_SLLI64_HINT_AUX: C_SLLI64_HINT_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteShift, ReadShift]>;
class C_SRLI64_HINT_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<2> Opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-10} = 0b000;
	let Inst{9-7} = rd{2-0};
	let Inst{6-2} = 0b00000;
	let Inst{1-0} = Opcode;
}
class C_SRLI64_HINT_AUX: C_SRLI64_HINT_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteShift, ReadShift]>;
class C_SRAI64_HINT_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<2> Opcode = 0b01;
	let Inst{15-13} = funct3;
	let Inst{12-10} = 0b001;
	let Inst{9-7} = rd{2-0};
	let Inst{6-2} = 0b00000;
	let Inst{1-0} = Opcode;
}
class C_SRAI64_HINT_AUX: C_SRAI64_HINT_FM2, TSFlagTemplate<InstFormatCI>, Sched<[WriteShift, ReadShift]>;
class PredicateControl_C_BEQZ;
class MicroMipsInstBase_C_BEQZ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_BEQZ {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
def II_BCCZ_C_BEQZ : InstrItinClass ;
class MicroMipsInst16_C_BEQZ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_BEQZ <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class CBranchZeroMM_C_BEQZ<string  opstr, DAGOperand  opnd, RegisterOperand  RO> : MicroMipsInst16_C_BEQZ <(outs), (ins GPRC:$rs1, simm9_lsb0:$imm), "c.beqz	$rs1, $imm", [], NoItinerary, InstFormatR>{
	let  isBranch=1;
	let  isTerminator=1;
	let  hasDelaySlot=false;
	let  Defs=[];
}
class BEQNEZ_FM_MM16_C_BEQZ<bits<6>  op>;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_BEQZ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_BEQZ : CBranchZeroMM_C_BEQZ <"bnez16", i1imm, ?>, BEQNEZ_FM_MM16_C_BEQZ <0x2b>, ISA_MICROMIPS32_NOT_MIPS32R6_C_BEQZ , C_BEQZ_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_BNEZ;
class MicroMipsInstBase_C_BNEZ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_BNEZ {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
def II_BCCZ_C_BNEZ : InstrItinClass ;
class MicroMipsInst16_C_BNEZ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_BNEZ <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class CBranchZeroMM_C_BNEZ<string  opstr, DAGOperand  opnd, RegisterOperand  RO> : MicroMipsInst16_C_BNEZ <(outs), (ins GPRC:$rs1, simm9_lsb0:$imm), "c.bnez	$rs1, $imm", [], NoItinerary, InstFormatR>{
	let  isBranch=1;
	let  isTerminator=1;
	let  hasDelaySlot=false;
	let  Defs=[];
}
class BEQNEZ_FM_MM16_C_BNEZ<bits<6>  op>;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_BNEZ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_BNEZ : CBranchZeroMM_C_BNEZ <"bnez16", i1imm, ?>, BEQNEZ_FM_MM16_C_BNEZ <0x2b>, ISA_MICROMIPS32_NOT_MIPS32R6_C_BNEZ , C_BNEZ_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_ADDI;
class MicroMipsInstBase_C_ADDI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_ADDI {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
def II_ADDIU_C_ADDI : InstrItinClass ;
class MicroMipsInst16_C_ADDI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_ADDI <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class ISA_MICROMIPS_C_ADDI{
	list<Predicate>  EncodingPredicates=[];
}
class AddImmUS5_C_ADDI<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_ADDI <(outs GPRNoX0:$rd_wb), (ins GPRNoX0:$rd, simm6nonzero:$imm), "c.addi	$rd, $imm", [], NoItinerary, InstFormatR>{
	let  Constraints="$rd = $rd_wb";
}
class ADDIUS5_FM_MM16_C_ADDI;
def C_ADDI : AddImmUS5_C_ADDI <"addius5", ?>, ADDIUS5_FM_MM16_C_ADDI , ISA_MICROMIPS_C_ADDI , C_ADDI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_ADDI16SP;
class MicroMipsInstBase_C_ADDI16SP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_ADDI16SP {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
def II_ADDIU_C_ADDI16SP : InstrItinClass ;
class MicroMipsInst16_C_ADDI16SP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_ADDI16SP <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class ISA_MICROMIPS_C_ADDI16SP{
	list<Predicate>  EncodingPredicates=[];
}
class AddImmUS5_C_ADDI16SP<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_ADDI16SP <(outs SP:$rd_wb), (ins SP:$rd, simm10_lsb0000nonzero:$imm), "c.addi16sp	$rd, $imm", [], NoItinerary, InstFormatR>{
	let  Constraints="$rd = $rd_wb";
}
class ADDIUS5_FM_MM16_C_ADDI16SP;
def C_ADDI16SP : AddImmUS5_C_ADDI16SP <"addius5", ?>, ADDIUS5_FM_MM16_C_ADDI16SP , ISA_MICROMIPS_C_ADDI16SP , C_ADDI16SP_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_ANDI;
class MicroMipsInstBase_C_ANDI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_ANDI {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_ANDI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_ANDI <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_OR_C_ANDI : InstrItinClass ;
class LogicRMM16_C_ANDI<string  opstr, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : MicroMipsInst16_C_ANDI <(outs GPRC:$rs1_wb), (ins GPRC:$rs1, simm6:$imm), "c.andi	$rs1, $imm", [], Itin, InstFormatR>{
	let  isCommutable=false;
	let  Constraints="$rs1 = $rs1_wb";
}
class LOGIC_FM_MM16_C_ANDI<bits<4>  funct>;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_ANDI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_ANDI : LogicRMM16_C_ANDI <"or16", ?, NoItinerary, null_frag>, LOGIC_FM_MM16_C_ANDI <0x3>, ISA_MICROMIPS32_NOT_MIPS32R6_C_ANDI , C_ANDI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_FLWSP;
class MipsInst_C_FLWSP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_FLWSP {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=2;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="RISCV32Only_";
}
class InstSE_C_FLWSP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_C_FLWSP <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_C_FLWSP{
	string  Arch="";
}
def II_LHU_C_FLWSP : InstrItinClass ;
class LoadMemory_C_FLWSP<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_C_FLWSP <(outs FPR32:$rd), (ins SP:$rs1, uimm8_lsb00:$imm), "c.flwsp	$rd, ${imm}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class LW_FM_C_FLWSP<bits<6>  op> : StdArch_C_FLWSP ;
class ISA_MIPS1_C_FLWSP{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_C_FLWSP;
def C_FLWSP : LoadMemory_C_FLWSP <"", i1imm, i1imm, null_frag, NoItinerary>, MMRel_C_FLWSP , LW_FM_C_FLWSP <0x25>, ISA_MIPS1_C_FLWSP , C_FLWSP_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC, HasStdExtF, IsRV32];
}
class PredicateControl_C_LI;
class MicroMipsInstBase_C_LI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_LI {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_LI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_LI <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_LI_C_LI : InstrItinClass ;
class LI_FM_MM16_C_LI;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_LI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class IsAsCheapAsAMove_C_LI{
	bit  isAsCheapAsAMove=false;
}
class LoadImmMM16_C_LI<string  opstr, Operand  Od, RegisterOperand  RO> : MicroMipsInst16_C_LI <(outs GPRNoX0:$rd), (ins simm6:$imm), "c.li	$rd, $imm", [], NoItinerary, InstFormatR>{
	let  isReMaterializable=false;
}
def C_LI : LoadImmMM16_C_LI <"li16", ?, ?>, LI_FM_MM16_C_LI , IsAsCheapAsAMove_C_LI , ISA_MICROMIPS32_NOT_MIPS32R6_C_LI , C_LI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_LUI;
class MicroMipsInstBase_C_LUI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_LUI {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_LUI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_LUI <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class LoadSPMM16_C_LUI<string  opstr, DAGOperand  RO, InstrItinClass  Itin, Operand  MemOpnd> : MicroMipsInst16_C_LUI <(outs GPRNoX0X2:$rd), (ins c_lui_imm:$imm), "c.lui	$rd, $imm", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	let  mayLoad=0;
}
class LOAD_STORE_SP_FM_MM16_C_LUI<bits<6>  op>;
class ISA_MICROMIPS_C_LUI{
	list<Predicate>  EncodingPredicates=[];
}
def II_LW_C_LUI : InstrItinClass ;
def C_LUI : LoadSPMM16_C_LUI <"lw", i1imm, NoItinerary, ?>, LOAD_STORE_SP_FM_MM16_C_LUI <0x12>, ISA_MICROMIPS_C_LUI , C_LUI_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_LWSP;
class MipsInst_C_LWSP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_LWSP {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=2;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class InstSE_C_LWSP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_C_LWSP <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_C_LWSP{
	string  Arch="";
}
def II_LHU_C_LWSP : InstrItinClass ;
class LoadMemory_C_LWSP<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_C_LWSP <(outs GPRNoX0:$rd), (ins SP:$rs1, uimm8_lsb00:$imm), "c.lwsp	$rd, ${imm}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class LW_FM_C_LWSP<bits<6>  op> : StdArch_C_LWSP ;
class ISA_MIPS1_C_LWSP{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_C_LWSP;
def C_LWSP : LoadMemory_C_LWSP <"", i1imm, i1imm, null_frag, NoItinerary>, MMRel_C_LWSP , LW_FM_C_LWSP <0x25>, ISA_MIPS1_C_LWSP , C_LWSP_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_NOP;
class MicroMipsInstBase_C_NOP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_NOP {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
def II_ADDIU_C_NOP : InstrItinClass ;
class MicroMipsInst16_C_NOP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_NOP <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class ISA_MICROMIPS_C_NOP{
	list<Predicate>  EncodingPredicates=[];
}
class AddImmUS5_C_NOP<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_NOP <(outs), (ins), "c.nop	", [], NoItinerary, InstFormatR>{
	let  Constraints="";
}
class ADDIUS5_FM_MM16_C_NOP;
def C_NOP : AddImmUS5_C_NOP <"addius5", ?>, ADDIUS5_FM_MM16_C_NOP , ISA_MICROMIPS_C_NOP , C_NOP_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_SLLI;
class MicroMipsInstBase_C_SLLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_SLLI {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_SLLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_SLLI <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class SHIFT_FM_MM16_C_SLLI<bits<1>  funct>;
class ShiftIMM16_C_SLLI<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary> : MicroMipsInst16_C_SLLI <(outs GPRNoX0:$rd_wb), (ins GPRNoX0:$rd, uimmlog2xlennonzero:$imm), "c.slli	$rd, $imm", [], Itin, InstFormatR>;
def II_SLL_C_SLLI : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_SLLI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_SLLI : ShiftIMM16_C_SLLI <"sll16", ?, ?, NoItinerary>, SHIFT_FM_MM16_C_SLLI <0>, ISA_MICROMIPS32_NOT_MIPS32R6_C_SLLI , C_SLLI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_SRAI;
class MicroMipsInstBase_C_SRAI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_SRAI {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_SRAI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_SRAI <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class SHIFT_FM_MM16_C_SRAI<bits<1>  funct>;
class ShiftIMM16_C_SRAI<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary> : MicroMipsInst16_C_SRAI <(outs GPRC:$rs1_wb), (ins GPRC:$rs1, uimmlog2xlennonzero:$imm), "c.srai	$rs1, $imm", [], Itin, InstFormatR>;
def II_SLL_C_SRAI : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_SRAI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_SRAI : ShiftIMM16_C_SRAI <"sll16", ?, ?, NoItinerary>, SHIFT_FM_MM16_C_SRAI <0>, ISA_MICROMIPS32_NOT_MIPS32R6_C_SRAI , C_SRAI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rs1 = $rs1_wb";
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_SRLI;
class MicroMipsInstBase_C_SRLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_SRLI {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_SRLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_SRLI <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class SHIFT_FM_MM16_C_SRLI<bits<1>  funct>;
class ShiftIMM16_C_SRLI<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary> : MicroMipsInst16_C_SRLI <(outs GPRC:$rs1_wb), (ins GPRC:$rs1, uimmlog2xlennonzero:$imm), "c.srli	$rs1, $imm", [], Itin, InstFormatR>;
def II_SLL_C_SRLI : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_SRLI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_SRLI : ShiftIMM16_C_SRLI <"sll16", ?, ?, NoItinerary>, SHIFT_FM_MM16_C_SRLI <0>, ISA_MICROMIPS32_NOT_MIPS32R6_C_SRLI , C_SRLI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rs1 = $rs1_wb";
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_ADDI4SPN;
class MicroMipsInstBase_C_ADDI4SPN<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_ADDI4SPN {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_ADDI4SPN<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_ADDI4SPN <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class ISA_MICROMIPS32_NOT_MIPS32R6_C_ADDI4SPN{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SUBU_C_ADDI4SPN : InstrItinClass ;
class ArithRMM16_C_ADDI4SPN<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : MicroMipsInst16_C_ADDI4SPN <(outs GPRC:$rd), (ins SP:$rs1, uimm10_lsb00nonzero:$imm), "c.addi4spn	$rd, $rs1, $imm", [], Itin, InstFormatR>{
	let  isCommutable=isComm;
}
class ARITH_FM_MM16_C_ADDI4SPN<bit  funct>;
def C_ADDI4SPN : ArithRMM16_C_ADDI4SPN <"subu16", ?, false, NoItinerary, null_frag>, ARITH_FM_MM16_C_ADDI4SPN <1>, ISA_MICROMIPS32_NOT_MIPS32R6_C_ADDI4SPN , C_ADDI4SPN_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Uses = [X2];
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_J;
class MicroMipsInstBase_C_J<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_J {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_J<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_J <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_JRC_C_J : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_J{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class JumpRegCMM16_C_J<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_J <(outs), (ins simm12_lsb0:$offset), "c.j	$offset", [], NoItinerary, InstFormatR>{
	let  isTerminator=1;
	let  isBarrier=1;
	let  isBranch=1;
	let  isIndirectBranch=false;
}
class JALR_FM_MM16_C_J<bits<5>  op>;
def C_J : JumpRegCMM16_C_J <"jrc", ?>, JALR_FM_MM16_C_J <0x0d>, ISA_MICROMIPS32_NOT_MIPS32R6_C_J , C_J_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_JAL;
class MicroMipsInstBase_C_JAL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_JAL {
	let  Namespace="RISCV";
	let  DecoderNamespace="RISCV32Only_";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_JAL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_JAL <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_JR_C_JAL : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_JAL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class JALR_FM_MM16_C_JAL<bits<5>  op>;
class JumpRegMM16_C_JAL<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_JAL <(outs), (ins simm12_lsb0:$offset), "c.jal	$offset", [], NoItinerary, InstFormatR>{
	let  hasDelaySlot=false;
	let  isBranch=false;
	let  isIndirectBranch=false;
}
def C_JAL : JumpRegMM16_C_JAL <"jr16", ?>, JALR_FM_MM16_C_JAL <0x0c>, ISA_MICROMIPS32_NOT_MIPS32R6_C_JAL , C_JAL_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let isCall = 1;
	let Defs = [X1];
	let Predicates = [HasStdExtC, IsRV32];
}
class PredicateControl_C_FLW;
class MipsInst_C_FLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_FLW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=2;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="RISCV32Only_";
}
class InstSE_C_FLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_C_FLW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_C_FLW{
	string  Arch="";
}
def II_LHU_C_FLW : InstrItinClass ;
class LoadMemory_C_FLW<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_C_FLW <(outs FPR32C:$rd), (ins GPRC:$rs1, uimm7_lsb00:$imm), "c.flw	$rd, ${imm}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class LW_FM_C_FLW<bits<6>  op> : StdArch_C_FLW ;
class ISA_MIPS1_C_FLW{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_C_FLW;
def C_FLW : LoadMemory_C_FLW <"", i1imm, i1imm, null_frag, NoItinerary>, MMRel_C_FLW , LW_FM_C_FLW <0x25>, ISA_MIPS1_C_FLW , C_FLW_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC, HasStdExtF, IsRV32];
}
class PredicateControl_C_LW;
class MicroMipsInstBase_C_LW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_LW {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_LW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_LW <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class LoadGPMM16_C_LW<string  opstr, DAGOperand  RO, InstrItinClass  Itin, Operand  MemOpnd> : MicroMipsInst16_C_LW <(outs GPRC:$rd), (ins GPRC:$rs1, uimm7_lsb00:$imm), "c.lw	$rd, ${imm}(${rs1})", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	let  mayLoad=1;
}
class LOAD_GP_FM_MM16_C_LW<bits<6>  op>;
class ISA_MICROMIPS_C_LW{
	list<Predicate>  EncodingPredicates=[];
}
def II_LW_C_LW : InstrItinClass ;
def C_LW : LoadGPMM16_C_LW <"lw", i1imm, NoItinerary, ?>, LOAD_GP_FM_MM16_C_LW <0x19>, ISA_MICROMIPS_C_LW , C_LW_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_ADD;
class MicroMipsInstBase_C_ADD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_ADD {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
def II_ADDIU_C_ADD : InstrItinClass ;
class MicroMipsInst16_C_ADD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_ADD <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class ADDIUR2_FM_MM16_C_ADD;
class ISA_MICROMIPS_C_ADD{
	list<Predicate>  EncodingPredicates=[];
}
class AddImmUR2_C_ADD<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_ADD <(outs GPRNoX0:$rs1_wb), (ins GPRNoX0:$rs1, GPRNoX0:$rs2), "c.add	$rs1, $rs2", [], NoItinerary, InstFormatR>{
	let  isCommutable=false;
}
def C_ADD : AddImmUR2_C_ADD <"addiur2", ?>, ADDIUR2_FM_MM16_C_ADD , ISA_MICROMIPS_C_ADD , C_ADD_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rs1 = $rs1_wb";
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_AND;
class MicroMipsInstBase_C_AND<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_AND {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
def II_NOT_C_AND : InstrItinClass ;
class MicroMipsInst16_C_AND<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_AND <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class LOGIC_FM_MM16_C_AND<bits<4>  funct>;
class NotMM16_C_AND<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_AND <(outs GPRC:$rd_wb), (ins GPRC:$rd, GPRC:$rs2), "c.and	$rd, $rs2", [], NoItinerary, InstFormatR>;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_AND{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_AND : NotMM16_C_AND <"not16", ?>, LOGIC_FM_MM16_C_AND <0x0>, ISA_MICROMIPS32_NOT_MIPS32R6_C_AND , C_AND_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_EBREAK;
class MicroMipsInstBase_C_EBREAK<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_EBREAK {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_EBREAK<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_EBREAK <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class ISA_MICROMIPS32_NOT_MIPS32R6_C_EBREAK{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_BREAK_C_EBREAK : InstrItinClass ;
class BrkSdbbp16MM_C_EBREAK<string  opstr, InstrItinClass  Itin> : MicroMipsInst16_C_EBREAK <(outs), (ins), "c.ebreak	", [], Itin, InstFormatR>;
class BRKSDBBP16_FM_MM_C_EBREAK<bits<6>  op>;
def C_EBREAK : BrkSdbbp16MM_C_EBREAK <"break16", NoItinerary>, BRKSDBBP16_FM_MM_C_EBREAK <0x28>, ISA_MICROMIPS32_NOT_MIPS32R6_C_EBREAK , C_EBREAK_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 1;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_JALR;
class MicroMipsInstBase_C_JALR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_JALR {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_JALR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_JALR <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_JR_C_JALR : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_JALR{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class JALR_FM_MM16_C_JALR<bits<5>  op>;
class JumpRegMM16_C_JALR<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_JALR <(outs), (ins GPRNoX0:$rs1), "c.jalr	$rs1", [], NoItinerary, InstFormatR>{
	let  hasDelaySlot=false;
	let  isBranch=false;
	let  isIndirectBranch=false;
}
def C_JALR : JumpRegMM16_C_JALR <"jr16", ?>, JALR_FM_MM16_C_JALR <0x0c>, ISA_MICROMIPS32_NOT_MIPS32R6_C_JALR , C_JALR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let isCall = 1;
	let Defs = [X1];
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_JR;
class MicroMipsInstBase_C_JR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_JR {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_JR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_JR <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_JRC_C_JR : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_JR{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class JumpRegCMM16_C_JR<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_JR <(outs), (ins GPRNoX0:$rs1), "c.jr	$rs1", [], NoItinerary, InstFormatR>{
	let  isTerminator=1;
	let  isBarrier=1;
	let  isBranch=1;
	let  isIndirectBranch=1;
}
class JALR_FM_MM16_C_JR<bits<5>  op>;
def C_JR : JumpRegCMM16_C_JR <"jrc", ?>, JALR_FM_MM16_C_JR <0x0d>, ISA_MICROMIPS32_NOT_MIPS32R6_C_JR , C_JR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_MV;
class MicroMipsInstBase_C_MV<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_MV {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
def II_MOVE_C_MV : InstrItinClass ;
class MicroMipsInst16_C_MV<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_MV <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class MOVE_FM_MM16_C_MV<bits<6>  funct>;
class MoveMM16_C_MV<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_MV <(outs GPRNoX0:$rs1), (ins GPRNoX0:$rs2), "c.mv	$rs1, $rs2", [], NoItinerary, InstFormatR>{
	let  isReMaterializable=false;
	let  isMoveReg=1;
}
class ISA_MICROMIPS32_NOT_MIPS32R6_C_MV{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_MV : MoveMM16_C_MV <"move", ?>, MOVE_FM_MM16_C_MV <0x03>, ISA_MICROMIPS32_NOT_MIPS32R6_C_MV , C_MV_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let isAsCheapAsAMove = 1;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_OR;
class MicroMipsInstBase_C_OR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_OR {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_OR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_OR <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_AND_C_OR : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_OR{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class AndImmMM16_C_OR<string  opstr, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary> : MicroMipsInst16_C_OR <(outs GPRC:$rd_wb), (ins GPRC:$rd, GPRC:$rs2), "c.or	$rd, $rs2", [], Itin, InstFormatR>;
class ANDI_FM_MM16_C_OR<bits<6>  funct>;
def C_OR : AndImmMM16_C_OR <"andi16", ?, NoItinerary>, ANDI_FM_MM16_C_OR <0x0b>, ISA_MICROMIPS32_NOT_MIPS32R6_C_OR , C_OR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_SUB;
class MicroMipsInstBase_C_SUB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_SUB {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_SUB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_SUB <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_ADDU_C_SUB : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_SUB{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithRMM16_C_SUB<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : MicroMipsInst16_C_SUB <(outs GPRC:$rd_wb), (ins GPRC:$rd, GPRC:$rs2), "c.sub	$rd, $rs2", [], Itin, InstFormatR>{
	let  isCommutable=isComm;
}
class ARITH_FM_MM16_C_SUB<bit  funct>;
def C_SUB : ArithRMM16_C_SUB <"addu16", ?, false, NoItinerary, null_frag>, ARITH_FM_MM16_C_SUB <0>, ISA_MICROMIPS32_NOT_MIPS32R6_C_SUB , C_SUB_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_XOR;
class MicroMipsInstBase_C_XOR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_XOR {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_XOR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_XOR <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_AND_C_XOR : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_XOR{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class AndImmMM16_C_XOR<string  opstr, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary> : MicroMipsInst16_C_XOR <(outs GPRC:$rd_wb), (ins GPRC:$rd, GPRC:$rs2), "c.xor	$rd, $rs2", [], Itin, InstFormatR>;
class ANDI_FM_MM16_C_XOR<bits<6>  funct>;
def C_XOR : AndImmMM16_C_XOR <"andi16", ?, NoItinerary>, ANDI_FM_MM16_C_XOR <0x0b>, ISA_MICROMIPS32_NOT_MIPS32R6_C_XOR , C_XOR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_FSW;
class MicroMipsInstBase_C_FSW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_FSW {
	let  Namespace="RISCV";
	let  DecoderNamespace="RISCV32Only_";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_FSW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_FSW <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_SW_C_FSW : InstrItinClass ;
class StoreSPMM16_C_FSW<string  opstr, DAGOperand  RO, InstrItinClass  Itin, Operand  MemOpnd> : MicroMipsInst16_C_FSW <(outs), (ins FPR32C:$rs2, GPRC:$rs1, uimm7_lsb00:$imm), "c.fsw	$rs2, ${imm}(${rs1})", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  mayStore=1;
}
class LOAD_STORE_SP_FM_MM16_C_FSW<bits<6>  op>;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_FSW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_FSW : StoreSPMM16_C_FSW <"swsp", i1imm, NoItinerary, ?>, LOAD_STORE_SP_FM_MM16_C_FSW <0x32>, ISA_MICROMIPS32_NOT_MIPS32R6_C_FSW , C_FSW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtC, HasStdExtF, IsRV32];
}
class PredicateControl_C_SW;
class MicroMipsInstBase_C_SW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_SW {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_SW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_SW <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_SW_C_SW : InstrItinClass ;
class StoreSPMM16_C_SW<string  opstr, DAGOperand  RO, InstrItinClass  Itin, Operand  MemOpnd> : MicroMipsInst16_C_SW <(outs), (ins GPRC:$rs2, GPRC:$rs1, uimm7_lsb00:$imm), "c.sw	$rs2, ${imm}(${rs1})", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  mayStore=1;
}
class LOAD_STORE_SP_FM_MM16_C_SW<bits<6>  op>;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_SW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_SW : StoreSPMM16_C_SW <"swsp", i1imm, NoItinerary, ?>, LOAD_STORE_SP_FM_MM16_C_SW <0x32>, ISA_MICROMIPS32_NOT_MIPS32R6_C_SW , C_SW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_FSDSP;
class MicroMipsInstBase_C_FSDSP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_FSDSP {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_FSDSP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_FSDSP <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_SH_C_FSDSP : InstrItinClass ;
class LOAD_STORE_FM_MM16_C_FSDSP<bits<6>  op>;
class StoreMM16_C_FSDSP<string  opstr, DAGOperand  RTOpnd, DAGOperand  RO, SDPatternOperator  OpNode, InstrItinClass  Itin, Operand  MemOpnd> : MicroMipsInst16_C_FSDSP <(outs), (ins FPR64:$rs2, SP:$rs1, uimm9_lsb000:$imm), "c.fsdsp	$rs2, ${imm}(${rs1})", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  mayStore=1;
}
class ISA_MICROMIPS32_NOT_MIPS32R6_C_FSDSP{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_FSDSP : StoreMM16_C_FSDSP <"sh16", i1imm, i1imm, null_frag, NoItinerary, ?>, LOAD_STORE_FM_MM16_C_FSDSP <0x2a>, ISA_MICROMIPS32_NOT_MIPS32R6_C_FSDSP , C_FSDSP_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtC, HasStdExtD];
}
class PredicateControl_C_FSWSP;
class MicroMipsInstBase_C_FSWSP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_FSWSP {
	let  Namespace="RISCV";
	let  DecoderNamespace="RISCV32Only_";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_FSWSP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_FSWSP <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_SW_C_FSWSP : InstrItinClass ;
class StoreSPMM16_C_FSWSP<string  opstr, DAGOperand  RO, InstrItinClass  Itin, Operand  MemOpnd> : MicroMipsInst16_C_FSWSP <(outs), (ins FPR32:$rs2, SP:$rs1, uimm8_lsb00:$imm), "c.fswsp	$rs2, ${imm}(${rs1})", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  mayStore=1;
}
class LOAD_STORE_SP_FM_MM16_C_FSWSP<bits<6>  op>;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_FSWSP{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_FSWSP : StoreSPMM16_C_FSWSP <"swsp", i1imm, NoItinerary, ?>, LOAD_STORE_SP_FM_MM16_C_FSWSP <0x32>, ISA_MICROMIPS32_NOT_MIPS32R6_C_FSWSP , C_FSWSP_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtC, HasStdExtF, IsRV32];
}
class PredicateControl_C_SWSP;
class MicroMipsInstBase_C_SWSP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_SWSP {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_SWSP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_SWSP <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_SW_C_SWSP : InstrItinClass ;
class StoreSPMM16_C_SWSP<string  opstr, DAGOperand  RO, InstrItinClass  Itin, Operand  MemOpnd> : MicroMipsInst16_C_SWSP <(outs), (ins GPR:$rs2, SP:$rs1, uimm8_lsb00:$imm), "c.swsp	$rs2, ${imm}(${rs1})", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  mayStore=1;
}
class LOAD_STORE_SP_FM_MM16_C_SWSP<bits<6>  op>;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_SWSP{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_SWSP : StoreSPMM16_C_SWSP <"swsp", i1imm, NoItinerary, ?>, LOAD_STORE_SP_FM_MM16_C_SWSP <0x32>, ISA_MICROMIPS32_NOT_MIPS32R6_C_SWSP , C_SWSP_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtC];
}
class PredicateControl_C_SLLI64_HINT;
class MicroMipsInstBase_C_SLLI64_HINT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_SLLI64_HINT {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_SLLI64_HINT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_SLLI64_HINT <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class SHIFT_FM_MM16_C_SLLI64_HINT<bits<1>  funct>;
class ShiftIMM16_C_SLLI64_HINT<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary> : MicroMipsInst16_C_SLLI64_HINT <(outs GPR:$rd_wb), (ins GPR:$rd), "c.slli64	$rd", [], Itin, InstFormatR>;
def II_SLL_C_SLLI64_HINT : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_SLLI64_HINT{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_SLLI64_HINT : ShiftIMM16_C_SLLI64_HINT <"sll16", ?, ?, NoItinerary>, SHIFT_FM_MM16_C_SLLI64_HINT <0>, ISA_MICROMIPS32_NOT_MIPS32R6_C_SLLI64_HINT , C_SLLI64_HINT_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Predicates = [HasStdExtC, HasRVCHints];
}
class PredicateControl_C_SRLI64_HINT;
class MicroMipsInstBase_C_SRLI64_HINT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_SRLI64_HINT {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_SRLI64_HINT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_SRLI64_HINT <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class SHIFT_FM_MM16_C_SRLI64_HINT<bits<1>  funct>;
def II_SRL_C_SRLI64_HINT : InstrItinClass ;
class ShiftIMM16_C_SRLI64_HINT<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary> : MicroMipsInst16_C_SRLI64_HINT <(outs GPRC:$rd_wb), (ins GPRC:$rd), "c.srli64	$rd", [], Itin, InstFormatR>;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_SRLI64_HINT{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_SRLI64_HINT : ShiftIMM16_C_SRLI64_HINT <"srl16", ?, ?, NoItinerary>, SHIFT_FM_MM16_C_SRLI64_HINT <1>, ISA_MICROMIPS32_NOT_MIPS32R6_C_SRLI64_HINT , C_SRLI64_HINT_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Predicates = [HasStdExtC, HasRVCHints];
}
class PredicateControl_C_SRAI64_HINT;
class MicroMipsInstBase_C_SRAI64_HINT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_SRAI64_HINT {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_SRAI64_HINT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_SRAI64_HINT <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class SHIFT_FM_MM16_C_SRAI64_HINT<bits<1>  funct>;
def II_SRL_C_SRAI64_HINT : InstrItinClass ;
class ShiftIMM16_C_SRAI64_HINT<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary> : MicroMipsInst16_C_SRAI64_HINT <(outs GPRC:$rd_wb), (ins GPRC:$rd), "c.srai64	$rd", [], Itin, InstFormatR>;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_SRAI64_HINT{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def C_SRAI64_HINT : ShiftIMM16_C_SRAI64_HINT <"srl16", ?, ?, NoItinerary>, SHIFT_FM_MM16_C_SRAI64_HINT <1>, ISA_MICROMIPS32_NOT_MIPS32R6_C_SRAI64_HINT , C_SRAI64_HINT_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rd = $rd_wb";
	let Predicates = [HasStdExtC, HasRVCHints];
}
