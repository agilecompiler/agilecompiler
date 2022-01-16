class FLW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0000111;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FLW_AUX: FLW_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteFLD32, ReadFMemBase]>;
class FADD_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FADD_S_AUX: FADD_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFALU32, ReadFALU32, ReadFALU32]>;
class FCLASS_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1110000;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FCLASS_S_AUX: FCLASS_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFClass32, ReadFClass32]>;
class FCVT_L_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100000;
	bits<5> rs2 = 0b00010;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FCVT_L_S_AUX: FCVT_L_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtF32ToI64, ReadFCvtF32ToI64]>;
class FCVT_LU_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100000;
	bits<5> rs2 = 0b00011;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FCVT_LU_S_AUX: FCVT_LU_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtF32ToI64, ReadFCvtF32ToI64]>;
class FCVT_S_L_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101000;
	bits<5> rs2 = 0b00010;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FCVT_S_L_AUX: FCVT_S_L_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtI64ToF32, ReadFCvtI64ToF32]>;
class FCVT_S_LU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101000;
	bits<5> rs2 = 0b00011;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FCVT_S_LU_AUX: FCVT_S_LU_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtI64ToF32, ReadFCvtI64ToF32]>;
class FCVT_S_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101000;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FCVT_S_W_AUX: FCVT_S_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtI32ToF32, ReadFCvtI32ToF32]>;
class FCVT_S_WU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101000;
	bits<5> rs2 = 0b00001;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FCVT_S_WU_AUX: FCVT_S_WU_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtI32ToF32, ReadFCvtI32ToF32]>;
class FCVT_W_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100000;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FCVT_W_S_AUX: FCVT_W_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtF32ToI32, ReadFCvtF32ToI32]>;
class FCVT_WU_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100000;
	bits<5> rs2 = 0b00001;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FCVT_WU_S_AUX: FCVT_WU_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtF32ToI32, ReadFCvtF32ToI32]>;
class FDIV_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0001100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FDIV_S_AUX: FDIV_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFDiv32, ReadFDiv32, ReadFDiv32]>;
class FEQ_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FEQ_S_AUX: FEQ_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCmp32, ReadFCmp32, ReadFCmp32]>;
class FLE_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FLE_S_AUX: FLE_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCmp32, ReadFCmp32, ReadFCmp32]>;
class FLT_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FLT_S_AUX: FLT_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCmp32, ReadFCmp32, ReadFCmp32]>;
class FMAX_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FMAX_S_AUX: FMAX_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFMinMax32, ReadFMinMax32, ReadFMinMax32]>;
class FMIN_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FMIN_S_AUX: FMIN_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFMinMax32, ReadFMinMax32, ReadFMinMax32]>;
class FMUL_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0001000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FMUL_S_AUX: FMUL_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFMul32, ReadFMul32, ReadFMul32]>;
class FMV_W_X_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1111000;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FMV_W_X_AUX: FMV_W_X_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFMovI32ToF32, ReadFMovI32ToF32]>;
class FMV_X_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1110000;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FMV_X_W_AUX: FMV_X_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFMovF32ToI32, ReadFMovF32ToI32]>;
class FSGNJ_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FSGNJ_S_AUX: FSGNJ_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFSGNJ32, ReadFSGNJ32, ReadFSGNJ32]>;
class FSGNJN_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FSGNJN_S_AUX: FSGNJN_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFSGNJ32, ReadFSGNJ32, ReadFSGNJ32]>;
class FSGNJX_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FSGNJX_S_AUX: FSGNJX_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFSGNJ32, ReadFSGNJ32, ReadFSGNJ32]>;
class FSQRT_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0101100;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FSQRT_S_AUX: FSQRT_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFSqrt32, ReadFSqrt32]>;
class FSUB_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FSUB_S_AUX: FSUB_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFALU32, ReadFALU32, ReadFALU32]>;
class FMADD_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b00;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1000011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FMADD_S_AUX: FMADD_S_FM2, TSFlagTemplate<InstFormatR4>, Sched<[WriteFMulAdd32, ReadFMulAdd32, ReadFMulAdd32, ReadFMulAdd32]>;
class FMSUB_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b00;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1000111;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FMSUB_S_AUX: FMSUB_S_FM2, TSFlagTemplate<InstFormatR4>, Sched<[WriteFMulSub32, ReadFMulSub32, ReadFMulSub32, ReadFMulSub32]>;
class FNMADD_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b00;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1001111;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FNMADD_S_AUX: FNMADD_S_FM2, TSFlagTemplate<InstFormatR4>, Sched<[WriteFMulAdd32, ReadFMulAdd32, ReadFMulAdd32, ReadFMulAdd32]>;
class FNMSUB_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b00;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> opcode = 0b1001011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FNMSUB_S_AUX: FNMSUB_S_FM2, TSFlagTemplate<InstFormatR4>, Sched<[WriteFMulSub32, ReadFMulSub32, ReadFMulSub32, ReadFMulSub32]>;
class FSW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<7> opcode = 0b0100111;
	let Inst{31-25} = imm12{11-5};
	let Inst{11-7} = imm12{4-0};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class FSW_AUX: FSW_FM2, TSFlagTemplate<InstFormatS>, Sched<[WriteFST32, ReadStoreData, ReadFMemBase]>;
