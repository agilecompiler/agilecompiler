class DIV_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class DIV_AUX: DIV_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIDiv, ReadIDiv, ReadIDiv]>;
class DIVU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class DIVU_AUX: DIVU_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIDiv, ReadIDiv, ReadIDiv]>;
class DIVUW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class DIVUW_AUX: DIVUW_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIDiv32, ReadIDiv32, ReadIDiv32]>;
class DIVW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b100;
	bits<5> rd;
	bits<7> opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class DIVW_AUX: DIVW_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIDiv32, ReadIDiv32, ReadIDiv32]>;
class MUL_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class MUL_AUX: MUL_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIMul, ReadIMul, ReadIMul]>;
class MULH_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class MULH_AUX: MULH_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIMul, ReadIMul, ReadIMul]>;
class MULHSU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class MULHSU_AUX: MULHSU_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIMul, ReadIMul, ReadIMul]>;
class MULHU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class MULHU_AUX: MULHU_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIMul, ReadIMul, ReadIMul]>;
class MULW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class MULW_AUX: MULW_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIMul32, ReadIMul32, ReadIMul32]>;
class REM_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class REM_AUX: REM_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIDiv, ReadIDiv, ReadIDiv]>;
class REMU_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
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
class REMU_AUX: REMU_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIDiv, ReadIDiv, ReadIDiv]>;
class REMUW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b111;
	bits<5> rd;
	bits<7> opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class REMUW_AUX: REMUW_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIDiv32, ReadIDiv32, ReadIDiv32]>;
