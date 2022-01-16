class ATGInst;
class TSFlagTemplate<InstFormat format, RISCVVConstraint rvv_constraint = NoConstraint>{
  bits<64> TSFlags = 0;
  let TSFlags{4-0} = format.Value;

  // Defaults
  RISCVVConstraint RVVConstraint = rvv_constraint;
  let TSFlags{7-5} = RVVConstraint.Value;

  bits<3> VLMul = 0;
  let TSFlags{10-8} = VLMul;

  bit HasDummyMask = 0;
  let TSFlags{11} = HasDummyMask;

  bit WritesElement0 = 0;
  let TSFlags{12} = WritesElement0;

  bit HasMergeOp = 0;
  let TSFlags{13} = HasMergeOp;

  bit HasSEWOp = 0;
  let TSFlags{14} = HasSEWOp;

  bit HasVLOp = 0;
  let TSFlags{15} = HasVLOp;
}
                  

def addr :
  ComplexPattern<iPTR, 2, "selectIntAddr", [frameindex]>;

def addrRegImm :
  ComplexPattern<iPTR, 2, "selectAddrRegImm", [frameindex]>;

def addrDefault :
  ComplexPattern<iPTR, 2, "selectAddrDefault", [frameindex]>;

def addrimm10 : ComplexPattern<iPTR, 2, "selectIntAddrSImm10", [frameindex]>;
def addrimm10lsl1 : ComplexPattern<iPTR, 2, "selectIntAddrSImm10Lsl1",
                                   [frameindex]>;
def addrimm10lsl2 : ComplexPattern<iPTR, 2, "selectIntAddrSImm10Lsl2",
                                   [frameindex]>;
def addrimm10lsl3 : ComplexPattern<iPTR, 2, "selectIntAddrSImm10Lsl3",
                                   [frameindex]>;
                  
class Type_AUX_FM{
    bit Value = 0;
}
        
class BEQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<7> opcode = 0b1100011;
	let Inst{31-31} = imm12{11-11};
	let Inst{30-25} = imm12{9-4};
	let Inst{11-8} = imm12{3-0};
	let Inst{7-7} = imm12{10-10};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class BEQ_AUX: BEQ_FM2, TSFlagTemplate<InstFormatB>, Sched<[WriteJmp, ReadJmp, ReadJmp]>;
class BGE_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<7> opcode = 0b1100011;
	let Inst{31-31} = imm12{11-11};
	let Inst{30-25} = imm12{9-4};
	let Inst{11-8} = imm12{3-0};
	let Inst{7-7} = imm12{10-10};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class BGE_AUX: BGE_FM2, TSFlagTemplate<InstFormatB>, Sched<[WriteJmp, ReadJmp, ReadJmp]>;
class BGEU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b111;
	bits<7> opcode = 0b1100011;
	let Inst{31-31} = imm12{11-11};
	let Inst{30-25} = imm12{9-4};
	let Inst{11-8} = imm12{3-0};
	let Inst{7-7} = imm12{10-10};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class BGEU_AUX: BGEU_FM2, TSFlagTemplate<InstFormatB>, Sched<[WriteJmp, ReadJmp, ReadJmp]>;
class BLT_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<7> opcode = 0b1100011;
	let Inst{31-31} = imm12{11-11};
	let Inst{30-25} = imm12{9-4};
	let Inst{11-8} = imm12{3-0};
	let Inst{7-7} = imm12{10-10};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class BLT_AUX: BLT_FM2, TSFlagTemplate<InstFormatB>, Sched<[WriteJmp, ReadJmp, ReadJmp]>;
class BLTU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<7> opcode = 0b1100011;
	let Inst{31-31} = imm12{11-11};
	let Inst{30-25} = imm12{9-4};
	let Inst{11-8} = imm12{3-0};
	let Inst{7-7} = imm12{10-10};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class BLTU_AUX: BLTU_FM2, TSFlagTemplate<InstFormatB>, Sched<[WriteJmp, ReadJmp, ReadJmp]>;
class BNE_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<7> opcode = 0b1100011;
	let Inst{31-31} = imm12{11-11};
	let Inst{30-25} = imm12{9-4};
	let Inst{11-8} = imm12{3-0};
	let Inst{7-7} = imm12{10-10};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class BNE_AUX: BNE_FM2, TSFlagTemplate<InstFormatB>, Sched<[WriteJmp, ReadJmp, ReadJmp]>;
class ADDI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b0010011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class ADDI_AUX: ADDI_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteIALU, ReadIALU]>;
class ADDIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b0011011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class ADDIW_AUX: ADDIW_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteIALU32, ReadIALU32]>;
class ANDI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b111;
	bits<5> rd;
	bits<7> opcode = 0b0010011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class ANDI_AUX: ANDI_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteIALU, ReadIALU]>;
class EBREAK_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12 = 0b000000000001;
	bits<5> rs1 = 0b00000;
	bits<3> funct3 = 0b000;
	bits<5> rd = 0b00000;
	bits<7> opcode = 0b1110011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class EBREAK_AUX: EBREAK_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class ECALL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12 = 0b000000000000;
	bits<5> rs1 = 0b00000;
	bits<3> funct3 = 0b000;
	bits<5> rd = 0b00000;
	bits<7> opcode = 0b1110011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class ECALL_AUX: ECALL_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteJmp]>;
class FENCE_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<4> funct4 = 0b0000;
	bits<4> pred;
	bits<4> succ;
	bits<5> rs1 = 0b00000;
	bits<3> funct3 = 0b000;
	bits<5> rd = 0b00000;
	bits<7> opcode = 0b0001111;
	let Inst{31-28} = funct4;
	let Inst{27-24} = pred;
	let Inst{23-20} = succ;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FENCE_AUX: FENCE_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class FENCE_I_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12 = 0b000000000000;
	bits<5> rs1 = 0b00000;
	bits<3> funct3 = 0b001;
	bits<5> rd = 0b00000;
	bits<7> opcode = 0b0001111;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FENCE_I_AUX: FENCE_I_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class FENCE_TSO_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12 = 0b100000110011;
	bits<5> rs1 = 0b00000;
	bits<3> funct3 = 0b000;
	bits<5> rd = 0b00000;
	bits<7> opcode = 0b0001111;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FENCE_TSO_AUX: FENCE_TSO_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class JALR_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b1100111;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class JALR_AUX: JALR_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteJalr, ReadJalr]>;
class LB_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b0000011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LB_AUX: LB_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteLDB, ReadMemBase]>;
class LBU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> opcode = 0b0000011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LBU_AUX: LBU_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteLDB, ReadMemBase]>;
class LD_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0000011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LD_AUX: LD_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteLDD, ReadMemBase]>;
class LH_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> opcode = 0b0000011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LH_AUX: LH_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteLDH, ReadMemBase]>;
class LHU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> opcode = 0b0000011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LHU_AUX: LHU_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteLDH, ReadMemBase]>;
class LW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0000011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LW_AUX: LW_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteLDW, ReadMemBase]>;
class LWU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> opcode = 0b0000011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LWU_AUX: LWU_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteLDWU, ReadMemBase]>;
class ORI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> opcode = 0b0010011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class ORI_AUX: ORI_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteIALU, ReadIALU]>;
class SLLI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<6> funct6 = 0b000000;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> opcode = 0b0010011;
	let Inst{31-26} = funct6;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SLLI_AUX: SLLI_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteShift, ReadShift]>;
class SLLIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct6 = 0b0000000;
	bits<5> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> opcode = 0b0011011;
	let Inst{31-25} = funct6;
	let Inst{24-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SLLIW_AUX: SLLIW_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteShift32, ReadShift32]>;
class SLTI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0010011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SLTI_AUX: SLTI_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteIALU, ReadIALU]>;
class SLTIU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0010011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SLTIU_AUX: SLTIU_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteIALU, ReadIALU]>;
class SRAI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<6> funct6 = 0b010000;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> opcode = 0b0010011;
	let Inst{31-26} = funct6;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SRAI_AUX: SRAI_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteShift, ReadShift]>;
class SRAIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct6 = 0b0100000;
	bits<5> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> opcode = 0b0011011;
	let Inst{31-25} = funct6;
	let Inst{24-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SRAIW_AUX: SRAIW_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteShift32, ReadShift32]>;
class SRLI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<6> funct6 = 0b000000;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> opcode = 0b0010011;
	let Inst{31-26} = funct6;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SRLI_AUX: SRLI_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteShift, ReadShift]>;
class SRLIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct6 = 0b0000000;
	bits<5> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> opcode = 0b0011011;
	let Inst{31-25} = funct6;
	let Inst{24-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SRLIW_AUX: SRLIW_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteShift32, ReadShift32]>;
class XORI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> opcode = 0b0010011;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class XORI_AUX: XORI_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteIALU, ReadIALU]>;
class JAL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<20> imm20;
	bits<5> rd;
	bits<7> opcode = 0b1101111;
	let Inst{31-31} = imm20{19-19};
	let Inst{30-21} = imm20{9-0};
	let Inst{20-20} = imm20{10-10};
	let Inst{19-12} = imm20{18-11};
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class JAL_AUX: JAL_FM2, TSFlagTemplate<InstFormatJ>, Sched<[WriteJal]>;
class ADD_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class ADD_AUX: ADD_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class ADDW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class ADDW_AUX: ADDW_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU32, ReadIALU32, ReadIALU32]>;
class AND_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b111;
	bits<5> rd;
	bits<7> opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AND_AUX: AND_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class MRET_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0011000;
	bits<5> rs2 = 0b00010;
	bits<5> rs1 = 0b00000;
	bits<3> funct3 = 0b000;
	bits<5> rd = 0b00000;
	bits<7> opcode = 0b1110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class MRET_AUX: MRET_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class OR_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class OR_AUX: OR_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class SFENCE_VMA_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0001001;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd = 0b00000;
	bits<7> opcode = 0b1110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SFENCE_VMA_AUX: SFENCE_VMA_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SLL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SLL_AUX: SLL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class SLLW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SLLW_AUX: SLLW_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU32, ReadIALU32, ReadIALU32]>;
class SLT_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SLT_AUX: SLT_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class SLTU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SLTU_AUX: SLTU_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class SRA_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SRA_AUX: SRA_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class SRAW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SRAW_AUX: SRAW_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU32, ReadIALU32, ReadIALU32]>;
class SRET_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0001000;
	bits<5> rs2 = 0b00010;
	bits<5> rs1 = 0b00000;
	bits<3> funct3 = 0b000;
	bits<5> rd = 0b00000;
	bits<7> opcode = 0b1110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SRET_AUX: SRET_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SRL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SRL_AUX: SRL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class SRLW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SRLW_AUX: SRLW_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU32, ReadIALU32, ReadIALU32]>;
class SUB_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SUB_AUX: SUB_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class SUBW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SUBW_AUX: SUBW_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU32, ReadIALU32, ReadIALU32]>;
class URET_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2 = 0b00010;
	bits<5> rs1 = 0b00000;
	bits<3> funct3 = 0b000;
	bits<5> rd = 0b00000;
	bits<7> opcode = 0b1110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class URET_AUX: URET_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class WFI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0001000;
	bits<5> rs2 = 0b00101;
	bits<5> rs1 = 0b00000;
	bits<3> funct3 = 0b000;
	bits<5> rd = 0b00000;
	bits<7> opcode = 0b1110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class WFI_AUX: WFI_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class XOR_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class XOR_AUX: XOR_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIALU, ReadIALU, ReadIALU]>;
class SB_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<7> opcode = 0b0100011;
	let Inst{31-25} = imm12{11-5};
	let Inst{11-7} = imm12{4-0};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class SB_AUX: SB_FM2, TSFlagTemplate<InstFormatS>, Sched<[WriteSTB, ReadStoreData, ReadMemBase]>;
class SD_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<7> opcode = 0b0100011;
	let Inst{31-25} = imm12{11-5};
	let Inst{11-7} = imm12{4-0};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class SD_AUX: SD_FM2, TSFlagTemplate<InstFormatS>, Sched<[WriteSTD, ReadStoreData, ReadMemBase]>;
class SH_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<7> opcode = 0b0100011;
	let Inst{31-25} = imm12{11-5};
	let Inst{11-7} = imm12{4-0};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class SH_AUX: SH_FM2, TSFlagTemplate<InstFormatS>, Sched<[WriteSTH, ReadStoreData, ReadMemBase]>;
class SW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<7> opcode = 0b0100011;
	let Inst{31-25} = imm12{11-5};
	let Inst{11-7} = imm12{4-0};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class SW_AUX: SW_FM2, TSFlagTemplate<InstFormatS>, Sched<[WriteSTW, ReadStoreData, ReadMemBase]>;
class AUIPC_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<20> imm20;
	bits<5> rd;
	bits<7> opcode = 0b0010111;
	let Inst{31-12} = imm20;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AUIPC_AUX: AUIPC_FM2, TSFlagTemplate<InstFormatU>, Sched<[WriteIALU]>;
class LUI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<20> imm20;
	bits<5> rd;
	bits<7> opcode = 0b0110111;
	let Inst{31-12} = imm20;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LUI_AUX: LUI_FM2, TSFlagTemplate<InstFormatU>, Sched<[WriteIALU]>;
