class ADDUW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class ADDUW_AUX: ADDUW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class ANDN_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b111;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class ANDN_AUX: ANDN_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BCLR_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BCLR_AUX: BCLR_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BCLRI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01001;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-27} = funct5;
	let Inst{26-26} = 0b0;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BCLRI_AUX: BCLRI_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class BCLRIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BCLRIW_AUX: BCLRIW_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class BCLRW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BCLRW_AUX: BCLRW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BEXT_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BEXT_AUX: BEXT_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BEXTI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01001;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-27} = funct5;
	let Inst{26-26} = 0b0;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BEXTI_AUX: BEXTI_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class BEXTW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BEXTW_AUX: BEXTW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BFP_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b111;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BFP_AUX: BFP_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BFPW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b111;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BFPW_AUX: BFPW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BINV_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BINV_AUX: BINV_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BINVI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01101;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-27} = funct5;
	let Inst{26-26} = 0b0;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BINVI_AUX: BINVI_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class BINVIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110100;
	bits<5> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BINVIW_AUX: BINVIW_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class BINVW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BINVW_AUX: BINVW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BMATFLIP_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b00011;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BMATFLIP_AUX: BMATFLIP_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BMATOR_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BMATOR_AUX: BMATOR_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BMATXOR_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BMATXOR_AUX: BMATXOR_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BSET_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BSET_AUX: BSET_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BSETI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00101;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-27} = funct5;
	let Inst{26-26} = 0b0;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BSETI_AUX: BSETI_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class BSETIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BSETIW_AUX: BSETIW_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class BSETW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BSETW_AUX: BSETW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CLMUL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000101;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CLMUL_AUX: CLMUL_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CLMULH_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000101;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CLMULH_AUX: CLMULH_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CLMULR_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000101;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CLMULR_AUX: CLMULR_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CLZ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CLZ_AUX: CLZ_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CLZW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CLZW_AUX: CLZW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CMIX_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b11;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3_b = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3_b;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CMIX_AUX: CMIX_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class CMOV_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b11;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3_b = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3_b;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CMOV_AUX: CMOV_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class CPOP_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b00010;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CPOP_AUX: CPOP_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CPOPW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b00010;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CPOPW_AUX: CPOPW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CRC32B_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b10000;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CRC32B_AUX: CRC32B_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CRC32CB_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b11000;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CRC32CB_AUX: CRC32CB_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CRC32CD_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b11011;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CRC32CD_AUX: CRC32CD_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CRC32CH_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b11001;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CRC32CH_AUX: CRC32CH_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CRC32CW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b11010;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CRC32CW_AUX: CRC32CW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CRC32D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b10011;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
def CRC32D: Instruction, CRC32D_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>{
	let Size = 4;
	let AsmString = "crc32.d	$rd, $rs1";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins GPR:$rs1);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtZbr, IsRV64];
}
class CRC32H_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b10001;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CRC32H_AUX: CRC32H_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CRC32W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b10010;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CRC32W_AUX: CRC32W_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CTZ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b00001;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CTZ_AUX: CTZ_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class CTZW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b00001;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class CTZW_AUX: CTZW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class FSL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b10;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3_b = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3_b;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSL_AUX: FSL_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class FSLW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b10;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3_b = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3_b;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSLW_AUX: FSLW_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class FSR_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b10;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3_b = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3_b;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSR_AUX: FSR_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class FSRI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<1> immediate = 0b1;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3_b = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-27} = rs3;
	let Inst{26-26} = immediate;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3_b;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSRI_AUX: FSRI_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class FSRIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b10;
	bits<5> shamt;
	bits<5> rs1;
	bits<3> funct3_b = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3_b;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSRIW_AUX: FSRIW_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class FSRW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> rs3;
	bits<2> funct2 = 0b10;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3_b = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-27} = rs3;
	let Inst{26-25} = funct2;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3_b;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class FSRW_AUX: FSRW_FM2, TSFlagTemplate<InstFormatR4>, Sched<[]>;
class GORC_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class GORC_AUX: GORC_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class GORCI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00101;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-27} = funct5;
	let Inst{26-26} = 0b0;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class GORCI_AUX: GORCI_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class GORCIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
def GORCIW: Instruction, GORCIW_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>{
	let Size = 4;
	let AsmString = "gorciw	$rd, $rs1, $shamt";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins GPR:$rs1, uimm5:$shamt);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtZbp, IsRV64];
}
class GORCW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
def GORCW: Instruction, GORCW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>{
	let Size = 4;
	let AsmString = "gorcw	$rd, $rs1, $rs2";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins GPR:$rs1, GPR:$rs2);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtZbp, IsRV64];
}
class GREV_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class GREV_AUX: GREV_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class GREVI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01101;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-27} = funct5;
	let Inst{26-26} = 0b0;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class GREVI_AUX: GREVI_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class GREVIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110100;
	bits<5> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class GREVIW_AUX: GREVIW_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class GREVW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class GREVW_AUX: GREVW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class MAX_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000101;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class MAX_AUX: MAX_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class MAXU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000101;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b111;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class MAXU_AUX: MAXU_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class MIN_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000101;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class MIN_AUX: MIN_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class MINU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000101;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class MINU_AUX: MINU_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class ORCB_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> immediate = 0b001010000111;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-20} = immediate;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class ORCB_AUX: ORCB_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class ORN_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class ORN_AUX: ORN_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class PACKUW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class PACKUW_AUX: PACKUW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class PACKW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class PACKW_AUX: PACKW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class REV8_RV32_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> immediate = 0b011010011000;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-20} = immediate;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class REV8_RV32_AUX: REV8_RV32_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class REV8_RV64_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<12> immediate = 0b011010111000;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-20} = immediate;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class REV8_RV64_AUX: REV8_RV64_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class ROL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class ROL_AUX: ROL_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class ROLW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class ROLW_AUX: ROLW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class ROR_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class ROR_AUX: ROR_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class RORI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01100;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-27} = funct5;
	let Inst{26-26} = 0b0;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class RORI_AUX: RORI_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class RORIW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class RORIW_AUX: RORIW_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class RORW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class RORW_AUX: RORW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SEXTB_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b00100;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
def SEXTB: Instruction, SEXTB_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>{
	let Size = 4;
	let AsmString = "sext.b	$rd, $rs1";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins GPR:$rs1);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtZbb];
}
class SEXTH_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0110000;
	bits<5> funct5 = 0b00101;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = funct5;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SEXTH_AUX: SEXTH_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SH1ADD_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SH1ADD_AUX: SH1ADD_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SH1ADDUW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SH1ADDUW_AUX: SH1ADDUW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SH2ADD_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SH2ADD_AUX: SH2ADD_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SH2ADDUW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SH2ADDUW_AUX: SH2ADDUW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SH3ADD_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SH3ADD_AUX: SH3ADD_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SH3ADDUW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SH3ADDUW_AUX: SH3ADDUW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SHFL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SHFL_AUX: SHFL_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SHFLI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<6> funct6 = 0b000010;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-26} = funct6;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SHFLI_AUX: SHFLI_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class SHFLW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SHFLW_AUX: SHFLW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class SLLIUW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00001;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b001;
	bits<5> rd;
	bits<7> Opcode = 0b0011011;
	let Inst{31-27} = funct5;
	let Inst{26-26} = 0b0;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class SLLIUW_AUX: SLLIUW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class UNSHFL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class UNSHFL_AUX: UNSHFL_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class UNSHFLI_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<6> funct6 = 0b000010;
	bits<6> shamt;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0010011;
	let Inst{31-26} = funct6;
	let Inst{25-20} = shamt;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class UNSHFLI_AUX: UNSHFLI_FM2, TSFlagTemplate<InstFormatI>, Sched<[]>;
