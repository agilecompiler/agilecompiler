class FLD_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0000111;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class FLD_AUX: FLD_FM2, TSFlagTemplate<InstFormatI>, Sched<[WriteFLD64, ReadFMemBase]>;
class FADD_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class FADD_D_AUX: FADD_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFALU64, ReadFALU64, ReadFALU64]>;
class FCLASS_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1110001;
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
class FCLASS_D_AUX: FCLASS_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFClass64, ReadFClass64]>;
class FCVT_D_L_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101001;
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
class FCVT_D_L_AUX: FCVT_D_L_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtI64ToF64, ReadFCvtI64ToF64]>;
class FCVT_D_LU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101001;
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
class FCVT_D_LU_AUX: FCVT_D_LU_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtI64ToF64, ReadFCvtI64ToF64]>;
class FCVT_D_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100001;
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
class FCVT_D_S_AUX: FCVT_D_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtF32ToF64, ReadFCvtF32ToF64]>;
class FCVT_D_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101001;
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
class FCVT_D_W_AUX: FCVT_D_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtI32ToF64, ReadFCvtI32ToF64]>;
class FCVT_D_WU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101001;
	bits<5> rs2 = 0b00001;
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
class FCVT_D_WU_AUX: FCVT_D_WU_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtI32ToF64, ReadFCvtI32ToF64]>;
class FCVT_L_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100001;
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
class FCVT_L_D_AUX: FCVT_L_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtF64ToI64, ReadFCvtF64ToI64]>;
class FCVT_LU_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100001;
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
class FCVT_LU_D_AUX: FCVT_LU_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtF64ToI64, ReadFCvtF64ToI64]>;
class FCVT_W_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100001;
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
class FCVT_W_D_AUX: FCVT_W_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtF64ToI32, ReadFCvtF64ToI32]>;
class FCVT_WU_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100001;
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
class FCVT_WU_D_AUX: FCVT_WU_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtF64ToI32, ReadFCvtF64ToI32]>;
class FDIV_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0001101;
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
class FDIV_D_AUX: FDIV_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFDiv64, ReadFDiv64, ReadFDiv64]>;
class FEQ_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1010001;
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
class FEQ_D_AUX: FEQ_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCmp64, ReadFCmp64, ReadFCmp64]>;
class FLE_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1010001;
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
class FLE_D_AUX: FLE_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCmp64, ReadFCmp64, ReadFCmp64]>;
class FLT_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1010001;
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
class FLT_D_AUX: FLT_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCmp64, ReadFCmp64, ReadFCmp64]>;
class FMAX_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010101;
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
class FMAX_D_AUX: FMAX_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFMinMax64, ReadFMinMax64, ReadFMinMax64]>;
class FMIN_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010101;
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
class FMIN_D_AUX: FMIN_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFMinMax64, ReadFMinMax64, ReadFMinMax64]>;
class FMUL_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0001001;
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
class FMUL_D_AUX: FMUL_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFMul64, ReadFMul64, ReadFMul64]>;
class FMV_D_X_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1111001;
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
class FMV_D_X_AUX: FMV_D_X_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFMovI64ToF64, ReadFMovI64ToF64]>;
class FMV_X_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1110001;
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
class FMV_X_D_AUX: FMV_X_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFMovF64ToI64, ReadFMovF64ToI64]>;
class FSGNJ_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010001;
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
class FSGNJ_D_AUX: FSGNJ_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFSGNJ64, ReadFSGNJ64, ReadFSGNJ64]>;
class FSGNJN_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010001;
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
class FSGNJN_D_AUX: FSGNJN_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFSGNJ64, ReadFSGNJ64, ReadFSGNJ64]>;
class FSGNJX_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010001;
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
class FSGNJX_D_AUX: FSGNJX_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFSGNJ64, ReadFSGNJ64, ReadFSGNJ64]>;
class FSQRT_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0101101;
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
class FSQRT_D_AUX: FSQRT_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFSqrt64, ReadFSqrt64]>;
class FSUB_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000101;
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
class FSUB_D_AUX: FSUB_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFALU64, ReadFALU64, ReadFALU64]>;
class FMADD_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b01;
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
class FMADD_D_AUX: FMADD_D_FM2, TSFlagTemplate<InstFormatR4>, Sched<[WriteFMulAdd64, ReadFMulAdd64, ReadFMulAdd64, ReadFMulAdd64]>;
class FMSUB_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b01;
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
class FMSUB_D_AUX: FMSUB_D_FM2, TSFlagTemplate<InstFormatR4>, Sched<[WriteFMulSub64, ReadFMulSub64, ReadFMulSub64, ReadFMulSub64]>;
class FNMADD_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b01;
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
class FNMADD_D_AUX: FNMADD_D_FM2, TSFlagTemplate<InstFormatR4>, Sched<[WriteFMulAdd64, ReadFMulAdd64, ReadFMulAdd64, ReadFMulAdd64]>;
class FNMSUB_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b01;
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
class FNMSUB_D_AUX: FNMSUB_D_FM2, TSFlagTemplate<InstFormatR4>, Sched<[WriteFMulSub64, ReadFMulSub64, ReadFMulSub64, ReadFMulSub64]>;
class FSD_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<7> opcode = 0b0100111;
	let Inst{31-25} = imm12{11-5};
	let Inst{11-7} = imm12{4-0};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = opcode;
}
class FSD_AUX: FSD_FM2, TSFlagTemplate<InstFormatS>, Sched<[WriteFST64, ReadStoreData, ReadFMemBase]>;
class FCVT_S_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100000;
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
class FCVT_S_D_AUX: FCVT_S_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteFCvtF64ToF32, ReadFCvtF64ToF32]>;
class PredicateControl_FLD;
class MipsInst_FLD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FLD {
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
class HARDFLOAT_FLD{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FLD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FLD <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FLD{
	string  Arch="";
}
class INSN_MIPS4_32R2_NOT_32R6_64R6_FLD{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LWXC1_FT_FLD<string  opstr, RegisterOperand  DRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FLD <(outs FPR64:$rd), (ins GPR:$rs1, simm12:$imm12), "fld	$rd, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>, HARDFLOAT_FLD {
	let  AddedComplexity=0;
}
def II_LDXC1_FLD : InstrItinClass ;
class FGR_32_FLD{
	list<Predicate>  FGRPredicates=[];
}
class LWXC1_FM_FLD<bits<6>  funct> : StdArch_FLD ;
def FLD : LWXC1_FT_FLD <"ldxc1", ?, NoItinerary, null_frag>, LWXC1_FM_FLD <1>, INSN_MIPS4_32R2_NOT_32R6_64R6_FLD , FGR_32_FLD , FLD_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FADD_D;
class MipsInst_FADD_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FADD_D {
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
class HARDFLOAT_FADD_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FADD_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FADD_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class FGR_64_FADD_D{
	list<Predicate>  FGRPredicates=[];
}
class ADDS_FT_FADD_D<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FADD_D <(outs FPR64:$rd), (ins FPR64:$rs1, FPR64:$rs2, frmarg:$funct3), "fadd.d	$rd, $rs1, $rs2, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FADD_D {
	let  isCommutable=IsComm;
}
class StdArch_FADD_D{
	string  Arch="";
}
class ISA_MIPS1_FADD_D{
	list<Predicate>  EncodingPredicates=[];
}
class ADDS_M_D64_FADD_D<string  opstr, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : ADDS_FT_FADD_D <opstr, ?, Itin, IsComm, OpNode>, FGR_64_FADD_D {
	string  DecoderNamespace="";
}
def II_ADD_D_FADD_D : InstrItinClass ;
class ADDS_FM_FADD_D<bits<6>  funct, bits<5>  fmt> : StdArch_FADD_D ;
def FADD_D : ADDS_M_D64_FADD_D <"add.d", NoItinerary, false, null_frag>, ADDS_FM_FADD_D <0x00, 17>, ISA_MIPS1_FADD_D , FADD_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FCLASS_D;
class MipsInst_FCLASS_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCLASS_D {
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
class StdArch_FCLASS_D{
	string  Arch="";
}
class InstSE_FCLASS_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCLASS_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADDI_FM_FCLASS_D<bits<6>  op> : StdArch_FCLASS_D ;
class ArithLogicI_FCLASS_D<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_FCLASS_D <(outs GPR:$rd), (ins FPR64:$rs1), "fclass.d	$rd, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
class ISA_MIPS3_NOT_32R6_64R6_FCLASS_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DADDI_FCLASS_D : InstrItinClass ;
def FCLASS_D : ArithLogicI_FCLASS_D <"daddi", ?, ?, NoItinerary>, ADDI_FM_FCLASS_D <0x18>, ISA_MIPS3_NOT_32R6_64R6_FCLASS_D , FCLASS_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FCVT_D_L;
class MipsInst_FCVT_D_L<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_D_L {
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
class HARDFLOAT_FCVT_D_L{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_D_L<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_D_L <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_D_L{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_D_L{
	string  Arch="";
}
class ABSS_FT_FCVT_D_L<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_D_L <(outs FPR64:$rd), (ins GPR:$rs1, frmarg:$funct3), "fcvt.d.l	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_D_L , NeverHasSideEffects_FCVT_D_L ;
class StdMMR6Rel_FCVT_D_L;
def II_TRUNC_FCVT_D_L : InstrItinClass ;
class MMRel_FCVT_D_L;
class ISA_MIPS2_FCVT_D_L{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_D_L<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_D_L ;
def FCVT_D_L : MMRel_FCVT_D_L , StdMMR6Rel_FCVT_D_L , ABSS_FT_FCVT_D_L <"trunc.w.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_D_L <0xd, 16>, ISA_MIPS2_FCVT_D_L , FCVT_D_L_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD, IsRV64];
}
class PredicateControl_FCVT_D_LU;
class MipsInst_FCVT_D_LU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_D_LU {
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
class HARDFLOAT_FCVT_D_LU{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_D_LU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_D_LU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_D_LU{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_D_LU{
	string  Arch="";
}
class ABSS_FT_FCVT_D_LU<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_D_LU <(outs FPR64:$rd), (ins GPR:$rs1, frmarg:$funct3), "fcvt.d.lu	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_D_LU , NeverHasSideEffects_FCVT_D_LU ;
def II_CVT_FCVT_D_LU : InstrItinClass ;
class ISA_MIPS1_FCVT_D_LU{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FCVT_D_LU;
class ABSS_FM_FCVT_D_LU<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_D_LU ;
def FCVT_D_LU : MMRel_FCVT_D_LU , ABSS_FT_FCVT_D_LU <"cvt.s.w", ?, ?, NoItinerary>, ABSS_FM_FCVT_D_LU <0x20, 20>, ISA_MIPS1_FCVT_D_LU , FCVT_D_LU_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD, IsRV64];
}
class PredicateControl_FCVT_D_S;
class MipsInst_FCVT_D_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_D_S {
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
class HARDFLOAT_FCVT_D_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_D_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_D_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_D_S{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_D_S{
	string  Arch="";
}
class ABSS_FT_FCVT_D_S<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_D_S <(outs FPR64:$rd), (ins FPR32:$rs1), "fcvt.d.s	$rd, $rs1", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_D_S , NeverHasSideEffects_FCVT_D_S ;
class StdMMR6Rel_FCVT_D_S;
def II_FLOOR_FCVT_D_S : InstrItinClass ;
class MMRel_FCVT_D_S;
class ISA_MIPS2_FCVT_D_S{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_D_S<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_D_S ;
def FCVT_D_S : MMRel_FCVT_D_S , StdMMR6Rel_FCVT_D_S , ABSS_FT_FCVT_D_S <"floor.w.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_D_S <0xf, 16>, ISA_MIPS2_FCVT_D_S , FCVT_D_S_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FCVT_D_W;
class MipsInst_FCVT_D_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_D_W {
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
class HARDFLOAT_FCVT_D_W{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_D_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_D_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_D_W{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_D_W{
	string  Arch="";
}
class ABSS_FT_FCVT_D_W<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_D_W <(outs FPR64:$rd), (ins GPR:$rs1), "fcvt.d.w	$rd, $rs1", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_D_W , NeverHasSideEffects_FCVT_D_W ;
class ISA_MIPS2_FCVT_D_W{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class FGR_64_FCVT_D_W{
	list<Predicate>  FGRPredicates=[];
}
def II_ROUND_FCVT_D_W : InstrItinClass ;
class ABSS_FM_FCVT_D_W<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_D_W ;
def FCVT_D_W : ABSS_FT_FCVT_D_W <"round.l.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_D_W <0x8, 16>, ISA_MIPS2_FCVT_D_W , FGR_64_FCVT_D_W , FCVT_D_W_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FCVT_D_WU;
class MipsInst_FCVT_D_WU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_D_WU {
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
class MipsR6Inst_FCVT_D_WU : MipsInst_FCVT_D_WU <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_2R_FM_FCVT_D_WU<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FCVT_D_WU ;
def II_RINT_S_FCVT_D_WU : InstrItinClass ;
class CLASS_RINT_DESC_BASE_FCVT_D_WU<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR64:$rd);
	dag  InOperandList=(ins GPR:$rs1);
	string  AsmString="fcvt.d.wu	$rd, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class HARDFLOAT_FCVT_D_WU{
	list<Predicate>  HardFloatPredicate=[];
}
class RINT_S_ENC_FCVT_D_WU : COP1_2R_FM_FCVT_D_WU <0b011010, ?>;
class ISA_MIPS32R6_FCVT_D_WU{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class RINT_S_DESC_FCVT_D_WU : CLASS_RINT_DESC_BASE_FCVT_D_WU <"rint.s", ?, NoItinerary>;
def FCVT_D_WU : RINT_S_ENC_FCVT_D_WU , RINT_S_DESC_FCVT_D_WU , ISA_MIPS32R6_FCVT_D_WU , HARDFLOAT_FCVT_D_WU , FCVT_D_WU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FCVT_L_D;
class MipsInst_FCVT_L_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_L_D {
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
class HARDFLOAT_FCVT_L_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_L_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_L_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_L_D{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_L_D{
	string  Arch="";
}
class INSN_MIPS3_32_FCVT_L_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FT_FCVT_L_D<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_L_D <(outs GPR:$rd), (ins FPR64:$rs1, frmarg:$funct3), "fcvt.l.d	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_L_D , NeverHasSideEffects_FCVT_L_D ;
def II_FLOOR_FCVT_L_D : InstrItinClass ;
class FGR_64_FCVT_L_D{
	list<Predicate>  FGRPredicates=[];
}
class ABSS_FM_FCVT_L_D<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_L_D ;
def FCVT_L_D : ABSS_FT_FCVT_L_D <"floor.l.d", ?, ?, NoItinerary>, ABSS_FM_FCVT_L_D <0xb, 17>, INSN_MIPS3_32_FCVT_L_D , FGR_64_FCVT_L_D , FCVT_L_D_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD, IsRV64];
}
class PredicateControl_FCVT_LU_D;
class MipsInst_FCVT_LU_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_LU_D {
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
class HARDFLOAT_FCVT_LU_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_LU_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_LU_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_LU_D{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_LU_D{
	string  Arch="";
}
class ABSS_FT_FCVT_LU_D<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_LU_D <(outs GPR:$rd), (ins FPR64:$rs1, frmarg:$funct3), "fcvt.lu.d	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_LU_D , NeverHasSideEffects_FCVT_LU_D ;
def II_RECIP_D_FCVT_LU_D : InstrItinClass ;
class FGR_64_FCVT_LU_D{
	list<Predicate>  FGRPredicates=[];
}
class MMRel_FCVT_LU_D;
class ABSS_FM_FCVT_LU_D<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_LU_D ;
class INSN_MIPS4_32R2_FCVT_LU_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FCVT_LU_D : MMRel_FCVT_LU_D , ABSS_FT_FCVT_LU_D <"recip.d", ?, ?, NoItinerary>, ABSS_FM_FCVT_LU_D <0b010101, 0x11>, INSN_MIPS4_32R2_FCVT_LU_D , FGR_64_FCVT_LU_D , FCVT_LU_D_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD, IsRV64];
}
class PredicateControl_FCVT_W_D;
class MipsInst_FCVT_W_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_W_D {
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
class HARDFLOAT_FCVT_W_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_W_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_W_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_W_D{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_W_D{
	string  Arch="";
}
class ABSS_FT_FCVT_W_D<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_W_D <(outs GPR:$rd), (ins FPR64:$rs1, frmarg:$funct3), "fcvt.w.d	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_W_D , NeverHasSideEffects_FCVT_W_D ;
def II_RECIP_D_FCVT_W_D : InstrItinClass ;
class MMRel_FCVT_W_D;
class FGR_32_FCVT_W_D{
	list<Predicate>  FGRPredicates=[];
}
class ABSS_FM_FCVT_W_D<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_W_D ;
class INSN_MIPS4_32R2_FCVT_W_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FCVT_W_D : MMRel_FCVT_W_D , ABSS_FT_FCVT_W_D <"recip.d", ?, ?, NoItinerary>, ABSS_FM_FCVT_W_D <0b010101, 0x11>, INSN_MIPS4_32R2_FCVT_W_D , FGR_32_FCVT_W_D , FCVT_W_D_AUX {
	let  BaseOpcode="";
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FCVT_WU_D;
class MipsInst_FCVT_WU_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_WU_D {
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
class HARDFLOAT_FCVT_WU_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_WU_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_WU_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_WU_D{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_WU_D{
	string  Arch="";
}
class MMRel_FCVT_WU_D;
class ABSS_FT_FCVT_WU_D<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_WU_D <(outs GPR:$rd), (ins FPR64:$rs1, frmarg:$funct3), "fcvt.wu.d	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_WU_D , NeverHasSideEffects_FCVT_WU_D ;
class FGR_32_FCVT_WU_D{
	list<Predicate>  FGRPredicates=[];
}
class ABSS_FM_FCVT_WU_D<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_WU_D ;
def II_FLOOR_FCVT_WU_D : InstrItinClass ;
class ISA_MIPS2_FCVT_WU_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ROUND_M_D32_FCVT_WU_D<string  opstr, InstrItinClass  Itin> : MMRel_FCVT_WU_D , ABSS_FT_FCVT_WU_D <opstr, ?, ?, Itin>, FGR_32_FCVT_WU_D ;
def FCVT_WU_D : ROUND_M_D32_FCVT_WU_D <"floor.w.d", NoItinerary>, ABSS_FM_FCVT_WU_D <0xf, 17>, ISA_MIPS2_FCVT_WU_D , FCVT_WU_D_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FDIV_D;
class MipsInst_FDIV_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FDIV_D {
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
class MipsR6Inst_FDIV_D : MipsInst_FDIV_D <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FDIV_D<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FDIV_D ;
def II_MAX_D_FDIV_D : InstrItinClass ;
class MAX_MIN_DESC_BASE_FDIV_D<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR64:$rd);
	dag  InOperandList=(ins FPR64:$rs1, FPR64:$rs2, frmarg:$funct3);
	string  AsmString="fdiv.d	$rd, $rs1, $rs2, $funct3";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class HARDFLOAT_FDIV_D{
	list<Predicate>  HardFloatPredicate=[];
}
class MAX_D_ENC_FDIV_D : COP1_3R_FM_FDIV_D <0b011101, ?>;
class ISA_MIPS32R6_FDIV_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MAX_D_DESC_FDIV_D : MAX_MIN_DESC_BASE_FDIV_D <"max.d", ?, NoItinerary>;
def FDIV_D : MAX_D_ENC_FDIV_D , MAX_D_DESC_FDIV_D , ISA_MIPS32R6_FDIV_D , HARDFLOAT_FDIV_D , FDIV_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FEQ_D;
class MipsInst_FEQ_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FEQ_D {
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
class MipsR6Inst_FEQ_D : MipsInst_FEQ_D <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class CMP_CONDN_DESC_BASE_FEQ_D<string  CondStr, string  Typestr, RegisterOperand  FGROpnd, InstrItinClass  Itin, SDPatternOperator  Op=null_frag>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins FPR64:$rs1, FPR64:$rs2);
	string  AsmString="feq.d	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	bit  isCTI=1;
	InstrItinClass  Itinerary=Itin;
}
class R6MMR6Rel_FEQ_D;
class MipsR6Arch_FEQ_D<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class HARDFLOAT_FEQ_D{
	list<Predicate>  HardFloatPredicate=[];
}
class COP1_CMP_CONDN_FM_FEQ_D<Type_AUX_FM  Format, Type_AUX_FM  Cond> : MipsR6Inst_FEQ_D ;
class ISA_MIPS32R6_FEQ_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class CMP_CC_MCMP_ULT__FEQ_D<Type_AUX_FM  Format, string  Typestr, RegisterOperand  FGROpnd, InstrItinClass  Itin> : R6MMR6Rel_FEQ_D , COP1_CMP_CONDN_FM_FEQ_D <Format, ?>, CMP_CONDN_DESC_BASE_FEQ_D <"ult", Typestr, FGROpnd, Itin, null_frag>, MipsR6Arch_FEQ_D <"">, ISA_MIPS32R6_FEQ_D , HARDFLOAT_FEQ_D ;
def II_CMP_CC_D_FEQ_D : InstrItinClass ;
def FEQ_D : CMP_CC_MCMP_ULT__FEQ_D <?, "d", ?, NoItinerary>, FEQ_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FLE_D;
class MipsInst_FLE_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FLE_D {
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
class MipsR6Inst_FLE_D : MipsInst_FLE_D <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class CMP_CONDN_DESC_BASE_FLE_D<string  CondStr, string  Typestr, RegisterOperand  FGROpnd, InstrItinClass  Itin, SDPatternOperator  Op=null_frag>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins FPR64:$rs1, FPR64:$rs2);
	string  AsmString="fle.d	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	bit  isCTI=1;
	InstrItinClass  Itinerary=Itin;
}
class R6MMR6Rel_FLE_D;
class MipsR6Arch_FLE_D<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class HARDFLOAT_FLE_D{
	list<Predicate>  HardFloatPredicate=[];
}
class COP1_CMP_CONDN_FM_FLE_D<Type_AUX_FM  Format, Type_AUX_FM  Cond> : MipsR6Inst_FLE_D ;
class ISA_MIPS32R6_FLE_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_CMP_CC_D_FLE_D : InstrItinClass ;
class CMP_CC_MCMP_UEQ__FLE_D<Type_AUX_FM  Format, string  Typestr, RegisterOperand  FGROpnd, InstrItinClass  Itin> : R6MMR6Rel_FLE_D , COP1_CMP_CONDN_FM_FLE_D <Format, ?>, CMP_CONDN_DESC_BASE_FLE_D <"ueq", Typestr, FGROpnd, Itin, null_frag>, MipsR6Arch_FLE_D <"">, ISA_MIPS32R6_FLE_D , HARDFLOAT_FLE_D ;
def FLE_D : CMP_CC_MCMP_UEQ__FLE_D <?, "d", ?, NoItinerary>, FLE_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FLT_D;
class MipsInst_FLT_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FLT_D {
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
class MipsR6Inst_FLT_D : MipsInst_FLT_D <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class CMP_CONDN_DESC_BASE_FLT_D<string  CondStr, string  Typestr, RegisterOperand  FGROpnd, InstrItinClass  Itin, SDPatternOperator  Op=null_frag>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins FPR64:$rs1, FPR64:$rs2);
	string  AsmString="flt.d	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	bit  isCTI=1;
	InstrItinClass  Itinerary=Itin;
}
class R6MMR6Rel_FLT_D;
class MipsR6Arch_FLT_D<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class HARDFLOAT_FLT_D{
	list<Predicate>  HardFloatPredicate=[];
}
class COP1_CMP_CONDN_FM_FLT_D<Type_AUX_FM  Format, Type_AUX_FM  Cond> : MipsR6Inst_FLT_D ;
class ISA_MIPS32R6_FLT_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class CMP_CC_MCMP_EQ__FLT_D<Type_AUX_FM  Format, string  Typestr, RegisterOperand  FGROpnd, InstrItinClass  Itin> : R6MMR6Rel_FLT_D , COP1_CMP_CONDN_FM_FLT_D <Format, ?>, CMP_CONDN_DESC_BASE_FLT_D <"eq", Typestr, FGROpnd, Itin, null_frag>, MipsR6Arch_FLT_D <"">, ISA_MIPS32R6_FLT_D , HARDFLOAT_FLT_D ;
def II_CMP_CC_D_FLT_D : InstrItinClass ;
def FLT_D : CMP_CC_MCMP_EQ__FLT_D <?, "d", ?, NoItinerary>, FLT_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FMAX_D;
class MipsInst_FMAX_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMAX_D {
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
class MipsR6Inst_FMAX_D : MipsInst_FMAX_D <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FMAX_D<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FMAX_D ;
def II_MAX_D_FMAX_D : InstrItinClass ;
class MAX_MIN_DESC_BASE_FMAX_D<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR64:$rd);
	dag  InOperandList=(ins FPR64:$rs1, FPR64:$rs2);
	string  AsmString="fmax.d	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class HARDFLOAT_FMAX_D{
	list<Predicate>  HardFloatPredicate=[];
}
class MAX_D_ENC_FMAX_D : COP1_3R_FM_FMAX_D <0b011101, ?>;
class ISA_MIPS32R6_FMAX_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MAX_D_DESC_FMAX_D : MAX_MIN_DESC_BASE_FMAX_D <"max.d", ?, NoItinerary>;
def FMAX_D : MAX_D_ENC_FMAX_D , MAX_D_DESC_FMAX_D , ISA_MIPS32R6_FMAX_D , HARDFLOAT_FMAX_D , FMAX_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FMIN_D;
class MipsInst_FMIN_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMIN_D {
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
class InstSE_FMIN_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMIN_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FMIN_D{
	string  Arch="";
}
class ISA_MIPS3_FMIN_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_FMIN_D<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_FMIN_D <(outs FPR64:$rd), (ins FPR64:$rs1, FPR64:$rs2), "fmin.d	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DADD_FMIN_D : InstrItinClass ;
class ADD_FM_FMIN_D<bits<6>  op, bits<6>  funct> : StdArch_FMIN_D ;
def FMIN_D : ArithLogicR_FMIN_D <"dadd", ?, false, NoItinerary>, ADD_FM_FMIN_D <0, 0x2c>, ISA_MIPS3_FMIN_D , FMIN_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FMUL_D;
class MipsInst_FMUL_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMUL_D {
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
class MipsR6Inst_FMUL_D : MipsInst_FMUL_D <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FMUL_D<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FMUL_D ;
def II_MAX_D_FMUL_D : InstrItinClass ;
class MAX_MIN_DESC_BASE_FMUL_D<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR64:$rd);
	dag  InOperandList=(ins FPR64:$rs1, FPR64:$rs2, frmarg:$funct3);
	string  AsmString="fmul.d	$rd, $rs1, $rs2, $funct3";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class HARDFLOAT_FMUL_D{
	list<Predicate>  HardFloatPredicate=[];
}
class MAX_D_ENC_FMUL_D : COP1_3R_FM_FMUL_D <0b011101, ?>;
class ISA_MIPS32R6_FMUL_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MAX_D_DESC_FMUL_D : MAX_MIN_DESC_BASE_FMUL_D <"max.d", ?, NoItinerary>;
def FMUL_D : MAX_D_ENC_FMUL_D , MAX_D_DESC_FMUL_D , ISA_MIPS32R6_FMUL_D , HARDFLOAT_FMUL_D , FMUL_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FMV_D_X;
class MipsInst_FMV_D_X<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMV_D_X {
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
class HARDFLOAT_FMV_D_X{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMV_D_X<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMV_D_X <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FMV_D_X{
	bit  hasSideEffects=0;
}
class MMRel_FMV_D_X;
class ABSS_FT_FMV_D_X<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMV_D_X <(outs FPR64:$rd), (ins GPR:$rs1), "fmv.d.x	$rd, $rs1", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMV_D_X , NeverHasSideEffects_FMV_D_X ;
class FGR_32_FMV_D_X{
	list<Predicate>  FGRPredicates=[];
}
class StdArch_FMV_D_X{
	string  Arch="";
}
def II_MOV_D_FMV_D_X : InstrItinClass ;
class ABSS_M_D32_FMV_D_X<string  opstr, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : MMRel_FMV_D_X , ABSS_FT_FMV_D_X <opstr, ?, ?, Itin, OpNode>, FGR_32_FMV_D_X ;
class ABSS_FM_FMV_D_X<bits<6>  funct, bits<5>  fmt> : StdArch_FMV_D_X ;
class ISA_MIPS1_FMV_D_X{
	list<Predicate>  EncodingPredicates=[];
}
def FMV_D_X : ABSS_M_D32_FMV_D_X <"mov.d", NoItinerary>, ABSS_FM_FMV_D_X <0x6, 17>, ISA_MIPS1_FMV_D_X , FMV_D_X_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD, IsRV64];
}
class PredicateControl_FMV_X_D;
class MipsInst_FMV_X_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMV_X_D {
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
class HARDFLOAT_FMV_X_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMV_X_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMV_X_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FMV_X_D{
	bit  hasSideEffects=0;
}
class MMRel_FMV_X_D;
class ABSS_FT_FMV_X_D<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMV_X_D <(outs GPR:$rd), (ins FPR64:$rs1), "fmv.x.d	$rd, $rs1", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMV_X_D , NeverHasSideEffects_FMV_X_D ;
class FGR_32_FMV_X_D{
	list<Predicate>  FGRPredicates=[];
}
class StdArch_FMV_X_D{
	string  Arch="";
}
def II_MOV_D_FMV_X_D : InstrItinClass ;
class ABSS_M_D32_FMV_X_D<string  opstr, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : MMRel_FMV_X_D , ABSS_FT_FMV_X_D <opstr, ?, ?, Itin, OpNode>, FGR_32_FMV_X_D ;
class ABSS_FM_FMV_X_D<bits<6>  funct, bits<5>  fmt> : StdArch_FMV_X_D ;
class ISA_MIPS1_FMV_X_D{
	list<Predicate>  EncodingPredicates=[];
}
def FMV_X_D : ABSS_M_D32_FMV_X_D <"mov.d", NoItinerary>, ABSS_FM_FMV_X_D <0x6, 17>, ISA_MIPS1_FMV_X_D , FMV_X_D_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD, IsRV64];
}
class PredicateControl_FSGNJ_D;
class MipsInst_FSGNJ_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSGNJ_D {
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
class MipsR6Inst_FSGNJ_D : MipsInst_FSGNJ_D <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FSGNJ_D<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FSGNJ_D ;
def II_MAX_D_FSGNJ_D : InstrItinClass ;
class MAX_MIN_DESC_BASE_FSGNJ_D<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR64:$rd);
	dag  InOperandList=(ins FPR64:$rs1, FPR64:$rs2);
	string  AsmString="fsgnj.d	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class HARDFLOAT_FSGNJ_D{
	list<Predicate>  HardFloatPredicate=[];
}
class MAX_D_ENC_FSGNJ_D : COP1_3R_FM_FSGNJ_D <0b011101, ?>;
class ISA_MIPS32R6_FSGNJ_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MAX_D_DESC_FSGNJ_D : MAX_MIN_DESC_BASE_FSGNJ_D <"max.d", ?, NoItinerary>;
def FSGNJ_D : MAX_D_ENC_FSGNJ_D , MAX_D_DESC_FSGNJ_D , ISA_MIPS32R6_FSGNJ_D , HARDFLOAT_FSGNJ_D , FSGNJ_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FSGNJN_D;
class MipsInst_FSGNJN_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSGNJN_D {
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
class HARDFLOAT_FSGNJN_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FSGNJN_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSGNJN_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FSGNJN_D{
	string  Arch="";
}
class MMRel_FSGNJN_D;
class FGR_32_FSGNJN_D{
	list<Predicate>  FGRPredicates=[];
}
class ADDS_FT_FSGNJN_D<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FSGNJN_D <(outs FPR64:$rd), (ins FPR64:$rs1, FPR64:$rs2), "fsgnjn.d	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>, HARDFLOAT_FSGNJN_D {
	let  isCommutable=IsComm;
}
class ISA_MIPS1_FSGNJN_D{
	list<Predicate>  EncodingPredicates=[];
}
def II_ADD_D_FSGNJN_D : InstrItinClass ;
class ADDS_FM_FSGNJN_D<bits<6>  funct, bits<5>  fmt> : StdArch_FSGNJN_D ;
class ADDS_M_D32_FSGNJN_D<string  opstr, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : MMRel_FSGNJN_D , ADDS_FT_FSGNJN_D <opstr, ?, Itin, IsComm, OpNode>, FGR_32_FSGNJN_D ;
def FSGNJN_D : ADDS_M_D32_FSGNJN_D <"add.d", NoItinerary, false, null_frag>, ADDS_FM_FSGNJN_D <0x00, 17>, ISA_MIPS1_FSGNJN_D , FSGNJN_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FSGNJX_D;
class MipsInst_FSGNJX_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSGNJX_D {
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
class MipsR6Inst_FSGNJX_D : MipsInst_FSGNJX_D <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FSGNJX_D<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FSGNJX_D ;
def II_SELCCZ_D_FSGNJX_D : InstrItinClass ;
class SELEQNEZ_DESC_BASE_FSGNJX_D<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR64:$rd);
	dag  InOperandList=(ins FPR64:$rs1, FPR64:$rs2);
	string  AsmString="fsgnjx.d	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class MipsR6Arch_FSGNJX_D<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SELEQZ_D_ENC_FSGNJX_D : COP1_3R_FM_FSGNJX_D <0b010100, ?>;
class R6MMR6Rel_FSGNJX_D;
class HARDFLOAT_FSGNJX_D{
	list<Predicate>  HardFloatPredicate=[];
}
class SELEQZ_D_DESC_FSGNJX_D : SELEQNEZ_DESC_BASE_FSGNJX_D <"seleqz.d", ?, NoItinerary>, MipsR6Arch_FSGNJX_D <"">;
class ISA_MIPS32R6_FSGNJX_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FSGNJX_D : R6MMR6Rel_FSGNJX_D , SELEQZ_D_ENC_FSGNJX_D , SELEQZ_D_DESC_FSGNJX_D , ISA_MIPS32R6_FSGNJX_D , HARDFLOAT_FSGNJX_D , FSGNJX_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FSQRT_D;
class MipsInst_FSQRT_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSQRT_D {
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
class HARDFLOAT_FSQRT_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FSQRT_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSQRT_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FSQRT_D{
	string  Arch="";
}
class MMRel_FSQRT_D;
class FGR_32_FSQRT_D{
	list<Predicate>  FGRPredicates=[];
}
class ADDS_FT_FSQRT_D<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FSQRT_D <(outs FPR64:$rd), (ins FPR64:$rs1, frmarg:$funct3), "fsqrt.d	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FSQRT_D {
	let  isCommutable=IsComm;
}
class ISA_MIPS1_FSQRT_D{
	list<Predicate>  EncodingPredicates=[];
}
class ADDS_FM_FSQRT_D<bits<6>  funct, bits<5>  fmt> : StdArch_FSQRT_D ;
def II_DIV_D_FSQRT_D : InstrItinClass ;
class ADDS_M_D32_FSQRT_D<string  opstr, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : MMRel_FSQRT_D , ADDS_FT_FSQRT_D <opstr, ?, Itin, IsComm, OpNode>, FGR_32_FSQRT_D ;
def FSQRT_D : ADDS_M_D32_FSQRT_D <"div.d", NoItinerary, false, null_frag>, ADDS_FM_FSQRT_D <0x03, 17>, ISA_MIPS1_FSQRT_D , FSQRT_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FSUB_D;
class MipsInst_FSUB_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSUB_D {
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
class HARDFLOAT_FSUB_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FSUB_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSUB_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FSUB_D{
	string  Arch="";
}
class MMRel_FSUB_D;
class FGR_32_FSUB_D{
	list<Predicate>  FGRPredicates=[];
}
class ADDS_FT_FSUB_D<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FSUB_D <(outs FPR64:$rd), (ins FPR64:$rs1, FPR64:$rs2, frmarg:$funct3), "fsub.d	$rd, $rs1, $rs2, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FSUB_D {
	let  isCommutable=IsComm;
}
class ISA_MIPS1_FSUB_D{
	list<Predicate>  EncodingPredicates=[];
}
def II_ADD_D_FSUB_D : InstrItinClass ;
class ADDS_FM_FSUB_D<bits<6>  funct, bits<5>  fmt> : StdArch_FSUB_D ;
class ADDS_M_D32_FSUB_D<string  opstr, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : MMRel_FSUB_D , ADDS_FT_FSUB_D <opstr, ?, Itin, IsComm, OpNode>, FGR_32_FSUB_D ;
def FSUB_D : ADDS_M_D32_FSUB_D <"add.d", NoItinerary, false, null_frag>, ADDS_FM_FSUB_D <0x00, 17>, ISA_MIPS1_FSUB_D , FSUB_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FMADD_D;
class MipsInst_FMADD_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMADD_D {
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
class MipsR6Inst_FMADD_D : MipsInst_FMADD_D <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FMADD_D<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FMADD_D ;
def II_SELCCZ_D_FMADD_D : InstrItinClass ;
class SELEQNEZ_DESC_BASE_FMADD_D<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR64:$rd);
	dag  InOperandList=(ins FPR64:$rs1, FPR64:$rs2, FPR64:$rs3, frmarg:$funct3);
	string  AsmString="fmadd.d	$rd, $rs1, $rs2, $rs3, $funct3";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class MipsR6Arch_FMADD_D<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SELEQZ_D_ENC_FMADD_D : COP1_3R_FM_FMADD_D <0b010100, ?>;
class R6MMR6Rel_FMADD_D;
class HARDFLOAT_FMADD_D{
	list<Predicate>  HardFloatPredicate=[];
}
class SELEQZ_D_DESC_FMADD_D : SELEQNEZ_DESC_BASE_FMADD_D <"seleqz.d", ?, NoItinerary>, MipsR6Arch_FMADD_D <"">;
class ISA_MIPS32R6_FMADD_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FMADD_D : R6MMR6Rel_FMADD_D , SELEQZ_D_ENC_FMADD_D , SELEQZ_D_DESC_FMADD_D , ISA_MIPS32R6_FMADD_D , HARDFLOAT_FMADD_D , FMADD_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FMSUB_D;
class MipsInst_FMSUB_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMSUB_D {
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
class HARDFLOAT_FMSUB_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMSUB_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMSUB_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FMSUB_D{
	string  Arch="";
}
def II_MSUB_D_FMSUB_D : InstrItinClass ;
class MADDS_FT_FMSUB_D<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMSUB_D <(outs FPR64:$rd), (ins FPR64:$rs1, FPR64:$rs2, FPR64:$rs3, frmarg:$funct3), "fmsub.d	$rd, $rs1, $rs2, $rs3, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMSUB_D ;
class MADDS_FM_FMSUB_D<bits<3>  funct, bits<3>  fmt> : StdArch_FMSUB_D ;
class MMRel_FMSUB_D;
class INSN_MIPS4_32R2_NOT_32R6_64R6_FMSUB_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class FGR_32_FMSUB_D{
	list<Predicate>  FGRPredicates=[];
}
def FMSUB_D : MMRel_FMSUB_D , MADDS_FT_FMSUB_D <"msub.d", ?, NoItinerary, null_frag>, MADDS_FM_FMSUB_D <5, 1>, INSN_MIPS4_32R2_NOT_32R6_64R6_FMSUB_D , FGR_32_FMSUB_D , FMSUB_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FNMADD_D;
class MipsInst_FNMADD_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FNMADD_D {
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
class InstSE_FNMADD_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FNMADD_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FNMADD_D{
	string  Arch="";
}
class ISA_MIPS3_FNMADD_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_FNMADD_D<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_FNMADD_D <(outs FPR64:$rd), (ins FPR64:$rs1, FPR64:$rs2, FPR64:$rs3, frmarg:$funct3), "fnmadd.d	$rd, $rs1, $rs2, $rs3, $funct3", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
class ADD_FM_FNMADD_D<bits<6>  op, bits<6>  funct> : StdArch_FNMADD_D ;
def II_DSUB_FNMADD_D : InstrItinClass ;
def FNMADD_D : ArithLogicR_FNMADD_D <"dsub", ?, false, NoItinerary>, ADD_FM_FNMADD_D <0, 0x2e>, ISA_MIPS3_FNMADD_D , FNMADD_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FNMSUB_D;
class MipsInst_FNMSUB_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FNMSUB_D {
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
class MipsR6Inst_FNMSUB_D : MipsInst_FNMSUB_D <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_MIN_D_FNMSUB_D : InstrItinClass ;
class MAX_MIN_DESC_BASE_FNMSUB_D<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR64:$rd);
	dag  InOperandList=(ins FPR64:$rs1, FPR64:$rs2, FPR64:$rs3, frmarg:$funct3);
	string  AsmString="fnmsub.d	$rd, $rs1, $rs2, $rs3, $funct3";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class COP1_3R_FM_FNMSUB_D<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FNMSUB_D ;
class MIN_D_DESC_FNMSUB_D : MAX_MIN_DESC_BASE_FNMSUB_D <"min.d", ?, NoItinerary>;
class HARDFLOAT_FNMSUB_D{
	list<Predicate>  HardFloatPredicate=[];
}
class ISA_MIPS32R6_FNMSUB_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MIN_D_ENC_FNMSUB_D : COP1_3R_FM_FNMSUB_D <0b011100, ?>;
def FNMSUB_D : MIN_D_ENC_FNMSUB_D , MIN_D_DESC_FNMSUB_D , ISA_MIPS32R6_FNMSUB_D , HARDFLOAT_FNMSUB_D , FNMSUB_D_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FSD;
class MipsInst_FSD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSD {
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
def II_SC_FSD : InstrItinClass ;
class InstSE_FSD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSD <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FSD{
	string  Arch="";
}
class ISA_MIPS3_NOT_32R6_64R6_FSD{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SCBase_FSD<string  opstr, RegisterOperand  RO> : InstSE_FSD <(outs), (ins FPR64:$rs2, GPR:$rs1, simm12:$imm12), "fsd	$rs2, ${imm12}(${rs1})", [], NoItinerary, InstFormatR>{
	let  DecoderMethod="";
	let  mayStore=1;
	let  Constraints="";
}
class LW_FM_FSD<bits<6>  op> : StdArch_FSD ;
def FSD : SCBase_FSD <"scd", ?>, LW_FM_FSD <0x3c>, ISA_MIPS3_NOT_32R6_64R6_FSD , FSD_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtD];
}
class PredicateControl_FCVT_S_D;
class MipsInst_FCVT_S_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_S_D {
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
class HARDFLOAT_FCVT_S_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_S_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_S_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_S_D{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_S_D{
	string  Arch="";
}
class ABSS_FT_FCVT_S_D<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_S_D <(outs FPR32:$rd), (ins FPR64:$rs1, frmarg:$funct3), "fcvt.s.d	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_S_D , NeverHasSideEffects_FCVT_S_D ;
class StdMMR6Rel_FCVT_S_D;
class FGR_64_FCVT_S_D{
	list<Predicate>  FGRPredicates=[];
}
class ABSS_FM_FCVT_S_D<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_S_D ;
def II_FLOOR_FCVT_S_D : InstrItinClass ;
class ISA_MIPS2_FCVT_S_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ROUND_M_D64_FCVT_S_D<string  opstr, InstrItinClass  Itin> : StdMMR6Rel_FCVT_S_D , ABSS_FT_FCVT_S_D <opstr, ?, ?, Itin>, FGR_64_FCVT_S_D {
	let  DecoderNamespace="";
}
def FCVT_S_D : ROUND_M_D64_FCVT_S_D <"floor.w.d", NoItinerary>, ABSS_FM_FCVT_S_D <0xf, 17>, ISA_MIPS2_FCVT_S_D , FCVT_S_D_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtD];
}
