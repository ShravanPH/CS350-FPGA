circuit ALU :
  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_opSel : UInt<2>
    input io_in_a : UInt<16>
    input io_in_b : UInt<16>
    output io_out : UInt<16>

    node _T = eq(io_opSel, UInt<2>("h0")) @[ALU.scala 36:14]
    node _io_out_T = add(io_in_a, io_in_b) @[ALU.scala 37:21]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ALU.scala 37:21]
    node _T_1 = eq(io_opSel, UInt<2>("h1")) @[ALU.scala 38:22]
    node _io_out_T_2 = and(io_in_a, io_in_b) @[ALU.scala 39:21]
    node _T_2 = eq(io_opSel, UInt<2>("h2")) @[ALU.scala 40:22]
    node _io_out_T_3 = not(io_in_a) @[ALU.scala 41:13]
    node _T_3 = eq(io_opSel, UInt<2>("h3")) @[ALU.scala 42:22]
    node _GEN_0 = mux(_T_3, io_in_a, UInt<1>("h0")) @[ALU.scala 42:34 ALU.scala 43:10 ALU.scala 45:9]
    node _GEN_1 = mux(_T_2, _io_out_T_3, _GEN_0) @[ALU.scala 40:32 ALU.scala 41:10]
    node _GEN_2 = mux(_T_1, _io_out_T_2, _GEN_1) @[ALU.scala 38:32 ALU.scala 39:10]
    node _GEN_3 = mux(_T, _io_out_T_1, _GEN_2) @[ALU.scala 36:24 ALU.scala 37:10]
    io_out <= _GEN_3