class UNSHFLW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b101;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class UNSHFLW_AUX: UNSHFLW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class XNOR_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100000;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class XNOR_AUX: XNOR_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class ZEXTH_RV32_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class ZEXTH_RV32_AUX: ZEXTH_RV32_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class ZEXTH_RV64_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class ZEXTH_RV64_AUX: ZEXTH_RV64_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BCOMPRESS_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BCOMPRESS_AUX: BCOMPRESS_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BCOMPRESSW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BCOMPRESSW_AUX: BCOMPRESSW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BDECOMPRESS_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BDECOMPRESS_AUX: BDECOMPRESS_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class BDECOMPRESSW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> Opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class BDECOMPRESSW_AUX: BDECOMPRESSW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class PACK_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class PACK_AUX: PACK_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class PACKH_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b111;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class PACKH_AUX: PACKH_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class PACKU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0100100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class PACKU_AUX: PACKU_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class XPERMB_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class XPERMB_AUX: XPERMB_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class XPERMH_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class XPERMH_AUX: XPERMH_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class XPERMN_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
class XPERMN_AUX: XPERMN_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>;
class XPERMW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0010100;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b000;
	bits<5> rd;
	bits<7> Opcode = 0b0110011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = Opcode;
}
def XPERMW: Instruction, XPERMW_FM2, TSFlagTemplate<InstFormatR>, Sched<[]>{
	let Size = 4;
	let AsmString = "xperm.w	$rd, $rs1, $rs2";
	let Namespace = "RISCV";
	let mayLoad = 0;
	let InOperandList = (ins GPR:$rs1, GPR:$rs2);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtZbp, IsRV64];
}
class C_NEG_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<4> immediate1 = 0b0110;
	bits<2> funct2 = 0b01;
	bits<3> rs;
	bits<7> immediate = 0b0000001;
	let Inst{15-12} = immediate1;
	let Inst{11-10} = funct2;
	let Inst{9-7} = rs;
	let Inst{6-0} = immediate;
}
class C_NEG_AUX: C_NEG_FM2, TSFlagTemplate<InstFormatCR>, Sched<[]>;
class C_NOT_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<4> immediate1 = 0b0110;
	bits<2> funct2 = 0b00;
	bits<3> rs;
	bits<7> immediate = 0b0000001;
	let Inst{15-12} = immediate1;
	let Inst{11-10} = funct2;
	let Inst{9-7} = rs;
	let Inst{6-0} = immediate;
}
class C_NOT_AUX: C_NOT_FM2, TSFlagTemplate<InstFormatCR>, Sched<[]>;
class C_ZEXTW_FM2: ATGInst{
	bits<16> SoftFail=0;
	bits<16> Inst;
	bits<4> immediate1 = 0b0110;
	bits<2> funct2 = 0b10;
	bits<3> rs;
	bits<7> immediate = 0b0000001;
	let Inst{15-12} = immediate1;
	let Inst{11-10} = funct2;
	let Inst{9-7} = rs;
	let Inst{6-0} = immediate;
}
class C_ZEXTW_AUX: C_ZEXTW_FM2, TSFlagTemplate<InstFormatCR>, Sched<[]>;
class PredicateControl_ADDUW;
class MipsInst_ADDUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ADDUW {
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
class HARDFLOAT_ADDUW{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_ADDUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ADDUW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_ADDUW{
	string  Arch="";
}
class MMRel_ADDUW;
class FGR_32_ADDUW{
	list<Predicate>  FGRPredicates=[];
}
class ADDS_FT_ADDUW<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_ADDUW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "add.uw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>, HARDFLOAT_ADDUW {
	let  isCommutable=IsComm;
}
class ISA_MIPS1_ADDUW{
	list<Predicate>  EncodingPredicates=[];
}
class ADDS_FM_ADDUW<bits<6>  funct, bits<5>  fmt> : StdArch_ADDUW ;
def II_SUB_D_ADDUW : InstrItinClass ;
class ADDS_M_D32_ADDUW<string  opstr, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : MMRel_ADDUW , ADDS_FT_ADDUW <opstr, ?, Itin, IsComm, OpNode>, FGR_32_ADDUW ;
def ADDUW : ADDS_M_D32_ADDUW <"sub.d", NoItinerary, false, null_frag>, ADDS_FM_ADDUW <0x01, 17>, ISA_MIPS1_ADDUW , ADDUW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZba, IsRV64];
}
class PredicateControl_ANDN;
class MipsInst_ANDN<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ANDN {
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
class StdArch_ANDN{
	string  Arch="";
}
class InstSE_ANDN<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ANDN <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_ANDN<bits<6>  op, bits<6>  funct> : StdArch_ANDN ;
class StdMMR6Rel_ANDN;
def II_XOR_ANDN : InstrItinClass ;
class ISA_MIPS1_ANDN{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_ANDN;
class ArithLogicR_ANDN<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_ANDN <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "andn	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def ANDN : MMRel_ANDN , StdMMR6Rel_ANDN , ArithLogicR_ANDN <"xor", ?, false, NoItinerary, null_frag>, ADD_FM_ANDN <0, 0x26>, ISA_MIPS1_ANDN , ANDN_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp];
}
class PredicateControl_BCLR;
class MipsInst_BCLR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BCLR {
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
class MMArch_BCLR{
	string  Arch="";
}
def II_LWP_BCLR : InstrItinClass ;
class InstSE_BCLR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BCLR <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LWM_FM_MM_BCLR<bits<4>  funct> : MMArch_BCLR ;
class ISA_MICROMIPS_BCLR{
	list<Predicate>  EncodingPredicates=[];
}
class LoadPairMM_BCLR<string  opstr, ComplexPattern  Addr=addr> : InstSE_BCLR <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bclr	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayLoad=0;
	let  AsmMatchConverter="";
}
def BCLR : LoadPairMM_BCLR <"lwp">, LWM_FM_MM_BCLR <0x1>, ISA_MICROMIPS_BCLR , BCLR_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs];
}
class PredicateControl_BCLRI;
class MipsInst_BCLRI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BCLRI {
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
class StdArch_BCLRI{
	string  Arch="";
}
class InstSE_BCLRI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BCLRI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS1_BCLRI{
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_BCLRI<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_BCLRI ;
class MFC3OP_BCLRI<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_BCLRI <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "bclri	$rd, $rs1, $shamt", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
def II_MFC2_BCLRI : InstrItinClass ;
def BCLRI : MFC3OP_BCLRI <"", ?, ?, NoItinerary>, MFC3OP_FM_BCLRI <0x12, 0, 0>, ISA_MIPS1_BCLRI , BCLRI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs];
}
class PredicateControl_BCLRIW;
class MipsInst_BCLRIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BCLRIW {
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
class StdArch_BCLRIW{
	string  Arch="";
}
class InstSE_BCLRIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BCLRIW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_LWR_BCLRIW : InstrItinClass ;
class ISA_MIPS1_NOT_32R6_64R6_BCLRIW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_BCLRIW<bits<6>  op> : StdArch_BCLRIW ;
class LoadLeftRight_BCLRIW<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_BCLRIW <(outs GPR:$rd), (ins GPR:$rs1, uimm5:$shamt), "bclriw	$rd, $rs1, $shamt", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	string  Constraints="";
	let  BaseOpcode=opstr;
}
class MMRel_BCLRIW;
def BCLRIW : MMRel_BCLRIW , LoadLeftRight_BCLRIW <"", ?, ?, NoItinerary>, LW_FM_BCLRIW <0x26>, ISA_MIPS1_NOT_32R6_64R6_BCLRIW , BCLRIW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs, IsRV64];
}
class PredicateControl_BCLRW;
class MipsInst_BCLRW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BCLRW {
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
class StdArch_BCLRW{
	string  Arch="";
}
class InstSE_BCLRW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BCLRW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS1_BCLRW{
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_BCLRW<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_BCLRW ;
class MFC3OP_BCLRW<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_BCLRW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bclrw	$rd, $rs1, $rs2", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
def II_MFC2_BCLRW : InstrItinClass ;
def BCLRW : MFC3OP_BCLRW <"", ?, ?, NoItinerary>, MFC3OP_FM_BCLRW <0x12, 0, 0>, ISA_MIPS1_BCLRW , BCLRW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs, IsRV64];
}
class PredicateControl_BEXT;
class MipsInst_BEXT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BEXT {
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
class InstSE_BEXT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BEXT <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_INS_BEXT : InstrItinClass ;
class StdArch_BEXT{
	string  Arch="";
}
class InsBase_BEXT<string  opstr, RegisterOperand  RO, Operand  PosOpnd, Operand  SizeOpnd, PatFrag  PosImm, PatFrag  SizeImm> : InstSE_BEXT <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bext	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>{
	let  Constraints="";
}
class StdMMR6Rel_BEXT;
class ISA_MIPS32R2_BEXT{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_BEXT;
class EXT_FM_BEXT<bits<6>  funct> : StdArch_BEXT ;
def BEXT : MMRel_BEXT , StdMMR6Rel_BEXT , InsBase_BEXT <"ins", ?, ?, ?, ?, ?>, EXT_FM_BEXT <4>, ISA_MIPS32R2_BEXT , BEXT_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs];
}
class PredicateControl_BEXTI;
class MipsInst_BEXTI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BEXTI {
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
class InstSE_BEXTI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BEXTI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_INS_BEXTI : InstrItinClass ;
class StdArch_BEXTI{
	string  Arch="";
}
class InsBase_BEXTI<string  opstr, RegisterOperand  RO, Operand  PosOpnd, Operand  SizeOpnd, PatFrag  PosImm, PatFrag  SizeImm> : InstSE_BEXTI <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "bexti	$rd, $rs1, $shamt", [], NoItinerary, InstFormatR, opstr>{
	let  Constraints="";
}
class StdMMR6Rel_BEXTI;
class ISA_MIPS32R2_BEXTI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_BEXTI;
class EXT_FM_BEXTI<bits<6>  funct> : StdArch_BEXTI ;
def BEXTI : MMRel_BEXTI , StdMMR6Rel_BEXTI , InsBase_BEXTI <"ins", ?, ?, ?, ?, ?>, EXT_FM_BEXTI <4>, ISA_MIPS32R2_BEXTI , BEXTI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs];
}
class PredicateControl_BEXTW;
class MipsInst_BEXTW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BEXTW {
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
class InstSE_BEXTW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BEXTW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_INS_BEXTW : InstrItinClass ;
class StdArch_BEXTW{
	string  Arch="";
}
class ISA_MIPS64R2_BEXTW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class InsBase_BEXTW<string  opstr, RegisterOperand  RO, Operand  PosOpnd, Operand  SizeOpnd, PatFrag  PosImm, PatFrag  SizeImm> : InstSE_BEXTW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bextw	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>{
	let  Constraints="";
}
class EXT_FM_BEXTW<bits<6>  funct> : StdArch_BEXTW ;
def BEXTW : InsBase_BEXTW <"dinsu", ?, ?, ?, ?, ?>, EXT_FM_BEXTW <6>, ISA_MIPS64R2_BEXTW , BEXTW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs, IsRV64];
}
class PredicateControl_BFP;
class MipsInst_BFP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BFP {
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
class MMArch_BFP{
	string  Arch="";
}
def II_LWP_BFP : InstrItinClass ;
class InstSE_BFP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BFP <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LWM_FM_MM_BFP<bits<4>  funct> : MMArch_BFP ;
class ISA_MICROMIPS_BFP{
	list<Predicate>  EncodingPredicates=[];
}
class LoadPairMM_BFP<string  opstr, ComplexPattern  Addr=addr> : InstSE_BFP <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bfp	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayLoad=0;
	let  AsmMatchConverter="";
}
def BFP : LoadPairMM_BFP <"lwp">, LWM_FM_MM_BFP <0x1>, ISA_MICROMIPS_BFP , BFP_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbf];
}
class PredicateControl_BFPW;
class MipsInst_BFPW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BFPW {
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
class InstSE_BFPW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BFPW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_BFPW{
	string  Arch="";
}
class MFC3OP_BFPW<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_BFPW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bfpw	$rd, $rs1, $rs2", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
class ISA_MIPS3_BFPW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_BFPW<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_BFPW ;
def II_DMFC2_BFPW : InstrItinClass ;
class GPR_64_BFPW{
	list<Predicate>  GPRPredicates=[];
}
def BFPW : MFC3OP_BFPW <"", ?, ?, NoItinerary>, MFC3OP_FM_BFPW <0x12, 1, 0>, ISA_MIPS3_BFPW , GPR_64_BFPW , BFPW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbf, IsRV64];
}
class PredicateControl_BINV;
class MipsInst_BINV<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BINV {
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
class InstSE_BINV<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BINV <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_BINV{
	string  Arch="";
}
class ISA_MIPS1_NOT_32R6_64R6_BINV{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_BINV;
class Div_BINV<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_BINV <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "binv	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  Defs=DefRegs;
}
class MULT_FM_BINV<bits<6>  op, bits<6>  funct> : StdArch_BINV ;
def II_DIVU_BINV : InstrItinClass ;
def BINV : MMRel_BINV , Div_BINV <"divu", NoItinerary, ?, []>, MULT_FM_BINV <0, 0x1b>, ISA_MIPS1_NOT_32R6_64R6_BINV , BINV_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs];
}
class PredicateControl_BINVI;
class MipsInst_BINVI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BINVI {
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
class HARDFLOAT_BINVI{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_BINVI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BINVI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_BINVI{
	bit  hasSideEffects=0;
}
class StdArch_BINVI{
	string  Arch="";
}
class ABSS_FT_BINVI<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_BINVI <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "binvi	$rd, $rs1, $shamt", [], Itin, InstFormatR, opstr>, HARDFLOAT_BINVI , NeverHasSideEffects_BINVI ;
class StdMMR6Rel_BINVI;
def II_CEIL_BINVI : InstrItinClass ;
class MMRel_BINVI;
class ISA_MIPS2_BINVI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_BINVI<bits<6>  funct, bits<5>  fmt> : StdArch_BINVI ;
def BINVI : MMRel_BINVI , StdMMR6Rel_BINVI , ABSS_FT_BINVI <"ceil.w.s", ?, ?, NoItinerary>, ABSS_FM_BINVI <0xe, 16>, ISA_MIPS2_BINVI , BINVI_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs];
}
class PredicateControl_BINVIW;
class MipsInst_BINVIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BINVIW {
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
class HARDFLOAT_BINVIW{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_BINVIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BINVIW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_BINVIW{
	bit  hasSideEffects=0;
}
class StdArch_BINVIW{
	string  Arch="";
}
class ABSS_FT_BINVIW<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_BINVIW <(outs GPR:$rd), (ins GPR:$rs1, uimm5:$shamt), "binviw	$rd, $rs1, $shamt", [], Itin, InstFormatR, opstr>, HARDFLOAT_BINVIW , NeverHasSideEffects_BINVIW ;
def II_CVT_BINVIW : InstrItinClass ;
class MMRel_BINVIW;
class INSN_MIPS3_32R2_BINVIW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FM_BINVIW<bits<6>  funct, bits<5>  fmt> : StdArch_BINVIW ;
def BINVIW : MMRel_BINVIW , ABSS_FT_BINVIW <"cvt.l.d", ?, ?, NoItinerary>, ABSS_FM_BINVIW <0x25, 17>, INSN_MIPS3_32R2_BINVIW , BINVIW_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs, IsRV64];
}
class PredicateControl_BINVW;
class MipsInst_BINVW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BINVW {
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
class HARDFLOAT_BINVW{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_BINVW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BINVW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_BINVW{
	bit  hasSideEffects=0;
}
class StdArch_BINVW{
	string  Arch="";
}
class INSN_MIPS3_32_BINVW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ABSS_FT_BINVW<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_BINVW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "binvw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>, HARDFLOAT_BINVW , NeverHasSideEffects_BINVW ;
def II_FLOOR_BINVW : InstrItinClass ;
class FGR_64_BINVW{
	list<Predicate>  FGRPredicates=[];
}
class ABSS_FM_BINVW<bits<6>  funct, bits<5>  fmt> : StdArch_BINVW ;
def BINVW : ABSS_FT_BINVW <"floor.l.d", ?, ?, NoItinerary>, ABSS_FM_BINVW <0xb, 17>, INSN_MIPS3_32_BINVW , FGR_64_BINVW , BINVW_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs, IsRV64];
}
class PredicateControl_BMATFLIP;
class MipsInst_BMATFLIP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BMATFLIP {
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
class InstSE_BMATFLIP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BMATFLIP <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_BMATFLIP{
	string  Arch="";
}
class MFC3OP_BMATFLIP<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_BMATFLIP <(outs GPR:$rd), (ins GPR:$rs1), "bmatflip	$rd, $rs1", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
class ISA_MIPS3_BMATFLIP{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_BMATFLIP<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_BMATFLIP ;
def II_DMFC2_BMATFLIP : InstrItinClass ;
class GPR_64_BMATFLIP{
	list<Predicate>  GPRPredicates=[];
}
def BMATFLIP : MFC3OP_BMATFLIP <"", ?, ?, NoItinerary>, MFC3OP_FM_BMATFLIP <0x12, 1, 0>, ISA_MIPS3_BMATFLIP , GPR_64_BMATFLIP , BMATFLIP_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbm, IsRV64];
}
class PredicateControl_BMATOR;
class MipsInst_BMATOR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BMATOR {
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
class InstSE_BMATOR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BMATOR <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_BMATOR{
	string  Arch="";
}
class MFC3OP_BMATOR<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_BMATOR <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bmator	$rd, $rs1, $rs2", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
class ISA_MIPS3_BMATOR{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_BMATOR<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_BMATOR ;
def II_DMFC2_BMATOR : InstrItinClass ;
class GPR_64_BMATOR{
	list<Predicate>  GPRPredicates=[];
}
def BMATOR : MFC3OP_BMATOR <"", ?, ?, NoItinerary>, MFC3OP_FM_BMATOR <0x12, 1, 0>, ISA_MIPS3_BMATOR , GPR_64_BMATOR , BMATOR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbm, IsRV64];
}
class PredicateControl_BMATXOR;
class MipsInst_BMATXOR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BMATXOR {
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
class InstSE_BMATXOR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BMATXOR <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_BMATXOR{
	string  Arch="";
}
class MFC3OP_BMATXOR<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_BMATXOR <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bmatxor	$rd, $rs1, $rs2", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
class ISA_MIPS3_BMATXOR{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_BMATXOR<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_BMATXOR ;
def II_DMFC2_BMATXOR : InstrItinClass ;
class GPR_64_BMATXOR{
	list<Predicate>  GPRPredicates=[];
}
def BMATXOR : MFC3OP_BMATXOR <"", ?, ?, NoItinerary>, MFC3OP_FM_BMATXOR <0x12, 1, 0>, ISA_MIPS3_BMATXOR , GPR_64_BMATXOR , BMATXOR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbm, IsRV64];
}
class PredicateControl_BSET;
class MipsInst_BSET<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BSET {
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
class StdArch_BSET{
	string  Arch="";
}
class InstSE_BSET<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BSET <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS1_BSET{
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_BSET<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_BSET ;
class MFC3OP_BSET<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_BSET <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bset	$rd, $rs1, $rs2", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
def II_MFC2_BSET : InstrItinClass ;
def BSET : MFC3OP_BSET <"", ?, ?, NoItinerary>, MFC3OP_FM_BSET <0x12, 0, 0>, ISA_MIPS1_BSET , BSET_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs];
}
class PredicateControl_BSETI;
class MipsInst_BSETI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BSETI {
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
class StdArch_BSETI{
	string  Arch="";
}
class InstSE_BSETI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BSETI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_LWR_BSETI : InstrItinClass ;
class ISA_MIPS1_NOT_32R6_64R6_BSETI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_BSETI<bits<6>  op> : StdArch_BSETI ;
class LoadLeftRight_BSETI<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_BSETI <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "bseti	$rd, $rs1, $shamt", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	string  Constraints="";
	let  BaseOpcode=opstr;
}
class MMRel_BSETI;
def BSETI : MMRel_BSETI , LoadLeftRight_BSETI <"", ?, ?, NoItinerary>, LW_FM_BSETI <0x26>, ISA_MIPS1_NOT_32R6_64R6_BSETI , BSETI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs];
}
class PredicateControl_BSETIW;
class MipsInst_BSETIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BSETIW {
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
class InstSE_BSETIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BSETIW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_BSETIW{
	string  Arch="";
}
class MFC3OP_BSETIW<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_BSETIW <(outs GPR:$rd), (ins GPR:$rs1, uimm5:$shamt), "bsetiw	$rd, $rs1, $shamt", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
class ISA_MIPS3_BSETIW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_BSETIW<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_BSETIW ;
def II_DMFC2_BSETIW : InstrItinClass ;
class GPR_64_BSETIW{
	list<Predicate>  GPRPredicates=[];
}
def BSETIW : MFC3OP_BSETIW <"", ?, ?, NoItinerary>, MFC3OP_FM_BSETIW <0x12, 1, 0>, ISA_MIPS3_BSETIW , GPR_64_BSETIW , BSETIW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs, IsRV64];
}
class PredicateControl_BSETW;
class MipsInst_BSETW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BSETW {
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
class InstSE_BSETW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BSETW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_BSETW{
	string  Arch="";
}
class MFC3OP_BSETW<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_BSETW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bsetw	$rd, $rs1, $rs2", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
class ISA_MIPS3_BSETW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_BSETW<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_BSETW ;
def II_DMFC2_BSETW : InstrItinClass ;
class GPR_64_BSETW{
	list<Predicate>  GPRPredicates=[];
}
def BSETW : MFC3OP_BSETW <"", ?, ?, NoItinerary>, MFC3OP_FM_BSETW <0x12, 1, 0>, ISA_MIPS3_BSETW , GPR_64_BSETW , BSETW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbs, IsRV64];
}
class PredicateControl_CLMUL;
class MipsInst_CLMUL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CLMUL {
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
class InstSE_CLMUL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CLMUL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_CLMUL{
	string  Arch="";
}
class ISA_MIPS64_NOT_64R6_CLMUL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class CountLeading0_CLMUL<string  opstr, RegisterOperand  RO, InstrItinClass  itin=NoItinerary> : InstSE_CLMUL <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "clmul	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>;
def II_DCLZ_CLMUL : InstrItinClass ;
class CLO_FM_CLMUL<bits<6>  funct> : StdArch_CLMUL ;
class GPR_64_CLMUL{
	list<Predicate>  GPRPredicates=[];
}
def CLMUL : CountLeading0_CLMUL <"dclz", ?, NoItinerary>, CLO_FM_CLMUL <0x24>, ISA_MIPS64_NOT_64R6_CLMUL , GPR_64_CLMUL , CLMUL_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbc];
}
class PredicateControl_CLMULH;
class MipsInst_CLMULH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CLMULH {
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
class InstSE_CLMULH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CLMULH <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_CLMULH{
	string  Arch="";
}
class StdMMR6Rel_CLMULH;
class ISA_MIPS32R2_CLMULH{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SEH_CLMULH : InstrItinClass ;
class MMRel_CLMULH;
class SignExtInReg_CLMULH<string  opstr, ValueType  vt, RegisterOperand  RO, InstrItinClass  itin> : InstSE_CLMULH <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "clmulh	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>;
class SEB_FM_CLMULH<bits<5>  funct, bits<6>  funct2> : StdArch_CLMULH ;
def CLMULH : MMRel_CLMULH , StdMMR6Rel_CLMULH , SignExtInReg_CLMULH <"seh", ?, ?, NoItinerary>, SEB_FM_CLMULH <0x18, 0x20>, ISA_MIPS32R2_CLMULH , CLMULH_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbc];
}
class PredicateControl_CLMULR;
class MipsInst_CLMULR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CLMULR {
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
class MipsR6Arch_CLMULR<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_CLMULR : MipsInst_CLMULR <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_MUHU_CLMULR : InstrItinClass ;
class MUL_R6_DESC_BASE_CLMULR<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin, SDPatternOperator  Op=null_frag> : MipsR6Arch_CLMULR <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPR:$rs1, GPR:$rs2);
	string  AsmString="clmulr	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class SPECIAL_3R_FM_CLMULR<bits<5>  mulop, bits<6>  funct> : MipsR6Inst_CLMULR ;
