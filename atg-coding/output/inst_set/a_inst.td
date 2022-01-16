class AMOADD_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOADD_D_AUX: AMOADD_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOADD_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOADD_D_AQ_AUX: AMOADD_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOADD_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOADD_D_RL_AUX: AMOADD_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOADD_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOADD_D_AQ_RL_AUX: AMOADD_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOADD_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOADD_W_AUX: AMOADD_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOADD_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOADD_W_AQ_AUX: AMOADD_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOADD_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOADD_W_RL_AUX: AMOADD_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOADD_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOADD_W_AQ_RL_AUX: AMOADD_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOAND_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
def AMOAND_D: Instruction, AMOAND_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>{
	let Size = 4;
	let AsmString = "amoand.d	$rd, $rs2, $rs1";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins GPRMemAtomic:$rs1, GPR:$rs2);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtA, IsRV64];
}
class AMOAND_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
def AMOAND_D_AQ: Instruction, AMOAND_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>{
	let Size = 4;
	let AsmString = "amoand.d.aq	$rd, $rs2, $rs1";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins GPRMemAtomic:$rs1, GPR:$rs2);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtA, IsRV64];
}
class AMOAND_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
def AMOAND_D_RL: Instruction, AMOAND_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>{
	let Size = 4;
	let AsmString = "amoand.d.rl	$rd, $rs2, $rs1";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins GPRMemAtomic:$rs1, GPR:$rs2);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtA, IsRV64];
}
class AMOAND_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
def AMOAND_D_AQ_RL: Instruction, AMOAND_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>{
	let Size = 4;
	let AsmString = "amoand.d.aqrl	$rd, $rs2, $rs1";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins GPRMemAtomic:$rs1, GPR:$rs2);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtA, IsRV64];
}
class AMOAND_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOAND_W_AUX: AMOAND_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOAND_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOAND_W_AQ_AUX: AMOAND_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOAND_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOAND_W_RL_AUX: AMOAND_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOAND_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOAND_W_AQ_RL_AUX: AMOAND_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMAX_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAX_D_AUX: AMOMAX_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMAX_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAX_D_AQ_AUX: AMOMAX_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMAX_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAX_D_RL_AUX: AMOMAX_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMAX_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAX_D_AQ_RL_AUX: AMOMAX_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMAX_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAX_W_AUX: AMOMAX_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMAX_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAX_W_AQ_AUX: AMOMAX_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMAX_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAX_W_RL_AUX: AMOMAX_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMAX_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAX_W_AQ_RL_AUX: AMOMAX_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMAXU_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAXU_D_AUX: AMOMAXU_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMAXU_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAXU_D_AQ_AUX: AMOMAXU_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMAXU_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAXU_D_RL_AUX: AMOMAXU_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMAXU_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAXU_D_AQ_RL_AUX: AMOMAXU_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMAXU_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAXU_W_AUX: AMOMAXU_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMAXU_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAXU_W_AQ_AUX: AMOMAXU_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMAXU_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAXU_W_RL_AUX: AMOMAXU_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMAXU_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMAXU_W_AQ_RL_AUX: AMOMAXU_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMIN_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMIN_D_AUX: AMOMIN_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMIN_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMIN_D_AQ_AUX: AMOMIN_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMIN_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMIN_D_RL_AUX: AMOMIN_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMIN_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMIN_D_AQ_RL_AUX: AMOMIN_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMIN_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMIN_W_AUX: AMOMIN_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMIN_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMIN_W_AQ_AUX: AMOMIN_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMIN_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMIN_W_RL_AUX: AMOMIN_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMIN_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b10000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMIN_W_AQ_RL_AUX: AMOMIN_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMINU_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMINU_D_AUX: AMOMINU_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMINU_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMINU_D_AQ_AUX: AMOMINU_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMINU_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMINU_D_RL_AUX: AMOMINU_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMINU_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMINU_D_AQ_RL_AUX: AMOMINU_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOMINU_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMINU_W_AUX: AMOMINU_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMINU_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMINU_W_AQ_AUX: AMOMINU_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMINU_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMINU_W_RL_AUX: AMOMINU_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOMINU_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b11000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOMINU_W_AQ_RL_AUX: AMOMINU_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOOR_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOOR_D_AUX: AMOOR_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOOR_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOOR_D_AQ_AUX: AMOOR_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOOR_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOOR_D_RL_AUX: AMOOR_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOOR_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOOR_D_AQ_RL_AUX: AMOOR_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOOR_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOOR_W_AUX: AMOOR_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOOR_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOOR_W_AQ_AUX: AMOOR_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOOR_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01000;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOOR_W_RL_AUX: AMOOR_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOOR_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b01000;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOOR_W_AQ_RL_AUX: AMOOR_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOXOR_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
def AMOXOR_D: Instruction, AMOXOR_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>{
	let Size = 4;
	let AsmString = "amoxor.d	$rd, $rs2, $rs1";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins GPRMemAtomic:$rs1, GPR:$rs2);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtA, IsRV64];
}
class AMOXOR_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
def AMOXOR_D_AQ: Instruction, AMOXOR_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>{
	let Size = 4;
	let AsmString = "amoxor.d.aq	$rd, $rs2, $rs1";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins GPRMemAtomic:$rs1, GPR:$rs2);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtA, IsRV64];
}
class AMOXOR_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
def AMOXOR_D_RL: Instruction, AMOXOR_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>{
	let Size = 4;
	let AsmString = "amoxor.d.rl	$rd, $rs2, $rs1";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins GPRMemAtomic:$rs1, GPR:$rs2);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtA, IsRV64];
}
class AMOXOR_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
def AMOXOR_D_AQ_RL: Instruction, AMOXOR_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>{
	let Size = 4;
	let AsmString = "amoxor.d.aqrl	$rd, $rs2, $rs1";
	let Namespace = "RISCV";
	let mayLoad = 1;
	let InOperandList = (ins GPRMemAtomic:$rs1, GPR:$rs2);
	let OutOperandList = (outs GPR:$rd);
	let hasSideEffects = 0;
	let mayStore = 1;
	let Constraints = "";
	let Defs = [];
	let Uses = [];
	let DecoderNamespace = "";
	let Pattern = [];
	let Predicates = [HasStdExtA, IsRV64];
}
class AMOXOR_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOXOR_W_AUX: AMOXOR_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOXOR_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOXOR_W_AQ_AUX: AMOXOR_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOXOR_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00100;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOXOR_W_RL_AUX: AMOXOR_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOXOR_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00100;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOXOR_W_AQ_RL_AUX: AMOXOR_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class LR_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00010;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LR_D_AUX: LR_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicLDD, ReadAtomicLDD]>;
class LR_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00010;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LR_D_AQ_AUX: LR_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicLDD, ReadAtomicLDD]>;
class LR_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00010;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LR_D_RL_AUX: LR_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicLDD, ReadAtomicLDD]>;
class LR_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00010;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LR_D_AQ_RL_AUX: LR_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicLDD, ReadAtomicLDD]>;
class LR_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00010;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LR_W_AUX: LR_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicLDW, ReadAtomicLDW]>;
class LR_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00010;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LR_W_AQ_AUX: LR_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicLDW, ReadAtomicLDW]>;
class LR_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00010;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LR_W_RL_AUX: LR_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicLDW, ReadAtomicLDW]>;
class LR_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00010;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2 = 0b00000;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class LR_W_AQ_RL_AUX: LR_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicLDW, ReadAtomicLDW]>;
class SC_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00011;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SC_D_AUX: SC_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicSTD, ReadAtomicSTD, ReadAtomicSTD]>;
class SC_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00011;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SC_D_AQ_AUX: SC_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicSTD, ReadAtomicSTD, ReadAtomicSTD]>;
class SC_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00011;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SC_D_RL_AUX: SC_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicSTD, ReadAtomicSTD, ReadAtomicSTD]>;
class SC_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00011;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SC_D_AQ_RL_AUX: SC_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicSTD, ReadAtomicSTD, ReadAtomicSTD]>;
class SC_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00011;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SC_W_AUX: SC_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicSTW, ReadAtomicSTW, ReadAtomicSTW]>;
class SC_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00011;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SC_W_AQ_AUX: SC_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicSTW, ReadAtomicSTW, ReadAtomicSTW]>;
class SC_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00011;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SC_W_RL_AUX: SC_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicSTW, ReadAtomicSTW, ReadAtomicSTW]>;
class SC_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00011;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class SC_W_AQ_RL_AUX: SC_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicSTW, ReadAtomicSTW, ReadAtomicSTW]>;
class AMOSWAP_D_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00001;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOSWAP_D_AUX: AMOSWAP_D_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOSWAP_D_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00001;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOSWAP_D_AQ_AUX: AMOSWAP_D_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOSWAP_D_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00001;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOSWAP_D_RL_AUX: AMOSWAP_D_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOSWAP_D_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00001;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b011;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOSWAP_D_AQ_RL_AUX: AMOSWAP_D_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
class AMOSWAP_W_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00001;
	bits<1> aq = 0b0;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOSWAP_W_AUX: AMOSWAP_W_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOSWAP_W_AQ_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00001;
	bits<1> aq = 0b1;
	bits<1> rl = 0b0;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOSWAP_W_AQ_AUX: AMOSWAP_W_AQ_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOSWAP_W_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00001;
	bits<1> aq = 0b0;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOSWAP_W_RL_AUX: AMOSWAP_W_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class AMOSWAP_W_AQ_RL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<5> funct5 = 0b00001;
	bits<1> aq = 0b1;
	bits<1> rl = 0b1;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b010;
	bits<5> rd;
	bits<7> opcode = 0b0101111;
	let Inst{31-27} = funct5;
	let Inst{26-26} = aq;
	let Inst{25-25} = rl;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class AMOSWAP_W_AQ_RL_AUX: AMOSWAP_W_AQ_RL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteAtomicW, ReadAtomicWA, ReadAtomicWD]>;
