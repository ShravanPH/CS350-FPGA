;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit RegFile : 
  module RegFile : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip wEn : UInt<1>, flip sr1Sel : UInt<3>, flip sr2Sel : UInt<3>, flip drSel : UInt<3>, flip drIn : UInt<16>, sr1Out : UInt<16>, sr2Out : UInt<16>, debugR0 : UInt<16>, debugR1 : UInt<16>, debugR2 : UInt<16>, debugR3 : UInt<16>, debugR4 : UInt<16>, debugR5 : UInt<16>, debugR6 : UInt<16>, debugR7 : UInt<16>}
    
    wire _regs_WIRE : UInt<16>[8] @[RegFile.scala 34:29]
    _regs_WIRE[0] <= UInt<16>("h00") @[RegFile.scala 34:29]
    _regs_WIRE[1] <= UInt<16>("h00") @[RegFile.scala 34:29]
    _regs_WIRE[2] <= UInt<16>("h00") @[RegFile.scala 34:29]
    _regs_WIRE[3] <= UInt<16>("h00") @[RegFile.scala 34:29]
    _regs_WIRE[4] <= UInt<16>("h00") @[RegFile.scala 34:29]
    _regs_WIRE[5] <= UInt<16>("h00") @[RegFile.scala 34:29]
    _regs_WIRE[6] <= UInt<16>("h00") @[RegFile.scala 34:29]
    _regs_WIRE[7] <= UInt<16>("h00") @[RegFile.scala 34:29]
    reg regs : UInt<16>[8], clock with : (reset => (reset, _regs_WIRE)) @[RegFile.scala 34:21]
    node _T = eq(io.wEn, UInt<1>("h01")) @[RegFile.scala 43:14]
    when _T : @[RegFile.scala 43:24]
      regs[io.drSel] <= io.drIn @[RegFile.scala 44:19]
      io.sr1Out <= regs[io.sr1Sel] @[RegFile.scala 45:14]
      io.sr2Out <= regs[io.sr2Sel] @[RegFile.scala 46:14]
      skip @[RegFile.scala 43:24]
    else : @[RegFile.scala 47:14]
      io.sr1Out <= regs[io.sr1Sel] @[RegFile.scala 48:12]
      io.sr2Out <= regs[io.sr2Sel] @[RegFile.scala 49:12]
      skip @[RegFile.scala 47:14]
    io.debugR0 <= regs[0] @[RegFile.scala 86:14]
    io.debugR1 <= regs[1] @[RegFile.scala 87:14]
    io.debugR2 <= regs[2] @[RegFile.scala 88:14]
    io.debugR3 <= regs[3] @[RegFile.scala 89:14]
    io.debugR4 <= regs[4] @[RegFile.scala 90:14]
    io.debugR5 <= regs[5] @[RegFile.scala 91:14]
    io.debugR6 <= regs[6] @[RegFile.scala 92:14]
    io.debugR7 <= regs[7] @[RegFile.scala 93:14]
    
