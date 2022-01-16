class FSH_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<7> Opcode = 0b0100111;
	let Inst{31-25} = imm12{11-5};
	let Inst{11-7} = imm12{4-0};
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{6-0} = Opcode;
}
class FSH_AUX: FSH_FM2, TSFlagTemplate<InstFormatS>, Sched<[]>;
class FMADD_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b10;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1000011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FMADD_H_AUX: FMADD_H_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class FMSUB_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b10;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1000111;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FMSUB_H_AUX: FMSUB_H_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class FNMSUB_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b10;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1001011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FNMSUB_H_AUX: FNMSUB_H_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class FNMADD_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b10;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1001111;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FNMADD_H_AUX: FNMADD_H_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class FADD_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000010;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FADD_H_AUX: FADD_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FSUB_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000110;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSUB_H_AUX: FSUB_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FMUL_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0001010;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FMUL_H_AUX: FMUL_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FDIV_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0001110;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FDIV_H_AUX: FDIV_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FSQRT_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0101110;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSQRT_H_AUX: FSQRT_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FSGNJ_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010010;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSGNJ_H_AUX: FSGNJ_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FSGNJN_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010010;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSGNJN_H_AUX: FSGNJN_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FSGNJX_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010010;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSGNJX_H_AUX: FSGNJX_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FMIN_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010110;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FMIN_H_AUX: FMIN_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FMAX_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010110;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FMAX_H_AUX: FMAX_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_W_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100010;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_W_H_AUX: FCVT_W_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_WU_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100010;
	bits<5> rs2 = 0b00001;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_WU_H_AUX: FCVT_WU_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_H_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101010;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_H_W_AUX: FCVT_H_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_H_WU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101010;
	bits<5> rs2 = 0b00001;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_H_WU_AUX: FCVT_H_WU_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_H_S_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100010;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_H_S_AUX: FCVT_H_S_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_S_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100000;
	bits<5> rs2 = 0b00010;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_S_H_AUX: FCVT_S_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FMV_X_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1110010;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FMV_X_H_AUX: FMV_X_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FMV_H_X_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1111010;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FMV_H_X_AUX: FMV_H_X_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FEQ_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1010010;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FEQ_H_AUX: FEQ_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FLT_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1010010;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FLT_H_AUX: FLT_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FLE_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1010010;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FLE_H_AUX: FLE_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCLASS_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1110010;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCLASS_H_AUX: FCLASS_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_L_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100010;
	bits<5> rs2 = 0b00010;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_L_H_AUX: FCVT_L_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_LU_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1100010;
	bits<5> rs2 = 0b00011;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_LU_H_AUX: FCVT_LU_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_H_L_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101010;
	bits<5> rs2 = 0b00010;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_H_L_AUX: FCVT_H_L_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_H_LU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b1101010;
	bits<5> rs2 = 0b00011;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_H_LU_AUX: FCVT_H_LU_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_H_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100010;
	bits<5> rs2 = 0b00001;
	bits<5> rs1;
	bits<3> funct3;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_H_D_AUX: FCVT_H_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FCVT_D_H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100001;
	bits<5> rs2 = 0b00010;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> Opcode = 0b1010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FCVT_D_H_AUX: FCVT_D_H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FLH_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> imm12;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0000111;
	let Inst{31-20} = imm12;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FLH_AUX: FLH_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class PredicateControl_FSH;