class PredicateControl_AMOADD_D;
class MipsInst_AMOADD_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOADD_D {
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
class InstSE_AMOADD_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOADD_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOADD_D{
	string  Arch="";
}
class ISA_MIPS3_AMOADD_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOADD_D<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOADD_D <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoadd.d	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DSUBU_AMOADD_D : InstrItinClass ;
class ADD_FM_AMOADD_D<bits<6>  op, bits<6>  funct> : StdArch_AMOADD_D ;
def AMOADD_D : ArithLogicR_AMOADD_D <"dsubu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOADD_D <0, 0x2f>, ISA_MIPS3_AMOADD_D , AMOADD_D_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOADD_D_AQ;
class MipsInst_AMOADD_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOADD_D_AQ {
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
class InstSE_AMOADD_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOADD_D_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOADD_D_AQ{
	string  Arch="";
}
class ISA_MIPS3_AMOADD_D_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOADD_D_AQ<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOADD_D_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoadd.d.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DSUBU_AMOADD_D_AQ : InstrItinClass ;
class ADD_FM_AMOADD_D_AQ<bits<6>  op, bits<6>  funct> : StdArch_AMOADD_D_AQ ;
def AMOADD_D_AQ : ArithLogicR_AMOADD_D_AQ <"dsubu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOADD_D_AQ <0, 0x2f>, ISA_MIPS3_AMOADD_D_AQ , AMOADD_D_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOADD_D_RL;
class MipsInst_AMOADD_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOADD_D_RL {
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
class InstSE_AMOADD_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOADD_D_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOADD_D_RL{
	string  Arch="";
}
class ISA_MIPS3_AMOADD_D_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOADD_D_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOADD_D_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoadd.d.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DSUBU_AMOADD_D_RL : InstrItinClass ;
class ADD_FM_AMOADD_D_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOADD_D_RL ;
def AMOADD_D_RL : ArithLogicR_AMOADD_D_RL <"dsubu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOADD_D_RL <0, 0x2f>, ISA_MIPS3_AMOADD_D_RL , AMOADD_D_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOADD_D_AQ_RL;
class MipsInst_AMOADD_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOADD_D_AQ_RL {
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
class InstSE_AMOADD_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOADD_D_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOADD_D_AQ_RL{
	string  Arch="";
}
class ISA_MIPS3_AMOADD_D_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOADD_D_AQ_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOADD_D_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoadd.d.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DSUBU_AMOADD_D_AQ_RL : InstrItinClass ;
class ADD_FM_AMOADD_D_AQ_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOADD_D_AQ_RL ;
def AMOADD_D_AQ_RL : ArithLogicR_AMOADD_D_AQ_RL <"dsubu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOADD_D_AQ_RL <0, 0x2f>, ISA_MIPS3_AMOADD_D_AQ_RL , AMOADD_D_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOADD_W;
class MipsInst_AMOADD_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOADD_W {
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
class StdArch_AMOADD_W{
	string  Arch="";
}
class InstSE_AMOADD_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOADD_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOADD_W<bits<6>  op, bits<6>  funct> : StdArch_AMOADD_W ;
class StdMMR6Rel_AMOADD_W;
def II_ADDU_AMOADD_W : InstrItinClass ;
class ISA_MIPS1_AMOADD_W{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOADD_W;
class ArithLogicR_AMOADD_W<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOADD_W <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoadd.w	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOADD_W : MMRel_AMOADD_W , StdMMR6Rel_AMOADD_W , ArithLogicR_AMOADD_W <"addu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOADD_W <0, 0x21>, ISA_MIPS1_AMOADD_W , AMOADD_W_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOADD_W_AQ;
class MipsInst_AMOADD_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOADD_W_AQ {
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
class StdArch_AMOADD_W_AQ{
	string  Arch="";
}
class InstSE_AMOADD_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOADD_W_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOADD_W_AQ<bits<6>  op, bits<6>  funct> : StdArch_AMOADD_W_AQ ;
class StdMMR6Rel_AMOADD_W_AQ;
def II_ADDU_AMOADD_W_AQ : InstrItinClass ;
class ISA_MIPS1_AMOADD_W_AQ{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOADD_W_AQ;
class ArithLogicR_AMOADD_W_AQ<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOADD_W_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoadd.w.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOADD_W_AQ : MMRel_AMOADD_W_AQ , StdMMR6Rel_AMOADD_W_AQ , ArithLogicR_AMOADD_W_AQ <"addu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOADD_W_AQ <0, 0x21>, ISA_MIPS1_AMOADD_W_AQ , AMOADD_W_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOADD_W_RL;
class MipsInst_AMOADD_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOADD_W_RL {
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
class StdArch_AMOADD_W_RL{
	string  Arch="";
}
class InstSE_AMOADD_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOADD_W_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOADD_W_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOADD_W_RL ;
class StdMMR6Rel_AMOADD_W_RL;
def II_ADDU_AMOADD_W_RL : InstrItinClass ;
class ISA_MIPS1_AMOADD_W_RL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOADD_W_RL;
class ArithLogicR_AMOADD_W_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOADD_W_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoadd.w.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOADD_W_RL : MMRel_AMOADD_W_RL , StdMMR6Rel_AMOADD_W_RL , ArithLogicR_AMOADD_W_RL <"addu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOADD_W_RL <0, 0x21>, ISA_MIPS1_AMOADD_W_RL , AMOADD_W_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOADD_W_AQ_RL;
class MipsInst_AMOADD_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOADD_W_AQ_RL {
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
class StdArch_AMOADD_W_AQ_RL{
	string  Arch="";
}
class InstSE_AMOADD_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOADD_W_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOADD_W_AQ_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOADD_W_AQ_RL ;
class StdMMR6Rel_AMOADD_W_AQ_RL;
def II_ADDU_AMOADD_W_AQ_RL : InstrItinClass ;
class ISA_MIPS1_AMOADD_W_AQ_RL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOADD_W_AQ_RL;
class ArithLogicR_AMOADD_W_AQ_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOADD_W_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoadd.w.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOADD_W_AQ_RL : MMRel_AMOADD_W_AQ_RL , StdMMR6Rel_AMOADD_W_AQ_RL , ArithLogicR_AMOADD_W_AQ_RL <"addu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOADD_W_AQ_RL <0, 0x21>, ISA_MIPS1_AMOADD_W_AQ_RL , AMOADD_W_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOAND_W;
class MipsInst_AMOAND_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOAND_W {
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
class StdArch_AMOAND_W{
	string  Arch="";
}
class InstSE_AMOAND_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOAND_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOAND_W;
class ADDI_FM_AMOAND_W<bits<6>  op> : StdArch_AMOAND_W ;
def II_ORI_AMOAND_W : InstrItinClass ;
class ISA_MIPS1_AMOAND_W{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOAND_W;
class ArithLogicI_AMOAND_W<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOAND_W <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoand.w	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOAND_W : MMRel_AMOAND_W , StdMMR6Rel_AMOAND_W , ArithLogicI_AMOAND_W <"ori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOAND_W <0xd>, ISA_MIPS1_AMOAND_W , AMOAND_W_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOAND_W_AQ;
class MipsInst_AMOAND_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOAND_W_AQ {
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
class StdArch_AMOAND_W_AQ{
	string  Arch="";
}
class InstSE_AMOAND_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOAND_W_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOAND_W_AQ;
class ADDI_FM_AMOAND_W_AQ<bits<6>  op> : StdArch_AMOAND_W_AQ ;
def II_ORI_AMOAND_W_AQ : InstrItinClass ;
class ISA_MIPS1_AMOAND_W_AQ{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOAND_W_AQ;
class ArithLogicI_AMOAND_W_AQ<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOAND_W_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoand.w.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOAND_W_AQ : MMRel_AMOAND_W_AQ , StdMMR6Rel_AMOAND_W_AQ , ArithLogicI_AMOAND_W_AQ <"ori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOAND_W_AQ <0xd>, ISA_MIPS1_AMOAND_W_AQ , AMOAND_W_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOAND_W_RL;
class MipsInst_AMOAND_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOAND_W_RL {
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
class StdArch_AMOAND_W_RL{
	string  Arch="";
}
class InstSE_AMOAND_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOAND_W_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOAND_W_RL;
class ADDI_FM_AMOAND_W_RL<bits<6>  op> : StdArch_AMOAND_W_RL ;
def II_ORI_AMOAND_W_RL : InstrItinClass ;
class ISA_MIPS1_AMOAND_W_RL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOAND_W_RL;
class ArithLogicI_AMOAND_W_RL<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOAND_W_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoand.w.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOAND_W_RL : MMRel_AMOAND_W_RL , StdMMR6Rel_AMOAND_W_RL , ArithLogicI_AMOAND_W_RL <"ori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOAND_W_RL <0xd>, ISA_MIPS1_AMOAND_W_RL , AMOAND_W_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOAND_W_AQ_RL;
class MipsInst_AMOAND_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOAND_W_AQ_RL {
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
class StdArch_AMOAND_W_AQ_RL{
	string  Arch="";
}
class InstSE_AMOAND_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOAND_W_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOAND_W_AQ_RL;
class ADDI_FM_AMOAND_W_AQ_RL<bits<6>  op> : StdArch_AMOAND_W_AQ_RL ;
def II_ORI_AMOAND_W_AQ_RL : InstrItinClass ;
class ISA_MIPS1_AMOAND_W_AQ_RL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOAND_W_AQ_RL;
class ArithLogicI_AMOAND_W_AQ_RL<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOAND_W_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoand.w.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOAND_W_AQ_RL : MMRel_AMOAND_W_AQ_RL , StdMMR6Rel_AMOAND_W_AQ_RL , ArithLogicI_AMOAND_W_AQ_RL <"ori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOAND_W_AQ_RL <0xd>, ISA_MIPS1_AMOAND_W_AQ_RL , AMOAND_W_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMAX_D;
class MipsInst_AMOMAX_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAX_D {
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
class InstSE_AMOMAX_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAX_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMAX_D{
	string  Arch="";
}
class Mult_AMOMAX_D<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_AMOMAX_D <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomax.d	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  isCommutable=false;
	let  Defs=DefRegs;
	let  hasSideEffects=0;
}
class ISA_MIPS3_NOT_32R6_64R6_AMOMAX_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DMULT_AMOMAX_D : InstrItinClass ;
class MULT_FM_AMOMAX_D<bits<6>  op, bits<6>  funct> : StdArch_AMOMAX_D ;
def AMOMAX_D : Mult_AMOMAX_D <"dmult", NoItinerary, ?, []>, MULT_FM_AMOMAX_D <0, 0x1c>, ISA_MIPS3_NOT_32R6_64R6_AMOMAX_D , AMOMAX_D_AUX {
	  	let mayLoad = 1;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMAX_D_AQ;
class MipsInst_AMOMAX_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAX_D_AQ {
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
class InstSE_AMOMAX_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAX_D_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMAX_D_AQ{
	string  Arch="";
}
class Mult_AMOMAX_D_AQ<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_AMOMAX_D_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomax.d.aq	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  isCommutable=false;
	let  Defs=DefRegs;
	let  hasSideEffects=0;
}
class ISA_MIPS3_NOT_32R6_64R6_AMOMAX_D_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DMULT_AMOMAX_D_AQ : InstrItinClass ;
class MULT_FM_AMOMAX_D_AQ<bits<6>  op, bits<6>  funct> : StdArch_AMOMAX_D_AQ ;
def AMOMAX_D_AQ : Mult_AMOMAX_D_AQ <"dmult", NoItinerary, ?, []>, MULT_FM_AMOMAX_D_AQ <0, 0x1c>, ISA_MIPS3_NOT_32R6_64R6_AMOMAX_D_AQ , AMOMAX_D_AQ_AUX {
	  	let mayLoad = 1;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMAX_D_RL;
class MipsInst_AMOMAX_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAX_D_RL {
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
class InstSE_AMOMAX_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAX_D_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMAX_D_RL{
	string  Arch="";
}
class Mult_AMOMAX_D_RL<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_AMOMAX_D_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomax.d.rl	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  isCommutable=false;
	let  Defs=DefRegs;
	let  hasSideEffects=0;
}
class ISA_MIPS3_NOT_32R6_64R6_AMOMAX_D_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DMULT_AMOMAX_D_RL : InstrItinClass ;
class MULT_FM_AMOMAX_D_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOMAX_D_RL ;
def AMOMAX_D_RL : Mult_AMOMAX_D_RL <"dmult", NoItinerary, ?, []>, MULT_FM_AMOMAX_D_RL <0, 0x1c>, ISA_MIPS3_NOT_32R6_64R6_AMOMAX_D_RL , AMOMAX_D_RL_AUX {
	  	let mayLoad = 1;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMAX_D_AQ_RL;
class MipsInst_AMOMAX_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAX_D_AQ_RL {
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
class InstSE_AMOMAX_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAX_D_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMAX_D_AQ_RL{
	string  Arch="";
}
class Mult_AMOMAX_D_AQ_RL<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_AMOMAX_D_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomax.d.aqrl	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  isCommutable=false;
	let  Defs=DefRegs;
	let  hasSideEffects=0;
}
class ISA_MIPS3_NOT_32R6_64R6_AMOMAX_D_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DMULT_AMOMAX_D_AQ_RL : InstrItinClass ;
class MULT_FM_AMOMAX_D_AQ_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOMAX_D_AQ_RL ;
def AMOMAX_D_AQ_RL : Mult_AMOMAX_D_AQ_RL <"dmult", NoItinerary, ?, []>, MULT_FM_AMOMAX_D_AQ_RL <0, 0x1c>, ISA_MIPS3_NOT_32R6_64R6_AMOMAX_D_AQ_RL , AMOMAX_D_AQ_RL_AUX {
	  	let mayLoad = 1;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMAX_W;
class MipsInst_AMOMAX_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAX_W {
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
class StdArch_AMOMAX_W{
	string  Arch="";
}
class InstSE_AMOMAX_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAX_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOMAX_W<bits<6>  op, bits<6>  funct> : StdArch_AMOMAX_W ;
class StdMMR6Rel_AMOMAX_W;
class ISA_MIPS1_AMOMAX_W{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOMAX_W;
class ArithLogicR_AMOMAX_W<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMAX_W <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomax.w	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_ADD_AMOMAX_W : InstrItinClass ;
def AMOMAX_W : MMRel_AMOMAX_W , StdMMR6Rel_AMOMAX_W , ArithLogicR_AMOMAX_W <"add", ?, false, NoItinerary>, ADD_FM_AMOMAX_W <0, 0x20>, ISA_MIPS1_AMOMAX_W , AMOMAX_W_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMAX_W_AQ;
class MipsInst_AMOMAX_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAX_W_AQ {
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
class StdArch_AMOMAX_W_AQ{
	string  Arch="";
}
class InstSE_AMOMAX_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAX_W_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOMAX_W_AQ<bits<6>  op, bits<6>  funct> : StdArch_AMOMAX_W_AQ ;
class StdMMR6Rel_AMOMAX_W_AQ;
class ISA_MIPS1_AMOMAX_W_AQ{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOMAX_W_AQ;
class ArithLogicR_AMOMAX_W_AQ<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMAX_W_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomax.w.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_ADD_AMOMAX_W_AQ : InstrItinClass ;
def AMOMAX_W_AQ : MMRel_AMOMAX_W_AQ , StdMMR6Rel_AMOMAX_W_AQ , ArithLogicR_AMOMAX_W_AQ <"add", ?, false, NoItinerary>, ADD_FM_AMOMAX_W_AQ <0, 0x20>, ISA_MIPS1_AMOMAX_W_AQ , AMOMAX_W_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMAX_W_RL;
class MipsInst_AMOMAX_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAX_W_RL {
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
class StdArch_AMOMAX_W_RL{
	string  Arch="";
}
class InstSE_AMOMAX_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAX_W_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOMAX_W_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOMAX_W_RL ;
class StdMMR6Rel_AMOMAX_W_RL;
class ISA_MIPS1_AMOMAX_W_RL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOMAX_W_RL;
class ArithLogicR_AMOMAX_W_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMAX_W_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomax.w.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_ADD_AMOMAX_W_RL : InstrItinClass ;
def AMOMAX_W_RL : MMRel_AMOMAX_W_RL , StdMMR6Rel_AMOMAX_W_RL , ArithLogicR_AMOMAX_W_RL <"add", ?, false, NoItinerary>, ADD_FM_AMOMAX_W_RL <0, 0x20>, ISA_MIPS1_AMOMAX_W_RL , AMOMAX_W_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMAX_W_AQ_RL;
class MipsInst_AMOMAX_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAX_W_AQ_RL {
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
class StdArch_AMOMAX_W_AQ_RL{
	string  Arch="";
}
class InstSE_AMOMAX_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAX_W_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOMAX_W_AQ_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOMAX_W_AQ_RL ;
class StdMMR6Rel_AMOMAX_W_AQ_RL;
class ISA_MIPS1_AMOMAX_W_AQ_RL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOMAX_W_AQ_RL;
class ArithLogicR_AMOMAX_W_AQ_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMAX_W_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomax.w.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_ADD_AMOMAX_W_AQ_RL : InstrItinClass ;
def AMOMAX_W_AQ_RL : MMRel_AMOMAX_W_AQ_RL , StdMMR6Rel_AMOMAX_W_AQ_RL , ArithLogicR_AMOMAX_W_AQ_RL <"add", ?, false, NoItinerary>, ADD_FM_AMOMAX_W_AQ_RL <0, 0x20>, ISA_MIPS1_AMOMAX_W_AQ_RL , AMOMAX_W_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMAXU_D;
class MipsInst_AMOMAXU_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAXU_D {
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
class InstSE_AMOMAXU_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAXU_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMAXU_D{
	string  Arch="";
}
class ISA_MIPS3_AMOMAXU_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOMAXU_D<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMAXU_D <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomaxu.d	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DSUBU_AMOMAXU_D : InstrItinClass ;
class ADD_FM_AMOMAXU_D<bits<6>  op, bits<6>  funct> : StdArch_AMOMAXU_D ;
def AMOMAXU_D : ArithLogicR_AMOMAXU_D <"dsubu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOMAXU_D <0, 0x2f>, ISA_MIPS3_AMOMAXU_D , AMOMAXU_D_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMAXU_D_AQ;
class MipsInst_AMOMAXU_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAXU_D_AQ {
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
class InstSE_AMOMAXU_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAXU_D_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMAXU_D_AQ{
	string  Arch="";
}
class ISA_MIPS3_AMOMAXU_D_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOMAXU_D_AQ<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMAXU_D_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomaxu.d.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DSUBU_AMOMAXU_D_AQ : InstrItinClass ;
class ADD_FM_AMOMAXU_D_AQ<bits<6>  op, bits<6>  funct> : StdArch_AMOMAXU_D_AQ ;
def AMOMAXU_D_AQ : ArithLogicR_AMOMAXU_D_AQ <"dsubu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOMAXU_D_AQ <0, 0x2f>, ISA_MIPS3_AMOMAXU_D_AQ , AMOMAXU_D_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMAXU_D_RL;
class MipsInst_AMOMAXU_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAXU_D_RL {
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
class InstSE_AMOMAXU_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAXU_D_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMAXU_D_RL{
	string  Arch="";
}
class ISA_MIPS3_AMOMAXU_D_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOMAXU_D_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMAXU_D_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomaxu.d.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DSUBU_AMOMAXU_D_RL : InstrItinClass ;
class ADD_FM_AMOMAXU_D_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOMAXU_D_RL ;
def AMOMAXU_D_RL : ArithLogicR_AMOMAXU_D_RL <"dsubu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOMAXU_D_RL <0, 0x2f>, ISA_MIPS3_AMOMAXU_D_RL , AMOMAXU_D_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMAXU_D_AQ_RL;
class MipsInst_AMOMAXU_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAXU_D_AQ_RL {
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
class InstSE_AMOMAXU_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMAXU_D_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMAXU_D_AQ_RL{
	string  Arch="";
}
class ISA_MIPS3_AMOMAXU_D_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOMAXU_D_AQ_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMAXU_D_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomaxu.d.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DSUBU_AMOMAXU_D_AQ_RL : InstrItinClass ;
class ADD_FM_AMOMAXU_D_AQ_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOMAXU_D_AQ_RL ;
def AMOMAXU_D_AQ_RL : ArithLogicR_AMOMAXU_D_AQ_RL <"dsubu", ?, false, NoItinerary, null_frag>, ADD_FM_AMOMAXU_D_AQ_RL <0, 0x2f>, ISA_MIPS3_AMOMAXU_D_AQ_RL , AMOMAXU_D_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMAXU_W;
class MipsInst_AMOMAXU_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAXU_W {
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
class MipsR6Arch_AMOMAXU_W<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_AMOMAXU_W : MipsInst_AMOMAXU_W <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_MUHU_AMOMAXU_W : InstrItinClass ;
class MUL_R6_DESC_BASE_AMOMAXU_W<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin, SDPatternOperator  Op=null_frag> : MipsR6Arch_AMOMAXU_W <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPRMemAtomic:$rs1, GPR:$rs2);
	string  AsmString="amomaxu.w	$rd, $rs2, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class SPECIAL_3R_FM_AMOMAXU_W<bits<5>  mulop, bits<6>  funct> : MipsR6Inst_AMOMAXU_W ;
class R6MMR6Rel_AMOMAXU_W;
class MUHU_DESC_AMOMAXU_W : MUL_R6_DESC_BASE_AMOMAXU_W <"", ?, NoItinerary, null_frag>;
class ISA_MIPS32R6_AMOMAXU_W{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MUHU_ENC_AMOMAXU_W : SPECIAL_3R_FM_AMOMAXU_W <0b00011, 0b011001>;
def AMOMAXU_W : R6MMR6Rel_AMOMAXU_W , MUHU_ENC_AMOMAXU_W , MUHU_DESC_AMOMAXU_W , ISA_MIPS32R6_AMOMAXU_W , AMOMAXU_W_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMAXU_W_AQ;
class MipsInst_AMOMAXU_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAXU_W_AQ {
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
class MipsR6Arch_AMOMAXU_W_AQ<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_AMOMAXU_W_AQ : MipsInst_AMOMAXU_W_AQ <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_MUHU_AMOMAXU_W_AQ : InstrItinClass ;
class MUL_R6_DESC_BASE_AMOMAXU_W_AQ<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin, SDPatternOperator  Op=null_frag> : MipsR6Arch_AMOMAXU_W_AQ <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPRMemAtomic:$rs1, GPR:$rs2);
	string  AsmString="amomaxu.w.aq	$rd, $rs2, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class SPECIAL_3R_FM_AMOMAXU_W_AQ<bits<5>  mulop, bits<6>  funct> : MipsR6Inst_AMOMAXU_W_AQ ;
class R6MMR6Rel_AMOMAXU_W_AQ;
class MUHU_DESC_AMOMAXU_W_AQ : MUL_R6_DESC_BASE_AMOMAXU_W_AQ <"", ?, NoItinerary, null_frag>;
class ISA_MIPS32R6_AMOMAXU_W_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MUHU_ENC_AMOMAXU_W_AQ : SPECIAL_3R_FM_AMOMAXU_W_AQ <0b00011, 0b011001>;
def AMOMAXU_W_AQ : R6MMR6Rel_AMOMAXU_W_AQ , MUHU_ENC_AMOMAXU_W_AQ , MUHU_DESC_AMOMAXU_W_AQ , ISA_MIPS32R6_AMOMAXU_W_AQ , AMOMAXU_W_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMAXU_W_RL;
class MipsInst_AMOMAXU_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAXU_W_RL {
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
class MipsR6Arch_AMOMAXU_W_RL<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_AMOMAXU_W_RL : MipsInst_AMOMAXU_W_RL <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_MUHU_AMOMAXU_W_RL : InstrItinClass ;
class MUL_R6_DESC_BASE_AMOMAXU_W_RL<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin, SDPatternOperator  Op=null_frag> : MipsR6Arch_AMOMAXU_W_RL <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPRMemAtomic:$rs1, GPR:$rs2);
	string  AsmString="amomaxu.w.rl	$rd, $rs2, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class SPECIAL_3R_FM_AMOMAXU_W_RL<bits<5>  mulop, bits<6>  funct> : MipsR6Inst_AMOMAXU_W_RL ;
class R6MMR6Rel_AMOMAXU_W_RL;
class MUHU_DESC_AMOMAXU_W_RL : MUL_R6_DESC_BASE_AMOMAXU_W_RL <"", ?, NoItinerary, null_frag>;
class ISA_MIPS32R6_AMOMAXU_W_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MUHU_ENC_AMOMAXU_W_RL : SPECIAL_3R_FM_AMOMAXU_W_RL <0b00011, 0b011001>;
def AMOMAXU_W_RL : R6MMR6Rel_AMOMAXU_W_RL , MUHU_ENC_AMOMAXU_W_RL , MUHU_DESC_AMOMAXU_W_RL , ISA_MIPS32R6_AMOMAXU_W_RL , AMOMAXU_W_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMAXU_W_AQ_RL;
class MipsInst_AMOMAXU_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMAXU_W_AQ_RL {
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
class MipsR6Arch_AMOMAXU_W_AQ_RL<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_AMOMAXU_W_AQ_RL : MipsInst_AMOMAXU_W_AQ_RL <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_MUHU_AMOMAXU_W_AQ_RL : InstrItinClass ;
class MUL_R6_DESC_BASE_AMOMAXU_W_AQ_RL<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin, SDPatternOperator  Op=null_frag> : MipsR6Arch_AMOMAXU_W_AQ_RL <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPRMemAtomic:$rs1, GPR:$rs2);
	string  AsmString="amomaxu.w.aqrl	$rd, $rs2, $rs1";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class SPECIAL_3R_FM_AMOMAXU_W_AQ_RL<bits<5>  mulop, bits<6>  funct> : MipsR6Inst_AMOMAXU_W_AQ_RL ;
class R6MMR6Rel_AMOMAXU_W_AQ_RL;
class MUHU_DESC_AMOMAXU_W_AQ_RL : MUL_R6_DESC_BASE_AMOMAXU_W_AQ_RL <"", ?, NoItinerary, null_frag>;
class ISA_MIPS32R6_AMOMAXU_W_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MUHU_ENC_AMOMAXU_W_AQ_RL : SPECIAL_3R_FM_AMOMAXU_W_AQ_RL <0b00011, 0b011001>;
def AMOMAXU_W_AQ_RL : R6MMR6Rel_AMOMAXU_W_AQ_RL , MUHU_ENC_AMOMAXU_W_AQ_RL , MUHU_DESC_AMOMAXU_W_AQ_RL , ISA_MIPS32R6_AMOMAXU_W_AQ_RL , AMOMAXU_W_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMIN_D;
class MipsInst_AMOMIN_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMIN_D {
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
class StdArch_AMOMIN_D{
	string  Arch="";
}
class InstSE_AMOMIN_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMIN_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_AMOMIN_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ADDI_FM_AMOMIN_D<bits<6>  op> : StdArch_AMOMIN_D ;
class IsAsCheapAsAMove_AMOMIN_D{
	bit  isAsCheapAsAMove=false;
}
class ArithLogicI_AMOMIN_D<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMIN_D <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomin.d	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DADDIU_AMOMIN_D : InstrItinClass ;
def AMOMIN_D : ArithLogicI_AMOMIN_D <"daddiu", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOMIN_D <0x19>, IsAsCheapAsAMove_AMOMIN_D , ISA_MIPS3_AMOMIN_D , AMOMIN_D_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMIN_D_AQ;
class MipsInst_AMOMIN_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMIN_D_AQ {
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
class StdArch_AMOMIN_D_AQ{
	string  Arch="";
}
class InstSE_AMOMIN_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMIN_D_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_AMOMIN_D_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ADDI_FM_AMOMIN_D_AQ<bits<6>  op> : StdArch_AMOMIN_D_AQ ;
class IsAsCheapAsAMove_AMOMIN_D_AQ{
	bit  isAsCheapAsAMove=false;
}
class ArithLogicI_AMOMIN_D_AQ<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMIN_D_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomin.d.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DADDIU_AMOMIN_D_AQ : InstrItinClass ;
def AMOMIN_D_AQ : ArithLogicI_AMOMIN_D_AQ <"daddiu", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOMIN_D_AQ <0x19>, IsAsCheapAsAMove_AMOMIN_D_AQ , ISA_MIPS3_AMOMIN_D_AQ , AMOMIN_D_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMIN_D_RL;
class MipsInst_AMOMIN_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMIN_D_RL {
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
class StdArch_AMOMIN_D_RL{
	string  Arch="";
}
class InstSE_AMOMIN_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMIN_D_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_AMOMIN_D_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ADDI_FM_AMOMIN_D_RL<bits<6>  op> : StdArch_AMOMIN_D_RL ;
class IsAsCheapAsAMove_AMOMIN_D_RL{
	bit  isAsCheapAsAMove=false;
}
class ArithLogicI_AMOMIN_D_RL<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMIN_D_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomin.d.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DADDIU_AMOMIN_D_RL : InstrItinClass ;
def AMOMIN_D_RL : ArithLogicI_AMOMIN_D_RL <"daddiu", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOMIN_D_RL <0x19>, IsAsCheapAsAMove_AMOMIN_D_RL , ISA_MIPS3_AMOMIN_D_RL , AMOMIN_D_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMIN_D_AQ_RL;
class MipsInst_AMOMIN_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMIN_D_AQ_RL {
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
class StdArch_AMOMIN_D_AQ_RL{
	string  Arch="";
}
class InstSE_AMOMIN_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMIN_D_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_AMOMIN_D_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ADDI_FM_AMOMIN_D_AQ_RL<bits<6>  op> : StdArch_AMOMIN_D_AQ_RL ;
class IsAsCheapAsAMove_AMOMIN_D_AQ_RL{
	bit  isAsCheapAsAMove=false;
}
class ArithLogicI_AMOMIN_D_AQ_RL<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMIN_D_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomin.d.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DADDIU_AMOMIN_D_AQ_RL : InstrItinClass ;
def AMOMIN_D_AQ_RL : ArithLogicI_AMOMIN_D_AQ_RL <"daddiu", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOMIN_D_AQ_RL <0x19>, IsAsCheapAsAMove_AMOMIN_D_AQ_RL , ISA_MIPS3_AMOMIN_D_AQ_RL , AMOMIN_D_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMIN_W;
class MipsInst_AMOMIN_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMIN_W {
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
class StdArch_AMOMIN_W{
	string  Arch="";
}
class InstSE_AMOMIN_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMIN_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOMIN_W<bits<6>  op, bits<6>  funct> : StdArch_AMOMIN_W ;
class MMRel_AMOMIN_W;
class ArithLogicR_AMOMIN_W<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMIN_W <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomin.w	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_MUL_AMOMIN_W : InstrItinClass ;
class ISA_MIPS32_NOT_32R6_64R6_AMOMIN_W{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def AMOMIN_W : MMRel_AMOMIN_W , ArithLogicR_AMOMIN_W <"mul", ?, false, NoItinerary, null_frag>, ADD_FM_AMOMIN_W <0x1c, 2>, ISA_MIPS32_NOT_32R6_64R6_AMOMIN_W , AMOMIN_W_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMIN_W_AQ;
class MipsInst_AMOMIN_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMIN_W_AQ {
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
class StdArch_AMOMIN_W_AQ{
	string  Arch="";
}
class InstSE_AMOMIN_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMIN_W_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOMIN_W_AQ<bits<6>  op, bits<6>  funct> : StdArch_AMOMIN_W_AQ ;
class MMRel_AMOMIN_W_AQ;
class ArithLogicR_AMOMIN_W_AQ<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMIN_W_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomin.w.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_MUL_AMOMIN_W_AQ : InstrItinClass ;
class ISA_MIPS32_NOT_32R6_64R6_AMOMIN_W_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def AMOMIN_W_AQ : MMRel_AMOMIN_W_AQ , ArithLogicR_AMOMIN_W_AQ <"mul", ?, false, NoItinerary, null_frag>, ADD_FM_AMOMIN_W_AQ <0x1c, 2>, ISA_MIPS32_NOT_32R6_64R6_AMOMIN_W_AQ , AMOMIN_W_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMIN_W_RL;
class MipsInst_AMOMIN_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMIN_W_RL {
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
class StdArch_AMOMIN_W_RL{
	string  Arch="";
}
class InstSE_AMOMIN_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMIN_W_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOMIN_W_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOMIN_W_RL ;
class MMRel_AMOMIN_W_RL;
class ArithLogicR_AMOMIN_W_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMIN_W_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomin.w.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_MUL_AMOMIN_W_RL : InstrItinClass ;
class ISA_MIPS32_NOT_32R6_64R6_AMOMIN_W_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def AMOMIN_W_RL : MMRel_AMOMIN_W_RL , ArithLogicR_AMOMIN_W_RL <"mul", ?, false, NoItinerary, null_frag>, ADD_FM_AMOMIN_W_RL <0x1c, 2>, ISA_MIPS32_NOT_32R6_64R6_AMOMIN_W_RL , AMOMIN_W_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMIN_W_AQ_RL;
class MipsInst_AMOMIN_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMIN_W_AQ_RL {
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
class StdArch_AMOMIN_W_AQ_RL{
	string  Arch="";
}
class InstSE_AMOMIN_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMIN_W_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_AMOMIN_W_AQ_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOMIN_W_AQ_RL ;
class MMRel_AMOMIN_W_AQ_RL;
class ArithLogicR_AMOMIN_W_AQ_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMIN_W_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amomin.w.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_MUL_AMOMIN_W_AQ_RL : InstrItinClass ;
class ISA_MIPS32_NOT_32R6_64R6_AMOMIN_W_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def AMOMIN_W_AQ_RL : MMRel_AMOMIN_W_AQ_RL , ArithLogicR_AMOMIN_W_AQ_RL <"mul", ?, false, NoItinerary, null_frag>, ADD_FM_AMOMIN_W_AQ_RL <0x1c, 2>, ISA_MIPS32_NOT_32R6_64R6_AMOMIN_W_AQ_RL , AMOMIN_W_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMINU_D;
class MipsInst_AMOMINU_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMINU_D {
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
class InstSE_AMOMINU_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMINU_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMINU_D{
	string  Arch="";
}
class ISA_MIPS3_AMOMINU_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOMINU_D<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMINU_D <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amominu.d	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
class ADD_FM_AMOMINU_D<bits<6>  op, bits<6>  funct> : StdArch_AMOMINU_D ;
def II_DSUB_AMOMINU_D : InstrItinClass ;
def AMOMINU_D : ArithLogicR_AMOMINU_D <"dsub", ?, false, NoItinerary>, ADD_FM_AMOMINU_D <0, 0x2e>, ISA_MIPS3_AMOMINU_D , AMOMINU_D_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMINU_D_AQ;
class MipsInst_AMOMINU_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMINU_D_AQ {
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
class InstSE_AMOMINU_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMINU_D_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMINU_D_AQ{
	string  Arch="";
}
class ISA_MIPS3_AMOMINU_D_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOMINU_D_AQ<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMINU_D_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amominu.d.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
class ADD_FM_AMOMINU_D_AQ<bits<6>  op, bits<6>  funct> : StdArch_AMOMINU_D_AQ ;
def II_DSUB_AMOMINU_D_AQ : InstrItinClass ;
def AMOMINU_D_AQ : ArithLogicR_AMOMINU_D_AQ <"dsub", ?, false, NoItinerary>, ADD_FM_AMOMINU_D_AQ <0, 0x2e>, ISA_MIPS3_AMOMINU_D_AQ , AMOMINU_D_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMINU_D_RL;
class MipsInst_AMOMINU_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMINU_D_RL {
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
class InstSE_AMOMINU_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMINU_D_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMINU_D_RL{
	string  Arch="";
}
class ISA_MIPS3_AMOMINU_D_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOMINU_D_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMINU_D_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amominu.d.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
class ADD_FM_AMOMINU_D_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOMINU_D_RL ;
def II_DSUB_AMOMINU_D_RL : InstrItinClass ;
def AMOMINU_D_RL : ArithLogicR_AMOMINU_D_RL <"dsub", ?, false, NoItinerary>, ADD_FM_AMOMINU_D_RL <0, 0x2e>, ISA_MIPS3_AMOMINU_D_RL , AMOMINU_D_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMINU_D_AQ_RL;
class MipsInst_AMOMINU_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMINU_D_AQ_RL {
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
class InstSE_AMOMINU_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMINU_D_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMINU_D_AQ_RL{
	string  Arch="";
}
class ISA_MIPS3_AMOMINU_D_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_AMOMINU_D_AQ_RL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_AMOMINU_D_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amominu.d.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
class ADD_FM_AMOMINU_D_AQ_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOMINU_D_AQ_RL ;
def II_DSUB_AMOMINU_D_AQ_RL : InstrItinClass ;
def AMOMINU_D_AQ_RL : ArithLogicR_AMOMINU_D_AQ_RL <"dsub", ?, false, NoItinerary>, ADD_FM_AMOMINU_D_AQ_RL <0, 0x2e>, ISA_MIPS3_AMOMINU_D_AQ_RL , AMOMINU_D_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOMINU_W;
class MipsInst_AMOMINU_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMINU_W {
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
class InstSE_AMOMINU_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMINU_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMINU_W{
	string  Arch="";
}
class StdMMR6Rel_AMOMINU_W;
class ISA_MIPS32R2_AMOMINU_W{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SEH_AMOMINU_W : InstrItinClass ;
class MMRel_AMOMINU_W;
class SignExtInReg_AMOMINU_W<string  opstr, ValueType  vt, RegisterOperand  RO, InstrItinClass  itin> : InstSE_AMOMINU_W <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amominu.w	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>;
class SEB_FM_AMOMINU_W<bits<5>  funct, bits<6>  funct2> : StdArch_AMOMINU_W ;
def AMOMINU_W : MMRel_AMOMINU_W , StdMMR6Rel_AMOMINU_W , SignExtInReg_AMOMINU_W <"seh", ?, ?, NoItinerary>, SEB_FM_AMOMINU_W <0x18, 0x20>, ISA_MIPS32R2_AMOMINU_W , AMOMINU_W_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMINU_W_AQ;
class MipsInst_AMOMINU_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMINU_W_AQ {
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
class InstSE_AMOMINU_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMINU_W_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMINU_W_AQ{
	string  Arch="";
}
class StdMMR6Rel_AMOMINU_W_AQ;
class ISA_MIPS32R2_AMOMINU_W_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SEH_AMOMINU_W_AQ : InstrItinClass ;
class MMRel_AMOMINU_W_AQ;
class SignExtInReg_AMOMINU_W_AQ<string  opstr, ValueType  vt, RegisterOperand  RO, InstrItinClass  itin> : InstSE_AMOMINU_W_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amominu.w.aq	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>;
class SEB_FM_AMOMINU_W_AQ<bits<5>  funct, bits<6>  funct2> : StdArch_AMOMINU_W_AQ ;
def AMOMINU_W_AQ : MMRel_AMOMINU_W_AQ , StdMMR6Rel_AMOMINU_W_AQ , SignExtInReg_AMOMINU_W_AQ <"seh", ?, ?, NoItinerary>, SEB_FM_AMOMINU_W_AQ <0x18, 0x20>, ISA_MIPS32R2_AMOMINU_W_AQ , AMOMINU_W_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMINU_W_RL;
class MipsInst_AMOMINU_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMINU_W_RL {
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
class InstSE_AMOMINU_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMINU_W_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMINU_W_RL{
	string  Arch="";
}
class StdMMR6Rel_AMOMINU_W_RL;
class ISA_MIPS32R2_AMOMINU_W_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SEH_AMOMINU_W_RL : InstrItinClass ;
class MMRel_AMOMINU_W_RL;
class SignExtInReg_AMOMINU_W_RL<string  opstr, ValueType  vt, RegisterOperand  RO, InstrItinClass  itin> : InstSE_AMOMINU_W_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amominu.w.rl	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>;
class SEB_FM_AMOMINU_W_RL<bits<5>  funct, bits<6>  funct2> : StdArch_AMOMINU_W_RL ;
def AMOMINU_W_RL : MMRel_AMOMINU_W_RL , StdMMR6Rel_AMOMINU_W_RL , SignExtInReg_AMOMINU_W_RL <"seh", ?, ?, NoItinerary>, SEB_FM_AMOMINU_W_RL <0x18, 0x20>, ISA_MIPS32R2_AMOMINU_W_RL , AMOMINU_W_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOMINU_W_AQ_RL;
class MipsInst_AMOMINU_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOMINU_W_AQ_RL {
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
class InstSE_AMOMINU_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOMINU_W_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOMINU_W_AQ_RL{
	string  Arch="";
}
class StdMMR6Rel_AMOMINU_W_AQ_RL;
class ISA_MIPS32R2_AMOMINU_W_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SEH_AMOMINU_W_AQ_RL : InstrItinClass ;
class MMRel_AMOMINU_W_AQ_RL;
class SignExtInReg_AMOMINU_W_AQ_RL<string  opstr, ValueType  vt, RegisterOperand  RO, InstrItinClass  itin> : InstSE_AMOMINU_W_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amominu.w.aqrl	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>;
class SEB_FM_AMOMINU_W_AQ_RL<bits<5>  funct, bits<6>  funct2> : StdArch_AMOMINU_W_AQ_RL ;
def AMOMINU_W_AQ_RL : MMRel_AMOMINU_W_AQ_RL , StdMMR6Rel_AMOMINU_W_AQ_RL , SignExtInReg_AMOMINU_W_AQ_RL <"seh", ?, ?, NoItinerary>, SEB_FM_AMOMINU_W_AQ_RL <0x18, 0x20>, ISA_MIPS32R2_AMOMINU_W_AQ_RL , AMOMINU_W_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOOR_D;
class MicroMipsInstBase_AMOOR_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOOR_D {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_AMOOR_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_AMOOR_D <outs, ins, asmstr, pattern, itin, f>{
	let  Size=4;
}
def II_OR_AMOOR_D : InstrItinClass ;
class LogicRMM16_AMOOR_D<string  opstr, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : MicroMipsInst16_AMOOR_D <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoor.d	$rd, $rs2, $rs1", [], Itin, InstFormatR>{
	let  isCommutable=false;
	let  Constraints="";
}
class LOGIC_FM_MM16_AMOOR_D<bits<4>  funct>;
class ISA_MICROMIPS32_NOT_MIPS32R6_AMOOR_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def AMOOR_D : LogicRMM16_AMOOR_D <"or16", ?, NoItinerary, null_frag>, LOGIC_FM_MM16_AMOOR_D <0x3>, ISA_MICROMIPS32_NOT_MIPS32R6_AMOOR_D , AMOOR_D_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOOR_D_AQ;
class MicroMipsInstBase_AMOOR_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOOR_D_AQ {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_AMOOR_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_AMOOR_D_AQ <outs, ins, asmstr, pattern, itin, f>{
	let  Size=4;
}
def II_OR_AMOOR_D_AQ : InstrItinClass ;
class LogicRMM16_AMOOR_D_AQ<string  opstr, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : MicroMipsInst16_AMOOR_D_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoor.d.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR>{
	let  isCommutable=false;
	let  Constraints="";
}
class LOGIC_FM_MM16_AMOOR_D_AQ<bits<4>  funct>;
class ISA_MICROMIPS32_NOT_MIPS32R6_AMOOR_D_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def AMOOR_D_AQ : LogicRMM16_AMOOR_D_AQ <"or16", ?, NoItinerary, null_frag>, LOGIC_FM_MM16_AMOOR_D_AQ <0x3>, ISA_MICROMIPS32_NOT_MIPS32R6_AMOOR_D_AQ , AMOOR_D_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOOR_D_RL;
class MicroMipsInstBase_AMOOR_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOOR_D_RL {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_AMOOR_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_AMOOR_D_RL <outs, ins, asmstr, pattern, itin, f>{
	let  Size=4;
}
def II_OR_AMOOR_D_RL : InstrItinClass ;
class LogicRMM16_AMOOR_D_RL<string  opstr, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : MicroMipsInst16_AMOOR_D_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoor.d.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR>{
	let  isCommutable=false;
	let  Constraints="";
}
class LOGIC_FM_MM16_AMOOR_D_RL<bits<4>  funct>;
class ISA_MICROMIPS32_NOT_MIPS32R6_AMOOR_D_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def AMOOR_D_RL : LogicRMM16_AMOOR_D_RL <"or16", ?, NoItinerary, null_frag>, LOGIC_FM_MM16_AMOOR_D_RL <0x3>, ISA_MICROMIPS32_NOT_MIPS32R6_AMOOR_D_RL , AMOOR_D_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOOR_D_AQ_RL;
class MicroMipsInstBase_AMOOR_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOOR_D_AQ_RL {
	let  Namespace="RISCV";
	let  DecoderNamespace="";
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	InstFormat  Form=f;
}
class MicroMipsInst16_AMOOR_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : MicroMipsInstBase_AMOOR_D_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	let  Size=4;
}
def II_OR_AMOOR_D_AQ_RL : InstrItinClass ;
class LogicRMM16_AMOOR_D_AQ_RL<string  opstr, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : MicroMipsInst16_AMOOR_D_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoor.d.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR>{
	let  isCommutable=false;
	let  Constraints="";
}
class LOGIC_FM_MM16_AMOOR_D_AQ_RL<bits<4>  funct>;
class ISA_MICROMIPS32_NOT_MIPS32R6_AMOOR_D_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def AMOOR_D_AQ_RL : LogicRMM16_AMOOR_D_AQ_RL <"or16", ?, NoItinerary, null_frag>, LOGIC_FM_MM16_AMOOR_D_AQ_RL <0x3>, ISA_MICROMIPS32_NOT_MIPS32R6_AMOOR_D_AQ_RL , AMOOR_D_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOOR_W;
class MipsInst_AMOOR_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOOR_W {
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
class StdArch_AMOOR_W{
	string  Arch="";
}
class InstSE_AMOOR_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOOR_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOOR_W;
class ADDI_FM_AMOOR_W<bits<6>  op> : StdArch_AMOOR_W ;
def II_ANDI_AMOOR_W : InstrItinClass ;
class ISA_MIPS1_AMOOR_W{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOOR_W;
class ArithLogicI_AMOOR_W<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOOR_W <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoor.w	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOOR_W : MMRel_AMOOR_W , StdMMR6Rel_AMOOR_W , ArithLogicI_AMOOR_W <"andi", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOOR_W <0xc>, ISA_MIPS1_AMOOR_W , AMOOR_W_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOOR_W_AQ;
class MipsInst_AMOOR_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOOR_W_AQ {
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
class StdArch_AMOOR_W_AQ{
	string  Arch="";
}
class InstSE_AMOOR_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOOR_W_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOOR_W_AQ;
class ADDI_FM_AMOOR_W_AQ<bits<6>  op> : StdArch_AMOOR_W_AQ ;
def II_ANDI_AMOOR_W_AQ : InstrItinClass ;
class ISA_MIPS1_AMOOR_W_AQ{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOOR_W_AQ;
class ArithLogicI_AMOOR_W_AQ<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOOR_W_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoor.w.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOOR_W_AQ : MMRel_AMOOR_W_AQ , StdMMR6Rel_AMOOR_W_AQ , ArithLogicI_AMOOR_W_AQ <"andi", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOOR_W_AQ <0xc>, ISA_MIPS1_AMOOR_W_AQ , AMOOR_W_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOOR_W_RL;
class MipsInst_AMOOR_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOOR_W_RL {
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
class StdArch_AMOOR_W_RL{
	string  Arch="";
}
class InstSE_AMOOR_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOOR_W_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOOR_W_RL;
class ADDI_FM_AMOOR_W_RL<bits<6>  op> : StdArch_AMOOR_W_RL ;
def II_ANDI_AMOOR_W_RL : InstrItinClass ;
class ISA_MIPS1_AMOOR_W_RL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOOR_W_RL;
class ArithLogicI_AMOOR_W_RL<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOOR_W_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoor.w.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOOR_W_RL : MMRel_AMOOR_W_RL , StdMMR6Rel_AMOOR_W_RL , ArithLogicI_AMOOR_W_RL <"andi", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOOR_W_RL <0xc>, ISA_MIPS1_AMOOR_W_RL , AMOOR_W_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOOR_W_AQ_RL;
class MipsInst_AMOOR_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOOR_W_AQ_RL {
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
class StdArch_AMOOR_W_AQ_RL{
	string  Arch="";
}
class InstSE_AMOOR_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOOR_W_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOOR_W_AQ_RL;
class ADDI_FM_AMOOR_W_AQ_RL<bits<6>  op> : StdArch_AMOOR_W_AQ_RL ;
def II_ANDI_AMOOR_W_AQ_RL : InstrItinClass ;
class ISA_MIPS1_AMOOR_W_AQ_RL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOOR_W_AQ_RL;
class ArithLogicI_AMOOR_W_AQ_RL<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOOR_W_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoor.w.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOOR_W_AQ_RL : MMRel_AMOOR_W_AQ_RL , StdMMR6Rel_AMOOR_W_AQ_RL , ArithLogicI_AMOOR_W_AQ_RL <"andi", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOOR_W_AQ_RL <0xc>, ISA_MIPS1_AMOOR_W_AQ_RL , AMOOR_W_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOXOR_W;
class MipsInst_AMOXOR_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOXOR_W {
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
class StdArch_AMOXOR_W{
	string  Arch="";
}
class InstSE_AMOXOR_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOXOR_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOXOR_W;
class ADDI_FM_AMOXOR_W<bits<6>  op> : StdArch_AMOXOR_W ;
def II_XORI_AMOXOR_W : InstrItinClass ;
class ISA_MIPS1_AMOXOR_W{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOXOR_W;
class ArithLogicI_AMOXOR_W<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOXOR_W <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoxor.w	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOXOR_W : MMRel_AMOXOR_W , StdMMR6Rel_AMOXOR_W , ArithLogicI_AMOXOR_W <"xori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOXOR_W <0xe>, ISA_MIPS1_AMOXOR_W , AMOXOR_W_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOXOR_W_AQ;
class MipsInst_AMOXOR_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOXOR_W_AQ {
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
class StdArch_AMOXOR_W_AQ{
	string  Arch="";
}
class InstSE_AMOXOR_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOXOR_W_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOXOR_W_AQ;
class ADDI_FM_AMOXOR_W_AQ<bits<6>  op> : StdArch_AMOXOR_W_AQ ;
def II_XORI_AMOXOR_W_AQ : InstrItinClass ;
class ISA_MIPS1_AMOXOR_W_AQ{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOXOR_W_AQ;
class ArithLogicI_AMOXOR_W_AQ<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOXOR_W_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoxor.w.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOXOR_W_AQ : MMRel_AMOXOR_W_AQ , StdMMR6Rel_AMOXOR_W_AQ , ArithLogicI_AMOXOR_W_AQ <"xori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOXOR_W_AQ <0xe>, ISA_MIPS1_AMOXOR_W_AQ , AMOXOR_W_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOXOR_W_RL;
class MipsInst_AMOXOR_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOXOR_W_RL {
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
class StdArch_AMOXOR_W_RL{
	string  Arch="";
}
class InstSE_AMOXOR_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOXOR_W_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOXOR_W_RL;
class ADDI_FM_AMOXOR_W_RL<bits<6>  op> : StdArch_AMOXOR_W_RL ;
def II_XORI_AMOXOR_W_RL : InstrItinClass ;
class ISA_MIPS1_AMOXOR_W_RL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOXOR_W_RL;
class ArithLogicI_AMOXOR_W_RL<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOXOR_W_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoxor.w.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOXOR_W_RL : MMRel_AMOXOR_W_RL , StdMMR6Rel_AMOXOR_W_RL , ArithLogicI_AMOXOR_W_RL <"xori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOXOR_W_RL <0xe>, ISA_MIPS1_AMOXOR_W_RL , AMOXOR_W_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOXOR_W_AQ_RL;
class MipsInst_AMOXOR_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOXOR_W_AQ_RL {
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
class StdArch_AMOXOR_W_AQ_RL{
	string  Arch="";
}
class InstSE_AMOXOR_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOXOR_W_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdMMR6Rel_AMOXOR_W_AQ_RL;
class ADDI_FM_AMOXOR_W_AQ_RL<bits<6>  op> : StdArch_AMOXOR_W_AQ_RL ;
def II_XORI_AMOXOR_W_AQ_RL : InstrItinClass ;
class ISA_MIPS1_AMOXOR_W_AQ_RL{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_AMOXOR_W_AQ_RL;
class ArithLogicI_AMOXOR_W_AQ_RL<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_AMOXOR_W_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoxor.w.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def AMOXOR_W_AQ_RL : MMRel_AMOXOR_W_AQ_RL , StdMMR6Rel_AMOXOR_W_AQ_RL , ArithLogicI_AMOXOR_W_AQ_RL <"xori", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_AMOXOR_W_AQ_RL <0xe>, ISA_MIPS1_AMOXOR_W_AQ_RL , AMOXOR_W_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_LR_D;
class MipsInst_LR_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LR_D {
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
class StdArch_LR_D{
	string  Arch="";
}
class InstSE_LR_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LR_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_NOT_32R6_64R6_LR_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LDR_LR_D : InstrItinClass ;
class LW_FM_LR_D<bits<6>  op> : StdArch_LR_D ;
class LoadLeftRight_LR_D<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_LR_D <(outs GPR:$rd), (ins GPRMemAtomic:$rs1), "lr.d	$rd, $rs1", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	string  Constraints="";
	let  BaseOpcode=opstr;
}
def LR_D : LoadLeftRight_LR_D <"", ?, ?, NoItinerary>, LW_FM_LR_D <0x1b>, ISA_MIPS3_NOT_32R6_64R6_LR_D , LR_D_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_LR_D_AQ;
class MipsInst_LR_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LR_D_AQ {
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
class StdArch_LR_D_AQ{
	string  Arch="";
}
class InstSE_LR_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LR_D_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_NOT_32R6_64R6_LR_D_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LDR_LR_D_AQ : InstrItinClass ;
class LW_FM_LR_D_AQ<bits<6>  op> : StdArch_LR_D_AQ ;
class LoadLeftRight_LR_D_AQ<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_LR_D_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1), "lr.d.aq	$rd, $rs1", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	string  Constraints="";
	let  BaseOpcode=opstr;
}
def LR_D_AQ : LoadLeftRight_LR_D_AQ <"", ?, ?, NoItinerary>, LW_FM_LR_D_AQ <0x1b>, ISA_MIPS3_NOT_32R6_64R6_LR_D_AQ , LR_D_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_LR_D_RL;
class MipsInst_LR_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LR_D_RL {
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
class StdArch_LR_D_RL{
	string  Arch="";
}
class InstSE_LR_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LR_D_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_NOT_32R6_64R6_LR_D_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LDR_LR_D_RL : InstrItinClass ;
class LW_FM_LR_D_RL<bits<6>  op> : StdArch_LR_D_RL ;
class LoadLeftRight_LR_D_RL<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_LR_D_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1), "lr.d.rl	$rd, $rs1", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	string  Constraints="";
	let  BaseOpcode=opstr;
}
def LR_D_RL : LoadLeftRight_LR_D_RL <"", ?, ?, NoItinerary>, LW_FM_LR_D_RL <0x1b>, ISA_MIPS3_NOT_32R6_64R6_LR_D_RL , LR_D_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_LR_D_AQ_RL;
class MipsInst_LR_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LR_D_AQ_RL {
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
class StdArch_LR_D_AQ_RL{
	string  Arch="";
}
class InstSE_LR_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LR_D_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_NOT_32R6_64R6_LR_D_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LDR_LR_D_AQ_RL : InstrItinClass ;
class LW_FM_LR_D_AQ_RL<bits<6>  op> : StdArch_LR_D_AQ_RL ;
class LoadLeftRight_LR_D_AQ_RL<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_LR_D_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1), "lr.d.aqrl	$rd, $rs1", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	string  Constraints="";
	let  BaseOpcode=opstr;
}
def LR_D_AQ_RL : LoadLeftRight_LR_D_AQ_RL <"", ?, ?, NoItinerary>, LW_FM_LR_D_AQ_RL <0x1b>, ISA_MIPS3_NOT_32R6_64R6_LR_D_AQ_RL , LR_D_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_LR_W;
class MipsInst_LR_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LR_W {
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
class InstSE_LR_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LR_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_LR_W{
	string  Arch="";
}
class LoadMemory_LR_W<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LR_W <(outs GPR:$rd), (ins GPRMemAtomic:$rs1), "lr.w	$rd, $rs1", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class ISA_MIPS3_LR_W{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LWU_LR_W : InstrItinClass ;
class LW_FM_LR_W<bits<6>  op> : StdArch_LR_W ;
class MMRel_LR_W;
class Load_LR_W<string  opstr, DAGOperand  RO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : LoadMemory_LR_W <opstr, RO, i1imm, OpNode, Itin, Addr>;
def LR_W : MMRel_LR_W , Load_LR_W <"", i1imm, null_frag, NoItinerary>, LW_FM_LR_W <0x27>, ISA_MIPS3_LR_W , LR_W_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtA];
}
class PredicateControl_LR_W_AQ;
class MipsInst_LR_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LR_W_AQ {
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
class InstSE_LR_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LR_W_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_LR_W_AQ{
	string  Arch="";
}
class LoadMemory_LR_W_AQ<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LR_W_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1), "lr.w.aq	$rd, $rs1", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class ISA_MIPS3_LR_W_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LWU_LR_W_AQ : InstrItinClass ;
class LW_FM_LR_W_AQ<bits<6>  op> : StdArch_LR_W_AQ ;
class MMRel_LR_W_AQ;
class Load_LR_W_AQ<string  opstr, DAGOperand  RO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : LoadMemory_LR_W_AQ <opstr, RO, i1imm, OpNode, Itin, Addr>;
def LR_W_AQ : MMRel_LR_W_AQ , Load_LR_W_AQ <"", i1imm, null_frag, NoItinerary>, LW_FM_LR_W_AQ <0x27>, ISA_MIPS3_LR_W_AQ , LR_W_AQ_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtA];
}
class PredicateControl_LR_W_RL;
class MipsInst_LR_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LR_W_RL {
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
class InstSE_LR_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LR_W_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_LR_W_RL{
	string  Arch="";
}
class LoadMemory_LR_W_RL<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LR_W_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1), "lr.w.rl	$rd, $rs1", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class ISA_MIPS3_LR_W_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LWU_LR_W_RL : InstrItinClass ;
class LW_FM_LR_W_RL<bits<6>  op> : StdArch_LR_W_RL ;
class MMRel_LR_W_RL;
class Load_LR_W_RL<string  opstr, DAGOperand  RO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : LoadMemory_LR_W_RL <opstr, RO, i1imm, OpNode, Itin, Addr>;
def LR_W_RL : MMRel_LR_W_RL , Load_LR_W_RL <"", i1imm, null_frag, NoItinerary>, LW_FM_LR_W_RL <0x27>, ISA_MIPS3_LR_W_RL , LR_W_RL_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtA];
}
class PredicateControl_LR_W_AQ_RL;
class MipsInst_LR_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_LR_W_AQ_RL {
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
class InstSE_LR_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_LR_W_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_LR_W_AQ_RL{
	string  Arch="";
}
class LoadMemory_LR_W_AQ_RL<string  opstr, DAGOperand  RO, DAGOperand  MO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : InstSE_LR_W_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1), "lr.w.aqrl	$rd, $rs1", [], Itin, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  canFoldAsLoad=false;
	string  BaseOpcode=opstr;
	let  mayLoad=1;
}
class ISA_MIPS3_LR_W_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_LWU_LR_W_AQ_RL : InstrItinClass ;
class LW_FM_LR_W_AQ_RL<bits<6>  op> : StdArch_LR_W_AQ_RL ;
class MMRel_LR_W_AQ_RL;
class Load_LR_W_AQ_RL<string  opstr, DAGOperand  RO, SDPatternOperator  OpNode=null_frag, InstrItinClass  Itin=NoItinerary, ComplexPattern  Addr=addr> : LoadMemory_LR_W_AQ_RL <opstr, RO, i1imm, OpNode, Itin, Addr>;
def LR_W_AQ_RL : MMRel_LR_W_AQ_RL , Load_LR_W_AQ_RL <"", i1imm, null_frag, NoItinerary>, LW_FM_LR_W_AQ_RL <0x27>, ISA_MIPS3_LR_W_AQ_RL , LR_W_AQ_RL_AUX {
	  	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtA];
}
class PredicateControl_SC_D;
class MipsInst_SC_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SC_D {
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
class InstSE_SC_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SC_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SC_D{
	string  Arch="";
}
class StoreLeftRight_SC_D<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_SC_D <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "sc.d	$rd, $rs2, $rs1", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  BaseOpcode=opstr;
}
class ISA_MIPS3_NOT_32R6_64R6_SC_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SDL_SC_D : InstrItinClass ;
class LW_FM_SC_D<bits<6>  op> : StdArch_SC_D ;
def SC_D : StoreLeftRight_SC_D <"", ?, ?, NoItinerary>, LW_FM_SC_D <0x2c>, ISA_MIPS3_NOT_32R6_64R6_SC_D , SC_D_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_SC_D_AQ;
class MipsInst_SC_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SC_D_AQ {
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
class InstSE_SC_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SC_D_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SC_D_AQ{
	string  Arch="";
}
class StoreLeftRight_SC_D_AQ<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_SC_D_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "sc.d.aq	$rd, $rs2, $rs1", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  BaseOpcode=opstr;
}
class ISA_MIPS3_NOT_32R6_64R6_SC_D_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SDL_SC_D_AQ : InstrItinClass ;
class LW_FM_SC_D_AQ<bits<6>  op> : StdArch_SC_D_AQ ;
def SC_D_AQ : StoreLeftRight_SC_D_AQ <"", ?, ?, NoItinerary>, LW_FM_SC_D_AQ <0x2c>, ISA_MIPS3_NOT_32R6_64R6_SC_D_AQ , SC_D_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_SC_D_RL;
class MipsInst_SC_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SC_D_RL {
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
class InstSE_SC_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SC_D_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SC_D_RL{
	string  Arch="";
}
class StoreLeftRight_SC_D_RL<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_SC_D_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "sc.d.rl	$rd, $rs2, $rs1", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  BaseOpcode=opstr;
}
class ISA_MIPS3_NOT_32R6_64R6_SC_D_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SDL_SC_D_RL : InstrItinClass ;
class LW_FM_SC_D_RL<bits<6>  op> : StdArch_SC_D_RL ;
def SC_D_RL : StoreLeftRight_SC_D_RL <"", ?, ?, NoItinerary>, LW_FM_SC_D_RL <0x2c>, ISA_MIPS3_NOT_32R6_64R6_SC_D_RL , SC_D_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_SC_D_AQ_RL;
class MipsInst_SC_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SC_D_AQ_RL {
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
class InstSE_SC_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SC_D_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_SC_D_AQ_RL{
	string  Arch="";
}
class StoreLeftRight_SC_D_AQ_RL<string  opstr, SDNode  OpNode, RegisterOperand  RO, InstrItinClass  Itin> : InstSE_SC_D_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "sc.d.aqrl	$rd, $rs2, $rs1", [], Itin, InstFormatR>{
	let  DecoderMethod="";
	let  BaseOpcode=opstr;
}
class ISA_MIPS3_NOT_32R6_64R6_SC_D_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_SDL_SC_D_AQ_RL : InstrItinClass ;
class LW_FM_SC_D_AQ_RL<bits<6>  op> : StdArch_SC_D_AQ_RL ;
def SC_D_AQ_RL : StoreLeftRight_SC_D_AQ_RL <"", ?, ?, NoItinerary>, LW_FM_SC_D_AQ_RL <0x2c>, ISA_MIPS3_NOT_32R6_64R6_SC_D_AQ_RL , SC_D_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_SC_W;
class MipsInst_SC_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SC_W {
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
class MMArch_SC_W{
	string  Arch="";
}
def II_SWP_SC_W : InstrItinClass ;
class InstSE_SC_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SC_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LWM_FM_MM_SC_W<bits<4>  funct> : MMArch_SC_W ;
class ISA_MICROMIPS_SC_W{
	list<Predicate>  EncodingPredicates=[];
}
class StorePairMM_SC_W<string  opstr, ComplexPattern  Addr=addr> : InstSE_SC_W <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "sc.w	$rd, $rs2, $rs1", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayStore=1;
	let  AsmMatchConverter="";
}
def SC_W : StorePairMM_SC_W <"swp">, LWM_FM_MM_SC_W <0x9>, ISA_MICROMIPS_SC_W , SC_W_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtA];
}
class PredicateControl_SC_W_AQ;
class MipsInst_SC_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SC_W_AQ {
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
class MMArch_SC_W_AQ{
	string  Arch="";
}
def II_SWP_SC_W_AQ : InstrItinClass ;
class InstSE_SC_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SC_W_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LWM_FM_MM_SC_W_AQ<bits<4>  funct> : MMArch_SC_W_AQ ;
class ISA_MICROMIPS_SC_W_AQ{
	list<Predicate>  EncodingPredicates=[];
}
class StorePairMM_SC_W_AQ<string  opstr, ComplexPattern  Addr=addr> : InstSE_SC_W_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "sc.w.aq	$rd, $rs2, $rs1", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayStore=1;
	let  AsmMatchConverter="";
}
def SC_W_AQ : StorePairMM_SC_W_AQ <"swp">, LWM_FM_MM_SC_W_AQ <0x9>, ISA_MICROMIPS_SC_W_AQ , SC_W_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtA];
}
class PredicateControl_SC_W_RL;
class MipsInst_SC_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SC_W_RL {
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
class MMArch_SC_W_RL{
	string  Arch="";
}
def II_SWP_SC_W_RL : InstrItinClass ;
class InstSE_SC_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SC_W_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LWM_FM_MM_SC_W_RL<bits<4>  funct> : MMArch_SC_W_RL ;
class ISA_MICROMIPS_SC_W_RL{
	list<Predicate>  EncodingPredicates=[];
}
class StorePairMM_SC_W_RL<string  opstr, ComplexPattern  Addr=addr> : InstSE_SC_W_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "sc.w.rl	$rd, $rs2, $rs1", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayStore=1;
	let  AsmMatchConverter="";
}
def SC_W_RL : StorePairMM_SC_W_RL <"swp">, LWM_FM_MM_SC_W_RL <0x9>, ISA_MICROMIPS_SC_W_RL , SC_W_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtA];
}
class PredicateControl_SC_W_AQ_RL;
class MipsInst_SC_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_SC_W_AQ_RL {
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
class MMArch_SC_W_AQ_RL{
	string  Arch="";
}
def II_SWP_SC_W_AQ_RL : InstrItinClass ;
class InstSE_SC_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_SC_W_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class LWM_FM_MM_SC_W_AQ_RL<bits<4>  funct> : MMArch_SC_W_AQ_RL ;
class ISA_MICROMIPS_SC_W_AQ_RL{
	list<Predicate>  EncodingPredicates=[];
}
class StorePairMM_SC_W_AQ_RL<string  opstr, ComplexPattern  Addr=addr> : InstSE_SC_W_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "sc.w.aqrl	$rd, $rs2, $rs1", [], NoItinerary, InstFormatR, opstr>{
	let  DecoderMethod="";
	let  mayStore=1;
	let  AsmMatchConverter="";
}
def SC_W_AQ_RL : StorePairMM_SC_W_AQ_RL <"swp">, LWM_FM_MM_SC_W_AQ_RL <0x9>, ISA_MICROMIPS_SC_W_AQ_RL , SC_W_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOSWAP_D;
class MipsInst_AMOSWAP_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOSWAP_D {
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
class StdArch_AMOSWAP_D{
	string  Arch="";
}
class InstSE_AMOSWAP_D<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOSWAP_D <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MULT_FM_AMOSWAP_D<bits<6>  op, bits<6>  funct> : StdArch_AMOSWAP_D ;
class ISA_MIPS3_NOT_32R6_64R6_AMOSWAP_D{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class Div_AMOSWAP_D<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_AMOSWAP_D <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoswap.d	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  Defs=DefRegs;
}
def II_DDIVU_AMOSWAP_D : InstrItinClass ;
def AMOSWAP_D : Div_AMOSWAP_D <"ddivu", NoItinerary, ?, []>, MULT_FM_AMOSWAP_D <0, 0x1f>, ISA_MIPS3_NOT_32R6_64R6_AMOSWAP_D , AMOSWAP_D_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOSWAP_D_AQ;
class MipsInst_AMOSWAP_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOSWAP_D_AQ {
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
class StdArch_AMOSWAP_D_AQ{
	string  Arch="";
}
class InstSE_AMOSWAP_D_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOSWAP_D_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MULT_FM_AMOSWAP_D_AQ<bits<6>  op, bits<6>  funct> : StdArch_AMOSWAP_D_AQ ;
class ISA_MIPS3_NOT_32R6_64R6_AMOSWAP_D_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class Div_AMOSWAP_D_AQ<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_AMOSWAP_D_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoswap.d.aq	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  Defs=DefRegs;
}
def II_DDIVU_AMOSWAP_D_AQ : InstrItinClass ;
def AMOSWAP_D_AQ : Div_AMOSWAP_D_AQ <"ddivu", NoItinerary, ?, []>, MULT_FM_AMOSWAP_D_AQ <0, 0x1f>, ISA_MIPS3_NOT_32R6_64R6_AMOSWAP_D_AQ , AMOSWAP_D_AQ_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOSWAP_D_RL;
class MipsInst_AMOSWAP_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOSWAP_D_RL {
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
class StdArch_AMOSWAP_D_RL{
	string  Arch="";
}
class InstSE_AMOSWAP_D_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOSWAP_D_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MULT_FM_AMOSWAP_D_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOSWAP_D_RL ;
class ISA_MIPS3_NOT_32R6_64R6_AMOSWAP_D_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class Div_AMOSWAP_D_RL<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_AMOSWAP_D_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoswap.d.rl	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  Defs=DefRegs;
}
def II_DDIVU_AMOSWAP_D_RL : InstrItinClass ;
def AMOSWAP_D_RL : Div_AMOSWAP_D_RL <"ddivu", NoItinerary, ?, []>, MULT_FM_AMOSWAP_D_RL <0, 0x1f>, ISA_MIPS3_NOT_32R6_64R6_AMOSWAP_D_RL , AMOSWAP_D_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOSWAP_D_AQ_RL;
class MipsInst_AMOSWAP_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOSWAP_D_AQ_RL {
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
class StdArch_AMOSWAP_D_AQ_RL{
	string  Arch="";
}
class InstSE_AMOSWAP_D_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOSWAP_D_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class MULT_FM_AMOSWAP_D_AQ_RL<bits<6>  op, bits<6>  funct> : StdArch_AMOSWAP_D_AQ_RL ;
class ISA_MIPS3_NOT_32R6_64R6_AMOSWAP_D_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class Div_AMOSWAP_D_AQ_RL<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_AMOSWAP_D_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoswap.d.aqrl	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  Defs=DefRegs;
}
def II_DDIVU_AMOSWAP_D_AQ_RL : InstrItinClass ;
def AMOSWAP_D_AQ_RL : Div_AMOSWAP_D_AQ_RL <"ddivu", NoItinerary, ?, []>, MULT_FM_AMOSWAP_D_AQ_RL <0, 0x1f>, ISA_MIPS3_NOT_32R6_64R6_AMOSWAP_D_AQ_RL , AMOSWAP_D_AQ_RL_AUX {
	  	let mayLoad = 1;
	let hasSideEffects = 0;
	let mayStore = 1;
	let Predicates = [HasStdExtA, IsRV64];
}
class PredicateControl_AMOSWAP_W;
class MipsInst_AMOSWAP_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOSWAP_W {
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
class InstSE_AMOSWAP_W<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOSWAP_W <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOSWAP_W{
	string  Arch="";
}
class ISA_MIPS32R2_AMOSWAP_W{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SubwordSwap_AMOSWAP_W<string  opstr, RegisterOperand  RO, InstrItinClass  itin=NoItinerary> : InstSE_AMOSWAP_W <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoswap.w	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  hasSideEffects=0;
}
class MMRel_AMOSWAP_W;
def II_WSBH_AMOSWAP_W : InstrItinClass ;
class SEB_FM_AMOSWAP_W<bits<5>  funct, bits<6>  funct2> : StdArch_AMOSWAP_W ;
def AMOSWAP_W : MMRel_AMOSWAP_W , SubwordSwap_AMOSWAP_W <"wsbh", ?, NoItinerary>, SEB_FM_AMOSWAP_W <2, 0x20>, ISA_MIPS32R2_AMOSWAP_W , AMOSWAP_W_AUX {
	  	let mayLoad = 1;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOSWAP_W_AQ;
class MipsInst_AMOSWAP_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOSWAP_W_AQ {
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
class InstSE_AMOSWAP_W_AQ<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOSWAP_W_AQ <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOSWAP_W_AQ{
	string  Arch="";
}
class ISA_MIPS32R2_AMOSWAP_W_AQ{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SubwordSwap_AMOSWAP_W_AQ<string  opstr, RegisterOperand  RO, InstrItinClass  itin=NoItinerary> : InstSE_AMOSWAP_W_AQ <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoswap.w.aq	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  hasSideEffects=0;
}
class MMRel_AMOSWAP_W_AQ;
def II_WSBH_AMOSWAP_W_AQ : InstrItinClass ;
class SEB_FM_AMOSWAP_W_AQ<bits<5>  funct, bits<6>  funct2> : StdArch_AMOSWAP_W_AQ ;
def AMOSWAP_W_AQ : MMRel_AMOSWAP_W_AQ , SubwordSwap_AMOSWAP_W_AQ <"wsbh", ?, NoItinerary>, SEB_FM_AMOSWAP_W_AQ <2, 0x20>, ISA_MIPS32R2_AMOSWAP_W_AQ , AMOSWAP_W_AQ_AUX {
	  	let mayLoad = 1;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOSWAP_W_RL;
class MipsInst_AMOSWAP_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOSWAP_W_RL {
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
class InstSE_AMOSWAP_W_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOSWAP_W_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOSWAP_W_RL{
	string  Arch="";
}
class ISA_MIPS32R2_AMOSWAP_W_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SubwordSwap_AMOSWAP_W_RL<string  opstr, RegisterOperand  RO, InstrItinClass  itin=NoItinerary> : InstSE_AMOSWAP_W_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoswap.w.rl	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  hasSideEffects=0;
}
class MMRel_AMOSWAP_W_RL;
def II_WSBH_AMOSWAP_W_RL : InstrItinClass ;
class SEB_FM_AMOSWAP_W_RL<bits<5>  funct, bits<6>  funct2> : StdArch_AMOSWAP_W_RL ;
def AMOSWAP_W_RL : MMRel_AMOSWAP_W_RL , SubwordSwap_AMOSWAP_W_RL <"wsbh", ?, NoItinerary>, SEB_FM_AMOSWAP_W_RL <2, 0x20>, ISA_MIPS32R2_AMOSWAP_W_RL , AMOSWAP_W_RL_AUX {
	  	let mayLoad = 1;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
class PredicateControl_AMOSWAP_W_AQ_RL;
class MipsInst_AMOSWAP_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_AMOSWAP_W_AQ_RL {
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
class InstSE_AMOSWAP_W_AQ_RL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_AMOSWAP_W_AQ_RL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_AMOSWAP_W_AQ_RL{
	string  Arch="";
}
class ISA_MIPS32R2_AMOSWAP_W_AQ_RL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class SubwordSwap_AMOSWAP_W_AQ_RL<string  opstr, RegisterOperand  RO, InstrItinClass  itin=NoItinerary> : InstSE_AMOSWAP_W_AQ_RL <(outs GPR:$rd), (ins GPRMemAtomic:$rs1, GPR:$rs2), "amoswap.w.aqrl	$rd, $rs2, $rs1", [], itin, InstFormatR, opstr>{
	let  hasSideEffects=0;
}
class MMRel_AMOSWAP_W_AQ_RL;
def II_WSBH_AMOSWAP_W_AQ_RL : InstrItinClass ;
class SEB_FM_AMOSWAP_W_AQ_RL<bits<5>  funct, bits<6>  funct2> : StdArch_AMOSWAP_W_AQ_RL ;
def AMOSWAP_W_AQ_RL : MMRel_AMOSWAP_W_AQ_RL , SubwordSwap_AMOSWAP_W_AQ_RL <"wsbh", ?, NoItinerary>, SEB_FM_AMOSWAP_W_AQ_RL <2, 0x20>, ISA_MIPS32R2_AMOSWAP_W_AQ_RL , AMOSWAP_W_AQ_RL_AUX {
	  	let mayLoad = 1;
	let mayStore = 1;
	let Predicates = [HasStdExtA];
}