class REMW_FM2: ATGInst{
	bits<32> SoftFail=0;
	bits<32> Inst;
	bits<7> funct7 = 0b0000001;
	bits<5> rs2;
	bits<5> rs1;
	bits<3> funct3 = 0b110;
	bits<5> rd;
	bits<7> opcode = 0b0111011;
	let Inst{31-25} = funct7;
	let Inst{24-20} = rs2;
	let Inst{19-15} = rs1;
	let Inst{14-12} = funct3;
	let Inst{11-7} = rd;
	let Inst{6-0} = opcode;
}
class REMW_AUX: REMW_FM2, TSFlagTemplate<InstFormatR>, Sched<[WriteIDiv32, ReadIDiv32, ReadIDiv32]>;
class PredicateControl_DIV;
class MipsInst_DIV<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_DIV {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class InstSE_DIV<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_DIV <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_DIV{
	string  Arch="";
}
class ISA_MIPS1_NOT_32R6_64R6_DIV{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_DIV;
def II_DIV_DIV : InstrItinClass ;
class Div_DIV<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_DIV <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "div	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  Defs=DefRegs;
}
class MULT_FM_DIV<bits<6>  op, bits<6>  funct> : StdArch_DIV ;
def DIV : MMRel_DIV , Div_DIV <"div", NoItinerary, ?, []>, MULT_FM_DIV <0, 0x1a>, ISA_MIPS1_NOT_32R6_64R6_DIV , DIV_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM];
}
class PredicateControl_DIVU;
class MipsInst_DIVU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_DIVU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class InstSE_DIVU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_DIVU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_DIVU{
	string  Arch="";
}
class ISA_MIPS1_NOT_32R6_64R6_DIVU{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_DIVU;
class Div_DIVU<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_DIVU <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "divu	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  Defs=DefRegs;
}
class MULT_FM_DIVU<bits<6>  op, bits<6>  funct> : StdArch_DIVU ;
def II_DIVU_DIVU : InstrItinClass ;
def DIVU : MMRel_DIVU , Div_DIVU <"divu", NoItinerary, ?, []>, MULT_FM_DIVU <0, 0x1b>, ISA_MIPS1_NOT_32R6_64R6_DIVU , DIVU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM];
}
class PredicateControl_DIVUW;
class MipsInst_DIVUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_DIVUW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class StdArch_DIVUW{
	string  Arch="";
}
class InstSE_DIVUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_DIVUW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADDI_FM_DIVUW<bits<6>  op> : StdArch_DIVUW ;
class ArithLogicI_DIVUW<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_DIVUW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "divuw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
class ISA_MIPS3_NOT_32R6_64R6_DIVUW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def II_DADDI_DIVUW : InstrItinClass ;
def DIVUW : ArithLogicI_DIVUW <"daddi", ?, ?, NoItinerary>, ADDI_FM_DIVUW <0x18>, ISA_MIPS3_NOT_32R6_64R6_DIVUW , DIVUW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM, IsRV64];
}
class PredicateControl_DIVW;
class MipsInst_DIVW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_DIVW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class HARDFLOAT_DIVW{
	list<Predicate>  HardFloatPredicate=[];
}
class InstSE_DIVW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_DIVW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_DIVW{
	string  Arch="";
}
class MMRel_DIVW;
class FGR_32_DIVW{
	list<Predicate>  FGRPredicates=[];
}
class ADDS_FT_DIVW<string  opstr, RegisterOperand  RC, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : InstSE_DIVW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "divw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>, HARDFLOAT_DIVW {
	let  isCommutable=IsComm;
}
class ISA_MIPS1_DIVW{
	list<Predicate>  EncodingPredicates=[];
}
class ADDS_FM_DIVW<bits<6>  funct, bits<5>  fmt> : StdArch_DIVW ;
def II_SUB_D_DIVW : InstrItinClass ;
class ADDS_M_D32_DIVW<string  opstr, InstrItinClass  Itin, bit  IsComm, SDPatternOperator  OpNode=null_frag> : MMRel_DIVW , ADDS_FT_DIVW <opstr, ?, Itin, IsComm, OpNode>, FGR_32_DIVW ;
def DIVW : ADDS_M_D32_DIVW <"sub.d", NoItinerary, false, null_frag>, ADDS_FM_DIVW <0x01, 17>, ISA_MIPS1_DIVW , DIVW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM, IsRV64];
}
class PredicateControl_MUL;
class MipsInst_MUL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_MUL {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class StdArch_MUL{
	string  Arch="";
}
class InstSE_MUL<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_MUL <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_MUL<bits<6>  op, bits<6>  funct> : StdArch_MUL ;
class MMRel_MUL;
class ArithLogicR_MUL<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_MUL <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "mul	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_MUL_MUL : InstrItinClass ;
class ISA_MIPS32_NOT_32R6_64R6_MUL{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def MUL : MMRel_MUL , ArithLogicR_MUL <"mul", ?, false, NoItinerary, null_frag>, ADD_FM_MUL <0x1c, 2>, ISA_MIPS32_NOT_32R6_64R6_MUL , MUL_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM];
}
class PredicateControl_MULH;
class MipsInst_MULH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_MULH {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class InstSE_MULH<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_MULH <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
def II_SLTI_SLTIU_MULH : InstrItinClass ;
class StdArch_MULH{
	string  Arch="";
}
class ISA_MIPS1_MULH{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_MULH;
class SetCC_I_MULH<string  opstr, PatFrag  cond_op, Operand  Od, PatLeaf  imm_type, RegisterOperand  RO> : InstSE_MULH <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "mulh	$rd, $rs1, $rs2", [], NoItinerary, InstFormatR, opstr>;
class SLTI_FM_MULH<bits<6>  op> : StdArch_MULH ;
def MULH : MMRel_MULH , SetCC_I_MULH <"slti", ?, ?, ?, ?>, SLTI_FM_MULH <0xa>, ISA_MIPS1_MULH , MULH_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM];
}
class PredicateControl_MULHSU;
class MipsInst_MULHSU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_MULHSU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class InstSE_MULHSU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_MULHSU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_MULHSU{
	string  Arch="";
}
class ISA_MIPS1_NOT_32R6_64R6_MULHSU{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_MULHSU;
def II_DIV_MULHSU : InstrItinClass ;
class Div_MULHSU<string  opstr, InstrItinClass  itin, RegisterOperand  RO, list<Register>  DefRegs> : InstSE_MULHSU <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "mulhsu	$rd, $rs1, $rs2", [], itin, InstFormatR, opstr>{
	let  Defs=DefRegs;
}
class MULT_FM_MULHSU<bits<6>  op, bits<6>  funct> : StdArch_MULHSU ;
def MULHSU : MMRel_MULHSU , Div_MULHSU <"div", NoItinerary, ?, []>, MULT_FM_MULHSU <0, 0x1a>, ISA_MIPS1_NOT_32R6_64R6_MULHSU , MULHSU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM];
}
class PredicateControl_MULHU;
class MipsInst_MULHU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_MULHU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class MipsR6Arch_MULHU<string  opstr>{
	string  Arch="";
	string  BaseOpcode=opstr;
}
class MipsR6Inst_MULHU : MipsInst_MULHU <(outs), (ins), "", [], NoItinerary, InstFormatR>{
	let  DecoderNamespace="";
}
def II_MUHU_MULHU : InstrItinClass ;
class MUL_R6_DESC_BASE_MULHU<string  instr_asm, RegisterOperand  GPROpnd, InstrItinClass  itin, SDPatternOperator  Op=null_frag> : MipsR6Arch_MULHU <instr_asm>{
	dag  OutOperandList=(outs GPR:$rd);
	dag  InOperandList=(ins GPR:$rs1, GPR:$rs2);
	string  AsmString="mulhu	$rd, $rs1, $rs2";
	list<dag>  Pattern=[];
	InstrItinClass  Itinerary=itin;
}
class SPECIAL_3R_FM_MULHU<bits<5>  mulop, bits<6>  funct> : MipsR6Inst_MULHU ;
class R6MMR6Rel_MULHU;
class MUHU_DESC_MULHU : MUL_R6_DESC_BASE_MULHU <"", ?, NoItinerary, null_frag>;
class ISA_MIPS32R6_MULHU{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class MUHU_ENC_MULHU : SPECIAL_3R_FM_MULHU <0b00011, 0b011001>;
def MULHU : R6MMR6Rel_MULHU , MUHU_ENC_MULHU , MUHU_DESC_MULHU , ISA_MIPS32R6_MULHU , MULHU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM];
}
class PredicateControl_MULW;
class MipsInst_MULW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_MULW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class StdArch_MULW{
	string  Arch="";
}
class InstSE_MULW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_MULW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ISA_MIPS3_MULW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ADDI_FM_MULW<bits<6>  op> : StdArch_MULW ;
class IsAsCheapAsAMove_MULW{
	bit  isAsCheapAsAMove=false;
}
class ArithLogicI_MULW<string  opstr, Operand  Od, RegisterOperand  RO, InstrItinClass  Itin=NoItinerary, SDPatternOperator  imm_type=null_frag, SDPatternOperator  OpNode=null_frag> : InstSE_MULW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "mulw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_DADDIU_MULW : InstrItinClass ;
def MULW : ArithLogicI_MULW <"daddiu", ?, ?, NoItinerary, null_frag, null_frag>, ADDI_FM_MULW <0x19>, IsAsCheapAsAMove_MULW , ISA_MIPS3_MULW , MULW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM, IsRV64];
}
class PredicateControl_REM;
class MipsInst_REM<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_REM {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class StdArch_REM{
	string  Arch="";
}
class InstSE_REM<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_REM <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_REM<bits<6>  op, bits<6>  funct> : StdArch_REM ;
class MMRel_REM;
class ArithLogicR_REM<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_REM <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "rem	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_MUL_REM : InstrItinClass ;
class ISA_MIPS32_NOT_32R6_64R6_REM{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
def REM : MMRel_REM , ArithLogicR_REM <"mul", ?, false, NoItinerary, null_frag>, ADD_FM_REM <0x1c, 2>, ISA_MIPS32_NOT_32R6_64R6_REM , REM_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM];
}
class PredicateControl_REMU;
class MipsInst_REMU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_REMU {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class StdArch_REMU{
	string  Arch="";
}
class InstSE_REMU<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_REMU <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class ADD_FM_REMU<bits<6>  op, bits<6>  funct> : StdArch_REMU ;
class StdMMR6Rel_REMU;
class ISA_MIPS1_REMU{
	list<Predicate>  EncodingPredicates=[];
}
class MMRel_REMU;
class ArithLogicR_REMU<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_REMU <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "remu	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
def II_ADD_REMU : InstrItinClass ;
def REMU : MMRel_REMU , StdMMR6Rel_REMU , ArithLogicR_REMU <"add", ?, false, NoItinerary>, ADD_FM_REMU <0, 0x20>, ISA_MIPS1_REMU , REMU_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM];
}
class PredicateControl_REMUW;
class MipsInst_REMUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_REMUW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class InstSE_REMUW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_REMUW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_REMUW{
	string  Arch="";
}
class ISA_MIPS3_REMUW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_REMUW<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_REMUW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "remuw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
class ADD_FM_REMUW<bits<6>  op, bits<6>  funct> : StdArch_REMUW ;
def II_DADDU_REMUW : InstrItinClass ;
def REMUW : ArithLogicR_REMUW <"daddu", ?, false, NoItinerary, null_frag>, ADD_FM_REMUW <0, 0x2d>, ISA_MIPS3_REMUW , REMUW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM, IsRV64];
}
class PredicateControl_REMW;
class MipsInst_REMW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f> : Instruction , PredicateControl_REMW {
	InstFormat  Form=f;
	let  Namespace="RISCV";
	let  Size=4;
	let  OutOperandList=outs;
	let  InOperandList=ins;
	let  AsmString=asmstr;
	let  Pattern=pattern;
	let  Itinerary=itin;
	bit  isCTI=0;
	bit  hasForbiddenSlot=0;
	bit  IsPCRelativeLoad=0;
	bit  hasFCCRegOperand=0;
	let  DecoderNamespace="";
}
class InstSE_REMW<dag  outs, dag  ins, string  asmstr, list<dag>  pattern, InstrItinClass  itin, InstFormat  f, string  opstr=""> : MipsInst_REMW <outs, ins, asmstr, pattern, itin, f>{
	string  BaseOpcode;
	string  Arch;
}
class StdArch_REMW{
	string  Arch="";
}
class ISA_MIPS3_REMW{
	list<Predicate>  InsnPredicates=[];
	list<Predicate>  EncodingPredicates=[];
}
class ArithLogicR_REMW<string  opstr, RegisterOperand  RO, bit  isComm=0, InstrItinClass  Itin=NoItinerary, SDPatternOperator  OpNode=null_frag> : InstSE_REMW <(outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2), "remw	$rd, $rs1, $rs2", [], Itin, InstFormatR, opstr>{
	let  isCommutable=isComm;
	let  isReMaterializable=false;
	let  TwoOperandAliasConstraint="";
}
class ADD_FM_REMW<bits<6>  op, bits<6>  funct> : StdArch_REMW ;
def II_DADDU_REMW : InstrItinClass ;
def REMW : ArithLogicR_REMW <"daddu", ?, false, NoItinerary, null_frag>, ADD_FM_REMW <0, 0x2d>, ISA_MIPS3_REMW , REMW_AUX {
	  	let mayLoad = 0;
	let hasSideEffects = 0;
	let mayStore = 0;
	let Predicates = [HasStdExtM, IsRV64];
}