class MipsInst_FSH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSH {
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
class StdArch_FSH{
	string  Arch="";
}
class HARDFLOAT_FSH{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FSH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSH <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LW_FM_FSH<bits<6>  op> : StdArch_FSH ;
class ISA_MIPS1_FSH{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FSH;
def II_SWC1_FSH : InstrItinClass ;
class SW_FT_FSH<string  opstr, RegisterOperand  RC, DAGOperand  MO, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FSH <(outs), (ins FPR16:$rs2, GPR:$rs1, simm12:$imm12), "fsh	$rs2, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>, HARDFLOAT_FSH {
	let  DecoderMethod="";
	let  mayStore=1;
}
def FSH : MMRel_FSH , SW_FT_FSH <"swc1", ?, i1imm, NoItinerary, null_frag>, LW_FM_FSH <0x39>, ISA_MIPS1_FSH , FSH_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FMADD_H;
class MipsInst_FMADD_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMADD_H {
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
class HARDFLOAT_FMADD_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMADD_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMADD_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FMADD_H{
	string  Arch="";
}
class MADDS_FT_FMADD_H<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMADD_H <(outs FPR16:$rd), (ins FPR16:$rs1, FPR16:$rs2, FPR16:$rs3, frmarg:$funct3), "fmadd.h	$rd, $rs1, $rs2, $rs3, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMADD_H ;
class MADDS_FM_FMADD_H<bits<3>  funct, bits<3>  fmt> : StdArch_FMADD_H ;
class MMRel_FMADD_H;
class INSN_MIPS4_32R2_NOT_32R6_64R6_FMADD_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_MADD_S_FMADD_H : InstrItinClass ;
def FMADD_H : MMRel_FMADD_H , MADDS_FT_FMADD_H <"madd.s", ?, NoItinerary, null_frag>, MADDS_FM_FMADD_H <4, 0>, INSN_MIPS4_32R2_NOT_32R6_64R6_FMADD_H , FMADD_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FMSUB_H;
class MipsInst_FMSUB_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMSUB_H {
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
class HARDFLOAT_FMSUB_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMSUB_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMSUB_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FMSUB_H{
	string  Arch="";
}
class MADDS_FT_FMSUB_H<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMSUB_H <(outs FPR16:$rd), (ins FPR16:$rs1, FPR16:$rs2, FPR16:$rs3, frmarg:$funct3), "fmsub.h	$rd, $rs1, $rs2, $rs3, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMSUB_H ;
class MADDS_FM_FMSUB_H<bits<3>  funct, bits<3>  fmt> : StdArch_FMSUB_H ;
def II_MSUB_S_FMSUB_H : InstrItinClass ;
class MMRel_FMSUB_H;
class INSN_MIPS4_32R2_NOT_32R6_64R6_FMSUB_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FMSUB_H : MMRel_FMSUB_H , MADDS_FT_FMSUB_H <"msub.s", ?, NoItinerary, null_frag>, MADDS_FM_FMSUB_H <5, 0>, INSN_MIPS4_32R2_NOT_32R6_64R6_FMSUB_H , FMSUB_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FNMSUB_H;
class MipsInst_FNMSUB_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FNMSUB_H {
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
class StdArch_FNMSUB_H{
	string  Arch="";
}
class HARDFLOAT_FNMSUB_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FNMSUB_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FNMSUB_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MADDS_FM_FNMSUB_H<bits<3>  funct, bits<3>  fmt> : StdArch_FNMSUB_H ;
def II_NMSUB_S_FNMSUB_H : InstrItinClass ;
class MMRel_FNMSUB_H;
class NMADDS_FT_FNMSUB_H<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FNMSUB_H <(outs FPR16:$rd), (ins FPR16:$rs1, FPR16:$rs2, FPR16:$rs3, frmarg:$funct3), "fnmsub.h	$rd, $rs1, $rs2, $rs3, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FNMSUB_H ;
class INSN_MIPS4_32R2_NOT_32R6_64R6_FNMSUB_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FNMSUB_H : MMRel_FNMSUB_H , NMADDS_FT_FNMSUB_H <"nmsub.s", ?, NoItinerary, null_frag>, MADDS_FM_FNMSUB_H <7, 0>, INSN_MIPS4_32R2_NOT_32R6_64R6_FNMSUB_H , FNMSUB_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FNMADD_H;
class MipsInst_FNMADD_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FNMADD_H {
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
class StdArch_FNMADD_H{
	string  Arch="";
}
class HARDFLOAT_FNMADD_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FNMADD_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FNMADD_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MADDS_FM_FNMADD_H<bits<3>  funct, bits<3>  fmt> : StdArch_FNMADD_H ;
def II_NMADD_S_FNMADD_H : InstrItinClass ;
class MMRel_FNMADD_H;
class NMADDS_FT_FNMADD_H<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FNMADD_H <(outs FPR16:$rd), (ins FPR16:$rs1, FPR16:$rs2, FPR16:$rs3, frmarg:$funct3), "fnmadd.h	$rd, $rs1, $rs2, $rs3, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FNMADD_H ;
class INSN_MIPS4_32R2_NOT_32R6_64R6_FNMADD_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FNMADD_H : MMRel_FNMADD_H , NMADDS_FT_FNMADD_H <"nmadd.s", ?, NoItinerary, null_frag>, MADDS_FM_FNMADD_H <6, 0>, INSN_MIPS4_32R2_NOT_32R6_64R6_FNMADD_H , FNMADD_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FADD_H;
class MipsInst_FADD_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FADD_H {
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
class StdArch_FADD_H{
	string  Arch="";
}
class HARDFLOAT_FADD_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FADD_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FADD_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADDS_FM_FADD_H<bits<6>  funct, bits<5>  fmt> : StdArch_FADD_H ;
def II_ADD_S_FADD_H : InstrItinClass ;
class ISA_MIPS1_FADD_H{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FADD_H;
class ADDS_FT_FADD_H<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FADD_H <(outs FPR16:$rd), (ins FPR16:$rs1, FPR16:$rs2, frmarg:$funct3), "fadd.h	$rd, $rs1, $rs2, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FADD_H {
	let  isCommutable=IsComm;
}
def FADD_H : MMRel_FADD_H , ADDS_FT_FADD_H <"add.s", ?, NoItinerary, false, null_frag>, ADDS_FM_FADD_H <0x00, 16>, ISA_MIPS1_FADD_H , FADD_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FSUB_H;
class MipsInst_FSUB_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSUB_H {
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
class StdArch_FSUB_H{
	string  Arch="";
}
class HARDFLOAT_FSUB_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FSUB_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSUB_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADDS_FM_FSUB_H<bits<6>  funct, bits<5>  fmt> : StdArch_FSUB_H ;
class ISA_MIPS1_FSUB_H{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FSUB_H;
def II_SUB_S_FSUB_H : InstrItinClass ;
class ADDS_FT_FSUB_H<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FSUB_H <(outs FPR16:$rd), (ins FPR16:$rs1, FPR16:$rs2, frmarg:$funct3), "fsub.h	$rd, $rs1, $rs2, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FSUB_H {
	let  isCommutable=IsComm;
}
def FSUB_H : MMRel_FSUB_H , ADDS_FT_FSUB_H <"sub.s", ?, NoItinerary, false, null_frag>, ADDS_FM_FSUB_H <0x01, 16>, ISA_MIPS1_FSUB_H , FSUB_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FMUL_H;
class MipsInst_FMUL_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMUL_H {
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
class StdArch_FMUL_H{
	string  Arch="";
}
class HARDFLOAT_FMUL_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMUL_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMUL_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADDS_FM_FMUL_H<bits<6>  funct, bits<5>  fmt> : StdArch_FMUL_H ;
class ISA_MIPS1_FMUL_H{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FMUL_H;
class ADDS_FT_FMUL_H<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FMUL_H <(outs FPR16:$rd), (ins FPR16:$rs1, FPR16:$rs2, frmarg:$funct3), "fmul.h	$rd, $rs1, $rs2, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMUL_H {
	let  isCommutable=IsComm;
}
def II_MUL_S_FMUL_H : InstrItinClass ;
def FMUL_H : MMRel_FMUL_H , ADDS_FT_FMUL_H <"mul.s", ?, NoItinerary, false, null_frag>, ADDS_FM_FMUL_H <0x02, 16>, ISA_MIPS1_FMUL_H , FMUL_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FDIV_H;
class MipsInst_FDIV_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FDIV_H {
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
class StdArch_FDIV_H{
	string  Arch="";
}
class HARDFLOAT_FDIV_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FDIV_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FDIV_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADDS_FM_FDIV_H<bits<6>  funct, bits<5>  fmt> : StdArch_FDIV_H ;
def II_DIV_S_FDIV_H : InstrItinClass ;
class ISA_MIPS1_FDIV_H{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FDIV_H;
class ADDS_FT_FDIV_H<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_FDIV_H <(outs FPR16:$rd), (ins FPR16:$rs1, FPR16:$rs2, frmarg:$funct3), "fdiv.h	$rd, $rs1, $rs2, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FDIV_H {
	let  isCommutable=IsComm;
}
def FDIV_H : MMRel_FDIV_H , ADDS_FT_FDIV_H <"div.s", ?, NoItinerary, false, null_frag>, ADDS_FM_FDIV_H <0x03, 16>, ISA_MIPS1_FDIV_H , FDIV_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FSQRT_H;
class MipsInst_FSQRT_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSQRT_H {
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
class HARDFLOAT_FSQRT_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FSQRT_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSQRT_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FSQRT_H{
	bit  hasSideEffects=0;
}
class StdArch_FSQRT_H{
	string  Arch="";
}
class ABSS_FT_FSQRT_H<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FSQRT_H <(outs FPR16:$rd), (ins FPR16:$rs1, frmarg:$funct3), "fsqrt.h	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FSQRT_H , NeverHasSideEffects_FSQRT_H ;
class StdMMR6Rel_FSQRT_H;
class MMRel_FSQRT_H;
class ISA_MIPS2_FSQRT_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FSQRT_H<bits<6>  funct, bits<5>  fmt> : StdArch_FSQRT_H ;
def II_SQRT_S_FSQRT_H : InstrItinClass ;
def FSQRT_H : MMRel_FSQRT_H , StdMMR6Rel_FSQRT_H , ABSS_FT_FSQRT_H <"sqrt.s", ?, ?, NoItinerary, null_frag>, ABSS_FM_FSQRT_H <0x4, 16>, ISA_MIPS2_FSQRT_H , FSQRT_H_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FSGNJ_H;
class MipsInst_FSGNJ_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSGNJ_H {
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
class MipsR6Inst_FSGNJ_H : MipsInst_FSGNJ_H <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FSGNJ_H<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FSGNJ_H ;
class COP1_SEL_DESC_BASE_FSGNJ_H<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR16:$rd);
	dag  InOperandList=(ins FPR16:$rs1, FPR16:$rs2);
	string  AsmString="fsgnj.h	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	string  Constraints="";
	InstrItinClass  Itinerary=itin;
}
def II_SEL_S_FSGNJ_H : InstrItinClass ;
class MipsR6Arch_FSGNJ_H<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SEL_S_ENC_FSGNJ_H : COP1_3R_FM_FSGNJ_H <0b010000, ?>;
class R6MMR6Rel_FSGNJ_H;
class HARDFLOAT_FSGNJ_H{
	list<Predicate>  HardFloatPredicate=[];
}
class SEL_S_DESC_FSGNJ_H : COP1_SEL_DESC_BASE_FSGNJ_H <"sel.s", ?, NoItinerary>, MipsR6Arch_FSGNJ_H <"">;
class ISA_MIPS32R6_FSGNJ_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FSGNJ_H : R6MMR6Rel_FSGNJ_H , SEL_S_ENC_FSGNJ_H , SEL_S_DESC_FSGNJ_H , ISA_MIPS32R6_FSGNJ_H , HARDFLOAT_FSGNJ_H , FSGNJ_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FSGNJN_H;
class MipsInst_FSGNJN_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSGNJN_H {
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
class MipsR6Inst_FSGNJN_H : MipsInst_FSGNJN_H <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FSGNJN_H<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FSGNJN_H ;
class COP1_SEL_DESC_BASE_FSGNJN_H<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR16:$rd);
	dag  InOperandList=(ins FPR16:$rs1, FPR16:$rs2);
	string  AsmString="fsgnjn.h	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	string  Constraints="";
	InstrItinClass  Itinerary=itin;
}
def II_SEL_S_FSGNJN_H : InstrItinClass ;
class MipsR6Arch_FSGNJN_H<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SEL_S_ENC_FSGNJN_H : COP1_3R_FM_FSGNJN_H <0b010000, ?>;
class R6MMR6Rel_FSGNJN_H;
class HARDFLOAT_FSGNJN_H{
	list<Predicate>  HardFloatPredicate=[];
}
class SEL_S_DESC_FSGNJN_H : COP1_SEL_DESC_BASE_FSGNJN_H <"sel.s", ?, NoItinerary>, MipsR6Arch_FSGNJN_H <"">;
class ISA_MIPS32R6_FSGNJN_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FSGNJN_H : R6MMR6Rel_FSGNJN_H , SEL_S_ENC_FSGNJN_H , SEL_S_DESC_FSGNJN_H , ISA_MIPS32R6_FSGNJN_H , HARDFLOAT_FSGNJN_H , FSGNJN_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FSGNJX_H;
class MipsInst_FSGNJX_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSGNJX_H {
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
class MipsR6Inst_FSGNJX_H : MipsInst_FSGNJX_H <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FSGNJX_H<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FSGNJX_H ;
class COP1_SEL_DESC_BASE_FSGNJX_H<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR16:$rd);
	dag  InOperandList=(ins FPR16:$rs1, FPR16:$rs2);
	string  AsmString="fsgnjx.h	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	string  Constraints="";
	InstrItinClass  Itinerary=itin;
}
def II_SEL_S_FSGNJX_H : InstrItinClass ;
class MipsR6Arch_FSGNJX_H<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SEL_S_ENC_FSGNJX_H : COP1_3R_FM_FSGNJX_H <0b010000, ?>;
class R6MMR6Rel_FSGNJX_H;
class HARDFLOAT_FSGNJX_H{
	list<Predicate>  HardFloatPredicate=[];
}
class SEL_S_DESC_FSGNJX_H : COP1_SEL_DESC_BASE_FSGNJX_H <"sel.s", ?, NoItinerary>, MipsR6Arch_FSGNJX_H <"">;
class ISA_MIPS32R6_FSGNJX_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FSGNJX_H : R6MMR6Rel_FSGNJX_H , SEL_S_ENC_FSGNJX_H , SEL_S_DESC_FSGNJX_H , ISA_MIPS32R6_FSGNJX_H , HARDFLOAT_FSGNJX_H , FSGNJX_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FMIN_H;
class MipsInst_FMIN_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMIN_H {
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
class MipsR6Inst_FMIN_H : MipsInst_FMIN_H <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class COP1_3R_FM_FMIN_H<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FMIN_H ;
def II_MIN_S_FMIN_H : InstrItinClass ;
class MAX_MIN_DESC_BASE_FMIN_H<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR16:$rd);
	dag  InOperandList=(ins FPR16:$rs1, FPR16:$rs2);
	string  AsmString="fmin.h	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class HARDFLOAT_FMIN_H{
	list<Predicate>  HardFloatPredicate=[];
}
class MIN_S_ENC_FMIN_H : COP1_3R_FM_FMIN_H <0b011100, ?>;
class ISA_MIPS32R6_FMIN_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MIN_S_DESC_FMIN_H : MAX_MIN_DESC_BASE_FMIN_H <"min.s", ?, NoItinerary>;
def FMIN_H : MIN_S_ENC_FMIN_H , MIN_S_DESC_FMIN_H , ISA_MIPS32R6_FMIN_H , HARDFLOAT_FMIN_H , FMIN_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FMAX_H;
class MipsInst_FMAX_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMAX_H {
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
class MipsR6Inst_FMAX_H : MipsInst_FMAX_H <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_MAX_S_FMAX_H : InstrItinClass ;
class MAX_MIN_DESC_BASE_FMAX_H<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs FPR16:$rd);
	dag  InOperandList=(ins FPR16:$rs1, FPR16:$rs2);
	string  AsmString="fmax.h	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class COP1_3R_FM_FMAX_H<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FMAX_H ;
class MAX_S_DESC_FMAX_H : MAX_MIN_DESC_BASE_FMAX_H <"max.s", ?, NoItinerary>;
class HARDFLOAT_FMAX_H{
	list<Predicate>  HardFloatPredicate=[];
}
class ISA_MIPS32R6_FMAX_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MAX_S_ENC_FMAX_H : COP1_3R_FM_FMAX_H <0b011101, ?>;
def FMAX_H : MAX_S_ENC_FMAX_H , MAX_S_DESC_FMAX_H , ISA_MIPS32R6_FMAX_H , HARDFLOAT_FMAX_H , FMAX_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FCVT_W_H;
class MipsInst_FCVT_W_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_W_H {
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
class HARDFLOAT_FCVT_W_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_W_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_W_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_W_H{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_W_H{
	string  Arch="";
}
class ABSS_FT_FCVT_W_H<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_W_H <(outs GPR:$rd), (ins FPR16:$rs1, frmarg:$funct3), "fcvt.w.h	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_W_H , NeverHasSideEffects_FCVT_W_H ;
def II_CVT_FCVT_W_H : InstrItinClass ;
class ISA_MIPS1_FCVT_W_H{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FCVT_W_H;
class FGR_32_FCVT_W_H{
	list<Predicate>  FGRPredicates=[];
}
class ABSS_FM_FCVT_W_H<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_W_H ;
def FCVT_W_H : MMRel_FCVT_W_H , ABSS_FT_FCVT_W_H <"cvt.d.w", ?, ?, NoItinerary>, ABSS_FM_FCVT_W_H <0x21, 20>, ISA_MIPS1_FCVT_W_H , FGR_32_FCVT_W_H , FCVT_W_H_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FCVT_WU_H;
class MipsInst_FCVT_WU_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_WU_H {
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
class HARDFLOAT_FCVT_WU_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_WU_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_WU_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_WU_H{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_WU_H{
	string  Arch="";
}
class ABSS_FT_FCVT_WU_H<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_WU_H <(outs GPR:$rd), (ins FPR16:$rs1, frmarg:$funct3), "fcvt.wu.h	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_WU_H , NeverHasSideEffects_FCVT_WU_H ;
def II_CVT_FCVT_WU_H : InstrItinClass ;
class ISA_MIPS1_FCVT_WU_H{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FCVT_WU_H;
class FGR_32_FCVT_WU_H{
	list<Predicate>  FGRPredicates=[];
}
class ABSS_FM_FCVT_WU_H<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_WU_H ;
def FCVT_WU_H : MMRel_FCVT_WU_H , ABSS_FT_FCVT_WU_H <"cvt.d.w", ?, ?, NoItinerary>, ABSS_FM_FCVT_WU_H <0x21, 20>, ISA_MIPS1_FCVT_WU_H , FGR_32_FCVT_WU_H , FCVT_WU_H_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FCVT_H_W;
class MipsInst_FCVT_H_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_H_W {
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
class HARDFLOAT_FCVT_H_W{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_H_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_H_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_H_W{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_H_W{
	string  Arch="";
}
class MMRel_FCVT_H_W;
class ABSS_FT_FCVT_H_W<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_H_W <(outs FPR16:$rd), (ins GPR:$rs1, frmarg:$funct3), "fcvt.h.w	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_H_W , NeverHasSideEffects_FCVT_H_W ;
class FGR_32_FCVT_H_W{
	list<Predicate>  FGRPredicates=[];
}
class ISA_MIPS1_FCVT_H_W{
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_H_W<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_H_W ;
class ROUND_M_D32_FCVT_H_W<string  opstr, InstrItinClass  Itin> : MMRel_FCVT_H_W , ABSS_FT_FCVT_H_W <opstr, ?, ?, Itin>, FGR_32_FCVT_H_W ;
def II_CVT_FCVT_H_W : InstrItinClass ;
def FCVT_H_W : ROUND_M_D32_FCVT_H_W <"cvt.w.d", NoItinerary>, ABSS_FM_FCVT_H_W <0x24, 17>, ISA_MIPS1_FCVT_H_W , FCVT_H_W_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FCVT_H_WU;
class MipsInst_FCVT_H_WU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_H_WU {
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
class HARDFLOAT_FCVT_H_WU{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_H_WU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_H_WU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_H_WU{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_H_WU{
	string  Arch="";
}
class MMRel_FCVT_H_WU;
class ABSS_FT_FCVT_H_WU<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_H_WU <(outs FPR16:$rd), (ins GPR:$rs1, frmarg:$funct3), "fcvt.h.wu	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_H_WU , NeverHasSideEffects_FCVT_H_WU ;
class FGR_32_FCVT_H_WU{
	list<Predicate>  FGRPredicates=[];
}
class ISA_MIPS1_FCVT_H_WU{
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_H_WU<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_H_WU ;
class ROUND_M_D32_FCVT_H_WU<string  opstr, InstrItinClass  Itin> : MMRel_FCVT_H_WU , ABSS_FT_FCVT_H_WU <opstr, ?, ?, Itin>, FGR_32_FCVT_H_WU ;
def II_CVT_FCVT_H_WU : InstrItinClass ;
def FCVT_H_WU : ROUND_M_D32_FCVT_H_WU <"cvt.w.d", NoItinerary>, ABSS_FM_FCVT_H_WU <0x24, 17>, ISA_MIPS1_FCVT_H_WU , FCVT_H_WU_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FCVT_H_S;
class MipsInst_FCVT_H_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_H_S {
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
class HARDFLOAT_FCVT_H_S{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_H_S<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_H_S <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_H_S{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_H_S{
	string  Arch="";
}
class ABSS_FT_FCVT_H_S<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_H_S <(outs FPR16:$rd), (ins FPR32:$rs1, frmarg:$funct3), "fcvt.h.s	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_H_S , NeverHasSideEffects_FCVT_H_S ;
def II_CVT_FCVT_H_S : InstrItinClass ;
class ISA_MIPS1_FCVT_H_S{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FCVT_H_S;
class ABSS_FM_FCVT_H_S<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_H_S ;
def FCVT_H_S : MMRel_FCVT_H_S , ABSS_FT_FCVT_H_S <"cvt.w.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_H_S <0x24, 16>, ISA_MIPS1_FCVT_H_S , FCVT_H_S_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FCVT_S_H;
class MipsInst_FCVT_S_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_S_H {
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
class HARDFLOAT_FCVT_S_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_S_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_S_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_S_H{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_S_H{
	string  Arch="";
}
class ABSS_FT_FCVT_S_H<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_S_H <(outs FPR32:$rd), (ins FPR16:$rs1), "fcvt.s.h	$rd, $rs1", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_S_H , NeverHasSideEffects_FCVT_S_H ;
def II_CVT_FCVT_S_H : InstrItinClass ;
class ISA_MIPS1_FCVT_S_H{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FCVT_S_H;
class ABSS_FM_FCVT_S_H<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_S_H ;
def FCVT_S_H : MMRel_FCVT_S_H , ABSS_FT_FCVT_S_H <"cvt.s.w", ?, ?, NoItinerary>, ABSS_FM_FCVT_S_H <0x20, 20>, ISA_MIPS1_FCVT_S_H , FCVT_S_H_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FMV_X_H;
class MipsInst_FMV_X_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMV_X_H {
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
class HARDFLOAT_FMV_X_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMV_X_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMV_X_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FMV_X_H{
	bit  hasSideEffects=0;
}
class StdArch_FMV_X_H{
	string  Arch="";
}
class ABSS_FT_FMV_X_H<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMV_X_H <(outs GPR:$rd), (ins FPR16:$rs1), "fmv.x.h	$rd, $rs1", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMV_X_H , NeverHasSideEffects_FMV_X_H ;
class ISA_MIPS1_FMV_X_H{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FMV_X_H;
def II_MOV_S_FMV_X_H : InstrItinClass ;
class ABSS_FM_FMV_X_H<bits<6>  funct, bits<5>  fmt> : StdArch_FMV_X_H ;
def FMV_X_H : MMRel_FMV_X_H , ABSS_FT_FMV_X_H <"mov.s", ?, ?, NoItinerary>, ABSS_FM_FMV_X_H <0x6, 16>, ISA_MIPS1_FMV_X_H , FMV_X_H_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FMV_H_X;
class MipsInst_FMV_H_X<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FMV_H_X {
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
class HARDFLOAT_FMV_H_X{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FMV_H_X<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FMV_H_X <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FMV_H_X{
	bit  hasSideEffects=0;
}
class StdArch_FMV_H_X{
	string  Arch="";
}
class ABSS_FT_FMV_H_X<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FMV_H_X <(outs FPR16:$rd), (ins GPR:$rs1), "fmv.h.x	$rd, $rs1", [], Itin, InstFormatR, opstr>, HARDFLOAT_FMV_H_X , NeverHasSideEffects_FMV_H_X ;
class ISA_MIPS1_FMV_H_X{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FMV_H_X;
def II_MOV_S_FMV_H_X : InstrItinClass ;
class ABSS_FM_FMV_H_X<bits<6>  funct, bits<5>  fmt> : StdArch_FMV_H_X ;
def FMV_H_X : MMRel_FMV_H_X , ABSS_FT_FMV_H_X <"mov.s", ?, ?, NoItinerary>, ABSS_FM_FMV_H_X <0x6, 16>, ISA_MIPS1_FMV_H_X , FMV_H_X_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FEQ_H;
class StdArch_FEQ_H{
	string  Arch="";
}
class MipsInst_FEQ_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FEQ_H {
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
class CEQS_FM_FEQ_H<bits<5>  fmt> : StdArch_FEQ_H ;
class HARDFLOAT_FEQ_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FEQ_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FEQ_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MMRel_FEQ_H;
class C_COND_FM_FEQ_H<bits<5>  fmt, bits<4>  c> : CEQS_FM_FEQ_H <fmt>;
class C_COND_FT_FEQ_H<string  CondStr, string  Typestr, RegisterOperand  RC, InstrItinClass  itin> : InstSE_FEQ_H <(outs GPR:$rd), (ins FPR16:$rs1, FPR16:$rs2), "feq.h	$rd, $rs1, $rs2", [], itin, InstFormatR>, HARDFLOAT_FEQ_H {
	let  isCompare=false;
	let  hasFCCRegOperand=1;
}
class C_COND_M_C_EQ_S_FEQ_H<string  TypeStr, RegisterOperand  RC, bits<5>  fmt, InstrItinClass  itin> : MMRel_FEQ_H , C_COND_FT_FEQ_H <"eq", TypeStr, RC, itin>, C_COND_FM_FEQ_H <fmt, 2>{
	let  BaseOpcode="";
	let  isCommutable=false;
}
def II_C_CC_S_FEQ_H : InstrItinClass ;
class ISA_MIPS1_NOT_32R6_64R6_FEQ_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FEQ_H : C_COND_M_C_EQ_S_FEQ_H <"s", ?, 16, NoItinerary>, ISA_MIPS1_NOT_32R6_64R6_FEQ_H , FEQ_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FLT_H;
class StdArch_FLT_H{
	string  Arch="";
}
class MipsInst_FLT_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FLT_H {
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
class CEQS_FM_FLT_H<bits<5>  fmt> : StdArch_FLT_H ;
class HARDFLOAT_FLT_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FLT_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FLT_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MMRel_FLT_H;
class C_COND_FM_FLT_H<bits<5>  fmt, bits<4>  c> : CEQS_FM_FLT_H <fmt>;
class C_COND_FT_FLT_H<string  CondStr, string  Typestr, RegisterOperand  RC, InstrItinClass  itin> : InstSE_FLT_H <(outs GPR:$rd), (ins FPR16:$rs1, FPR16:$rs2), "flt.h	$rd, $rs1, $rs2", [], itin, InstFormatR>, HARDFLOAT_FLT_H {
	let  isCompare=false;
	let  hasFCCRegOperand=1;
}
def II_C_CC_S_FLT_H : InstrItinClass ;
class ISA_MIPS1_NOT_32R6_64R6_FLT_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class C_COND_M_C_LT_S_FLT_H<string  TypeStr, RegisterOperand  RC, bits<5>  fmt, InstrItinClass  itin> : MMRel_FLT_H , C_COND_FT_FLT_H <"lt", TypeStr, RC, itin>, C_COND_FM_FLT_H <fmt, 12>{
	let  BaseOpcode="";
}
def FLT_H : C_COND_M_C_LT_S_FLT_H <"s", ?, 16, NoItinerary>, ISA_MIPS1_NOT_32R6_64R6_FLT_H , FLT_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FLE_H;
class StdArch_FLE_H{
	string  Arch="";
}
class MipsInst_FLE_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FLE_H {
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
class CEQS_FM_FLE_H<bits<5>  fmt> : StdArch_FLE_H ;
class HARDFLOAT_FLE_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FLE_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FLE_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MMRel_FLE_H;
class C_COND_FM_FLE_H<bits<5>  fmt, bits<4>  c> : CEQS_FM_FLE_H <fmt>;
class C_COND_FT_FLE_H<string  CondStr, string  Typestr, RegisterOperand  RC, InstrItinClass  itin> : InstSE_FLE_H <(outs GPR:$rd), (ins FPR16:$rs1, FPR16:$rs2), "fle.h	$rd, $rs1, $rs2", [], itin, InstFormatR>, HARDFLOAT_FLE_H {
	let  isCompare=false;
	let  hasFCCRegOperand=1;
}
class C_COND_M_C_LE_S_FLE_H<string  TypeStr, RegisterOperand  RC, bits<5>  fmt, InstrItinClass  itin> : MMRel_FLE_H , C_COND_FT_FLE_H <"le", TypeStr, RC, itin>, C_COND_FM_FLE_H <fmt, 14>{
	let  BaseOpcode="";
}
def II_C_CC_S_FLE_H : InstrItinClass ;
class ISA_MIPS1_NOT_32R6_64R6_FLE_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FLE_H : C_COND_M_C_LE_S_FLE_H <"s", ?, 16, NoItinerary>, ISA_MIPS1_NOT_32R6_64R6_FLE_H , FLE_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FCLASS_H;
class MipsInst_FCLASS_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCLASS_H {
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
class MipsR6Inst_FCLASS_H : MipsInst_FCLASS_H <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_CLASS_S_FCLASS_H : InstrItinClass ;
class CLASS_RINT_DESC_BASE_FCLASS_H<string  instr_asm, RegisterOperand  FGROpnd, InstrItinClass  itin>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins FPR16:$rs1);
	string  AsmString="fclass.h	$rd, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class COP1_2R_FM_FCLASS_H<bits<6>  funct, Type_AUX_FM  Format> : MipsR6Inst_FCLASS_H ;
class CLASS_S_DESC_FCLASS_H : CLASS_RINT_DESC_BASE_FCLASS_H <"class.s", ?, NoItinerary>;
class HARDFLOAT_FCLASS_H{
	list<Predicate>  HardFloatPredicate=[];
}
class ISA_MIPS32R6_FCLASS_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class CLASS_S_ENC_FCLASS_H : COP1_2R_FM_FCLASS_H <0b011011, ?>;
def FCLASS_H : CLASS_S_ENC_FCLASS_H , CLASS_S_DESC_FCLASS_H , ISA_MIPS32R6_FCLASS_H , HARDFLOAT_FCLASS_H , FCLASS_H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
class PredicateControl_FCVT_L_H;
class MipsInst_FCVT_L_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_L_H {
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
class HARDFLOAT_FCVT_L_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_L_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_L_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_L_H{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_L_H{
	string  Arch="";
}
class ABSS_FT_FCVT_L_H<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_L_H <(outs GPR:$rd), (ins FPR16:$rs1, frmarg:$funct3), "fcvt.l.h	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_L_H , NeverHasSideEffects_FCVT_L_H ;
def II_CVT_FCVT_L_H : InstrItinClass ;
class MMRel_FCVT_L_H;
class INSN_MIPS3_32R2_FCVT_L_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_L_H<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_L_H ;
def FCVT_L_H : MMRel_FCVT_L_H , ABSS_FT_FCVT_L_H <"cvt.l.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_L_H <0x25, 16>, INSN_MIPS3_32R2_FCVT_L_H , FCVT_L_H_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh, IsRV64];
}
class PredicateControl_FCVT_LU_H;
class MipsInst_FCVT_LU_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_LU_H {
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
class HARDFLOAT_FCVT_LU_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_LU_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_LU_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_LU_H{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_LU_H{
	string  Arch="";
}
class ABSS_FT_FCVT_LU_H<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_LU_H <(outs GPR:$rd), (ins FPR16:$rs1, frmarg:$funct3), "fcvt.lu.h	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_LU_H , NeverHasSideEffects_FCVT_LU_H ;
def II_CVT_FCVT_LU_H : InstrItinClass ;
class MMRel_FCVT_LU_H;
class INSN_MIPS3_32R2_FCVT_LU_H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_LU_H<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_LU_H ;
def FCVT_LU_H : MMRel_FCVT_LU_H , ABSS_FT_FCVT_LU_H <"cvt.l.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_LU_H <0x25, 16>, INSN_MIPS3_32R2_FCVT_LU_H , FCVT_LU_H_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh, IsRV64];
}
class PredicateControl_FCVT_H_L;
class MipsInst_FCVT_H_L<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_H_L {
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
class HARDFLOAT_FCVT_H_L{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_H_L<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_H_L <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_H_L{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_H_L{
	string  Arch="";
}
class ABSS_FT_FCVT_H_L<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_H_L <(outs FPR16:$rd), (ins GPR:$rs1, frmarg:$funct3), "fcvt.h.l	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_H_L , NeverHasSideEffects_FCVT_H_L ;
def II_CVT_FCVT_H_L : InstrItinClass ;
class FGR_64_FCVT_H_L{
	list<Predicate>  FGRPredicates=[];
}
class INSN_MIPS3_32R2_FCVT_H_L{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_H_L<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_H_L ;
def FCVT_H_L : ABSS_FT_FCVT_H_L <"cvt.s.l", ?, ?, NoItinerary>, ABSS_FM_FCVT_H_L <0x20, 21>, INSN_MIPS3_32R2_FCVT_H_L , FGR_64_FCVT_H_L , FCVT_H_L_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh, IsRV64];
}
class PredicateControl_FCVT_H_LU;
class MipsInst_FCVT_H_LU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_H_LU {
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
class HARDFLOAT_FCVT_H_LU{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_H_LU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_H_LU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_H_LU{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_H_LU{
	string  Arch="";
}
class ABSS_FT_FCVT_H_LU<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_H_LU <(outs FPR16:$rd), (ins GPR:$rs1, frmarg:$funct3), "fcvt.h.lu	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_H_LU , NeverHasSideEffects_FCVT_H_LU ;
def II_CVT_FCVT_H_LU : InstrItinClass ;
class FGR_64_FCVT_H_LU{
	list<Predicate>  FGRPredicates=[];
}
class INSN_MIPS3_32R2_FCVT_H_LU{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_FCVT_H_LU<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_H_LU ;
def FCVT_H_LU : ABSS_FT_FCVT_H_LU <"cvt.s.l", ?, ?, NoItinerary>, ABSS_FM_FCVT_H_LU <0x20, 21>, INSN_MIPS3_32R2_FCVT_H_LU , FGR_64_FCVT_H_LU , FCVT_H_LU_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh, IsRV64];
}
class PredicateControl_FCVT_H_D;
class MipsInst_FCVT_H_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_H_D {
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
class HARDFLOAT_FCVT_H_D{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_H_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_H_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_H_D{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_H_D{
	string  Arch="";
}
class ABSS_FT_FCVT_H_D<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_H_D <(outs FPR16:$rd), (ins FPR64:$rs1, frmarg:$funct3), "fcvt.h.d	$rd, $rs1, $funct3", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_H_D , NeverHasSideEffects_FCVT_H_D ;
def II_CVT_FCVT_H_D : InstrItinClass ;
class ISA_MIPS1_FCVT_H_D{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FCVT_H_D;
class FGR_32_FCVT_H_D{
	list<Predicate>  FGRPredicates=[];
}
class ABSS_FM_FCVT_H_D<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_H_D ;
def FCVT_H_D : MMRel_FCVT_H_D , ABSS_FT_FCVT_H_D <"cvt.s.d", ?, ?, NoItinerary>, ABSS_FM_FCVT_H_D <0x20, 17>, ISA_MIPS1_FCVT_H_D , FGR_32_FCVT_H_D , FCVT_H_D_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh, HasStdExtD];
}
class PredicateControl_FCVT_D_H;
class MipsInst_FCVT_D_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FCVT_D_H {
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
class HARDFLOAT_FCVT_D_H{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FCVT_D_H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FCVT_D_H <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_FCVT_D_H{
	bit  hasSideEffects=0;
}
class StdArch_FCVT_D_H{
	string  Arch="";
}
class ABSS_FT_FCVT_D_H<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FCVT_D_H <(outs FPR64:$rd), (ins FPR16:$rs1), "fcvt.d.h	$rd, $rs1", [], Itin, InstFormatR, opstr>, HARDFLOAT_FCVT_D_H , NeverHasSideEffects_FCVT_D_H ;
def II_CVT_FCVT_D_H : InstrItinClass ;
class ISA_MIPS1_FCVT_D_H{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FCVT_D_H;
class FGR_32_FCVT_D_H{
	list<Predicate>  FGRPredicates=[];
}
class ABSS_FM_FCVT_D_H<bits<6>  funct, bits<5>  fmt> : StdArch_FCVT_D_H ;
def FCVT_D_H : MMRel_FCVT_D_H , ABSS_FT_FCVT_D_H <"cvt.d.s", ?, ?, NoItinerary>, ABSS_FM_FCVT_D_H <0x21, 16>, ISA_MIPS1_FCVT_D_H , FGR_32_FCVT_D_H , FCVT_D_H_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh, HasStdExtD];
}
class PredicateControl_FLH;
class MipsInst_FLH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FLH {
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
class StdArch_FLH{
	string  Arch="";
}
class HARDFLOAT_FLH{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_FLH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FLH <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LW_FM_FLH<bits<6>  op> : StdArch_FLH ;
class ISA_MIPS1_FLH{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_FLH;
class LW_FT_FLH<string  opstr, RegisterOperand  RC, DAGOperand  MO, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_FLH <(outs FPR16:$rd), (ins GPR:$rs1, simm12:$imm12), "flh	$rd, ${imm12}(${rs1})", [], Itin, InstFormatR, opstr>, HARDFLOAT_FLH {
	let  DecoderMethod="";
	let  mayLoad=1;
}
def II_LWC1_FLH : InstrItinClass ;
def FLH : MMRel_FLH , LW_FT_FLH <"lwc1", ?, i1imm, NoItinerary, null_frag>, LW_FM_FLH <0x31>, ISA_MIPS1_FLH , FLH_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZfh];
}