class R6MMR6Rel_CLMULR;
class MUHU_DESC_CLMULR : MUL_R6_DESC_BASE_CLMULR <"", ?, NoItinerary, null_frag>;
class ISA_MIPS32R6_CLMULR{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MUHU_ENC_CLMULR : SPECIAL_3R_FM_CLMULR <0b00011, 0b011001>;
def CLMULR : R6MMR6Rel_CLMULR , MUHU_ENC_CLMULR , MUHU_DESC_CLMULR , ISA_MIPS32R6_CLMULR , CLMULR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbc];
}
class PredicateControl_CLZ;
class MipsInst_CLZ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CLZ {
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
class InstSE_CLZ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CLZ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_CLZ{
	string  Arch="";
}
class CountLeading0_CLZ<string  opstr, RegisterOperand  RO, InstrItinClass  itin=NoItinerary> : InstSE_CLZ <(outs GPR:$rd), (ins GPR:$rs1), "clz	$rd, $rs1", [], itin, InstFormatR, opstr>;
def II_CLZ_CLZ : InstrItinClass ;
class MMRel_CLZ;
class CLO_FM_CLZ<bits<6>  funct> : StdArch_CLZ ;
class ISA_MIPS32_NOT_32R6_64R6_CLZ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def CLZ : MMRel_CLZ , CountLeading0_CLZ <"clz", ?, NoItinerary>, CLO_FM_CLZ <0x20>, ISA_MIPS32_NOT_32R6_64R6_CLZ , CLZ_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb];
}
class PredicateControl_CLZW;
class MipsInst_CLZW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CLZW {
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
def II_LL_CLZW : InstrItinClass ;
class InstSE_CLZW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CLZW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_CLZW{
	string  Arch="";
}
class LLBase_CLZW<string  opstr, RegisterOperand  RO, DAGOperand  MO=i1imm> : InstSE_CLZW <(outs GPR:$rd), (ins GPR:$rs1), "clzw	$rd, $rs1", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayLoad=0;
}
class ISA_MIPS3_NOT_32R6_64R6_CLZW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_CLZW<bits<6>  op> : StdArch_CLZW ;
def CLZW : LLBase_CLZW <"lld", ?, i1imm>, LW_FM_CLZW <0x34>, ISA_MIPS3_NOT_32R6_64R6_CLZW , CLZW_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb, IsRV64];
}
class PredicateControl_CMIX;
class MipsInst_CMIX<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CMIX {
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
class HARDFLOAT_CMIX{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_CMIX<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CMIX <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MMArch_CMIX{
	string  Arch="";
}
def II_MOVF_CMIX : InstrItinClass ;
class CMov_F_I_FT_CMIX<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_CMIX <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2, GPR:$rs3), "cmix	$rd, $rs2, $rs1, $rs3", [], Itin, InstFormatR, opstr>, HARDFLOAT_CMIX {
	let  Constraints="";
}
class CMov_F_I_FM_MM_CMIX<bits<7>  func> : MMArch_CMIX ;
class MMRel_CMIX;
class ISA_MICROMIPS32_NOT_MIPS32R6_CMIX{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def CMIX : MMRel_CMIX , CMov_F_I_FT_CMIX <"movf", ?, NoItinerary, null_frag>, CMov_F_I_FM_MM_CMIX <0x5>, ISA_MICROMIPS32_NOT_MIPS32R6_CMIX , CMIX_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbt];
}
class PredicateControl_CMOV;
class MipsInst_CMOV<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CMOV {
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
class HARDFLOAT_CMOV{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_CMOV<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CMOV <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MMArch_CMOV{
	string  Arch="";
}
def II_MOVF_CMOV : InstrItinClass ;
class CMov_F_I_FT_CMOV<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_CMOV <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2, GPR:$rs3), "cmov	$rd, $rs2, $rs1, $rs3", [], Itin, InstFormatR, opstr>, HARDFLOAT_CMOV {
	let  Constraints="";
}
class CMov_F_I_FM_MM_CMOV<bits<7>  func> : MMArch_CMOV ;
class MMRel_CMOV;
class ISA_MICROMIPS32_NOT_MIPS32R6_CMOV{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def CMOV : MMRel_CMOV , CMov_F_I_FT_CMOV <"movf", ?, NoItinerary, null_frag>, CMov_F_I_FM_MM_CMOV <0x5>, ISA_MICROMIPS32_NOT_MIPS32R6_CMOV , CMOV_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbt];
}
class PredicateControl_CPOP;
class MipsInst_CPOP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CPOP {
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
class InstSE_CPOP<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CPOP <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_CPOP{
	string  Arch="";
}
def II_CLO_CPOP : InstrItinClass ;
class CountLeading1_CPOP<string  opstr, RegisterOperand  RO, InstrItinClass  itin=NoItinerary> : InstSE_CPOP <(outs GPR:$rd), (ins GPR:$rs1), "cpop	$rd, $rs1", [], itin, InstFormatR, opstr>;
class MMRel_CPOP;
class CLO_FM_CPOP<bits<6>  funct> : StdArch_CPOP ;
class ISA_MIPS32_NOT_32R6_64R6_CPOP{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def CPOP : MMRel_CPOP , CountLeading1_CPOP <"clo", ?, NoItinerary>, CLO_FM_CPOP <0x21>, ISA_MIPS32_NOT_32R6_64R6_CPOP , CPOP_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb];
}
class PredicateControl_CPOPW;
class MipsInst_CPOPW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CPOPW {
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
def II_LL_CPOPW : InstrItinClass ;
class InstSE_CPOPW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CPOPW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_CPOPW{
	string  Arch="";
}
class LLBase_CPOPW<string  opstr, RegisterOperand  RO, DAGOperand  MO=i1imm> : InstSE_CPOPW <(outs GPR:$rd), (ins GPR:$rs1), "cpopw	$rd, $rs1", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayLoad=0;
}
class ISA_MIPS3_NOT_32R6_64R6_CPOPW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_CPOPW<bits<6>  op> : StdArch_CPOPW ;
def CPOPW : LLBase_CPOPW <"lld", ?, i1imm>, LW_FM_CPOPW <0x34>, ISA_MIPS3_NOT_32R6_64R6_CPOPW , CPOPW_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb, IsRV64];
}
class PredicateControl_CRC32B;
class MipsInst_CRC32B<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CRC32B {
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
class MipsR6Arch_CRC32B<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_CRC32B : MipsInst_CRC32B <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class CRC_DESC_BASE_CRC32B<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin> : MipsR6Arch_CRC32B <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPR:$rs1);
	string  AsmString="crc32.b	$rd, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
