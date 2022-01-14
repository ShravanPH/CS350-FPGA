;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit ALU : 
  module ALU : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip opSel : UInt<2>, flip in_a : UInt<16>, flip in_b : UInt<16>, out : UInt<16>}
    
    node _T = eq(io.opSel, UInt<2>("h00")) @[ALU.scala 36:14]
    when _T : @[ALU.scala 36:24]
      node _io_out_T = add(io.in_a, io.in_b) @[ALU.scala 37:21]
      node _io_out_T_1 = tail(_io_out_T, 1) @[ALU.scala 37:21]
      io.out <= _io_out_T_1 @[ALU.scala 37:10]
      skip @[ALU.scala 36:24]
    else : @[ALU.scala 38:32]
      node _T_1 = eq(io.opSel, UInt<2>("h01")) @[ALU.scala 38:22]
      when _T_1 : @[ALU.scala 38:32]
        node _io_out_T_2 = and(io.in_a, io.in_b) @[ALU.scala 39:21]
        io.out <= _io_out_T_2 @[ALU.scala 39:10]
        skip @[ALU.scala 38:32]
      else : @[ALU.scala 40:32]
        node _T_2 = eq(io.opSel, UInt<2>("h02")) @[ALU.scala 40:22]
        when _T_2 : @[ALU.scala 40:32]
          node _io_out_T_3 = not(io.in_a) @[ALU.scala 41:13]
          io.out <= _io_out_T_3 @[ALU.scala 41:10]
          skip @[ALU.scala 40:32]
        else : @[ALU.scala 42:34]
          node _T_3 = eq(io.opSel, UInt<2>("h03")) @[ALU.scala 42:22]
          when _T_3 : @[ALU.scala 42:34]
            io.out <= io.in_a @[ALU.scala 43:10]
            skip @[ALU.scala 42:34]
          else : @[ALU.scala 44:14]
            io.out <= UInt<1>("h00") @[ALU.scala 45:9]
            skip @[ALU.scala 44:14]
    
