circuit IntCtrl :
  module IntCtrl :
    input clock : Clock
    input reset : UInt<1>
    input io_bus : UInt<16>
    input io_VectorMux : UInt<2>
    input io_TableMux : UInt<1>
    input io_INTV : UInt<8>
    input io_LDVector : UInt<1>
    output io_out : UInt<16>

    reg tableReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), tableReg) @[IntCtrl.scala 30:25]
    reg vecReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), vecReg) @[IntCtrl.scala 31:25]
    node _vMux_T = eq(UInt<1>("h1"), io_VectorMux) @[Mux.scala 80:60]
    node _vMux_T_1 = mux(_vMux_T, UInt<8>("h0"), io_INTV) @[Mux.scala 80:57]
    node _vMux_T_2 = eq(UInt<2>("h2"), io_VectorMux) @[Mux.scala 80:60]
    node _vMux_T_3 = mux(_vMux_T_2, UInt<8>("h1"), _vMux_T_1) @[Mux.scala 80:57]
    node _vMux_T_4 = eq(UInt<2>("h3"), io_VectorMux) @[Mux.scala 80:60]
    node vMux = mux(_vMux_T_4, UInt<8>("h2"), _vMux_T_3) @[Mux.scala 80:57]
    node _vecLoadMux_T = bits(io_bus, 7, 0) @[IntCtrl.scala 40:43]
    node vecLoadMux = mux(io_TableMux, _vecLoadMux_T, vMux) @[IntCtrl.scala 40:23]
    node tabLoadMux = mux(io_TableMux, UInt<8>("h0"), UInt<8>("h1")) @[IntCtrl.scala 41:23]
    node _GEN_0 = mux(io_LDVector, vecLoadMux, vecReg) @[IntCtrl.scala 43:22 IntCtrl.scala 44:14 IntCtrl.scala 31:25]
    node _GEN_1 = mux(io_LDVector, tabLoadMux, tableReg) @[IntCtrl.scala 43:22 IntCtrl.scala 45:14 IntCtrl.scala 30:25]
    node _io_out_T = cat(tableReg, vecReg) @[Cat.scala 30:58]
    io_out <= _io_out_T @[IntCtrl.scala 48:10]
    tableReg <= mux(reset, UInt<8>("h0"), _GEN_1) @[IntCtrl.scala 30:25 IntCtrl.scala 30:25]
    vecReg <= mux(reset, UInt<8>("h0"), _GEN_0) @[IntCtrl.scala 31:25 IntCtrl.scala 31:25]