class PredicateControl_BEQ;
class MipsInst_BEQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BEQ {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_BEQ{
	string  Arch="";
}
def II_BCC_BEQ : InstrItinClass ;
class InstSE_BEQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BEQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class BEQ_FM_BEQ<bits<6>  op> : StdArch_BEQ ;
class MMRel_BEQ;
class ISA_MIPS1_BEQ{
	list<Predicate>  EncodingPredicates=[];
}
class CBranch_BEQ<string  opstr, DAGOperand  opnd, PatFrag  cond_op, RegisterOperand  RO> : InstSE_BEQ <(outs), (ins GPR:$rs1, GPR:$rs2, simm13_lsb0:$imm12), "beq	$rs1, $rs2, $imm12", [], NoItinerary, InstFormatR, opstr>{
	let  isBranch=1;
	let  isTerminator=1;
	let  hasDelaySlot=false;
	let  Defs=[];
	bit  isCTI=1;
}
def BEQ : MMRel_BEQ , CBranch_BEQ <"beq", i1imm, ?, ?>, BEQ_FM_BEQ <4>, ISA_MIPS1_BEQ , BEQ_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_BGE;
class MipsInst_BGE<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BGE {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class BRANCH_DESC_BASE_BGE{
	bit  isBranch=1;
	bit  isTerminator=1;
	bit  hasDelaySlot=false;
	bit  isCTI=1;
}
def II_BCCZC_BGE : InstrItinClass ;
class MipsR6Arch_BGE<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_BGE : MipsInst_BGE <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class CMP_CBR_EQNE_Z_DESC_BASE_BGE<string  instr_asm, DAGOperand  opnd, RegisterOperand  GPROpnd> : BRANCH_DESC_BASE_BGE , MipsR6Arch_BGE <instr_asm>{
	dag  InOperandList=(ins GPR:$rs1, GPR:$rs2, simm13_lsb0:$imm12);
	dag  OutOperandList=(outs);
	string  AsmString="bge	$rs1, $rs2, $imm12";
	list<Register>  Defs=[];
	InstrItinClass  Itinerary=NoItinerary;
	bit  hasForbiddenSlot=1;
	bit  isCTI=1;
}
class CMP_BRANCH_OFF21_FM_BGE<bits<6>  funct> : MipsR6Inst_BGE ;
class R6MMR6Rel_BGE;
class BEQZC_DESC_BGE : CMP_CBR_EQNE_Z_DESC_BASE_BGE <"", i1imm, ?>;
class ISA_MIPS32R6_BGE{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class BEQZC_ENC_BGE : CMP_BRANCH_OFF21_FM_BGE <0b110110>;
def BGE : R6MMR6Rel_BGE , BEQZC_ENC_BGE , BEQZC_DESC_BGE , ISA_MIPS32R6_BGE , BGE_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_BGEU;
class MipsInst_BGEU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BGEU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
def II_BCCZ_BGEU : InstrItinClass ;
class InstSE_BGEU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BGEU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_BGEU{
	string  Arch="";
}
class CBranchZero_BGEU<string  opstr, DAGOperand  opnd, PatFrag  cond_op, RegisterOperand  RO> : InstSE_BGEU <(outs), (ins GPR:$rs1, GPR:$rs2, simm13_lsb0:$imm12), "bgeu	$rs1, $rs2, $imm12", [], NoItinerary, InstFormatR, opstr>{
	let  isBranch=1;
	let  isTerminator=1;
	let  hasDelaySlot=false;
	let  Defs=[];
	bit  isCTI=1;
}
class MMRel_BGEU;
class BGEZ_FM_BGEU<bits<6>  op, bits<5>  funct> : StdArch_BGEU ;
class ISA_MIPS1_BGEU{
	list<Predicate>  EncodingPredicates=[];
}
def BGEU : MMRel_BGEU , CBranchZero_BGEU <"blez", i1imm, ?, ?>, BGEZ_FM_BGEU <6, 0>, ISA_MIPS1_BGEU , BGEU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_BLT;
class MipsInst_BLT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BLT {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class BRANCH_DESC_BASE_BLT{
	bit  isBranch=1;
	bit  isTerminator=1;
	bit  hasDelaySlot=false;
	bit  isCTI=1;
}
def II_BCCZC_BLT : InstrItinClass ;
class MipsR6Arch_BLT<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_BLT : MipsInst_BLT <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class DecodeDisambiguates_BLT<string  DecoderMethod_Name>{
	string  DecoderMethod="";
}
class CMP_CBR_RT_Z_DESC_BASE_BLT<string  instr_asm, DAGOperand  opnd, RegisterOperand  GPROpnd> : BRANCH_DESC_BASE_BLT , MipsR6Arch_BLT <instr_asm>{
	dag  InOperandList=(ins GPR:$rs1, GPR:$rs2, simm13_lsb0:$imm12);
	dag  OutOperandList=(outs);
	string  AsmString="blt	$rs1, $rs2, $imm12";
	list<Register>  Defs=[];
	InstrItinClass  Itinerary=NoItinerary;
	bit  hasForbiddenSlot=1;
	bit  isCTI=1;
}
class CMP_BRANCH_1R_RT_OFF16_FM_BLT<Type_AUX_FM  funct> : MipsR6Inst_BLT ;
class DecodeDisambiguatedBy_BLT<string  Name> : DecodeDisambiguates_BLT <Name>{
	string  DecoderNamespace="";
}
class R6MMR6Rel_BLT;
class BLEZC_DESC_BLT : CMP_CBR_RT_Z_DESC_BASE_BLT <"", i1imm, ?>;
class BLEZC_ENC_BLT : CMP_BRANCH_1R_RT_OFF16_FM_BLT <?>, DecodeDisambiguatedBy_BLT <"BlezlGroupBranch">;
class ISA_MIPS32R6_BLT{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def BLT : R6MMR6Rel_BLT , BLEZC_ENC_BLT , BLEZC_DESC_BLT , ISA_MIPS32R6_BLT , BLT_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_BLTU;
class MipsInst_BLTU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BLTU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class BRANCH_DESC_BASE_BLTU{
	bit  isBranch=1;
	bit  isTerminator=1;
	bit  hasDelaySlot=false;
	bit  isCTI=1;
}
def II_BCCZC_BLTU : InstrItinClass ;
class MipsR6Arch_BLTU<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_BLTU : MipsInst_BLTU <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class DecodeDisambiguates_BLTU<string  DecoderMethod_Name>{
	string  DecoderMethod="";
}
class CMP_CBR_RT_Z_DESC_BASE_BLTU<string  instr_asm, DAGOperand  opnd, RegisterOperand  GPROpnd> : BRANCH_DESC_BASE_BLTU , MipsR6Arch_BLTU <instr_asm>{
	dag  InOperandList=(ins GPR:$rs1, GPR:$rs2, simm13_lsb0:$imm12);
	dag  OutOperandList=(outs);
	string  AsmString="bltu	$rs1, $rs2, $imm12";
	list<Register>  Defs=[];
	InstrItinClass  Itinerary=NoItinerary;
	bit  hasForbiddenSlot=1;
	bit  isCTI=1;
}
class CMP_BRANCH_1R_RT_OFF16_FM_BLTU<Type_AUX_FM  funct> : MipsR6Inst_BLTU ;
class DecodeDisambiguatedBy_BLTU<string  Name> : DecodeDisambiguates_BLTU <Name>{
	string  DecoderNamespace="";
}
class R6MMR6Rel_BLTU;
class BLEZC_DESC_BLTU : CMP_CBR_RT_Z_DESC_BASE_BLTU <"", i1imm, ?>;
class BLEZC_ENC_BLTU : CMP_BRANCH_1R_RT_OFF16_FM_BLTU <?>, DecodeDisambiguatedBy_BLTU <"BlezlGroupBranch">;
class ISA_MIPS32R6_BLTU{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def BLTU : R6MMR6Rel_BLTU , BLEZC_ENC_BLTU , BLEZC_DESC_BLTU , ISA_MIPS32R6_BLTU , BLTU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_BNE;
class MipsInst_BNE<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BNE {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_BNE{
	string  Arch="";
}
def II_BCC_BNE : InstrItinClass ;
class InstSE_BNE<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BNE <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class BEQ_FM_BNE<bits<6>  op> : StdArch_BNE ;
class MMRel_BNE;
class ISA_MIPS1_BNE{
	list<Predicate>  EncodingPredicates=[];
}
class CBranch_BNE<string  opstr, DAGOperand  opnd, PatFrag  cond_op, RegisterOperand  RO> : InstSE_BNE <(outs), (ins GPR:$rs1, GPR:$rs2, simm13_lsb0:$imm12), "bne	$rs1, $rs2, $imm12", [], NoItinerary, InstFormatR, opstr>{
	let  isBranch=1;
	let  isTerminator=1;
	let  hasDelaySlot=false;
	let  Defs=[];
	bit  isCTI=1;
}
def BNE : MMRel_BNE , CBranch_BNE <"bne", i1imm, ?, ?>, BEQ_FM_BNE <5>, ISA_MIPS1_BNE , BNE_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_ADDI;
class MipsInst_ADDI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ADDI {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_ADDI{
	string  Arch="";
}
class InstSE_ADDI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ADDI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS1_NOT_32R6_64R6_ADDI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ADDI_FM_ADDI<bits<6>  op> : StdArch_ADDI ;
class MMRel_ADDI;
class ArithLogicI_ADDI<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_ADDI <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "addi	$rd, $rs1, $imm12", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=1;
	let  TwoOperandAliasConstraint="";
}
def II_ADDI_ADDI : InstrItinClass ;
def ADDI : MMRel_ADDI , ArithLogicI_ADDI <"addi", ?, ?, NoItinerary>, ADDI_FM_ADDI <0x8>, ISA_MIPS1_NOT_32R6_64R6_ADDI , ADDI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let isAsCheapAsAMove = 1;
}
class PredicateControl_ADDIW;
class MipsInst_ADDIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ADDIW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class HARDFLOAT_ADDIW{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_ADDIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ADDIW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_ADDIW{
	string  Arch="";
}
class MMRel_ADDIW;
class FGR_32_ADDIW{
	list<Predicate>  FGRPredicates=[];
}
class ADDS_FT_ADDIW<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_ADDIW <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "addiw	$rd, $rs1, $imm12", [], Itin, InstFormatR, opstr>, HARDFLOAT_ADDIW {
	let  isCommutable=IsComm;
}
class ISA_MIPS1_ADDIW{
	list<Predicate>  EncodingPredicates=[];
}
class ADDS_FM_ADDIW<bits<6>  funct, bits<5>  fmt> : StdArch_ADDIW ;
def II_SUB_D_ADDIW : InstrItinClass ;
class ADDS_M_D32_ADDIW<string  opstr, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : MMRel_ADDIW , ADDS_FT_ADDIW <opstr, ?, Itin, IsComm, OpNode>, FGR_32_ADDIW ;
def ADDIW : ADDS_M_D32_ADDIW <"sub.d", NoItinerary, false, null_frag>, ADDS_FM_ADDIW <0x01, 17>, ISA_MIPS1_ADDIW , ADDIW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_ANDI;
class MipsInst_ANDI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ANDI {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_ANDI{
	string  Arch="";
}
class InstSE_ANDI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ANDI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_ANDI;
class ADDI_FM_ANDI<bits<6>  op> : StdArch_ANDI ;
def II_ANDI_ANDI : InstrItinClass ;
class ISA_MIPS1_ANDI{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_ANDI;
class ArithLogicI_ANDI<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_ANDI <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "andi	$rd, $rs1, $imm12", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def ANDI : MMRel_ANDI , StdMMR6Rel_ANDI , ArithLogicI_ANDI <"andi", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_ANDI <0xc>, ISA_MIPS1_ANDI , ANDI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_EBREAK;
class MipsInst_EBREAK<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_EBREAK {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_EBREAK{
	string  Arch="";
}
class InstSE_EBREAK<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_EBREAK <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_SYSCALL_EBREAK : InstrItinClass ;
class SYS_FM_EBREAK<bits<6>  funct> : StdArch_EBREAK ;
class ISA_MIPS1_EBREAK{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_EBREAK;
class SYS_FT_EBREAK<string  opstr, Operand  ImmOp, InstrItinClass  itin=NoItinerary> : InstSE_EBREAK <(outs), (ins), "ebreak	", [], itin, InstFormatR, opstr>;
def EBREAK : MMRel_EBREAK , SYS_FT_EBREAK <"syscall", ?, NoItinerary>, SYS_FM_EBREAK <0xc>, ISA_MIPS1_EBREAK , EBREAK_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 1;
	let mayStore = 0;
}
class PredicateControl_ECALL;
class MipsInst_ECALL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ECALL {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_ECALL{
	string  Arch="";
}
class InstSE_ECALL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ECALL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_SYSCALL_ECALL : InstrItinClass ;
class SYS_FM_ECALL<bits<6>  funct> : StdArch_ECALL ;
class ISA_MIPS1_ECALL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_ECALL;
class SYS_FT_ECALL<string  opstr, Operand  ImmOp, InstrItinClass  itin=NoItinerary> : InstSE_ECALL <(outs), (ins), "ecall	", [], itin, InstFormatR, opstr>;
def ECALL : MMRel_ECALL , SYS_FT_ECALL <"syscall", ?, NoItinerary>, SYS_FM_ECALL <0xc>, ISA_MIPS1_ECALL , ECALL_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 1;
	let mayStore = 0;
}
class PredicateControl_FENCE;
class MipsInst_FENCE<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FENCE {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_FENCE{
	string  Arch="";
}
def II_SYNCI_FENCE : InstrItinClass ;
class InstSE_FENCE<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FENCE <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_FENCE;
class ISA_MIPS32R2_FENCE{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SYNCI_FM_FENCE : StdArch_FENCE ;
class MMRel_FENCE;
class SYNCI_FT_FENCE<string  opstr, DAGOperand  MO> : InstSE_FENCE <(outs), (ins fencearg:$pred, fencearg:$succ), "fence	$pred, $succ", [], NoItinerary, InstFormatR, opstr>{
	let  hasSideEffects=1;
	let  DecoderMethod="";
}
def FENCE : MMRel_FENCE , StdMMR6Rel_FENCE , SYNCI_FT_FENCE <"synci", i1imm>, SYNCI_FM_FENCE , ISA_MIPS32R2_FENCE , FENCE_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
}
class PredicateControl_FENCE_I;
class MipsInst_FENCE_I<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FENCE_I {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_FENCE_I{
	string  Arch="";
}
def II_SYNC_FENCE_I : InstrItinClass ;
class InstSE_FENCE_I<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FENCE_I <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_FENCE_I;
class SYNC_FM_FENCE_I : StdArch_FENCE_I ;
class SYNC_FT_FENCE_I<string  opstr> : InstSE_FENCE_I <(outs), (ins), "fence.i	", [], NoItinerary, InstFormatR, opstr>;
class MMRel_FENCE_I;
class ISA_MIPS2_FENCE_I{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FENCE_I : MMRel_FENCE_I , StdMMR6Rel_FENCE_I , SYNC_FT_FENCE_I <"sync">, SYNC_FM_FENCE_I , ISA_MIPS2_FENCE_I , FENCE_I_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 1;
	let mayStore = 0;
}
class PredicateControl_FENCE_TSO;
class MipsInst_FENCE_TSO<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FENCE_TSO {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_FENCE_TSO{
	string  Arch="";
}
def II_SYNC_FENCE_TSO : InstrItinClass ;
class InstSE_FENCE_TSO<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FENCE_TSO <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_FENCE_TSO;
class SYNC_FM_FENCE_TSO : StdArch_FENCE_TSO ;
class SYNC_FT_FENCE_TSO<string  opstr> : InstSE_FENCE_TSO <(outs), (ins), "fence.tso	", [], NoItinerary, InstFormatR, opstr>;
class MMRel_FENCE_TSO;
class ISA_MIPS2_FENCE_TSO{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FENCE_TSO : MMRel_FENCE_TSO , StdMMR6Rel_FENCE_TSO , SYNC_FT_FENCE_TSO <"sync">, SYNC_FM_FENCE_TSO , ISA_MIPS2_FENCE_TSO , FENCE_TSO_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 1;
	let mayStore = 0;
}
class PredicateControl_JALR;
class MipsInst_JALR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_JALR {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
def II_JALR_JALR : InstrItinClass ;
class InstSE_JALR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_JALR <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class JALR_FM_JALR;
class JumpLinkReg_JALR<string  opstr, RegisterOperand  RO> : InstSE_JALR <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "jalr	$rd, ${imm12}(${rs1})", [], NoItinerary, InstFormatR, opstr>{
	let  hasPostISelHook=false;
}
class ISA_MIPS1_JALR{
	list<Predicate>  EncodingPredicates=[];
}
def JALR : JumpLinkReg_JALR <"jalr", ?>, JALR_FM_JALR , ISA_MIPS1_JALR , JALR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let isCall = 1;
}
class PredicateControl_LB;
class MipsInst_LB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LB {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_LB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LB <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_LB{
	string  Arch="";
}
class LoadMemory_LB<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LB <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "lb	$rd, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class LW_FM_LB<bits<6>  op> : StdArch_LB ;
class ISA_MIPS1_LB{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_LB;
def II_LB_LB : InstrItinClass ;
def LB : LoadMemory_LB <"", i1imm, i1imm, null_frag, NoItinerary>, MMRel_LB , LW_FM_LB <0x20>, ISA_MIPS1_LB , LB_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_LBU;
class MipsInst_LBU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LBU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_LBU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LBU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_LBU{
	string  Arch="";
}
def II_LBU_LBU : InstrItinClass ;
class LoadMemory_LBU<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LBU <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "lbu	$rd, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class LW_FM_LBU<bits<6>  op> : StdArch_LBU ;
class ISA_MIPS1_LBU{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_LBU;
def LBU : LoadMemory_LBU <"", i1imm, i1imm, null_frag, NoItinerary, addr>, MMRel_LBU , LW_FM_LBU <0x24>, ISA_MIPS1_LBU , LBU_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_LD;
class MipsInst_LD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LD {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_LD{
	string  Arch="";
}
class InstSE_LD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LD <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_LD{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_LD<bits<6>  op> : StdArch_LD ;
def II_LD_LD : InstrItinClass ;
class LoadMemory_LD<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LD <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "ld	$rd, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
def LD : LoadMemory_LD <"", i1imm, i1imm, null_frag, NoItinerary>, LW_FM_LD <0x37>, ISA_MIPS3_LD , LD_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_LH;
class MipsInst_LH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LH {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_LH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LH <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_LH{
	string  Arch="";
}
class LoadMemory_LH<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LH <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "lh	$rd, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class LW_FM_LH<bits<6>  op> : StdArch_LH ;
def II_LH_LH : InstrItinClass ;
class ISA_MIPS1_LH{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_LH;
def LH : LoadMemory_LH <"", i1imm, i1imm, null_frag, NoItinerary, addr>, MMRel_LH , LW_FM_LH <0x21>, ISA_MIPS1_LH , LH_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_LHU;
class MipsInst_LHU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LHU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_LHU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LHU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_LHU{
	string  Arch="";
}
def II_LHU_LHU : InstrItinClass ;
class LoadMemory_LHU<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LHU <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "lhu	$rd, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class LW_FM_LHU<bits<6>  op> : StdArch_LHU ;
class ISA_MIPS1_LHU{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_LHU;
def LHU : LoadMemory_LHU <"", i1imm, i1imm, null_frag, NoItinerary>, MMRel_LHU , LW_FM_LHU <0x25>, ISA_MIPS1_LHU , LHU_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_LW;
class MipsInst_LW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_LW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_LW{
	string  Arch="";
}
class LoadMemory_LW<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LW <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "lw	$rd, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class StdMMR6Rel_LW;
class LW_FM_LW<bits<6>  op> : StdArch_LW ;
def II_LW_LW : InstrItinClass ;
class ISA_MIPS1_LW{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_LW;
class Load_LW<string  opstr, DAGOperand  RO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : LoadMemory_LW <opstr, RO, i1imm, OpNode, Itin, Addr>;
def LW : StdMMR6Rel_LW , Load_LW <"", i1imm, null_frag, NoItinerary, addr>, MMRel_LW , LW_FM_LW <0x23>, ISA_MIPS1_LW , LW_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_LWU;
class MipsInst_LWU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LWU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_LWU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LWU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_LWU{
	string  Arch="";
}
class LoadMemory_LWU<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LWU <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "lwu	$rd, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class ISA_MIPS3_LWU{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LWU_LWU : InstrItinClass ;
class LW_FM_LWU<bits<6>  op> : StdArch_LWU ;
class MMRel_LWU;
class Load_LWU<string  opstr, DAGOperand  RO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : LoadMemory_LWU <opstr, RO, i1imm, OpNode, Itin, Addr>;
def LWU : MMRel_LWU , Load_LWU <"", i1imm, null_frag, NoItinerary>, LW_FM_LWU <0x27>, ISA_MIPS3_LWU , LWU_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_ORI;
class MipsInst_ORI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ORI {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_ORI{
	string  Arch="";
}
class InstSE_ORI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ORI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_ORI;
class ADDI_FM_ORI<bits<6>  op> : StdArch_ORI ;
def II_ORI_ORI : InstrItinClass ;
class ISA_MIPS1_ORI{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_ORI;
class ArithLogicI_ORI<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_ORI <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "ori	$rd, $rs1, $imm12", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=1;
	let  TwoOperandAliasConstraint="";
}
def ORI : MMRel_ORI , StdMMR6Rel_ORI , ArithLogicI_ORI <"ori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_ORI <0xd>, ISA_MIPS1_ORI , ORI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let isAsCheapAsAMove = 1;
}
class PredicateControl_SLLI;
class MipsInst_SLLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SLLI {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SLLI{
	string  Arch="";
}
class InstSE_SLLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SLLI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRA_FM_SLLI<bits<6>  funct, bit  rotate> : StdArch_SLLI ;
def II_SLL_SLLI : InstrItinClass ;
class ISA_MIPS1_SLLI{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SLLI;
class shift_rotate_imm_SLLI<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SLLI <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "slli	$rd, $rs1, $shamt", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
def SLLI : MMRel_SLLI , shift_rotate_imm_SLLI <"sll", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_SLLI <0, 0>, ISA_MIPS1_SLLI , SLLI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SLLIW;
class MipsInst_SLLIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SLLIW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SLLIW{
	string  Arch="";
}
class InstSE_SLLIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SLLIW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRLV_FM_SLLIW<bits<6>  funct, bit  rotate> : StdArch_SLLIW ;
class shift_rotate_reg_SLLIW<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_SLLIW <(outs GPR:$rd), (ins GPR:$rs1, uimm5:$shamt), "slliw	$rd, $rs1, $shamt", [], itin, InstFormatR, opstr>;
class ISA_MIPS3_SLLIW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DSLLV_SLLIW : InstrItinClass ;
def SLLIW : shift_rotate_reg_SLLIW <"dsllv", ?, NoItinerary, null_frag>, SRLV_FM_SLLIW <0x14, 0>, ISA_MIPS3_SLLIW , SLLIW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_SLTI;
class MipsInst_SLTI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SLTI {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_SLTI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SLTI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_SLTI_SLTIU_SLTI : InstrItinClass ;
class StdArch_SLTI{
	string  Arch="";
}
class ISA_MIPS1_SLTI{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SLTI;
class SetCC_I_SLTI<string  opstr, PatFrag  cond_op, Operand  Od, PatLeaf  imm_type, RegisterOperand  RO> : InstSE_SLTI <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "slti	$rd, $rs1, $imm12", [], NoItinerary, InstFormatR, opstr>;
class SLTI_FM_SLTI<bits<6>  op> : StdArch_SLTI ;
def SLTI : MMRel_SLTI , SetCC_I_SLTI <"slti", ?, ?, ?, ?>, SLTI_FM_SLTI <0xa>, ISA_MIPS1_SLTI , SLTI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SLTIU;
class MipsInst_SLTIU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SLTIU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_SLTIU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SLTIU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_SLTI_SLTIU_SLTIU : InstrItinClass ;
class StdArch_SLTIU{
	string  Arch="";
}
class ISA_MIPS1_SLTIU{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SLTIU;
class SetCC_I_SLTIU<string  opstr, PatFrag  cond_op, Operand  Od, PatLeaf  imm_type, RegisterOperand  RO> : InstSE_SLTIU <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "sltiu	$rd, $rs1, $imm12", [], NoItinerary, InstFormatR, opstr>;
class SLTI_FM_SLTIU<bits<6>  op> : StdArch_SLTIU ;
def SLTIU : MMRel_SLTIU , SetCC_I_SLTIU <"sltiu", ?, ?, ?, ?>, SLTI_FM_SLTIU <0xb>, ISA_MIPS1_SLTIU , SLTIU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SRAI;
class MipsInst_SRAI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SRAI {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SRAI{
	string  Arch="";
}
class InstSE_SRAI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SRAI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRA_FM_SRAI<bits<6>  funct, bit  rotate> : StdArch_SRAI ;
def II_SLL_SRAI : InstrItinClass ;
class ISA_MIPS1_SRAI{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SRAI;
class shift_rotate_imm_SRAI<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SRAI <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "srai	$rd, $rs1, $shamt", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
def SRAI : MMRel_SRAI , shift_rotate_imm_SRAI <"sll", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_SRAI <0, 0>, ISA_MIPS1_SRAI , SRAI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SRAIW;
class MipsInst_SRAIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SRAIW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_SRAIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SRAIW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SRAIW{
	string  Arch="";
}
class shift_rotate_imm_SRAIW<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SRAIW <(outs GPR:$rd), (ins GPR:$rs1, uimm5:$shamt), "sraiw	$rd, $rs1, $shamt", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
class ISA_MIPS3_SRAIW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DSRL32_SRAIW : InstrItinClass ;
class SRA_FM_SRAIW<bits<6>  funct, bit  rotate> : StdArch_SRAIW ;
def SRAIW : shift_rotate_imm_SRAIW <"dsrl32", ?, ?, NoItinerary>, SRA_FM_SRAIW <0x3e, 0>, ISA_MIPS3_SRAIW , SRAIW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_SRLI;
class MipsInst_SRLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SRLI {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_SRLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SRLI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SRLI{
	string  Arch="";
}
class shift_rotate_reg_SRLI<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_SRLI <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "srli	$rd, $rs1, $shamt", [], itin, InstFormatR, opstr>;
class ISA_MIPS1_SRLI{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SRLI;
def II_SLLV_SRLI : InstrItinClass ;
class SRLV_FM_SRLI<bits<6>  funct, bit  rotate> : StdArch_SRLI ;
def SRLI : MMRel_SRLI , shift_rotate_reg_SRLI <"sllv", ?, NoItinerary, null_frag>, SRLV_FM_SRLI <4, 0>, ISA_MIPS1_SRLI , SRLI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SRLIW;
class MipsInst_SRLIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SRLIW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SRLIW{
	string  Arch="";
}
class InstSE_SRLIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SRLIW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRLV_FM_SRLIW<bits<6>  funct, bit  rotate> : StdArch_SRLIW ;
class shift_rotate_reg_SRLIW<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_SRLIW <(outs GPR:$rd), (ins GPR:$rs1, uimm5:$shamt), "srliw	$rd, $rs1, $shamt", [], itin, InstFormatR, opstr>;
class ISA_MIPS3_SRLIW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DSLLV_SRLIW : InstrItinClass ;
def SRLIW : shift_rotate_reg_SRLIW <"dsllv", ?, NoItinerary, null_frag>, SRLV_FM_SRLIW <0x14, 0>, ISA_MIPS3_SRLIW , SRLIW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_XORI;
class MipsInst_XORI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_XORI {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_XORI{
	string  Arch="";
}
class InstSE_XORI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_XORI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_XORI;
class ADDI_FM_XORI<bits<6>  op> : StdArch_XORI ;
def II_XORI_XORI : InstrItinClass ;
class ISA_MIPS1_XORI{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_XORI;
class ArithLogicI_XORI<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_XORI <(outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12), "xori	$rd, $rs1, $imm12", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=1;
	let  TwoOperandAliasConstraint="";
}
def XORI : MMRel_XORI , StdMMR6Rel_XORI , ArithLogicI_XORI <"xori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_XORI <0xe>, ISA_MIPS1_XORI , XORI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let isAsCheapAsAMove = 1;
}
class PredicateControl_JAL;
class StdArch_JAL{
	string  Arch="";
}
class MipsInst_JAL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_JAL {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class JR_HB_FM_JAL<bits<6>  op> : StdArch_JAL ;
def II_JR_HB_JAL : InstrItinClass ;
class JR_HB_DESC_BASE_JAL<string  instr_asm, RegisterOperand  GPROpnd>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins simm21_lsb0_jal:$imm20);
	string  AsmString="jal	$rd, $imm20";
	list<dag>  Pattern=[];
}
class InstSE_JAL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_JAL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS32R2_NOT_32R6_64R6_JAL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class JR_HB_ENC_JAL : JR_HB_FM_JAL <8>;
class JR_HB_DESC_JAL<RegisterOperand  RO> : InstSE_JAL <(outs), (ins), "", [], NoItinerary, InstFormatR>, JR_HB_DESC_BASE_JAL <"jr.hb", RO>{
	let  isBranch=false;
	let  isIndirectBranch=false;
	let  hasDelaySlot=false;
	let  isTerminator=false;
	let  isBarrier=false;
	bit  isCTI=1;
}
def JAL : JR_HB_DESC_JAL <?>, JR_HB_ENC_JAL , ISA_MIPS32R2_NOT_32R6_64R6_JAL , JAL_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let isCall = 1;
}
class PredicateControl_ADD;
class MipsInst_ADD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ADD {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_ADD{
	string  Arch="";
}
class InstSE_ADD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ADD <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_ADD<bits<6>  op, bits<6>  funct> : StdArch_ADD ;
class StdMMR6Rel_ADD;
class ISA_MIPS1_ADD{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_ADD;
class ArithLogicR_ADD<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_ADD <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "add	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_ADD_ADD : InstrItinClass ;
def ADD : MMRel_ADD , StdMMR6Rel_ADD , ArithLogicR_ADD <"add", ?, false, NoItinerary>, ADD_FM_ADD <0, 0x20>, ISA_MIPS1_ADD , ADD_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_ADDW;
class MipsInst_ADDW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ADDW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_ADDW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ADDW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_ADDW{
	string  Arch="";
}
class Mult_ADDW<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_ADDW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "addw	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  isCommutable=false;
	let  Defs=DefRegs;
	let  hasSideEffects=0;
}
class ISA_MIPS3_NOT_32R6_64R6_ADDW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DMULTU_ADDW : InstrItinClass ;
class MULT_FM_ADDW<bits<6>  op, bits<6>  funct> : StdArch_ADDW ;
def ADDW : Mult_ADDW <"dmultu", NoItinerary, ?, []>, MULT_FM_ADDW <0, 0x1d>, ISA_MIPS3_NOT_32R6_64R6_ADDW , ADDW_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_AND;
class MipsInst_AND<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AND {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_AND{
	string  Arch="";
}
class InstSE_AND<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AND <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AND<bits<6>  op, bits<6>  funct> : StdArch_AND ;
class StdMMR6Rel_AND;
def II_AND_AND : InstrItinClass ;
class ISA_MIPS1_AND{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AND;
class ArithLogicR_AND<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AND <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "and	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AND : MMRel_AND , StdMMR6Rel_AND , ArithLogicR_AND <"and", ?, false, NoItinerary, null_frag>, ADD_FM_AND <0, 0x24>, ISA_MIPS1_AND , AND_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_MRET;
class MipsInst_MRET<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_MRET {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class MipsR6Inst_MRET : MipsInst_MRET <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_SDBBP_MRET : InstrItinClass ;
class SPECIAL_SDBBP_FM_MRET : MipsR6Inst_MRET ;
class SDBBP_R6_DESC_MRET{
	dag  OutOperandList=(outs);
	dag  InOperandList=(ins GPR:$rs1, GPR:$rs2);
	string  AsmString="mret	";
	list<dag>  Pattern=[];
	bit  isCTI=1;
	InstrItinClass  Itinerary=NoItinerary;
}
class SDBBP_R6_ENC_MRET : SPECIAL_SDBBP_FM_MRET ;
class ISA_MIPS32R6_MRET{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def MRET : SDBBP_R6_ENC_MRET , SDBBP_R6_DESC_MRET , ISA_MIPS32R6_MRET , MRET_AUX {
	  	let isBarrier = 1;
	let mayLoad = 0;
	let hasSideEffects = 1;
	let mayStore = 0;
	let isTerminator = 1;
	let isReturn = 1;
}
class PredicateControl_OR;
class MipsInst_OR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_OR {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_OR{
	string  Arch="";
}
class InstSE_OR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_OR <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_OR<bits<6>  op, bits<6>  funct> : StdArch_OR ;
class StdMMR6Rel_OR;
class ISA_MIPS1_OR{
	list<Predicate>  EncodingPredicates=[];
}
def II_OR_OR : InstrItinClass ;
class MMRel_OR;
class ArithLogicR_OR<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_OR <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "or	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def OR : MMRel_OR , StdMMR6Rel_OR , ArithLogicR_OR <"or", ?, false, NoItinerary, null_frag>, ADD_FM_OR <0, 0x25>, ISA_MIPS1_OR , OR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SFENCE_VMA;
class MipsInst_SFENCE_VMA<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SFENCE_VMA {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SFENCE_VMA{
	string  Arch="";
}
class InstSE_SFENCE_VMA<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SFENCE_VMA <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class INSN_MIPS3_32_NOT_32R6_64R6_SFENCE_VMA{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SFENCE_VMA;
class CACHEOP_FM_SFENCE_VMA<bits<6>  op> : StdArch_SFENCE_VMA ;
def II_PREF_SFENCE_VMA : InstrItinClass ;
class CacheOp_SFENCE_VMA<string  instr_asm, Operand  MemOpnd, InstrItinClass  itin=NoItinerary> : InstSE_SFENCE_VMA <(outs), (ins GPR:$rs1, GPR:$rs2), "sfence.vma	$rs1, $rs2", [], itin, InstFormatR, instr_asm>{
	let  DecoderMethod="";
}
def SFENCE_VMA : MMRel_SFENCE_VMA , CacheOp_SFENCE_VMA <"pref", ?, NoItinerary>, CACHEOP_FM_SFENCE_VMA <0b110011>, INSN_MIPS3_32_NOT_32R6_64R6_SFENCE_VMA , SFENCE_VMA_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 1;
	let mayStore = 0;
}
class PredicateControl_SLL;
class MipsInst_SLL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SLL {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SLL{
	string  Arch="";
}
class InstSE_SLL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SLL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRA_FM_SLL<bits<6>  funct, bit  rotate> : StdArch_SLL ;
def II_SLL_SLL : InstrItinClass ;
class ISA_MIPS1_SLL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SLL;
class shift_rotate_imm_SLL<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SLL <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sll	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
def SLL : MMRel_SLL , shift_rotate_imm_SLL <"sll", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_SLL <0, 0>, ISA_MIPS1_SLL , SLL_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SLLW;
class MipsInst_SLLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SLLW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_SLLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SLLW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SLLW{
	string  Arch="";
}
class shift_rotate_imm_SLLW<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SLLW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sllw	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
class ISA_MIPS3_SLLW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DSRA32_SLLW : InstrItinClass ;
class SRA_FM_SLLW<bits<6>  funct, bit  rotate> : StdArch_SLLW ;
def SLLW : shift_rotate_imm_SLLW <"dsra32", ?, ?, NoItinerary>, SRA_FM_SLLW <0x3f, 0>, ISA_MIPS3_SLLW , SLLW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_SLT;
class MipsInst_SLT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SLT {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
def II_SLT_SLTU_SLT : InstrItinClass ;
class InstSE_SLT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SLT <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SLT{
	string  Arch="";
}
class SetCC_R_SLT<string  opstr, PatFrag  cond_op, RegisterOperand  RO> : InstSE_SLT <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "slt	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>;
class MMRel_SLT;
class ISA_MIPS1_SLT{
	list<Predicate>  EncodingPredicates=[];
}
class ADD_FM_SLT<bits<6>  op, bits<6>  funct> : StdArch_SLT ;
def SLT : MMRel_SLT , SetCC_R_SLT <"slt", ?, ?>, ADD_FM_SLT <0, 0x2a>, ISA_MIPS1_SLT , SLT_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SLTU;
class MipsInst_SLTU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SLTU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
def II_SLT_SLTU_SLTU : InstrItinClass ;
class InstSE_SLTU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SLTU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SLTU{
	string  Arch="";
}
class SetCC_R_SLTU<string  opstr, PatFrag  cond_op, RegisterOperand  RO> : InstSE_SLTU <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sltu	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>;
class MMRel_SLTU;
class ISA_MIPS1_SLTU{
	list<Predicate>  EncodingPredicates=[];
}
class ADD_FM_SLTU<bits<6>  op, bits<6>  funct> : StdArch_SLTU ;
def SLTU : MMRel_SLTU , SetCC_R_SLTU <"sltu", ?, ?>, ADD_FM_SLTU <0, 0x2b>, ISA_MIPS1_SLTU , SLTU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SRA;
class MipsInst_SRA<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SRA {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SRA{
	string  Arch="";
}
class InstSE_SRA<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SRA <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRA_FM_SRA<bits<6>  funct, bit  rotate> : StdArch_SRA ;
class ISA_MIPS1_SRA{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SRA;
def II_SRA_SRA : InstrItinClass ;
class shift_rotate_imm_SRA<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SRA <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sra	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
def SRA : MMRel_SRA , shift_rotate_imm_SRA <"sra", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_SRA <3, 0>, ISA_MIPS1_SRA , SRA_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SRAW;
class MipsInst_SRAW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SRAW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SRAW{
	string  Arch="";
}
class InstSE_SRAW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SRAW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRLV_FM_SRAW<bits<6>  funct, bit  rotate> : StdArch_SRAW ;
class shift_rotate_reg_SRAW<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_SRAW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sraw	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>;
def II_DROTRV_SRAW : InstrItinClass ;
class ISA_MIPS64R2_SRAW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def SRAW : shift_rotate_reg_SRAW <"drotrv", ?, NoItinerary, null_frag>, SRLV_FM_SRAW <0x16, 1>, ISA_MIPS64R2_SRAW , SRAW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_SRET;
class MipsInst_SRET<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SRET {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SRET{
	string  Arch="";
}
class InstSE_SRET<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SRET <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_SRET;
class EI_FM_SRET<bits<1>  sc> : StdArch_SRET ;
class ISA_MIPS32R2_SRET{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class DEI_FT_SRET<string  opstr, RegisterOperand  RO, InstrItinClass  itin=NoItinerary> : InstSE_SRET <(outs), (ins GPR:$rs1, GPR:$rs2), "sret	", [], itin, InstFormatR, opstr>;
class MMRel_SRET;
def II_EI_SRET : InstrItinClass ;
def SRET : MMRel_SRET , StdMMR6Rel_SRET , DEI_FT_SRET <"ei", ?, NoItinerary>, EI_FM_SRET <1>, ISA_MIPS32R2_SRET , SRET_AUX {
	  	let isBarrier = 1;
	let mayLoad = 0;
	let hasSideEffects = 1;
	let mayStore = 0;
	let isTerminator = 1;
	let isReturn = 1;
}
class PredicateControl_SRL;
class MipsInst_SRL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SRL {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SRL{
	string  Arch="";
}
class InstSE_SRL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SRL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRA_FM_SRL<bits<6>  funct, bit  rotate> : StdArch_SRL ;
class ISA_MIPS1_SRL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SRL;
class shift_rotate_imm_SRL<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SRL <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "srl	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
def II_SRL_SRL : InstrItinClass ;
def SRL : MMRel_SRL , shift_rotate_imm_SRL <"srl", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_SRL <2, 0>, ISA_MIPS1_SRL , SRL_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SRLW;
class MipsInst_SRLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SRLW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SRLW{
	string  Arch="";
}
class InstSE_SRLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SRLW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRLV_FM_SRLW<bits<6>  funct, bit  rotate> : StdArch_SRLW ;
class shift_rotate_reg_SRLW<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_SRLW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "srlw	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>;
class ISA_MIPS3_SRLW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DSLLV_SRLW : InstrItinClass ;
def SRLW : shift_rotate_reg_SRLW <"dsllv", ?, NoItinerary, null_frag>, SRLV_FM_SRLW <0x14, 0>, ISA_MIPS3_SRLW , SRLW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_SUB;
class MipsInst_SUB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SUB {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SUB{
	string  Arch="";
}
class InstSE_SUB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SUB <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_SUB<bits<6>  op, bits<6>  funct> : StdArch_SUB ;
class StdMMR6Rel_SUB;
class ISA_MIPS1_SUB{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SUB;
def II_SUB_SUB : InstrItinClass ;
class ArithLogicR_SUB<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_SUB <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sub	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def SUB : MMRel_SUB , StdMMR6Rel_SUB , ArithLogicR_SUB <"sub", ?, false, NoItinerary>, ADD_FM_SUB <0, 0x22>, ISA_MIPS1_SUB , SUB_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SUBW;
class MipsInst_SUBW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SUBW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SUBW{
	string  Arch="";
}
class InstSE_SUBW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SUBW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_DDIV_SUBW : InstrItinClass ;
class MULT_FM_SUBW<bits<6>  op, bits<6>  funct> : StdArch_SUBW ;
class ISA_MIPS3_NOT_32R6_64R6_SUBW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class Div_SUBW<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_SUBW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "subw	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  Defs=DefRegs;
}
def SUBW : Div_SUBW <"ddiv", NoItinerary, ?, []>, MULT_FM_SUBW <0, 0x1e>, ISA_MIPS3_NOT_32R6_64R6_SUBW , SUBW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_URET;
class MipsInst_URET<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_URET {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class MipsR6Inst_URET : MipsInst_URET <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class MipsR6Arch_URET<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SPECIAL3_MEM_FM_URET<Type_AUX_FM  Operation> : MipsR6Inst_URET ;
class CACHE_HINT_DESC_URET<string  instr_asm, Operand  MemOpnd, RegisterOperand  GPROpnd, InstrItinClass  itin> : MipsR6Arch_URET <instr_asm>{
	dag  OutOperandList=(outs);
	dag  InOperandList=(ins GPR:$rs1, GPR:$rs2);
	string  AsmString="uret	";
	list<dag>  Pattern=[];
	string  DecoderMethod="";
	InstrItinClass  Itinerary=itin;
}
def II_CACHE_URET : InstrItinClass ;
class CACHE_ENC_URET : SPECIAL3_MEM_FM_URET <?>;
class R6MMR6Rel_URET;
class ISA_MIPS32R6_URET{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class CACHE_DESC_URET : CACHE_HINT_DESC_URET <"", ?, ?, NoItinerary>;
def URET : R6MMR6Rel_URET , CACHE_ENC_URET , CACHE_DESC_URET , ISA_MIPS32R6_URET , URET_AUX {
	  	let isBarrier = 1;
	let mayLoad = 0;
	let hasSideEffects = 1;
	let mayStore = 0;
	let isTerminator = 1;
	let isReturn = 1;
}
class PredicateControl_WFI;
class MipsInst_WFI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_WFI {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_WFI{
	string  Arch="";
}
class InstSE_WFI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_WFI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ER_FM_WFI<bits<6>  funct, bit  LLBit> : StdArch_WFI ;
class ISA_MIPS32R5_WFI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_WFI;
def II_ERETNC_WFI : InstrItinClass ;
class ER_FT_WFI<string  opstr, InstrItinClass  itin=NoItinerary> : InstSE_WFI <(outs), (ins GPR:$rs1, GPR:$rs2), opstr, [], itin, InstFormatR, opstr>{
	let  isReturn=false;
}
def WFI : MMRel_WFI , ER_FT_WFI <"wfi	", NoItinerary>, ER_FM_WFI <0x18, 0x1>, ISA_MIPS32R5_WFI , WFI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 1;
	let mayStore = 0;
}
class PredicateControl_XOR;
class MipsInst_XOR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_XOR {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_XOR{
	string  Arch="";
}
class InstSE_XOR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_XOR <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_XOR<bits<6>  op, bits<6>  funct> : StdArch_XOR ;
class StdMMR6Rel_XOR;
def II_XOR_XOR : InstrItinClass ;
class ISA_MIPS1_XOR{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_XOR;
class ArithLogicR_XOR<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_XOR <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "xor	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def XOR : MMRel_XOR , StdMMR6Rel_XOR , ArithLogicR_XOR <"xor", ?, false, NoItinerary, null_frag>, ADD_FM_XOR <0, 0x26>, ISA_MIPS1_XOR , XOR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_SB;
class MipsInst_SB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SB {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_SB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SB <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SB{
	string  Arch="";
}
class StoreMemory_SB<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_SB <(outs), (ins GPR:$rs2, GPR:$rs1, simm12:$imm12), "sb	$rs2, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	string  BaseOpcode=opstr;
	let  mayStore=1;
}
class StdMMR6Rel_SB;
class LW_FM_SB<bits<6>  op> : StdArch_SB ;
class ISA_MIPS1_SB{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SB;
def II_SB_SB : InstrItinClass ;
class Store_SB<string  opstr, DAGOperand  RO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr, DAGOperand  MO=i1imm> : StoreMemory_SB <opstr, RO, MO, OpNode, Itin, Addr>;
def SB : StdMMR6Rel_SB , Store_SB <"", i1imm, null_frag, NoItinerary>, MMRel_SB , LW_FM_SB <0x28>, ISA_MIPS1_SB , SB_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
}
class PredicateControl_SD;
class MipsInst_SD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SD {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class StdArch_SD{
	string  Arch="";
}
class InstSE_SD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SD <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_SD{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_SD<bits<6>  op> : StdArch_SD ;
def II_SD_SD : InstrItinClass ;
class StoreMemory_SD<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_SD <(outs), (ins GPR:$rs2, GPR:$rs1, simm12:$imm12), "sd	$rs2, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	string  BaseOpcode=opstr;
	let  mayStore=1;
}
def SD : StoreMemory_SD <"", i1imm, i1imm, null_frag, NoItinerary>, LW_FM_SD <0x3f>, ISA_MIPS3_SD , SD_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [IsRV64];
}
class PredicateControl_SH;
class MicroMipsInstBase_SH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SH {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_SH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_SH <outs, ins, asmstr, pattern, itin, f>{
	let  Size=4;
}
def II_SW_SH : InstrItinClass ;
class StoreSPMM16_SH<string  opstr, DAGOperand  RO, InstrItinClass  Itin, Operand  MemOpnd> : MicroMipsInst16_SH <(outs), (ins GPR:$rs2, GPR:$rs1, simm12:$imm12), "sh	$rs2, ${imm12}(${rs1})", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  mayStore=1;
}
class LOAD_STORE_SP_FM_MM16_SH<bits<6>  op>;
class ISA_MICROMIPS32_NOT_MIPS32R6_SH{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def SH : StoreSPMM16_SH <"swsp", i1imm, NoItinerary, ?>, LOAD_STORE_SP_FM_MM16_SH <0x32>, ISA_MICROMIPS32_NOT_MIPS32R6_SH , SH_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
}
class PredicateControl_SW;
class MipsInst_SW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class InstSE_SW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SW{
	string  Arch="";
}
class StoreMemory_SW<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_SW <(outs), (ins GPR:$rs2, GPR:$rs1, simm12:$imm12), "sw	$rs2, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	string  BaseOpcode=opstr;
	let  mayStore=1;
}
class StdMMR6Rel_SW;
def II_SW_SW : InstrItinClass ;
class LW_FM_SW<bits<6>  op> : StdArch_SW ;
class ISA_MIPS1_SW{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SW;
class Store_SW<string  opstr, DAGOperand  RO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr, DAGOperand  MO=i1imm> : StoreMemory_SW <opstr, RO, MO, OpNode, Itin, Addr>;
def SW : StdMMR6Rel_SW , Store_SW <"", i1imm, null_frag, NoItinerary>, MMRel_SW , LW_FM_SW <0x2b>, ISA_MIPS1_SW , SW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
}
class PredicateControl_AUIPC;
class MipsInst_AUIPC<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AUIPC {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
class MipsR6Inst_AUIPC : MipsInst_AUIPC <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class MipsR6Arch_AUIPC<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class PCREL16_FM_AUIPC<Type_AUX_FM  Operation> : MipsR6Inst_AUIPC ;
def II_AUIPC_AUIPC : InstrItinClass ;
class ALUIPC_DESC_BASE_AUIPC<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin=NoItinerary> : MipsR6Arch_AUIPC <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins uimm20_auipc:$imm20);
	string  AsmString="auipc	$rd, $imm20";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class R6MMR6Rel_AUIPC;
class AUIPC_ENC_AUIPC : PCREL16_FM_AUIPC <?>;
class AUIPC_DESC_AUIPC : ALUIPC_DESC_BASE_AUIPC <"", ?, NoItinerary>;
class ISA_MIPS32R6_AUIPC{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def AUIPC : R6MMR6Rel_AUIPC , AUIPC_ENC_AUIPC , AUIPC_DESC_AUIPC , ISA_MIPS32R6_AUIPC , AUIPC_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
}
class PredicateControl_LUI;
class MipsInst_LUI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LUI {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
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
def II_LUI_LUI : InstrItinClass ;
class InstSE_LUI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LUI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class IsAsCheapAsAMove_LUI{
	bit  isAsCheapAsAMove=1;
}
class StdArch_LUI{
	string  Arch="";
}
class ISA_MIPS1_LUI{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_LUI;
class LoadUpper_LUI<string  opstr, RegisterOperand  RO, Operand  Imm> : InstSE_LUI <(outs GPR:$rd), (ins uimm20_lui:$imm20), "lui	$rd, $imm20", [], NoItinerary, InstFormatR, opstr>, IsAsCheapAsAMove_LUI {
	let  hasSideEffects=0;
	let  isReMaterializable=1;
}
class LUI_FM_LUI : StdArch_LUI ;
def LUI : MMRel_LUI , LoadUpper_LUI <"lui", ?, ?>, LUI_FM_LUI , ISA_MIPS1_LUI , LUI_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
}