def II_CRC32B_CRC32B : InstrItinClass ;
class SPECIAL3_2R_SZ_CRC_CRC32B<bits<2>  sz, bits<3>  direction> : MipsR6Inst_CRC32B {
	string  DecoderMethod="";
}
class CRC32B_DESC_CRC32B : CRC_DESC_BASE_CRC32B <"", ?, NoItinerary>;
class R6MMR6Rel_CRC32B;
class CRC32B_ENC_CRC32B : SPECIAL3_2R_SZ_CRC_CRC32B <0, 0>;
class ISA_MIPS32R6_CRC32B{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ASE_CRC_CRC32B{
	list<Predicate>  ASEPredicate=[];
	list<Predicate>  EncodingPredicates=[];
}
def CRC32B : R6MMR6Rel_CRC32B , CRC32B_ENC_CRC32B , CRC32B_DESC_CRC32B , ISA_MIPS32R6_CRC32B , ASE_CRC_CRC32B , CRC32B_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbr];
}
class PredicateControl_CRC32CB;
class MipsInst_CRC32CB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CRC32CB {
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
class MipsR6Arch_CRC32CB<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_CRC32CB : MipsInst_CRC32CB <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class CRC_DESC_BASE_CRC32CB<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin> : MipsR6Arch_CRC32CB <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPR:$rs1);
	string  AsmString="crc32c.b	$rd, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
def II_CRC32CB_CRC32CB : InstrItinClass ;
class SPECIAL3_2R_SZ_CRC_CRC32CB<bits<2>  sz, bits<3>  direction> : MipsR6Inst_CRC32CB {
	string  DecoderMethod="";
}
class R6MMR6Rel_CRC32CB;
class CRC32CB_DESC_CRC32CB : CRC_DESC_BASE_CRC32CB <"", ?, NoItinerary>;
class CRC32CB_ENC_CRC32CB : SPECIAL3_2R_SZ_CRC_CRC32CB <0, 1>;
class ISA_MIPS32R6_CRC32CB{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ASE_CRC_CRC32CB{
	list<Predicate>  ASEPredicate=[];
	list<Predicate>  EncodingPredicates=[];
}
def CRC32CB : R6MMR6Rel_CRC32CB , CRC32CB_ENC_CRC32CB , CRC32CB_DESC_CRC32CB , ISA_MIPS32R6_CRC32CB , ASE_CRC_CRC32CB , CRC32CB_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbr];
}
class PredicateControl_CRC32CD;
class MipsInst_CRC32CD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CRC32CD {
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
def II_SC_CRC32CD : InstrItinClass ;
class InstSE_CRC32CD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CRC32CD <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_CRC32CD{
	string  Arch="";
}
class ISA_MIPS3_NOT_32R6_64R6_CRC32CD{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SCBase_CRC32CD<string  opstr, RegisterOperand  RO> : InstSE_CRC32CD <(outs GPR:$rd), (ins GPR:$rs1), "crc32c.d	$rd, $rs1", [], NoItinerary, InstFormatR>{
	let  DecoderMethod="";
	let  mayStore=0;
	let  Constraints="";
}
class LW_FM_CRC32CD<bits<6>  op> : StdArch_CRC32CD ;
def CRC32CD : SCBase_CRC32CD <"scd", ?>, LW_FM_CRC32CD <0x3c>, ISA_MIPS3_NOT_32R6_64R6_CRC32CD , CRC32CD_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtZbr, IsRV64];
}
class PredicateControl_CRC32CH;
class MipsInst_CRC32CH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CRC32CH {
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
class MipsR6Inst_CRC32CH : MipsInst_CRC32CH <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class MipsR6Arch_CRC32CH<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SPECIAL3_2R_SZ_CRC_CRC32CH<bits<2>  sz, bits<3>  direction> : MipsR6Inst_CRC32CH {
	string  DecoderMethod="";
}
class CRC_DESC_BASE_CRC32CH<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin> : MipsR6Arch_CRC32CH <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPR:$rs1);
	string  AsmString="crc32c.h	$rd, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
def II_CRC32CH_CRC32CH : InstrItinClass ;
class R6MMR6Rel_CRC32CH;
class CRC32CH_ENC_CRC32CH : SPECIAL3_2R_SZ_CRC_CRC32CH <1, 1>;
class ISA_MIPS32R6_CRC32CH{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ASE_CRC_CRC32CH{
	list<Predicate>  ASEPredicate=[];
	list<Predicate>  EncodingPredicates=[];
}
class CRC32CH_DESC_CRC32CH : CRC_DESC_BASE_CRC32CH <"", ?, NoItinerary>;
def CRC32CH : R6MMR6Rel_CRC32CH , CRC32CH_ENC_CRC32CH , CRC32CH_DESC_CRC32CH , ISA_MIPS32R6_CRC32CH , ASE_CRC_CRC32CH , CRC32CH_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbr];
}
class PredicateControl_CRC32CW;
class MipsInst_CRC32CW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CRC32CW {
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
class MipsR6Inst_CRC32CW : MipsInst_CRC32CW <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class MipsR6Arch_CRC32CW<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SPECIAL3_2R_SZ_CRC_CRC32CW<bits<2>  sz, bits<3>  direction> : MipsR6Inst_CRC32CW {
	string  DecoderMethod="";
}
def II_CRC32CW_CRC32CW : InstrItinClass ;
class CRC_DESC_BASE_CRC32CW<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin> : MipsR6Arch_CRC32CW <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPR:$rs1);
	string  AsmString="crc32c.w	$rd, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class R6MMR6Rel_CRC32CW;
class CRC32CW_ENC_CRC32CW : SPECIAL3_2R_SZ_CRC_CRC32CW <2, 1>;
class CRC32CW_DESC_CRC32CW : CRC_DESC_BASE_CRC32CW <"", ?, NoItinerary>;
class ISA_MIPS32R6_CRC32CW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ASE_CRC_CRC32CW{
	list<Predicate>  ASEPredicate=[];
	list<Predicate>  EncodingPredicates=[];
}
def CRC32CW : R6MMR6Rel_CRC32CW , CRC32CW_ENC_CRC32CW , CRC32CW_DESC_CRC32CW , ISA_MIPS32R6_CRC32CW , ASE_CRC_CRC32CW , CRC32CW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbr];
}
class PredicateControl_CRC32H;
class MipsInst_CRC32H<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CRC32H {
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
class MipsR6Inst_CRC32H : MipsInst_CRC32H <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class MipsR6Arch_CRC32H<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SPECIAL3_2R_SZ_CRC_CRC32H<bits<2>  sz, bits<3>  direction> : MipsR6Inst_CRC32H {
	string  DecoderMethod="";
}
def II_CRC32H_CRC32H : InstrItinClass ;
class CRC_DESC_BASE_CRC32H<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin> : MipsR6Arch_CRC32H <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPR:$rs1);
	string  AsmString="crc32.h	$rd, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class CRC32H_ENC_CRC32H : SPECIAL3_2R_SZ_CRC_CRC32H <1, 0>;
class CRC32H_DESC_CRC32H : CRC_DESC_BASE_CRC32H <"", ?, NoItinerary>;
class R6MMR6Rel_CRC32H;
class ISA_MIPS32R6_CRC32H{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ASE_CRC_CRC32H{
	list<Predicate>  ASEPredicate=[];
	list<Predicate>  EncodingPredicates=[];
}
def CRC32H : R6MMR6Rel_CRC32H , CRC32H_ENC_CRC32H , CRC32H_DESC_CRC32H , ISA_MIPS32R6_CRC32H , ASE_CRC_CRC32H , CRC32H_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbr];
}
class PredicateControl_CRC32W;
class MipsInst_CRC32W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CRC32W {
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
class MipsR6Arch_CRC32W<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_CRC32W : MipsInst_CRC32W <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class CRC_DESC_BASE_CRC32W<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin> : MipsR6Arch_CRC32W <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPR:$rs1);
	string  AsmString="crc32.w	$rd, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
