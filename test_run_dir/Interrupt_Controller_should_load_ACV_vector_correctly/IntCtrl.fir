;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit IntCtrl : 
  module IntCtrl : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip bus : UInt<16>, flip VectorMux : UInt<2>, flip TableMux : UInt<1>, flip INTV : UInt<8>, flip LDVector : UInt<1>, out : UInt<16>}
    
    reg tableReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[IntCtrl.scala 30:25]
    reg vecReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[IntCtrl.scala 31:25]
    node _vMux_T = eq(UInt<1>("h01"), io.VectorMux) @[Mux.scala 80:60]
    node _vMux_T_1 = mux(_vMux_T, UInt<8>("h00"), io.INTV) @[Mux.scala 80:57]
    node _vMux_T_2 = eq(UInt<2>("h02"), io.VectorMux) @[Mux.scala 80:60]
    node _vMux_T_3 = mux(_vMux_T_2, UInt<8>("h01"), _vMux_T_1) @[Mux.scala 80:57]
    node _vMux_T_4 = eq(UInt<2>("h03"), io.VectorMux) @[Mux.scala 80:60]
    node vMux = mux(_vMux_T_4, UInt<8>("h02"), _vMux_T_3) @[Mux.scala 80:57]
    node _vecLoadMux_T = bits(io.bus, 7, 0) @[IntCtrl.scala 40:43]
    node vecLoadMux = mux(io.TableMux, _vecLoadMux_T, vMux) @[IntCtrl.scala 40:23]
    node tabLoadMux = mux(io.TableMux, UInt<8>("h00"), UInt<8>("h01")) @[IntCtrl.scala 41:23]
    when io.LDVector : @[IntCtrl.scala 43:22]
      vecReg <= vecLoadMux @[IntCtrl.scala 44:14]
      tableReg <= tabLoadMux @[IntCtrl.scala 45:14]
      skip @[IntCtrl.scala 43:22]
    node _io_out_T = cat(tableReg, vecReg) @[Cat.scala 30:58]
    io.out <= _io_out_T @[IntCtrl.scala 48:10]
    