class PredicateControl_FLW;
class MipsInst_FLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FLW {
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
class StdArch_FLW{
	string  Arch="";
}
class HARDFLOAT_FLW{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FLW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LW_FM_FLW<bits<6>  op> : StdArch_FLW ;
class ISA_MIPS1_FLW{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FLW;
class LW_FT_FLW<string  opstr, RegisterOperand  RC, DAGOperand  MO, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FLW <(outs FPR32:$rd), (ins GPR:$rs1, simm12:$imm12), "flw	$rd, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>, HARDFLOAT_FLW {
	let  DecoderMethod="";
	let  mayLoad=1;
}
def II_LWC1_FLW : InstrItinClass ;
def FLW : MMRel_FLW , LW_FT_FLW <"lwc1", ?, i1imm, NoItinerary, null_frag>, LW_FM_FLW <0x31>, ISA_MIPS1_FLW , FLW_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FADD_S;
class MipsInst_FADD_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FADD_S {
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
class InstSE_FADD_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FADD_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FADD_S{
	string  Arch="";
}
class MMRel_FADD_S;
class MArithR_FADD_S<string  opstr, InstrItinClass  itin, bit  isComm=false> : InstSE_FADD_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2, frmarg:$funct3), "fadd.s	$rd, $rs1, $rs2, $funct3", [], itin, InstFormatR, opstr>{
	let  Defs=[];
	let  Uses=[];
	let  isCommutable=isComm;
}
def II_MSUB_FADD_S : InstrItinClass ;
class ISA_MIPS32_NOT_32R6_64R6_FADD_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MULT_FM_FADD_S<bits<6>  op, bits<6>  funct> : StdArch_FADD_S ;
def FADD_S : MMRel_FADD_S , MArithR_FADD_S <"msub", NoItinerary>, MULT_FM_FADD_S <0x1c, 4>, ISA_MIPS32_NOT_32R6_64R6_FADD_S , FADD_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FCLASS_S;
class MipsInst_FCLASS_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCLASS_S {
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
class StdArch_FCLASS_S{
	string  Arch="";
}
class InstSE_FCLASS_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCLASS_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_FCLASS_S<bits<6>  op, bits<6>  funct> : StdArch_FCLASS_S ;
class StdMMR6Rel_FCLASS_S;
class ISA_MIPS1_FCLASS_S{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FCLASS_S;
def II_SUBU_FCLASS_S : InstrItinClass ;
class ArithLogicR_FCLASS_S<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_FCLASS_S <(outs GPR:$rd), (ins FPR32:$rs1), "fclass.s	$rd, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def FCLASS_S : MMRel_FCLASS_S , StdMMR6Rel_FCLASS_S , ArithLogicR_FCLASS_S <"subu", ?, false, NoItinerary, null_frag>, ADD_FM_FCLASS_S <0, 0x23>, ISA_MIPS1_FCLASS_S , FCLASS_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FCVT_L_S;
class MipsInst_FCVT_L_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_L_S {
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
class HARDFLOAT_FCVT_L_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_L_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_L_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_L_S{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_L_S{
	string  Arch="";
}
class ABSS_FT_FCVT_L_S<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_L_S <(outs GPR:$rd), (ins FPR32:$rs1, frmarg:$funct3), "fcvt.l.s	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_L_S , NeverHasSideEffects_FCVT_L_S ;
class StdMMR6Rel_FCVT_L_S;
def II_CEIL_FCVT_L_S : InstrItinClass ;
class MMRel_FCVT_L_S;
class ISA_MIPS2_FCVT_L_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_L_S<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_L_S ;
def FCVT_L_S : MMRel_FCVT_L_S , StdMMR6Rel_FCVT_L_S , ABSS_FT_FCVT_L_S <"ceil.w.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_L_S <0xe, 16>, ISA_MIPS2_FCVT_L_S , FCVT_L_S_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF, IsRV64];
}
class PredicateControl_FCVT_LU_S;
class MipsInst_FCVT_LU_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_LU_S {
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
class HARDFLOAT_FCVT_LU_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_LU_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_LU_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_LU_S{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_LU_S{
	string  Arch="";
}
class ABSS_FT_FCVT_LU_S<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_LU_S <(outs GPR:$rd), (ins FPR32:$rs1, frmarg:$funct3), "fcvt.lu.s	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_LU_S , NeverHasSideEffects_FCVT_LU_S ;
def II_CVT_FCVT_LU_S : InstrItinClass ;
class MMRel_FCVT_LU_S;
class INSN_MIPS3_32R2_FCVT_LU_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_LU_S<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_LU_S ;
def FCVT_LU_S : MMRel_FCVT_LU_S , ABSS_FT_FCVT_LU_S <"cvt.l.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_LU_S <0x25, 16>, INSN_MIPS3_32R2_FCVT_LU_S , FCVT_LU_S_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF, IsRV64];
}
class PredicateControl_FCVT_S_L;
class MipsInst_FCVT_S_L<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_S_L {
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
class HARDFLOAT_FCVT_S_L{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_S_L<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_S_L <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_S_L{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_S_L{
	string  Arch="";
}
class ABSS_FT_FCVT_S_L<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_S_L <(outs FPR32:$rd), (ins GPR:$rs1, frmarg:$funct3), "fcvt.s.l	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_S_L , NeverHasSideEffects_FCVT_S_L ;
def II_CVT_FCVT_S_L : InstrItinClass ;
class FGR_64_FCVT_S_L{
	list<Predicate>  FGRPredicates=[];
}
class INSN_MIPS3_32R2_FCVT_S_L{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_S_L<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_S_L ;
def FCVT_S_L : ABSS_FT_FCVT_S_L <"cvt.d.l", ?, ?, NoItinerary>, ABSS_FM_FCVT_S_L <0x21, 21>, INSN_MIPS3_32R2_FCVT_S_L , FGR_64_FCVT_S_L , FCVT_S_L_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF, IsRV64];
}
class PredicateControl_FCVT_S_LU;
class MipsInst_FCVT_S_LU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_S_LU {
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
class HARDFLOAT_FCVT_S_LU{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_S_LU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_S_LU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_S_LU{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_S_LU{
	string  Arch="";
}
class ABSS_FT_FCVT_S_LU<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_S_LU <(outs FPR32:$rd), (ins GPR:$rs1, frmarg:$funct3), "fcvt.s.lu	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_S_LU , NeverHasSideEffects_FCVT_S_LU ;
def II_CVT_FCVT_S_LU : InstrItinClass ;
class ISA_MIPS1_FCVT_S_LU{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FCVT_S_LU;
class ABSS_FM_FCVT_S_LU<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_S_LU ;
def FCVT_S_LU : MMRel_FCVT_S_LU , ABSS_FT_FCVT_S_LU <"cvt.s.w", ?, ?, NoItinerary>, ABSS_FM_FCVT_S_LU <0x20, 20>, ISA_MIPS1_FCVT_S_LU , FCVT_S_LU_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF, IsRV64];
}
class PredicateControl_FCVT_S_W;
class MipsInst_FCVT_S_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_S_W {
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
class HARDFLOAT_FCVT_S_W{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_S_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_S_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_S_W{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_S_W{
	string  Arch="";
}
class ABSS_FT_FCVT_S_W<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_S_W <(outs FPR32:$rd), (ins GPR:$rs1, frmarg:$funct3), "fcvt.s.w	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_S_W , NeverHasSideEffects_FCVT_S_W ;
class StdMMR6Rel_FCVT_S_W;
def II_FLOOR_FCVT_S_W : InstrItinClass ;
class MMRel_FCVT_S_W;
class ISA_MIPS2_FCVT_S_W{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_S_W<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_S_W ;
def FCVT_S_W : MMRel_FCVT_S_W , StdMMR6Rel_FCVT_S_W , ABSS_FT_FCVT_S_W <"floor.w.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_S_W <0xf, 16>, ISA_MIPS2_FCVT_S_W , FCVT_S_W_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FCVT_S_WU;
class MipsInst_FCVT_S_WU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_S_WU {
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
class HARDFLOAT_FCVT_S_WU{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_S_WU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_S_WU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_S_WU{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_S_WU{
	string  Arch="";
}
class ABSS_FT_FCVT_S_WU<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_S_WU <(outs FPR32:$rd), (ins GPR:$rs1, frmarg:$funct3), "fcvt.s.wu	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_S_WU , NeverHasSideEffects_FCVT_S_WU ;
class ISA_MIPS2_FCVT_S_WU{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_FLOOR_FCVT_S_WU : InstrItinClass ;
class FGR_64_FCVT_S_WU{
	list<Predicate>  FGRPredicates=[];
}
class ABSS_FM_FCVT_S_WU<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_S_WU ;
def FCVT_S_WU : ABSS_FT_FCVT_S_WU <"floor.l.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_S_WU <0xb, 16>, ISA_MIPS2_FCVT_S_WU , FGR_64_FCVT_S_WU , FCVT_S_WU_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FCVT_W_S;
class MipsInst_FCVT_W_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_W_S {
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
class HARDFLOAT_FCVT_W_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_W_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_W_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_W_S{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_W_S{
	string  Arch="";
}
class ABSS_FT_FCVT_W_S<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_W_S <(outs GPR:$rd), (ins FPR32:$rs1, frmarg:$funct3), "fcvt.w.s	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_W_S , NeverHasSideEffects_FCVT_W_S ;
def II_CVT_FCVT_W_S : InstrItinClass ;
class ISA_MIPS1_FCVT_W_S{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FCVT_W_S;
class ABSS_FM_FCVT_W_S<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_W_S ;
def FCVT_W_S : MMRel_FCVT_W_S , ABSS_FT_FCVT_W_S <"cvt.w.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_W_S <0x24, 16>, ISA_MIPS1_FCVT_W_S , FCVT_W_S_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FCVT_WU_S;
class MipsInst_FCVT_WU_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_WU_S {
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
class HARDFLOAT_FCVT_WU_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_WU_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_WU_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_WU_S{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_WU_S{
	string  Arch="";
}
class ABSS_FT_FCVT_WU_S<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_WU_S <(outs GPR:$rd), (ins FPR32:$rs1, frmarg:$funct3), "fcvt.wu.s	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_WU_S , NeverHasSideEffects_FCVT_WU_S ;
class StdMMR6Rel_FCVT_WU_S;
def II_CEIL_FCVT_WU_S : InstrItinClass ;
class MMRel_FCVT_WU_S;
class ISA_MIPS2_FCVT_WU_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_WU_S<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_WU_S ;
def FCVT_WU_S : MMRel_FCVT_WU_S , StdMMR6Rel_FCVT_WU_S , ABSS_FT_FCVT_WU_S <"ceil.w.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_WU_S <0xe, 16>, ISA_MIPS2_FCVT_WU_S , FCVT_WU_S_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FDIV_S;
class MipsInst_FDIV_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FDIV_S {
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
class StdArch_FDIV_S{
	string  Arch="";
}
class HARDFLOAT_FDIV_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FDIV_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FDIV_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADDS_FM_FDIV_S<bits<6>  funct, bits<5>  fmt> : StdArch_FDIV_S ;
def II_DIV_S_FDIV_S : InstrItinClass ;
class ISA_MIPS1_FDIV_S{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FDIV_S;
class ADDS_FT_FDIV_S<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FDIV_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2, frmarg:$funct3), "fdiv.s	$rd, $rs1, $rs2, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FDIV_S {
	let  isCommutable=IsComm;
}
def FDIV_S : MMRel_FDIV_S , ADDS_FT_FDIV_S <"div.s", ?, NoItinerary, false, null_frag>, ADDS_FM_FDIV_S <0x03, 16>, ISA_MIPS1_FDIV_S , FDIV_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FEQ_S;
class StdArch_FEQ_S{
	string  Arch="";
}
class MipsInst_FEQ_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FEQ_S {
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
class CEQS_FM_FEQ_S<bits<5>  fmt> : StdArch_FEQ_S ;
class HARDFLOAT_FEQ_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FEQ_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FEQ_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MMRel_FEQ_S;
class C_COND_FM_FEQ_S<bits<5>  fmt, bits<4>  c> : CEQS_FM_FEQ_S <fmt>;
class C_COND_FT_FEQ_S<string  CondStr, string  Typestr, RegisterOperand  RC, InstrItinClass  itin> : InstSE_FEQ_S <(outs GPR:$rd), (ins FPR32:$rs1, FPR32:$rs2), "feq.s	$rd, $rs1, $rs2", [], itin, InstFormatR>, HARDFLOAT_FEQ_S {
	let  isCompare=false;
	let  hasFCCRegOperand=1;
}
class ISA_MIPS1_NOT_32R6_64R6_FEQ_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class FGR_32_FEQ_S{
	list<Predicate>  FGRPredicates=[];
}
class C_COND_M_C_OLE_D32_FEQ_S<string  TypeStr, RegisterOperand  RC, bits<5>  fmt, InstrItinClass  itin> : MMRel_FEQ_S , C_COND_FT_FEQ_S <"ole", TypeStr, RC, itin>, C_COND_FM_FEQ_S <fmt, 6>{
	let  BaseOpcode="";
}
def II_C_CC_D_FEQ_S : InstrItinClass ;
def FEQ_S : C_COND_M_C_OLE_D32_FEQ_S <"d", ?, 17, NoItinerary>, ISA_MIPS1_NOT_32R6_64R6_FEQ_S , FGR_32_FEQ_S , FEQ_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FLE_S;
class MipsInst_FLE_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FLE_S {
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
class MipsR6Inst_FLE_S : MipsInst_FLE_S <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class CMP_CONDN_DESC_BASE_FLE_S<string  CondStr, string  Typestr, RegisterOperand  FGROpnd, InstrItinClass  Itin, SDPatternOperator  Op=null_frag>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins FPR32:$rs1, FPR32:$rs2);
	string  AsmString="fle.s	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	bit  isCTI=1;
	InstrItinClass  Itinerary=Itin;
}
class R6MMR6Rel_FLE_S;
class MipsR6Arch_FLE_S<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class HARDFLOAT_FLE_S{
	list<Predicate>  HardFloatPredicate=[];
}
class COP1_CMP_CONDN_FM_FLE_S<Type_AUX_FM  Format, Type_AUX_FM  Cond> : MipsR6Inst_FLE_S ;
class ISA_MIPS32R6_FLE_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class CMP_CC_MCMP_LE__FLE_S<Type_AUX_FM  Format, string  Typestr, RegisterOperand  FGROpnd, InstrItinClass  Itin> : R6MMR6Rel_FLE_S , COP1_CMP_CONDN_FM_FLE_S <Format, ?>, CMP_CONDN_DESC_BASE_FLE_S <"le", Typestr, FGROpnd, Itin, null_frag>, MipsR6Arch_FLE_S <"">, ISA_MIPS32R6_FLE_S , HARDFLOAT_FLE_S ;
def II_CMP_CC_S_FLE_S : InstrItinClass ;
def FLE_S : CMP_CC_MCMP_LE__FLE_S <?, "s", ?, NoItinerary>, FLE_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FLT_S;
class MipsInst_FLT_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FLT_S {
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
class MipsR6Inst_FLT_S : MipsInst_FLT_S <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class CMP_CONDN_DESC_BASE_FLT_S<string  CondStr, string  Typestr, RegisterOperand  FGROpnd, InstrItinClass  Itin, SDPatternOperator  Op=null_frag>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins FPR32:$rs1, FPR32:$rs2);
	string  AsmString="flt.s	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	bit  isCTI=1;
	InstrItinClass  Itinerary=Itin;
}
class R6MMR6Rel_FLT_S;
class MipsR6Arch_FLT_S<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class HARDFLOAT_FLT_S{
	list<Predicate>  HardFloatPredicate=[];
}
class COP1_CMP_CONDN_FM_FLT_S<Type_AUX_FM  Format, Type_AUX_FM  Cond> : MipsR6Inst_FLT_S ;
class ISA_MIPS32R6_FLT_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class CMP_CC_MCMP_ULE__FLT_S<Type_AUX_FM  Format, string  Typestr, RegisterOperand  FGROpnd, InstrItinClass  Itin> : R6MMR6Rel_FLT_S , COP1_CMP_CONDN_FM_FLT_S <Format, ?>, CMP_CONDN_DESC_BASE_FLT_S <"ule", Typestr, FGROpnd, Itin, null_frag>, MipsR6Arch_FLT_S <"">, ISA_MIPS32R6_FLT_S , HARDFLOAT_FLT_S ;
def II_CMP_CC_S_FLT_S : InstrItinClass ;
def FLT_S : CMP_CC_MCMP_ULE__FLT_S <?, "s", ?, NoItinerary>, FLT_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FMAX_S;
class MipsInst_FMAX_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMAX_S {
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
class MipsR6Inst_FMAX_S : MipsInst_FMAX_S <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_MAX_S_FMAX_S : InstrItinClass ;
class MAX_MIN_DESC_BASE_FMAX_S<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR32:$rd);
	dag  InOperandList=(ins FPR32:$rs1, FPR32:$rs2);
	string  AsmString="fmax.s	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class COP1_3R_FM_FMAX_S<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FMAX_S ;
class MAX_S_DESC_FMAX_S : MAX_MIN_DESC_BASE_FMAX_S <"max.s", ?, NoItinerary>;
class HARDFLOAT_FMAX_S{
	list<Predicate>  HardFloatPredicate=[];
}
class ISA_MIPS32R6_FMAX_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MAX_S_ENC_FMAX_S : COP1_3R_FM_FMAX_S <0b011101, ?>;
def FMAX_S : MAX_S_ENC_FMAX_S , MAX_S_DESC_FMAX_S , ISA_MIPS32R6_FMAX_S , HARDFLOAT_FMAX_S , FMAX_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FMIN_S;
class MipsInst_FMIN_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMIN_S {
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
class StdArch_FMIN_S{
	string  Arch="";
}
class HARDFLOAT_FMIN_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMIN_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMIN_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADDS_FM_FMIN_S<bits<6>  funct, bits<5>  fmt> : StdArch_FMIN_S ;
def II_DIV_S_FMIN_S : InstrItinClass ;
class ISA_MIPS1_FMIN_S{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FMIN_S;
class ADDS_FT_FMIN_S<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FMIN_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2), "fmin.s	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMIN_S {
	let  isCommutable=IsComm;
}
def FMIN_S : MMRel_FMIN_S , ADDS_FT_FMIN_S <"div.s", ?, NoItinerary, false, null_frag>, ADDS_FM_FMIN_S <0x03, 16>, ISA_MIPS1_FMIN_S , FMIN_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FMUL_S;
class MipsInst_FMUL_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMUL_S {
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
class HARDFLOAT_FMUL_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMUL_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMUL_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FMUL_S{
	string  Arch="";
}
class MADDS_FT_FMUL_S<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMUL_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2, frmarg:$funct3), "fmul.s	$rd, $rs1, $rs2, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMUL_S ;
class MADDS_FM_FMUL_S<bits<3>  funct, bits<3>  fmt> : StdArch_FMUL_S ;
def II_MSUB_S_FMUL_S : InstrItinClass ;
class MMRel_FMUL_S;
class INSN_MIPS4_32R2_NOT_32R6_64R6_FMUL_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FMUL_S : MMRel_FMUL_S , MADDS_FT_FMUL_S <"msub.s", ?, NoItinerary, null_frag>, MADDS_FM_FMUL_S <5, 0>, INSN_MIPS4_32R2_NOT_32R6_64R6_FMUL_S , FMUL_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FMV_W_X;
class MipsInst_FMV_W_X<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMV_W_X {
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
class HARDFLOAT_FMV_W_X{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMV_W_X<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMV_W_X <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FMV_W_X{
	string  Arch="";
}
def II_CTC1_FMV_W_X : InstrItinClass ;
class ISA_MIPS1_FMV_W_X{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FMV_W_X;
class MTC1_FT_FMV_W_X<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMV_W_X <(outs FPR32:$rd), (ins GPR:$rs1), "fmv.w.x	$rd, $rs1", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMV_W_X {
	let  isMoveReg=false;
}
class MFC1_FM_FMV_W_X<bits<5>  funct> : StdArch_FMV_W_X ;
def FMV_W_X : MMRel_FMV_W_X , MTC1_FT_FMV_W_X <"ctc1", ?, ?, NoItinerary>, MFC1_FM_FMV_W_X <6>, ISA_MIPS1_FMV_W_X , FMV_W_X_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FMV_X_W;
class MipsInst_FMV_X_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMV_X_W {
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
class HARDFLOAT_FMV_X_W{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMV_X_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMV_X_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FMV_X_W{
	string  Arch="";
}
class MFC1_FT_FMV_X_W<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMV_X_W <(outs GPR:$rd), (ins FPR32:$rs1), "fmv.x.w	$rd, $rs1", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMV_X_W {
	let  isMoveReg=false;
}
class ISA_MIPS32R2_FMV_X_W{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class FGR_64_FMV_X_W{
	list<Predicate>  FGRPredicates=[];
}
class MFC1_FM_FMV_X_W<bits<5>  funct> : StdArch_FMV_X_W ;
def II_MFHC1_FMV_X_W : InstrItinClass ;
def FMV_X_W : MFC1_FT_FMV_X_W <"mfhc1", ?, ?, NoItinerary>, MFC1_FM_FMV_X_W <3>, ISA_MIPS32R2_FMV_X_W , FGR_64_FMV_X_W , FMV_X_W_AUX {
	let  DecoderNamespace="";
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FSGNJ_S;
class MipsInst_FSGNJ_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSGNJ_S {
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
class StdArch_FSGNJ_S{
	string  Arch="";
}
class HARDFLOAT_FSGNJ_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FSGNJ_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSGNJ_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS32R2_NOT_32R6_64R6_FSGNJ_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ADDS_FM_FSGNJ_S<bits<6>  funct, bits<5>  fmt> : StdArch_FSGNJ_S ;
def II_CVT_FSGNJ_S : InstrItinClass ;
class FGR_64_FSGNJ_S{
	list<Predicate>  FGRPredicates=[];
}
class ADDS_FT_FSGNJ_S<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FSGNJ_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2), "fsgnj.s	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>, HARDFLOAT_FSGNJ_S {
	let  isCommutable=IsComm;
}
def FSGNJ_S : ADDS_FT_FSGNJ_S <"plu.ps", ?, NoItinerary, false>, ADDS_FM_FSGNJ_S <0x2D, 22>, ISA_MIPS32R2_NOT_32R6_64R6_FSGNJ_S , FGR_64_FSGNJ_S , FSGNJ_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FSGNJN_S;
class MipsInst_FSGNJN_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSGNJN_S {
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
class HARDFLOAT_FSGNJN_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FSGNJN_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSGNJN_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FSGNJN_S{
	bit  hasSideEffects=0;
}
class StdArch_FSGNJN_S{
	string  Arch="";
}
class ABSS_FT_FSGNJN_S<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FSGNJN_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2), "fsgnjn.s	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>, HARDFLOAT_FSGNJN_S , NeverHasSideEffects_FSGNJN_S ;
def II_RSQRT_S_FSGNJN_S : InstrItinClass ;
class MMRel_FSGNJN_S;
class ABSS_FM_FSGNJN_S<bits<6>  funct, bits<5>  fmt> : StdArch_FSGNJN_S ;
class INSN_MIPS4_32R2_FSGNJN_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FSGNJN_S : MMRel_FSGNJN_S , ABSS_FT_FSGNJN_S <"rsqrt.s", ?, ?, NoItinerary>, ABSS_FM_FSGNJN_S <0b010110, 0x10>, INSN_MIPS4_32R2_FSGNJN_S , FSGNJN_S_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FSGNJX_S;
class MipsInst_FSGNJX_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSGNJX_S {
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
class InstSE_FSGNJX_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSGNJX_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FSGNJX_S{
	string  Arch="";
}
class ISA_MIPS1_NOT_32R6_64R6_FSGNJX_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FSGNJX_S;
def II_DIV_FSGNJX_S : InstrItinClass ;
class Div_FSGNJX_S<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_FSGNJX_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2), "fsgnjx.s	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  Defs=DefRegs;
}
class MULT_FM_FSGNJX_S<bits<6>  op, bits<6>  funct> : StdArch_FSGNJX_S ;
def FSGNJX_S : MMRel_FSGNJX_S , Div_FSGNJX_S <"div", NoItinerary, ?, []>, MULT_FM_FSGNJX_S <0, 0x1a>, ISA_MIPS1_NOT_32R6_64R6_FSGNJX_S , FSGNJX_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FSQRT_S;
class MipsInst_FSQRT_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSQRT_S {
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
class MipsR6Inst_FSQRT_S : MipsInst_FSQRT_S <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class MipsR6Arch_FSQRT_S<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class PCREL16_FM_FSQRT_S<Type_AUX_FM  Operation> : MipsR6Inst_FSQRT_S ;
def II_AUIPC_FSQRT_S : InstrItinClass ;
class ALUIPC_DESC_BASE_FSQRT_S<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin=NoItinerary> : MipsR6Arch_FSQRT_S <instr_asm>{
	dag  OutOperandList=(outs FPR32:$rd);
	dag  InOperandList=(ins FPR32:$rs1, frmarg:$funct3);
	string  AsmString="fsqrt.s	$rd, $rs1, $funct3";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class R6MMR6Rel_FSQRT_S;
class AUIPC_ENC_FSQRT_S : PCREL16_FM_FSQRT_S <?>;
class AUIPC_DESC_FSQRT_S : ALUIPC_DESC_BASE_FSQRT_S <"", ?, NoItinerary>;
class ISA_MIPS32R6_FSQRT_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FSQRT_S : R6MMR6Rel_FSQRT_S , AUIPC_ENC_FSQRT_S , AUIPC_DESC_FSQRT_S , ISA_MIPS32R6_FSQRT_S , FSQRT_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FSUB_S;
class MipsInst_FSUB_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSUB_S {
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
class MipsR6Inst_FSUB_S : MipsInst_FSUB_S <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FSUB_S<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FSUB_S ;
class COP1_SEL_DESC_BASE_FSUB_S<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR32:$rd);
	dag  InOperandList=(ins FPR32:$rs1, FPR32:$rs2, frmarg:$funct3);
	string  AsmString="fsub.s	$rd, $rs1, $rs2, $funct3";
	list<dag>  Pattern=[];
	string  Constraints="";
	InstrItinClass  Itinerary=itin;
}
def II_SEL_S_FSUB_S : InstrItinClass ;
class MipsR6Arch_FSUB_S<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SEL_S_ENC_FSUB_S : COP1_3R_FM_FSUB_S <0b010000, ?>;
class R6MMR6Rel_FSUB_S;
class HARDFLOAT_FSUB_S{
	list<Predicate>  HardFloatPredicate=[];
}
class SEL_S_DESC_FSUB_S : COP1_SEL_DESC_BASE_FSUB_S <"sel.s", ?, NoItinerary>, MipsR6Arch_FSUB_S <"">;
class ISA_MIPS32R6_FSUB_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FSUB_S : R6MMR6Rel_FSUB_S , SEL_S_ENC_FSUB_S , SEL_S_DESC_FSUB_S , ISA_MIPS32R6_FSUB_S , HARDFLOAT_FSUB_S , FSUB_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FMADD_S;
class MipsInst_FMADD_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMADD_S {
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
class StdArch_FMADD_S{
	string  Arch="";
}
class HARDFLOAT_FMADD_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMADD_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMADD_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MADDS_FM_FMADD_S<bits<3>  funct, bits<3>  fmt> : StdArch_FMADD_S ;
def II_NMSUB_S_FMADD_S : InstrItinClass ;
class MMRel_FMADD_S;
class NMADDS_FT_FMADD_S<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMADD_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2, FPR32:$rs3, frmarg:$funct3), "fmadd.s	$rd, $rs1, $rs2, $rs3, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMADD_S ;
class INSN_MIPS4_32R2_NOT_32R6_64R6_FMADD_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FMADD_S : MMRel_FMADD_S , NMADDS_FT_FMADD_S <"nmsub.s", ?, NoItinerary, null_frag>, MADDS_FM_FMADD_S <7, 0>, INSN_MIPS4_32R2_NOT_32R6_64R6_FMADD_S , FMADD_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FMSUB_S;
class MipsInst_FMSUB_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMSUB_S {
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
class HARDFLOAT_FMSUB_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMSUB_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMSUB_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FMSUB_S{
	string  Arch="";
}
class MADDS_FT_FMSUB_S<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMSUB_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2, FPR32:$rs3, frmarg:$funct3), "fmsub.s	$rd, $rs1, $rs2, $rs3, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMSUB_S ;
class MADDS_FM_FMSUB_S<bits<3>  funct, bits<3>  fmt> : StdArch_FMSUB_S ;
def II_MSUB_S_FMSUB_S : InstrItinClass ;
class MMRel_FMSUB_S;
class INSN_MIPS4_32R2_NOT_32R6_64R6_FMSUB_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FMSUB_S : MMRel_FMSUB_S , MADDS_FT_FMSUB_S <"msub.s", ?, NoItinerary, null_frag>, MADDS_FM_FMSUB_S <5, 0>, INSN_MIPS4_32R2_NOT_32R6_64R6_FMSUB_S , FMSUB_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FNMADD_S;
class MipsInst_FNMADD_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FNMADD_S {
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
class StdArch_FNMADD_S{
	string  Arch="";
}
class HARDFLOAT_FNMADD_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FNMADD_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FNMADD_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MADDS_FM_FNMADD_S<bits<3>  funct, bits<3>  fmt> : StdArch_FNMADD_S ;
def II_NMSUB_S_FNMADD_S : InstrItinClass ;
class MMRel_FNMADD_S;
class NMADDS_FT_FNMADD_S<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FNMADD_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2, FPR32:$rs3, frmarg:$funct3), "fnmadd.s	$rd, $rs1, $rs2, $rs3, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FNMADD_S ;
class INSN_MIPS4_32R2_NOT_32R6_64R6_FNMADD_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FNMADD_S : MMRel_FNMADD_S , NMADDS_FT_FNMADD_S <"nmsub.s", ?, NoItinerary, null_frag>, MADDS_FM_FNMADD_S <7, 0>, INSN_MIPS4_32R2_NOT_32R6_64R6_FNMADD_S , FNMADD_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FNMSUB_S;
class MipsInst_FNMSUB_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FNMSUB_S {
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
class StdArch_FNMSUB_S{
	string  Arch="";
}
class HARDFLOAT_FNMSUB_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FNMSUB_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FNMSUB_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADDS_FM_FNMSUB_S<bits<6>  funct, bits<5>  fmt> : StdArch_FNMSUB_S ;
class ISA_MIPS1_FNMSUB_S{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FNMSUB_S;
def II_SUB_S_FNMSUB_S : InstrItinClass ;
class ADDS_FT_FNMSUB_S<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FNMSUB_S <(outs FPR32:$rd), (ins FPR32:$rs1, FPR32:$rs2, FPR32:$rs3, frmarg:$funct3), "fnmsub.s	$rd, $rs1, $rs2, $rs3, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FNMSUB_S {
	let  isCommutable=IsComm;
}
def FNMSUB_S : MMRel_FNMSUB_S , ADDS_FT_FNMSUB_S <"sub.s", ?, NoItinerary, false, null_frag>, ADDS_FM_FNMSUB_S <0x01, 16>, ISA_MIPS1_FNMSUB_S , FNMSUB_S_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtF];
}
class PredicateControl_FSW;
class MipsInst_FSW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSW {
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
class InstSE_FSW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MMArch_FSW{
	string  Arch="";
}
class StoreLeftRightMM_FSW<string  opstr, SDNode  OpNode, RegisterOperand  RO, Operand  MemOpnd, InstrItinClass  Itin> : InstSE_FSW <(outs), (ins FPR32:$rs2, GPR:$rs1, simm12:$imm12), "fsw	$rs2, ${imm12}(${rs1})", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	bit  mayLoad=0;
	bit  mayStore=1;
}
def II_SWLE_FSW : InstrItinClass ;
class POOL32C_STEVA_LDEVA_FM_MM_FSW<bits<4>  type, bits<3>  funct> : MMArch_FSW ;
class MMRel_FSW;
class ASE_EVA_FSW{
	list<Predicate>  ASEPredicate=[];
}
class ISA_MICROMIPS32_NOT_MIPS32R6_FSW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FSW : MMRel_FSW , StoreLeftRightMM_FSW <"swle", ?, ?, ?, NoItinerary>, POOL32C_STEVA_LDEVA_FM_MM_FSW <0xa, 0x0>, ISA_MICROMIPS32_NOT_MIPS32R6_FSW , ASE_EVA_FSW , FSW_AUX {
	  	let hasSideEffects = 0;
	let Predicates = [HasStdExtF];
}