def II_CRC32W_CRC32W : InstrItinClass ;
class SPECIAL3_2R_SZ_CRC_CRC32W<bits<2>  sz, bits<3>  direction> : MipsR6Inst_CRC32W {
	string  DecoderMethod="";
}
class CRC32W_DESC_CRC32W : CRC_DESC_BASE_CRC32W <"", ?, NoItinerary>;
class R6MMR6Rel_CRC32W;
class CRC32W_ENC_CRC32W : SPECIAL3_2R_SZ_CRC_CRC32W <2, 0>;
class ISA_MIPS32R6_CRC32W{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ASE_CRC_CRC32W{
	list<Predicate>  ASEPredicate=[];
	list<Predicate>  EncodingPredicates=[];
}
def CRC32W : R6MMR6Rel_CRC32W , CRC32W_ENC_CRC32W , CRC32W_DESC_CRC32W , ISA_MIPS32R6_CRC32W , ASE_CRC_CRC32W , CRC32W_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbr];
}
class PredicateControl_CTZ;
class MipsInst_CTZ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CTZ {
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
class InstSE_CTZ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CTZ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_CTZ{
	string  Arch="";
}
def II_CLO_CTZ : InstrItinClass ;
class CountLeading1_CTZ<string  opstr, RegisterOperand  RO, InstrItinClass  itin=NoItinerary> : InstSE_CTZ <(outs GPR:$rd), (ins GPR:$rs1), "ctz	$rd, $rs1", [], itin, InstFormatR, opstr>;
class MMRel_CTZ;
class CLO_FM_CTZ<bits<6>  funct> : StdArch_CTZ ;
class ISA_MIPS32_NOT_32R6_64R6_CTZ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def CTZ : MMRel_CTZ , CountLeading1_CTZ <"clo", ?, NoItinerary>, CLO_FM_CTZ <0x21>, ISA_MIPS32_NOT_32R6_64R6_CTZ , CTZ_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb];
}
class PredicateControl_CTZW;
class MipsInst_CTZW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_CTZW {
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
class InstSE_CTZW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_CTZW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_CTZW{
	string  Arch="";
}
def II_CLO_CTZW : InstrItinClass ;
class CountLeading1_CTZW<string  opstr, RegisterOperand  RO, InstrItinClass  itin=NoItinerary> : InstSE_CTZW <(outs GPR:$rd), (ins GPR:$rs1), "ctzw	$rd, $rs1", [], itin, InstFormatR, opstr>;
class MMRel_CTZW;
class CLO_FM_CTZW<bits<6>  funct> : StdArch_CTZW ;
class ISA_MIPS32_NOT_32R6_64R6_CTZW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def CTZW : MMRel_CTZW , CountLeading1_CTZW <"clo", ?, NoItinerary>, CLO_FM_CTZW <0x21>, ISA_MIPS32_NOT_32R6_64R6_CTZW , CTZW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb, IsRV64];
}
class PredicateControl_FSL;
class MipsInst_FSL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSL {
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
class StdArch_FSL{
	string  Arch="";
}
class InstSE_FSL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_LWR_FSL : InstrItinClass ;
class ISA_MIPS1_NOT_32R6_64R6_FSL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_FSL<bits<6>  op> : StdArch_FSL ;
class LoadLeftRight_FSL<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_FSL <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2, GPR:$rs3), "fsl	$rd, $rs1, $rs3, $rs2", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	string  Constraints="";
	let  BaseOpcode=opstr;
}
class MMRel_FSL;
def FSL : MMRel_FSL , LoadLeftRight_FSL <"", ?, ?, NoItinerary>, LW_FM_FSL <0x26>, ISA_MIPS1_NOT_32R6_64R6_FSL , FSL_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbt];
}
class PredicateControl_FSLW;
class MipsInst_FSLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSLW {
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
class InstSE_FSLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSLW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_INS_FSLW : InstrItinClass ;
class StdArch_FSLW{
	string  Arch="";
}
class ISA_MIPS64R2_FSLW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class InsBase_FSLW<string  opstr, RegisterOperand  RO, Operand  PosOpnd, Operand  SizeOpnd, PatFrag  PosImm, PatFrag  SizeImm> : InstSE_FSLW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2, GPR:$rs3), "fslw	$rd, $rs1, $rs3, $rs2", [], NoItinerary, InstFormatR, opstr>{
	let  Constraints="";
}
class EXT_FM_FSLW<bits<6>  funct> : StdArch_FSLW ;
def FSLW : InsBase_FSLW <"dinsu", ?, ?, ?, ?, ?>, EXT_FM_FSLW <6>, ISA_MIPS64R2_FSLW , FSLW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbt, IsRV64];
}
class PredicateControl_FSR;
class MipsInst_FSR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSR {
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
class MMArch_FSR{
	string  Arch="";
}
class InstSE_FSR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSR <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class POOL32C_STEVA_LDEVA_FM_MM_FSR<bits<4>  type, bits<3>  funct> : MMArch_FSR ;
class LoadLeftRightMM_FSR<string  opstr, SDNode  OpNode, RegisterOperand  RO, Operand  MemOpnd, InstrItinClass  Itin> : InstSE_FSR <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2, GPR:$rs3), "fsr	$rd, $rs1, $rs3, $rs2", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	string  Constraints="";
	bit  mayLoad=0;
	bit  mayStore=0;
}
class MMRel_FSR;
def II_LWRE_FSR : InstrItinClass ;
class ASE_EVA_FSR{
	list<Predicate>  ASEPredicate=[];
}
class ISA_MICROMIPS32_NOT_MIPS32R6_FSR{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def FSR : MMRel_FSR , LoadLeftRightMM_FSR <"lwre", ?, ?, ?, NoItinerary>, POOL32C_STEVA_LDEVA_FM_MM_FSR <0x6, 0x3>, ISA_MICROMIPS32_NOT_MIPS32R6_FSR , ASE_EVA_FSR , FSR_AUX {
	  	let hasSideEffects = 0;
	let Predicates = [HasStdExtZbt];
}
class PredicateControl_FSRI;
class MipsInst_FSRI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSRI {
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
class StdArch_FSRI{
	string  Arch="";
}
class InstSE_FSRI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSRI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_LWR_FSRI : InstrItinClass ;
class ISA_MIPS1_NOT_32R6_64R6_FSRI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_FSRI<bits<6>  op> : StdArch_FSRI ;
class LoadLeftRight_FSRI<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_FSRI <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs3, uimmlog2xlen:$shamt), "fsri	$rd, $rs1, $rs3, $shamt", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	string  Constraints="";
	let  BaseOpcode=opstr;
}
class MMRel_FSRI;
def FSRI : MMRel_FSRI , LoadLeftRight_FSRI <"", ?, ?, NoItinerary>, LW_FM_FSRI <0x26>, ISA_MIPS1_NOT_32R6_64R6_FSRI , FSRI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbt];
}
class PredicateControl_FSRIW;
class MipsInst_FSRIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSRIW {
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
def II_LL_FSRIW : InstrItinClass ;
class InstSE_FSRIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSRIW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_FSRIW{
	string  Arch="";
}
class LLBase_FSRIW<string  opstr, RegisterOperand  RO, DAGOperand  MO=i1imm> : InstSE_FSRIW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs3, uimm5:$shamt), "fsriw	$rd, $rs1, $rs3, $shamt", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayLoad=0;
}
class ISA_MIPS3_NOT_32R6_64R6_FSRIW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_FSRIW<bits<6>  op> : StdArch_FSRIW ;
def FSRIW : LLBase_FSRIW <"lld", ?, i1imm>, LW_FM_FSRIW <0x34>, ISA_MIPS3_NOT_32R6_64R6_FSRIW , FSRIW_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbt, IsRV64];
}
class PredicateControl_FSRW;
class MipsInst_FSRW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_FSRW {
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
class StdArch_FSRW{
	string  Arch="";
}
class InstSE_FSRW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_FSRW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADDI_FM_FSRW<bits<6>  op> : StdArch_FSRW ;
class ArithLogicI_FSRW<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_FSRW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2, GPR:$rs3), "fsrw	$rd, $rs1, $rs3, $rs2", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
class ISA_MIPS3_NOT_32R6_64R6_FSRW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DADDI_FSRW : InstrItinClass ;
def FSRW : ArithLogicI_FSRW <"daddi", ?, ?, NoItinerary>, ADDI_FM_FSRW <0x18>, ISA_MIPS3_NOT_32R6_64R6_FSRW , FSRW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbt, IsRV64];
}
class PredicateControl_GORC;
class MipsInst_GORC<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_GORC {
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
class InstSE_GORC<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_GORC <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_GORC{
	string  Arch="";
}
class LoadMemory_GORC<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_GORC <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "gorc	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=0;
}
class ISA_MIPS3_GORC{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LWU_GORC : InstrItinClass ;
class LW_FM_GORC<bits<6>  op> : StdArch_GORC ;
class MMRel_GORC;
class Load_GORC<string  opstr, DAGOperand  RO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : LoadMemory_GORC <opstr, RO, i1imm, OpNode, Itin, Addr>;
def GORC : MMRel_GORC , Load_GORC <"", i1imm, null_frag, NoItinerary>, LW_FM_GORC <0x27>, ISA_MIPS3_GORC , GORC_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_GORCI;
class MipsInst_GORCI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_GORCI {
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
class InstSE_GORCI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_GORCI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_GORCI{
	string  Arch="";
}
class LoadMemory_GORCI<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_GORCI <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "gorci	$rd, $rs1, $shamt", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=0;
}
class ISA_MIPS3_GORCI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LWU_GORCI : InstrItinClass ;
class LW_FM_GORCI<bits<6>  op> : StdArch_GORCI ;
class MMRel_GORCI;
class Load_GORCI<string  opstr, DAGOperand  RO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : LoadMemory_GORCI <opstr, RO, i1imm, OpNode, Itin, Addr>;
def GORCI : MMRel_GORCI , Load_GORCI <"", i1imm, null_frag, NoItinerary>, LW_FM_GORCI <0x27>, ISA_MIPS3_GORCI , GORCI_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_GREV;
class MipsInst_GREV<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_GREV {
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
class MMArch_GREV{
	string  Arch="";
}
def II_LWP_GREV : InstrItinClass ;
class InstSE_GREV<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_GREV <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LWM_FM_MM_GREV<bits<4>  funct> : MMArch_GREV ;
class ISA_MICROMIPS_GREV{
	list<Predicate>  EncodingPredicates=[];
}
class LoadPairMM_GREV<string  opstr, ComplexPattern  Addr=addr> : InstSE_GREV <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "grev	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayLoad=0;
	let  AsmMatchConverter="";
}
def GREV : LoadPairMM_GREV <"lwp">, LWM_FM_MM_GREV <0x1>, ISA_MICROMIPS_GREV , GREV_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_GREVI;
class MipsInst_GREVI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_GREVI {
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
class StdArch_GREVI{
	string  Arch="";
}
class InstSE_GREVI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_GREVI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS1_GREVI{
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_GREVI<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_GREVI ;
class MFC3OP_GREVI<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_GREVI <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "grevi	$rd, $rs1, $shamt", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
def II_MFC2_GREVI : InstrItinClass ;
def GREVI : MFC3OP_GREVI <"", ?, ?, NoItinerary>, MFC3OP_FM_GREVI <0x12, 0, 0>, ISA_MIPS1_GREVI , GREVI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_GREVIW;
class MipsInst_GREVIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_GREVIW {
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
class InstSE_GREVIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_GREVIW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_GREVIW{
	string  Arch="";
}
class MFC3OP_GREVIW<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_GREVIW <(outs GPR:$rd), (ins GPR:$rs1, uimm5:$shamt), "greviw	$rd, $rs1, $shamt", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
class ISA_MIPS3_GREVIW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_GREVIW<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_GREVIW ;
def II_DMFC2_GREVIW : InstrItinClass ;
class GPR_64_GREVIW{
	list<Predicate>  GPRPredicates=[];
}
def GREVIW : MFC3OP_GREVIW <"", ?, ?, NoItinerary>, MFC3OP_FM_GREVIW <0x12, 1, 0>, ISA_MIPS3_GREVIW , GPR_64_GREVIW , GREVIW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp, IsRV64];
}
class PredicateControl_GREVW;
class MipsInst_GREVW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_GREVW {
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
class InstSE_GREVW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_GREVW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_GREVW{
	string  Arch="";
}
class MFC3OP_GREVW<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_GREVW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "grevw	$rd, $rs1, $rs2", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
class ISA_MIPS3_GREVW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_GREVW<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_GREVW ;
def II_DMFC2_GREVW : InstrItinClass ;
class GPR_64_GREVW{
	list<Predicate>  GPRPredicates=[];
}
def GREVW : MFC3OP_GREVW <"", ?, ?, NoItinerary>, MFC3OP_FM_GREVW <0x12, 1, 0>, ISA_MIPS3_GREVW , GPR_64_GREVW , GREVW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp, IsRV64];
}
class PredicateControl_MAX;
class MipsInst_MAX<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_MAX {
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
class StdArch_MAX{
	string  Arch="";
}
class InstSE_MAX<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_MAX <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_MAX<bits<6>  op, bits<6>  funct> : StdArch_MAX ;
class StdMMR6Rel_MAX;
def II_ADDU_MAX : InstrItinClass ;
class ISA_MIPS1_MAX{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_MAX;
class ArithLogicR_MAX<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_MAX <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "max	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def MAX : MMRel_MAX , StdMMR6Rel_MAX , ArithLogicR_MAX <"addu", ?, false, NoItinerary, null_frag>, ADD_FM_MAX <0, 0x21>, ISA_MIPS1_MAX , MAX_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb];
}
class PredicateControl_MAXU;
class MipsInst_MAXU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_MAXU {
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
class InstSE_MAXU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_MAXU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_MAXU{
	string  Arch="";
}
class StdMMR6Rel_MAXU;
class ISA_MIPS32R2_MAXU{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SEH_MAXU : InstrItinClass ;
class MMRel_MAXU;
class SignExtInReg_MAXU<string  opstr, ValueType  vt, RegisterOperand  RO, InstrItinClass  itin> : InstSE_MAXU <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "maxu	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>;
class SEB_FM_MAXU<bits<5>  funct, bits<6>  funct2> : StdArch_MAXU ;
def MAXU : MMRel_MAXU , StdMMR6Rel_MAXU , SignExtInReg_MAXU <"seh", ?, ?, NoItinerary>, SEB_FM_MAXU <0x18, 0x20>, ISA_MIPS32R2_MAXU , MAXU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb];
}
class PredicateControl_MIN;
class MipsInst_MIN<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_MIN {
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
class InstSE_MIN<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_MIN <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_SLTI_SLTIU_MIN : InstrItinClass ;
class StdArch_MIN{
	string  Arch="";
}
class ISA_MIPS1_MIN{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_MIN;
class SetCC_I_MIN<string  opstr, PatFrag  cond_op, Operand  Od, PatLeaf  imm_type, RegisterOperand  RO> : InstSE_MIN <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "min	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>;
class SLTI_FM_MIN<bits<6>  op> : StdArch_MIN ;
def MIN : MMRel_MIN , SetCC_I_MIN <"sltiu", ?, ?, ?, ?>, SLTI_FM_MIN <0xb>, ISA_MIPS1_MIN , MIN_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb];
}
class PredicateControl_MINU;
class MipsInst_MINU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_MINU {
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
class StdArch_MINU{
	string  Arch="";
}
class InstSE_MINU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_MINU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_MINU;
class ADDI_FM_MINU<bits<6>  op> : StdArch_MINU ;
class ISA_MIPS1_MINU{
	list<Predicate>  EncodingPredicates=[];
}
def II_ADDIU_MINU : InstrItinClass ;
class MMRel_MINU;
class IsAsCheapAsAMove_MINU{
	bit  isAsCheapAsAMove=false;
}
class ArithLogicI_MINU<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_MINU <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "minu	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def MINU : MMRel_MINU , StdMMR6Rel_MINU , ArithLogicI_MINU <"addiu", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_MINU <0x9>, IsAsCheapAsAMove_MINU , ISA_MIPS1_MINU , MINU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb];
}
class PredicateControl_ORCB;
class MipsInst_ORCB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ORCB {
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
class InstSE_ORCB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ORCB <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_ORCB{
	string  Arch="";
}
class LoadMemory_ORCB<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_ORCB <(outs GPR:$rd), (ins GPR:$rs1), "orc.b	$rd, $rs1", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=0;
}
class LW_FM_ORCB<bits<6>  op> : StdArch_ORCB ;
class ISA_MIPS1_ORCB{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_ORCB;
def II_LB_ORCB : InstrItinClass ;
def ORCB : LoadMemory_ORCB <"", i1imm, i1imm, null_frag, NoItinerary>, MMRel_ORCB , LW_FM_ORCB <0x20>, ISA_MIPS1_ORCB , ORCB_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp];
}
class PredicateControl_ORN;
class MipsInst_ORN<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ORN {
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
class StdArch_ORN{
	string  Arch="";
}
def II_NOR_ORN : InstrItinClass ;
class InstSE_ORN<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ORN <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_ORN<bits<6>  op, bits<6>  funct> : StdArch_ORN ;
class StdMMR6Rel_ORN;
class ISA_MIPS1_ORN{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_ORN;
class LogicNOR_ORN<string  opstr, RegisterOperand  RO> : InstSE_ORN <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "orn	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>{
	let  isCommutable=false;
}
def ORN : MMRel_ORN , StdMMR6Rel_ORN , LogicNOR_ORN <"nor", ?>, ADD_FM_ORN <0, 0x27>, ISA_MIPS1_ORN , ORN_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp];
}
class PredicateControl_PACKUW;
class MipsInst_PACKUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_PACKUW {
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
class HARDFLOAT_PACKUW{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_PACKUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_PACKUW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class NeverHasSideEffects_PACKUW{
	bit  hasSideEffects=0;
}
class ABSS_FT_PACKUW<string  opstr, RegisterOperand  DstRC, RegisterOperand  SrcRC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_PACKUW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "packuw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>, HARDFLOAT_PACKUW , NeverHasSideEffects_PACKUW ;
class StdMMR6Rel_PACKUW;
class FGR_64_PACKUW{
	list<Predicate>  FGRPredicates=[];
}
class StdArch_PACKUW{
	string  Arch="";
}
class ISA_MIPS1_PACKUW{
	list<Predicate>  EncodingPredicates=[];
}
def II_ABS_PACKUW : InstrItinClass ;
class ABSS_M_D64_PACKUW<string  opstr, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : StdMMR6Rel_PACKUW , ABSS_FT_PACKUW <opstr, ?, ?, Itin, OpNode>, FGR_64_PACKUW {
	string  DecoderNamespace="";
}
class ABSS_FM_PACKUW<bits<6>  funct, bits<5>  fmt> : StdArch_PACKUW ;
def PACKUW : ABSS_M_D64_PACKUW <"abs.d", NoItinerary, null_frag>, ABSS_FM_PACKUW <0x5, 17>, ISA_MIPS1_PACKUW , PACKUW_AUX {
	  	let mayLoad = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp, IsRV64];
}
class PredicateControl_PACKW;
class MipsInst_PACKW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_PACKW {
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
class StdArch_PACKW{
	string  Arch="";
}
class InstSE_PACKW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_PACKW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_PACKW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ADDI_FM_PACKW<bits<6>  op> : StdArch_PACKW ;
class IsAsCheapAsAMove_PACKW{
	bit  isAsCheapAsAMove=false;
}
class ArithLogicI_PACKW<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_PACKW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "packw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DADDIU_PACKW : InstrItinClass ;
def PACKW : ArithLogicI_PACKW <"daddiu", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_PACKW <0x19>, IsAsCheapAsAMove_PACKW , ISA_MIPS3_PACKW , PACKW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp, IsRV64];
}
class PredicateControl_REV8_RV32;
class MipsInst_REV8_RV32<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_REV8_RV32 {
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
class MMArch_REV8_RV32{
	string  Arch="";
}
def II_LWP_REV8_RV32 : InstrItinClass ;
class InstSE_REV8_RV32<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_REV8_RV32 <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LWM_FM_MM_REV8_RV32<bits<4>  funct> : MMArch_REV8_RV32 ;
class ISA_MICROMIPS_REV8_RV32{
	list<Predicate>  EncodingPredicates=[];
}
class LoadPairMM_REV8_RV32<string  opstr, ComplexPattern  Addr=addr> : InstSE_REV8_RV32 <(outs GPR:$rd), (ins GPR:$rs1), "rev8	$rd, $rs1", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayLoad=0;
	let  AsmMatchConverter="";
}
def REV8_RV32 : LoadPairMM_REV8_RV32 <"lwp">, LWM_FM_MM_REV8_RV32 <0x1>, ISA_MICROMIPS_REV8_RV32 , REV8_RV32_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp, IsRV32];
}
class PredicateControl_REV8_RV64;
class MipsInst_REV8_RV64<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_REV8_RV64 {
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
class InstSE_REV8_RV64<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_REV8_RV64 <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_REV8_RV64{
	string  Arch="";
}
class MFC3OP_REV8_RV64<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_REV8_RV64 <(outs GPR:$rd), (ins GPR:$rs1), "rev8	$rd, $rs1", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
class ISA_MIPS3_REV8_RV64{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_REV8_RV64<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_REV8_RV64 ;
def II_DMFC2_REV8_RV64 : InstrItinClass ;
class GPR_64_REV8_RV64{
	list<Predicate>  GPRPredicates=[];
}
def REV8_RV64 : MFC3OP_REV8_RV64 <"", ?, ?, NoItinerary>, MFC3OP_FM_REV8_RV64 <0x12, 1, 0>, ISA_MIPS3_REV8_RV64 , GPR_64_REV8_RV64 , REV8_RV64_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp, IsRV64];
}
class PredicateControl_ROL;
class MipsInst_ROL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ROL {
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
class InstSE_ROL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ROL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_ROL{
	string  Arch="";
}
class shift_rotate_reg_ROL<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_ROL <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "rol	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>;
class ISA_MIPS1_ROL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_ROL;
class SRLV_FM_ROL<bits<6>  funct, bit  rotate> : StdArch_ROL ;
def II_SRAV_ROL : InstrItinClass ;
def ROL : MMRel_ROL , shift_rotate_reg_ROL <"srav", ?, NoItinerary, null_frag>, SRLV_FM_ROL <7, 0>, ISA_MIPS1_ROL , ROL_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp];
}
class PredicateControl_ROLW;
class MipsInst_ROLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ROLW {
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
class InstSE_ROLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ROLW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_ROLW{
	string  Arch="";
}
def II_DSRL_ROLW : InstrItinClass ;
class shift_rotate_imm_ROLW<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_ROLW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "rolw	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
class ISA_MIPS3_ROLW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SRA_FM_ROLW<bits<6>  funct, bit  rotate> : StdArch_ROLW ;
def ROLW : shift_rotate_imm_ROLW <"dsrl", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_ROLW <0x3a, 0>, ISA_MIPS3_ROLW , ROLW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp, IsRV64];
}
class PredicateControl_ROR;
class MipsInst_ROR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ROR {
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
class InstSE_ROR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ROR <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_ROR{
	string  Arch="";
}
class shift_rotate_reg_ROR<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_ROR <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "ror	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>;
class ISA_MIPS1_ROR{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_ROR;
class SRLV_FM_ROR<bits<6>  funct, bit  rotate> : StdArch_ROR ;
def II_SRAV_ROR : InstrItinClass ;
def ROR : MMRel_ROR , shift_rotate_reg_ROR <"srav", ?, NoItinerary, null_frag>, SRLV_FM_ROR <7, 0>, ISA_MIPS1_ROR , ROR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp];
}
class PredicateControl_RORI;
class MipsInst_RORI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_RORI {
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
class InstSE_RORI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_RORI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_RORI{
	string  Arch="";
}
class shift_rotate_reg_RORI<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_RORI <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "rori	$rd, $rs1, $shamt", [], itin, InstFormatR, opstr>;
class ISA_MIPS32R2_RORI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_ROTRV_RORI : InstrItinClass ;
class MMRel_RORI;
class SRLV_FM_RORI<bits<6>  funct, bit  rotate> : StdArch_RORI ;
def RORI : MMRel_RORI , shift_rotate_reg_RORI <"rotrv", ?, NoItinerary, null_frag>, SRLV_FM_RORI <6, 1>, ISA_MIPS32R2_RORI , RORI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp];
}
class PredicateControl_RORIW;
class MipsInst_RORIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_RORIW {
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
class InstSE_RORIW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_RORIW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_RORIW{
	string  Arch="";
}
class shift_rotate_imm_RORIW<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_RORIW <(outs GPR:$rd), (ins GPR:$rs1, uimm5:$shamt), "roriw	$rd, $rs1, $shamt", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
class ISA_MIPS3_RORIW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SRA_FM_RORIW<bits<6>  funct, bit  rotate> : StdArch_RORIW ;
def II_DSLL_RORIW : InstrItinClass ;
def RORIW : shift_rotate_imm_RORIW <"dsll", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_RORIW <0x38, 0>, ISA_MIPS3_RORIW , RORIW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp, IsRV64];
}
class PredicateControl_RORW;
class MipsInst_RORW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_RORW {
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
class InstSE_RORW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_RORW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_RORW{
	string  Arch="";
}
def II_DSRL_RORW : InstrItinClass ;
class shift_rotate_imm_RORW<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_RORW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "rorw	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
class ISA_MIPS3_RORW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SRA_FM_RORW<bits<6>  funct, bit  rotate> : StdArch_RORW ;
def RORW : shift_rotate_imm_RORW <"dsrl", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_RORW <0x3a, 0>, ISA_MIPS3_RORW , RORW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp, IsRV64];
}
class PredicateControl_SEXTH;
class MipsInst_SEXTH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SEXTH {
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
class StdArch_SEXTH{
	string  Arch="";
}
class InstSE_SEXTH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SEXTH <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_SEXTH;
class ADDI_FM_SEXTH<bits<6>  op> : StdArch_SEXTH ;
def II_XORI_SEXTH : InstrItinClass ;
class ISA_MIPS1_SEXTH{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SEXTH;
class ArithLogicI_SEXTH<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_SEXTH <(outs GPR:$rd), (ins GPR:$rs1), "sext.h	$rd, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def SEXTH : MMRel_SEXTH , StdMMR6Rel_SEXTH , ArithLogicI_SEXTH <"xori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_SEXTH <0xe>, ISA_MIPS1_SEXTH , SEXTH_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbb];
}
class PredicateControl_SH1ADD;
class MipsInst_SH1ADD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SH1ADD {
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
class InstSE_SH1ADD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SH1ADD <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SH1ADD{
	string  Arch="";
}
class shift_rotate_reg_SH1ADD<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_SH1ADD <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sh1add	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>;
class ISA_MIPS32R2_SH1ADD{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_ROTRV_SH1ADD : InstrItinClass ;
class MMRel_SH1ADD;
class SRLV_FM_SH1ADD<bits<6>  funct, bit  rotate> : StdArch_SH1ADD ;
def SH1ADD : MMRel_SH1ADD , shift_rotate_reg_SH1ADD <"rotrv", ?, NoItinerary, null_frag>, SRLV_FM_SH1ADD <6, 1>, ISA_MIPS32R2_SH1ADD , SH1ADD_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZba];
}
class PredicateControl_SH1ADDUW;
class MipsInst_SH1ADDUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SH1ADDUW {
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
class StdArch_SH1ADDUW{
	string  Arch="";
}
class InstSE_SH1ADDUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SH1ADDUW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRLV_FM_SH1ADDUW<bits<6>  funct, bit  rotate> : StdArch_SH1ADDUW ;
class shift_rotate_reg_SH1ADDUW<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_SH1ADDUW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sh1add.uw	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>;
class ISA_MIPS3_SH1ADDUW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DSRAV_SH1ADDUW : InstrItinClass ;
def SH1ADDUW : shift_rotate_reg_SH1ADDUW <"dsrav", ?, NoItinerary, null_frag>, SRLV_FM_SH1ADDUW <0x17, 0>, ISA_MIPS3_SH1ADDUW , SH1ADDUW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZba, IsRV64];
}
class PredicateControl_SH2ADD;
class MipsInst_SH2ADD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SH2ADD {
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
class StdArch_SH2ADD{
	string  Arch="";
}
class InstSE_SH2ADD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SH2ADD <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRA_FM_SH2ADD<bits<6>  funct, bit  rotate> : StdArch_SH2ADD ;
class ISA_MIPS1_SH2ADD{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SH2ADD;
class shift_rotate_imm_SH2ADD<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SH2ADD <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sh2add	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
def II_SRL_SH2ADD : InstrItinClass ;
def SH2ADD : MMRel_SH2ADD , shift_rotate_imm_SH2ADD <"srl", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_SH2ADD <2, 0>, ISA_MIPS1_SH2ADD , SH2ADD_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZba];
}
class PredicateControl_SH2ADDUW;
class MipsInst_SH2ADDUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SH2ADDUW {
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
class StdArch_SH2ADDUW{
	string  Arch="";
}
class InstSE_SH2ADDUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SH2ADDUW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRLV_FM_SH2ADDUW<bits<6>  funct, bit  rotate> : StdArch_SH2ADDUW ;
class shift_rotate_reg_SH2ADDUW<string  opstr, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag> : InstSE_SH2ADDUW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sh2add.uw	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>;
def II_DROTRV_SH2ADDUW : InstrItinClass ;
class ISA_MIPS64R2_SH2ADDUW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def SH2ADDUW : shift_rotate_reg_SH2ADDUW <"drotrv", ?, NoItinerary, null_frag>, SRLV_FM_SH2ADDUW <0x16, 1>, ISA_MIPS64R2_SH2ADDUW , SH2ADDUW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZba, IsRV64];
}
class PredicateControl_SH3ADD;
class MipsInst_SH3ADD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SH3ADD {
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
class StdArch_SH3ADD{
	string  Arch="";
}
class InstSE_SH3ADD<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SH3ADD <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class SRA_FM_SH3ADD<bits<6>  funct, bit  rotate> : StdArch_SH3ADD ;
class ISA_MIPS1_SH3ADD{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_SH3ADD;
class shift_rotate_imm_SH3ADD<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SH3ADD <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sh3add	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
def II_SRL_SH3ADD : InstrItinClass ;
def SH3ADD : MMRel_SH3ADD , shift_rotate_imm_SH3ADD <"srl", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_SH3ADD <2, 0>, ISA_MIPS1_SH3ADD , SH3ADD_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZba];
}
class PredicateControl_SH3ADDUW;
class MipsInst_SH3ADDUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SH3ADDUW {
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
class InstSE_SH3ADDUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SH3ADDUW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SH3ADDUW{
	string  Arch="";
}
def II_DSRL_SH3ADDUW : InstrItinClass ;
class shift_rotate_imm_SH3ADDUW<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SH3ADDUW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "sh3add.uw	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
class ISA_MIPS3_SH3ADDUW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SRA_FM_SH3ADDUW<bits<6>  funct, bit  rotate> : StdArch_SH3ADDUW ;
def SH3ADDUW : shift_rotate_imm_SH3ADDUW <"dsrl", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_SH3ADDUW <0x3a, 0>, ISA_MIPS3_SH3ADDUW , SH3ADDUW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZba, IsRV64];
}
class PredicateControl_SHFL;
class MipsInst_SHFL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SHFL {
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
class MMArch_SHFL{
	string  Arch="";
}
def II_LWP_SHFL : InstrItinClass ;
class InstSE_SHFL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SHFL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LWM_FM_MM_SHFL<bits<4>  funct> : MMArch_SHFL ;
class ISA_MICROMIPS_SHFL{
	list<Predicate>  EncodingPredicates=[];
}
class LoadPairMM_SHFL<string  opstr, ComplexPattern  Addr=addr> : InstSE_SHFL <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "shfl	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayLoad=0;
	let  AsmMatchConverter="";
}
def SHFL : LoadPairMM_SHFL <"lwp">, LWM_FM_MM_SHFL <0x1>, ISA_MICROMIPS_SHFL , SHFL_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_SHFLI;
class MipsInst_SHFLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SHFLI {
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
class MMArch_SHFLI{
	string  Arch="";
}
def II_LWP_SHFLI : InstrItinClass ;
class InstSE_SHFLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SHFLI <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LWM_FM_MM_SHFLI<bits<4>  funct> : MMArch_SHFLI ;
class ISA_MICROMIPS_SHFLI{
	list<Predicate>  EncodingPredicates=[];
}
class LoadPairMM_SHFLI<string  opstr, ComplexPattern  Addr=addr> : InstSE_SHFLI <(outs GPR:$rd), (ins GPR:$rs1, shfl_uimm:$shamt), "shfli	$rd, $rs1, $shamt", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayLoad=0;
	let  AsmMatchConverter="";
}
def SHFLI : LoadPairMM_SHFLI <"lwp">, LWM_FM_MM_SHFLI <0x1>, ISA_MICROMIPS_SHFLI , SHFLI_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_SHFLW;
class MipsInst_SHFLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SHFLW {
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
class StdArch_SHFLW{
	string  Arch="";
}
def II_EXT_SHFLW : InstrItinClass ;
class InstSE_SHFLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SHFLW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS64R2_SHFLW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class EXT_FM_SHFLW<bits<6>  funct> : StdArch_SHFLW ;
class ExtBase_SHFLW<string  opstr, RegisterOperand  RO, Operand  PosOpnd, Operand  SizeOpnd, PatFrag  PosImm, PatFrag  SizeImm, SDPatternOperator  Op=null_frag> : InstSE_SHFLW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "shflw	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>;
def SHFLW : ExtBase_SHFLW <"dext", ?, ?, ?, ?, ?, null_frag>, EXT_FM_SHFLW <3>, ISA_MIPS64R2_SHFLW , SHFLW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp, IsRV64];
}
class PredicateControl_SLLIUW;
class MipsInst_SLLIUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SLLIUW {
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
class InstSE_SLLIUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SLLIUW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SLLIUW{
	string  Arch="";
}
def II_DSRL_SLLIUW : InstrItinClass ;
class shift_rotate_imm_SLLIUW<string  opstr, Operand  ImmOpnd, RegisterOperand  RO, InstrItinClass  itin, SDPatternOperator  OpNode=null_frag, SDPatternOperator  PF=null_frag> : InstSE_SLLIUW <(outs GPR:$rd), (ins GPR:$rs1, uimmlog2xlen:$shamt), "slli.uw	$rd, $rs1, $shamt", [], itin, InstFormatR, opstr>{
	let  TwoOperandAliasConstraint="";
}
class ISA_MIPS3_SLLIUW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SRA_FM_SLLIUW<bits<6>  funct, bit  rotate> : StdArch_SLLIUW ;
def SLLIUW : shift_rotate_imm_SLLIUW <"dsrl", ?, ?, NoItinerary, null_frag, null_frag>, SRA_FM_SLLIUW <0x3a, 0>, ISA_MIPS3_SLLIUW , SLLIUW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZba, IsRV64];
}
class PredicateControl_UNSHFL;
class MipsInst_UNSHFL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_UNSHFL {
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
class StdArch_UNSHFL{
	string  Arch="";
}
class InstSE_UNSHFL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_UNSHFL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS1_UNSHFL{
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_UNSHFL<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_UNSHFL ;
class MFC3OP_UNSHFL<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_UNSHFL <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "unshfl	$rd, $rs1, $rs2", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
def II_MFC2_UNSHFL : InstrItinClass ;
def UNSHFL : MFC3OP_UNSHFL <"", ?, ?, NoItinerary>, MFC3OP_FM_UNSHFL <0x12, 0, 0>, ISA_MIPS1_UNSHFL , UNSHFL_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_UNSHFLI;
class MipsInst_UNSHFLI<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_UNSHFLI {
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
def II_BCCC_UNSHFLI : InstrItinClass ;
class BRANCH_DESC_BASE_UNSHFLI{
	bit  isBranch=false;
	bit  isTerminator=false;
	bit  hasDelaySlot=false;
	bit  isCTI=1;
}
class MipsR6Arch_UNSHFLI<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class DecodeDisambiguates_UNSHFLI<string  DecoderMethod_Name>{
	string  DecoderMethod="";
}
class MipsR6Inst_UNSHFLI : MipsInst_UNSHFLI <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class CMP_BC_DESC_BASE_UNSHFLI<string  instr_asm, DAGOperand  opnd, RegisterOperand  GPROpnd> : BRANCH_DESC_BASE_UNSHFLI , MipsR6Arch_UNSHFLI <instr_asm>{
	dag  InOperandList=(ins GPR:$rs1, shfl_uimm:$shamt);
	dag  OutOperandList=(outs GPR:$rd);
	string  AsmString="unshfli	$rd, $rs1, $shamt";
	list<Register>  Defs=[];
	InstrItinClass  Itinerary=NoItinerary;
	bit  hasForbiddenSlot=1;
	bit  isCTI=1;
}
class DecodeDisambiguatedBy_UNSHFLI<string  Name> : DecodeDisambiguates_UNSHFLI <Name>{
	string  DecoderNamespace="";
}
class CMP_BRANCH_2R_OFF16_FM_UNSHFLI<Type_AUX_FM  funct> : MipsR6Inst_UNSHFLI ;
class R6MMR6Rel_UNSHFLI;
class BGEC_DESC_UNSHFLI : CMP_BC_DESC_BASE_UNSHFLI <"", i1imm, ?>;
class ISA_MIPS32R6_UNSHFLI{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class BGEC_ENC_UNSHFLI : CMP_BRANCH_2R_OFF16_FM_UNSHFLI <?>, DecodeDisambiguatedBy_UNSHFLI <"BlezlGroupBranch">;
def UNSHFLI : R6MMR6Rel_UNSHFLI , BGEC_ENC_UNSHFLI , BGEC_DESC_UNSHFLI , ISA_MIPS32R6_UNSHFLI , UNSHFLI_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_UNSHFLW;
class MipsInst_UNSHFLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_UNSHFLW {
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
class InstSE_UNSHFLW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_UNSHFLW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_UNSHFLW{
	string  Arch="";
}
class MFC3OP_UNSHFLW<string  asmstr, RegisterOperand  RO, RegisterOperand  RD, InstrItinClass  itin> : InstSE_UNSHFLW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "unshflw	$rd, $rs1, $rs2", [], itin, InstFormatR>{
	let  BaseOpcode=asmstr;
}
class ISA_MIPS3_UNSHFLW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MFC3OP_FM_UNSHFLW<bits<6>  op, bits<5>  mfmt, bits<3>  guest> : StdArch_UNSHFLW ;
def II_DMFC2_UNSHFLW : InstrItinClass ;
class GPR_64_UNSHFLW{
	list<Predicate>  GPRPredicates=[];
}
def UNSHFLW : MFC3OP_UNSHFLW <"", ?, ?, NoItinerary>, MFC3OP_FM_UNSHFLW <0x12, 1, 0>, ISA_MIPS3_UNSHFLW , GPR_64_UNSHFLW , UNSHFLW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp, IsRV64];
}
class PredicateControl_XNOR;
class MipsInst_XNOR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_XNOR {
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
class StdArch_XNOR{
	string  Arch="";
}
class InstSE_XNOR<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_XNOR <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_XNOR<bits<6>  op, bits<6>  funct> : StdArch_XNOR ;
class StdMMR6Rel_XNOR;
class ISA_MIPS1_XNOR{
	list<Predicate>  EncodingPredicates=[];
}
def II_OR_XNOR : InstrItinClass ;
class MMRel_XNOR;
class ArithLogicR_XNOR<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_XNOR <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "xnor	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def XNOR : MMRel_XNOR , StdMMR6Rel_XNOR , ArithLogicR_XNOR <"or", ?, false, NoItinerary, null_frag>, ADD_FM_XNOR <0, 0x25>, ISA_MIPS1_XNOR , XNOR_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp];
}
class PredicateControl_ZEXTH_RV32;
class MipsInst_ZEXTH_RV32<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ZEXTH_RV32 {
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
class InstSE_ZEXTH_RV32<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ZEXTH_RV32 <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_INS_ZEXTH_RV32 : InstrItinClass ;
class StdArch_ZEXTH_RV32{
	string  Arch="";
}
class InsBase_ZEXTH_RV32<string  opstr, RegisterOperand  RO, Operand  PosOpnd, Operand  SizeOpnd, PatFrag  PosImm, PatFrag  SizeImm> : InstSE_ZEXTH_RV32 <(outs GPR:$rd), (ins GPR:$rs1), "zext.h	$rd, $rs1", [], NoItinerary, InstFormatR, opstr>{
	let  Constraints="";
}
class StdMMR6Rel_ZEXTH_RV32;
class ISA_MIPS32R2_ZEXTH_RV32{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_ZEXTH_RV32;
class EXT_FM_ZEXTH_RV32<bits<6>  funct> : StdArch_ZEXTH_RV32 ;
def ZEXTH_RV32 : MMRel_ZEXTH_RV32 , StdMMR6Rel_ZEXTH_RV32 , InsBase_ZEXTH_RV32 <"ins", ?, ?, ?, ?, ?>, EXT_FM_ZEXTH_RV32 <4>, ISA_MIPS32R2_ZEXTH_RV32 , ZEXTH_RV32_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp, IsRV32];
}
class PredicateControl_ZEXTH_RV64;
class MipsInst_ZEXTH_RV64<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_ZEXTH_RV64 {
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
class StdArch_ZEXTH_RV64{
	string  Arch="";
}
def II_EXT_ZEXTH_RV64 : InstrItinClass ;
class InstSE_ZEXTH_RV64<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_ZEXTH_RV64 <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS64R2_ZEXTH_RV64{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class EXT_FM_ZEXTH_RV64<bits<6>  funct> : StdArch_ZEXTH_RV64 ;
class ExtBase_ZEXTH_RV64<string  opstr, RegisterOperand  RO, Operand  PosOpnd, Operand  SizeOpnd, PatFrag  PosImm, PatFrag  SizeImm, SDPatternOperator  Op=null_frag> : InstSE_ZEXTH_RV64 <(outs GPR:$rd), (ins GPR:$rs1), "zext.h	$rd, $rs1", [], NoItinerary, InstFormatR, opstr>;
def ZEXTH_RV64 : ExtBase_ZEXTH_RV64 <"dext", ?, ?, ?, ?, ?, null_frag>, EXT_FM_ZEXTH_RV64 <3>, ISA_MIPS64R2_ZEXTH_RV64 , ZEXTH_RV64_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbbOrZbp, IsRV64];
}
class PredicateControl_BCOMPRESS;
class MipsInst_BCOMPRESS<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BCOMPRESS {
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
class StdArch_BCOMPRESS{
	string  Arch="";
}
class InstSE_BCOMPRESS<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BCOMPRESS <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_BCOMPRESS;
class ISA_MIPS1_NOT_32R6_64R6_BCOMPRESS{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_BCOMPRESS<bits<6>  op> : StdArch_BCOMPRESS ;
def II_SWC2_BCOMPRESS : InstrItinClass ;
class SW_FT2_BCOMPRESS<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_BCOMPRESS <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bcompress	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayStore=0;
}
def BCOMPRESS : StdMMR6Rel_BCOMPRESS , SW_FT2_BCOMPRESS <"swc2", ?, NoItinerary, null_frag>, LW_FM_BCOMPRESS <0x3a>, ISA_MIPS1_NOT_32R6_64R6_BCOMPRESS , BCOMPRESS_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtZbe];
}
class PredicateControl_BCOMPRESSW;
class MipsInst_BCOMPRESSW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BCOMPRESSW {
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
class StdArch_BCOMPRESSW{
	string  Arch="";
}
class InstSE_BCOMPRESSW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BCOMPRESSW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_BCOMPRESSW;
class LW_FM_BCOMPRESSW<bits<6>  op> : StdArch_BCOMPRESSW ;
class ISA_MIPS2_NOT_32R6_64R6_BCOMPRESSW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SDC2_BCOMPRESSW : InstrItinClass ;
class SW_FT2_BCOMPRESSW<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_BCOMPRESSW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bcompressw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayStore=0;
}
def BCOMPRESSW : StdMMR6Rel_BCOMPRESSW , SW_FT2_BCOMPRESSW <"sdc2", ?, NoItinerary, null_frag>, LW_FM_BCOMPRESSW <0x3e>, ISA_MIPS2_NOT_32R6_64R6_BCOMPRESSW , BCOMPRESSW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtZbe, IsRV64];
}
class PredicateControl_BDECOMPRESS;
class MipsInst_BDECOMPRESS<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BDECOMPRESS {
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
class StdArch_BDECOMPRESS{
	string  Arch="";
}
class InstSE_BDECOMPRESS<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BDECOMPRESS <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_BDECOMPRESS;
class ISA_MIPS1_NOT_32R6_64R6_BDECOMPRESS{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class LW_FM_BDECOMPRESS<bits<6>  op> : StdArch_BDECOMPRESS ;
def II_SWC2_BDECOMPRESS : InstrItinClass ;
class SW_FT2_BDECOMPRESS<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_BDECOMPRESS <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bdecompress	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayStore=0;
}
def BDECOMPRESS : StdMMR6Rel_BDECOMPRESS , SW_FT2_BDECOMPRESS <"swc2", ?, NoItinerary, null_frag>, LW_FM_BDECOMPRESS <0x3a>, ISA_MIPS1_NOT_32R6_64R6_BDECOMPRESS , BDECOMPRESS_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtZbe];
}
class PredicateControl_BDECOMPRESSW;
class MipsInst_BDECOMPRESSW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_BDECOMPRESSW {
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
class StdArch_BDECOMPRESSW{
	string  Arch="";
}
class InstSE_BDECOMPRESSW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_BDECOMPRESSW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_BDECOMPRESSW;
class LW_FM_BDECOMPRESSW<bits<6>  op> : StdArch_BDECOMPRESSW ;
class ISA_MIPS2_NOT_32R6_64R6_BDECOMPRESSW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SDC2_BDECOMPRESSW : InstrItinClass ;
class SW_FT2_BDECOMPRESSW<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, SDPatternOperator  OpNode=null_frag> : InstSE_BDECOMPRESSW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "bdecompressw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayStore=0;
}
def BDECOMPRESSW : StdMMR6Rel_BDECOMPRESSW , SW_FT2_BDECOMPRESSW <"sdc2", ?, NoItinerary, null_frag>, LW_FM_BDECOMPRESSW <0x3e>, ISA_MIPS2_NOT_32R6_64R6_BDECOMPRESSW , BDECOMPRESSW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtZbe, IsRV64];
}
class PredicateControl_PACK;
class MipsInst_PACK<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_PACK {
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
class StdArch_PACK{
	string  Arch="";
}
class InstSE_PACK<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_PACK <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS1_NOT_32R6_64R6_PACK{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ADDI_FM_PACK<bits<6>  op> : StdArch_PACK ;
class MMRel_PACK;
class ArithLogicI_PACK<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_PACK <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "pack	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_ADDI_PACK : InstrItinClass ;
def PACK : MMRel_PACK , ArithLogicI_PACK <"addi", ?, ?, NoItinerary>, ADDI_FM_PACK <0x8>, ISA_MIPS1_NOT_32R6_64R6_PACK , PACK_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_PACKH;
class MicroMipsInstBase_PACKH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_PACKH {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
def II_ADDIU_PACKH : InstrItinClass ;
class MicroMipsInst16_PACKH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_PACKH <outs, ins, asmstr, pattern, itin, f>{
	let  Size=4;
}
class ISA_MICROMIPS_PACKH{
	list<Predicate>  EncodingPredicates=[];
}
class AddImmUS5_PACKH<string  opstr, RegisterOperand  RO> : MicroMipsInst16_PACKH <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "packh	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR>{
	let  Constraints="";
}
class ADDIUS5_FM_MM16_PACKH;
def PACKH : AddImmUS5_PACKH <"addius5", ?>, ADDIUS5_FM_MM16_PACKH , ISA_MICROMIPS_PACKH , PACKH_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_PACKU;
class MipsInst_PACKU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_PACKU {
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
class MipsR6Arch_PACKU<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_PACKU : MipsInst_PACKU <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class AUI_DESC_BASE_PACKU<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin=NoItinerary> : MipsR6Arch_PACKU <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPR:$rs1, GPR:$rs2);
	string  AsmString="packu	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
def II_AUI_PACKU : InstrItinClass ;
class AUI_FM_PACKU : MipsR6Inst_PACKU ;
class R6MMR6Rel_PACKU;
class ISA_MIPS32R6_PACKU{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class AUI_DESC_PACKU : AUI_DESC_BASE_PACKU <"", ?, NoItinerary>;
class AUI_ENC_PACKU : AUI_FM_PACKU ;
def PACKU : R6MMR6Rel_PACKU , AUI_ENC_PACKU , AUI_DESC_PACKU , ISA_MIPS32R6_PACKU , PACKU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_XPERMB;
class MipsInst_XPERMB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_XPERMB {
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
class HARDFLOAT_XPERMB{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_XPERMB<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_XPERMB <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_XPERMB{
	string  Arch="";
}
class BC1XL_FT_XPERMB<string  opstr, DAGOperand  opnd, InstrItinClass  Itin> : InstSE_XPERMB <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "xperm.b	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>, HARDFLOAT_XPERMB {
	let  isBranch=false;
	let  isTerminator=false;
	let  hasDelaySlot=false;
	let  Defs=[];
	let  hasFCCRegOperand=1;
}
class BC1F_FM_XPERMB<bit  nd, bit  tf> : StdArch_XPERMB ;
class ISA_MIPS2_NOT_32R6_64R6_XPERMB{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_XPERMB;
def II_BC1TL_XPERMB : InstrItinClass ;
def XPERMB : MMRel_XPERMB , BC1XL_FT_XPERMB <"bc1tl", i1imm, NoItinerary>, BC1F_FM_XPERMB <1, 1>, ISA_MIPS2_NOT_32R6_64R6_XPERMB , XPERMB_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_XPERMH;
class MipsInst_XPERMH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_XPERMH {
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
class MipsR6Inst_XPERMH : MipsInst_XPERMH <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
class MipsR6Arch_XPERMH<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class SPECIAL_3R_FM_XPERMH<bits<5>  mulop, bits<6>  funct> : MipsR6Inst_XPERMH ;
def II_MULU_XPERMH : InstrItinClass ;
class MUL_R6_DESC_BASE_XPERMH<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin, SDPatternOperator  Op=null_frag> : MipsR6Arch_XPERMH <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPR:$rs1, GPR:$rs2);
	string  AsmString="xperm.h	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class MULU_ENC_XPERMH : SPECIAL_3R_FM_XPERMH <0b00010, 0b011001>;
class MULU_DESC_XPERMH : MUL_R6_DESC_BASE_XPERMH <"", ?, NoItinerary>;
class R6MMR6Rel_XPERMH;
class ISA_MIPS32R6_XPERMH{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def XPERMH : R6MMR6Rel_XPERMH , MULU_ENC_XPERMH , MULU_DESC_XPERMH , ISA_MIPS32R6_XPERMH , XPERMH_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_XPERMN;
class MipsInst_XPERMN<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_XPERMN {
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
class HARDFLOAT_XPERMN{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_XPERMN<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_XPERMN <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_XPERMN{
	string  Arch="";
}
class BC1XL_FT_XPERMN<string  opstr, DAGOperand  opnd, InstrItinClass  Itin> : InstSE_XPERMN <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "xperm.n	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>, HARDFLOAT_XPERMN {
	let  isBranch=false;
	let  isTerminator=false;
	let  hasDelaySlot=false;
	let  Defs=[];
	let  hasFCCRegOperand=1;
}
class BC1F_FM_XPERMN<bit  nd, bit  tf> : StdArch_XPERMN ;
class ISA_MIPS2_NOT_32R6_64R6_XPERMN{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_XPERMN;
def II_BC1TL_XPERMN : InstrItinClass ;
def XPERMN : MMRel_XPERMN , BC1XL_FT_XPERMN <"bc1tl", i1imm, NoItinerary>, BC1F_FM_XPERMN <1, 1>, ISA_MIPS2_NOT_32R6_64R6_XPERMN , XPERMN_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtZbp];
}
class PredicateControl_C_NEG;
class MicroMipsInstBase_C_NEG<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_NEG {
	let  Namespace="RISCV";
	let  DecoderNamespace="RVBC";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
def II_ADDIU_C_NEG : InstrItinClass ;
class MicroMipsInst16_C_NEG<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_NEG <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
class ADDIUR1SP_FM_MM16_C_NEG;
class AddImmUR1SP_C_NEG<string  opstr, RegisterOperand  RO> : MicroMipsInst16_C_NEG <(outs GPRC:$rs_wb), (ins GPRC:$rs), "c.neg	$rs", [], NoItinerary, InstFormatR>;
class ISA_MICROMIPS_C_NEG{
	list<Predicate>  EncodingPredicates=[];
}
def C_NEG : AddImmUR1SP_C_NEG <"addiur1sp", ?>, ADDIUR1SP_FM_MM16_C_NEG , ISA_MICROMIPS_C_NEG , C_NEG_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rs = $rs_wb";
	let Predicates = [HasStdExtZbproposedc, HasStdExtC];
}
class PredicateControl_C_NOT;
class MicroMipsInstBase_C_NOT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_NOT {
	let  Namespace="RISCV";
	let  DecoderNamespace="RVBC";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_C_NOT<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_C_NOT <outs, ins, asmstr, pattern, itin, f>{
	let  Size=2;
}
def II_AND_C_NOT : InstrItinClass ;
class ISA_MICROMIPS32_NOT_MIPS32R6_C_NOT{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class AndImmMM16_C_NOT<string  opstr, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary> : MicroMipsInst16_C_NOT <(outs GPRC:$rs_wb), (ins GPRC:$rs), "c.not	$rs", [], Itin, InstFormatR>;
class ANDI_FM_MM16_C_NOT<bits<6>  funct>;
def C_NOT : AndImmMM16_C_NOT <"andi16", ?, NoItinerary>, ANDI_FM_MM16_C_NOT <0x0b>, ISA_MICROMIPS32_NOT_MIPS32R6_C_NOT , C_NOT_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rs = $rs_wb";
	let Predicates = [HasStdExtZbproposedc, HasStdExtC];
}
class PredicateControl_C_ZEXTW;
class MipsInst_C_ZEXTW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_C_ZEXTW {
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
	let  DecoderNamespace="RVBC";
}
class StdArch_C_ZEXTW{
	string  Arch="";
}
class InstSE_C_ZEXTW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_C_ZEXTW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_C_ZEXTW;
class ADDI_FM_C_ZEXTW<bits<6>  op> : StdArch_C_ZEXTW ;
def II_XORI_C_ZEXTW : InstrItinClass ;
class ISA_MIPS1_C_ZEXTW{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_C_ZEXTW;
class ArithLogicI_C_ZEXTW<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_C_ZEXTW <(outs GPRC:$rs_wb), (ins GPRC:$rs), "c.zext.w	$rs", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def C_ZEXTW : MMRel_C_ZEXTW , StdMMR6Rel_C_ZEXTW , ArithLogicI_C_ZEXTW <"xori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_C_ZEXTW <0xe>, ISA_MIPS1_C_ZEXTW , C_ZEXTW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Constraints = "$rs = $rs_wb";
	let Predicates = [HasStdExtZbproposedc, HasStdExtZba, HasStdExtC, IsRV64];
}
