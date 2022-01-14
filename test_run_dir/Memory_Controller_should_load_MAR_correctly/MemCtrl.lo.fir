circuit MemCtrl :
  module AddrCtrl :
    input clock : Clock
    input reset : UInt<1>
    input io_MAR : UInt<16>
    input io_MIOEN : UInt<1>
    input io_RW : UInt<1>
    output io_MEMEN : UInt<1>
    output io_INMUX_SEL : UInt<2>
    output io_LDKBSR : UInt<1>
    output io_LDDSR : UInt<1>
    output io_LDDDR : UInt<1>
    output io_LDMCR : UInt<1>
    output io_kbsrRead : UInt<1>

    node _T = eq(io_MAR, UInt<16>("hfe00")) @[AddrCtrl.scala 60:18]
    node _GEN_0 = mux(io_RW, UInt<1>("h1"), UInt<1>("h0")) @[AddrCtrl.scala 61:20 AddrCtrl.scala 62:19 AddrCtrl.scala 51:16]
    node _GEN_1 = validif(eq(io_RW, UInt<1>("h0")), UInt<2>("h2")) @[AddrCtrl.scala 61:20 AddrCtrl.scala 64:24]
    node _GEN_2 = mux(io_RW, UInt<1>("h0"), UInt<1>("h1")) @[AddrCtrl.scala 61:20 AddrCtrl.scala 56:15 AddrCtrl.scala 65:23]
    node _T_1 = eq(io_MAR, UInt<16>("hfe02")) @[AddrCtrl.scala 68:25]
    node _T_2 = eq(io_RW, UInt<1>("h0")) @[AddrCtrl.scala 69:19]
    node _GEN_3 = validif(_T_2, UInt<2>("h3")) @[AddrCtrl.scala 69:32 AddrCtrl.scala 70:22]
    node _T_3 = eq(io_MAR, UInt<16>("hfe04")) @[AddrCtrl.scala 73:25]
    node _GEN_4 = validif(eq(io_RW, UInt<1>("h0")), UInt<1>("h1")) @[AddrCtrl.scala 74:20 AddrCtrl.scala 77:22]
    node _T_4 = eq(io_MAR, UInt<16>("hfe06")) @[AddrCtrl.scala 80:25]
    node _T_5 = eq(io_MAR, UInt<16>("hfffe")) @[AddrCtrl.scala 85:25]
    node _GEN_5 = validif(eq(io_RW, UInt<1>("h0")), UInt<3>("h4")) @[AddrCtrl.scala 86:20 AddrCtrl.scala 89:22]
    node _T_6 = eq(io_RW, UInt<1>("h0")) @[AddrCtrl.scala 94:19]
    node _GEN_6 = validif(_T_6, UInt<1>("h0")) @[AddrCtrl.scala 94:32 AddrCtrl.scala 95:22]
    node _GEN_7 = mux(_T_5, _GEN_0, UInt<1>("h0")) @[AddrCtrl.scala 85:40 AddrCtrl.scala 54:16]
    node _GEN_8 = mux(_T_5, _GEN_5, _GEN_6) @[AddrCtrl.scala 85:40]
    node _GEN_9 = mux(_T_5, UInt<1>("h0"), UInt<1>("h1")) @[AddrCtrl.scala 85:40 AddrCtrl.scala 50:16 AddrCtrl.scala 93:16]
    node _GEN_10 = mux(_T_4, _GEN_0, UInt<1>("h0")) @[AddrCtrl.scala 80:40 AddrCtrl.scala 53:16]
    node _GEN_11 = mux(_T_4, UInt<1>("h0"), _GEN_7) @[AddrCtrl.scala 80:40 AddrCtrl.scala 54:16]
    node _GEN_12 = validif(eq(_T_4, UInt<1>("h0")), _GEN_8) @[AddrCtrl.scala 80:40]
    node _GEN_13 = mux(_T_4, UInt<1>("h0"), _GEN_9) @[AddrCtrl.scala 80:40 AddrCtrl.scala 50:16]
    node _GEN_14 = mux(_T_3, _GEN_0, UInt<1>("h0")) @[AddrCtrl.scala 73:40 AddrCtrl.scala 52:16]
    node _GEN_15 = mux(_T_3, _GEN_4, _GEN_12) @[AddrCtrl.scala 73:40]
    node _GEN_16 = mux(_T_3, UInt<1>("h0"), _GEN_10) @[AddrCtrl.scala 73:40 AddrCtrl.scala 53:16]
    node _GEN_17 = mux(_T_3, UInt<1>("h0"), _GEN_11) @[AddrCtrl.scala 73:40 AddrCtrl.scala 54:16]
    node _GEN_18 = mux(_T_3, UInt<1>("h0"), _GEN_13) @[AddrCtrl.scala 73:40 AddrCtrl.scala 50:16]
    node _GEN_19 = mux(_T_1, _GEN_3, _GEN_15) @[AddrCtrl.scala 68:40]
    node _GEN_20 = mux(_T_1, UInt<1>("h0"), _GEN_14) @[AddrCtrl.scala 68:40 AddrCtrl.scala 52:16]
    node _GEN_21 = mux(_T_1, UInt<1>("h0"), _GEN_16) @[AddrCtrl.scala 68:40 AddrCtrl.scala 53:16]
    node _GEN_22 = mux(_T_1, UInt<1>("h0"), _GEN_17) @[AddrCtrl.scala 68:40 AddrCtrl.scala 54:16]
    node _GEN_23 = mux(_T_1, UInt<1>("h0"), _GEN_18) @[AddrCtrl.scala 68:40 AddrCtrl.scala 50:16]
    node _GEN_24 = mux(_T, _GEN_0, UInt<1>("h0")) @[AddrCtrl.scala 60:33 AddrCtrl.scala 51:16]
    node _GEN_25 = mux(_T, _GEN_1, _GEN_19) @[AddrCtrl.scala 60:33]
    node _GEN_26 = mux(_T, _GEN_2, UInt<1>("h0")) @[AddrCtrl.scala 60:33 AddrCtrl.scala 56:15]
    node _GEN_27 = mux(_T, UInt<1>("h0"), _GEN_20) @[AddrCtrl.scala 60:33 AddrCtrl.scala 52:16]
    node _GEN_28 = mux(_T, UInt<1>("h0"), _GEN_21) @[AddrCtrl.scala 60:33 AddrCtrl.scala 53:16]
    node _GEN_29 = mux(_T, UInt<1>("h0"), _GEN_22) @[AddrCtrl.scala 60:33 AddrCtrl.scala 54:16]
    node _GEN_30 = mux(_T, UInt<1>("h0"), _GEN_23) @[AddrCtrl.scala 60:33 AddrCtrl.scala 50:16]
    node _GEN_31 = mux(io_MIOEN, _GEN_24, UInt<1>("h0")) @[AddrCtrl.scala 58:19 AddrCtrl.scala 51:16]
    node _GEN_32 = validif(io_MIOEN, _GEN_25) @[AddrCtrl.scala 58:19]
    node _GEN_33 = mux(io_MIOEN, _GEN_26, UInt<1>("h0")) @[AddrCtrl.scala 58:19 AddrCtrl.scala 56:15]
    node _GEN_34 = mux(io_MIOEN, _GEN_27, UInt<1>("h0")) @[AddrCtrl.scala 58:19 AddrCtrl.scala 52:16]
    node _GEN_35 = mux(io_MIOEN, _GEN_28, UInt<1>("h0")) @[AddrCtrl.scala 58:19 AddrCtrl.scala 53:16]
    node _GEN_36 = mux(io_MIOEN, _GEN_29, UInt<1>("h0")) @[AddrCtrl.scala 58:19 AddrCtrl.scala 54:16]
    node _GEN_37 = mux(io_MIOEN, _GEN_30, UInt<1>("h0")) @[AddrCtrl.scala 58:19 AddrCtrl.scala 50:16]
    io_MEMEN <= _GEN_37
    io_INMUX_SEL <= bits(_GEN_32, 1, 0)
    io_LDKBSR <= _GEN_31
    io_LDDSR <= _GEN_34
    io_LDDDR <= _GEN_35
    io_LDMCR <= _GEN_36
    io_kbsrRead <= _GEN_33

  module MemCtrl :
    input clock : Clock
    input reset : UInt<1>
    input io_memR : UInt<1>
    input io_memData : UInt<16>
    input io_LDMDR : UInt<1>
    input io_MIOEN : UInt<1>
    input io_LDMAR : UInt<1>
    input io_RDWR : UInt<1>
    input io_bus : UInt<16>
    input io_devReady : UInt<1>
    input io_devData : UInt<16>
    output io_mdrOut : UInt<16>
    output io_devIntEnable : UInt<1>
    output io_mcrOut : UInt<16>
    output io_R : UInt<1>
    output io_en : UInt<1>
    output io_wEn : UInt<1>
    output io_dataIn : UInt<16>
    output io_addr : UInt<16>
    input io_tx_ready : UInt<1>
    output io_tx_valid : UInt<1>
    output io_tx_bits : UInt<8>
    output io_debugMDR : UInt<16>
    output io_debugMAR : UInt<16>
    output io_debugDSR : UInt<16>
    output io_debugDDR : UInt<16>
    output io_debugMCR : UInt<16>

    inst addrCtrl of AddrCtrl @[MemCtrl.scala 77:24]
    reg MDR : UInt<16>, clock with :
      reset => (UInt<1>("h0"), MDR) @[MemCtrl.scala 74:20]
    reg MAR : UInt<16>, clock with :
      reset => (UInt<1>("h0"), MAR) @[MemCtrl.scala 75:20]
    reg DSR : UInt<16>, clock with :
      reset => (UInt<1>("h0"), DSR) @[MemCtrl.scala 80:20]
    reg DDR : UInt<16>, clock with :
      reset => (UInt<1>("h0"), DDR) @[MemCtrl.scala 81:20]
    reg KBSR_ready : UInt<1>, clock with :
      reset => (UInt<1>("h0"), KBSR_ready) @[MemCtrl.scala 84:21]
    reg KBSR_int_en : UInt<1>, clock with :
      reset => (UInt<1>("h0"), KBSR_int_en) @[MemCtrl.scala 84:21]
    reg KBSR_unused : UInt<14>, clock with :
      reset => (UInt<1>("h0"), KBSR_unused) @[MemCtrl.scala 84:21]
    reg KBDR : UInt<16>, clock with :
      reset => (UInt<1>("h0"), KBDR) @[MemCtrl.scala 85:21]
    node _MCR_T = cat(UInt<1>("h1"), UInt<15>("h0")) @[Cat.scala 30:58]
    reg MCR : UInt<16>, clock with :
      reset => (UInt<1>("h0"), MCR) @[MemCtrl.scala 87:20]
    node _io_devIntEnable_T = and(KBSR_int_en, KBSR_ready) @[MemCtrl.scala 99:34]
    node _DSR_T = cat(io_tx_ready, UInt<15>("h0")) @[Cat.scala 30:58]
    reg io_tx_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_tx_valid_REG) @[MemCtrl.scala 103:25]
    node _io_tx_bits_T = bits(DDR, 7, 0) @[MemCtrl.scala 104:21]
    node _io_R_T = eq(UInt<1>("h1"), addrCtrl.io_INMUX_SEL) @[Mux.scala 80:60]
    node _io_R_T_1 = mux(_io_R_T, UInt<1>("h1"), UInt<1>("h1")) @[Mux.scala 80:57]
    node _io_R_T_2 = eq(UInt<2>("h2"), addrCtrl.io_INMUX_SEL) @[Mux.scala 80:60]
    node _io_R_T_3 = mux(_io_R_T_2, UInt<1>("h1"), _io_R_T_1) @[Mux.scala 80:57]
    node _io_R_T_4 = eq(UInt<2>("h3"), addrCtrl.io_INMUX_SEL) @[Mux.scala 80:60]
    node _io_R_T_5 = mux(_io_R_T_4, UInt<1>("h1"), _io_R_T_3) @[Mux.scala 80:57]
    node _io_R_T_6 = eq(UInt<3>("h4"), addrCtrl.io_INMUX_SEL) @[Mux.scala 80:60]
    node _io_R_T_7 = mux(_io_R_T_6, UInt<1>("h1"), _io_R_T_5) @[Mux.scala 80:57]
    node INMUX_hi = cat(KBSR_ready, KBSR_int_en) @[MemCtrl.scala 142:23]
    node _INMUX_T = cat(INMUX_hi, KBSR_unused) @[MemCtrl.scala 142:23]
    node _INMUX_T_1 = eq(UInt<1>("h1"), addrCtrl.io_INMUX_SEL) @[Mux.scala 80:60]
    node _INMUX_T_2 = mux(_INMUX_T_1, DSR, io_memData) @[Mux.scala 80:57]
    node _INMUX_T_3 = eq(UInt<2>("h2"), addrCtrl.io_INMUX_SEL) @[Mux.scala 80:60]
    node _INMUX_T_4 = mux(_INMUX_T_3, _INMUX_T, _INMUX_T_2) @[Mux.scala 80:57]
    node _INMUX_T_5 = eq(UInt<2>("h3"), addrCtrl.io_INMUX_SEL) @[Mux.scala 80:60]
    node _INMUX_T_6 = mux(_INMUX_T_5, KBDR, _INMUX_T_4) @[Mux.scala 80:57]
    node _INMUX_T_7 = eq(UInt<3>("h4"), addrCtrl.io_INMUX_SEL) @[Mux.scala 80:60]
    node INMUX = mux(_INMUX_T_7, MCR, _INMUX_T_6) @[Mux.scala 80:57]
    node MDRMUX = mux(io_MIOEN, INMUX, io_bus) @[MemCtrl.scala 151:19]
    node _GEN_0 = mux(io_LDMAR, io_bus, MAR) @[MemCtrl.scala 155:17 MemCtrl.scala 156:8 MemCtrl.scala 75:20]
    node _GEN_1 = mux(io_LDMDR, MDRMUX, MDR) @[MemCtrl.scala 159:17 MemCtrl.scala 160:7 MemCtrl.scala 74:20]
    node _KBSR_WIRE_2 = MDR
    node _KBSR_T = bits(_KBSR_WIRE_2, 13, 0) @[MemCtrl.scala 164:25]
    node _KBSR_T_1 = bits(_KBSR_WIRE_2, 14, 14) @[MemCtrl.scala 164:25]
    node _KBSR_T_2 = bits(_KBSR_WIRE_2, 15, 15) @[MemCtrl.scala 164:25]
    node _KBSR_WIRE_1_unused = _KBSR_T @[MemCtrl.scala 164:25 MemCtrl.scala 164:25]
    node _GEN_2 = mux(addrCtrl.io_LDKBSR, _KBSR_WIRE_1_unused, KBSR_unused) @[MemCtrl.scala 163:17 MemCtrl.scala 164:10 MemCtrl.scala 84:21]
    node _KBSR_WIRE_1_int_en = _KBSR_T_1 @[MemCtrl.scala 164:25 MemCtrl.scala 164:25]
    node _GEN_3 = mux(addrCtrl.io_LDKBSR, _KBSR_WIRE_1_int_en, KBSR_int_en) @[MemCtrl.scala 163:17 MemCtrl.scala 164:10 MemCtrl.scala 84:21]
    node _KBSR_WIRE_1_ready = _KBSR_T_2 @[MemCtrl.scala 164:25 MemCtrl.scala 164:25]
    node _GEN_4 = mux(addrCtrl.io_LDKBSR, _KBSR_WIRE_1_ready, KBSR_ready) @[MemCtrl.scala 163:17 MemCtrl.scala 164:10 MemCtrl.scala 84:21]
    node _GEN_5 = mux(addrCtrl.io_LDDSR, MDR, _DSR_T) @[MemCtrl.scala 169:16 MemCtrl.scala 170:9 MemCtrl.scala 102:7]
    node _GEN_6 = mux(addrCtrl.io_LDDDR, MDR, DDR) @[MemCtrl.scala 173:16 MemCtrl.scala 174:9 MemCtrl.scala 81:20]
    node _GEN_7 = mux(addrCtrl.io_LDMCR, MDR, MCR) @[MemCtrl.scala 177:16 MemCtrl.scala 178:9 MemCtrl.scala 87:20]
    node _KBSR_WIRE_ready = UInt<1>("h0") @[MemCtrl.scala 84:34 MemCtrl.scala 84:34]
    node _KBSR_WIRE_int_en = UInt<1>("h0") @[MemCtrl.scala 84:34 MemCtrl.scala 84:34]
    node _KBSR_WIRE_unused = UInt<14>("h0") @[MemCtrl.scala 84:34 MemCtrl.scala 84:34]
    io_mdrOut <= MDR @[MemCtrl.scala 107:13]
    io_devIntEnable <= _io_devIntEnable_T @[MemCtrl.scala 99:19]
    io_mcrOut <= MCR @[MemCtrl.scala 110:13]
    io_R <= _io_R_T_7 @[MemCtrl.scala 123:8]
    io_en <= addrCtrl.io_MEMEN @[MemCtrl.scala 118:13]
    io_wEn <= io_RDWR @[MemCtrl.scala 119:13]
    io_dataIn <= MDR @[MemCtrl.scala 120:13]
    io_addr <= MAR @[MemCtrl.scala 121:13]
    io_tx_valid <= io_tx_valid_REG @[MemCtrl.scala 103:15]
    io_tx_bits <= _io_tx_bits_T @[MemCtrl.scala 104:15]
    io_debugMDR <= MDR @[MemCtrl.scala 184:15]
    io_debugMAR <= MAR @[MemCtrl.scala 185:15]
    io_debugDSR <= DSR @[MemCtrl.scala 187:15]
    io_debugDDR <= DDR @[MemCtrl.scala 186:15]
    io_debugMCR <= MCR @[MemCtrl.scala 188:15]
    MDR <= mux(reset, UInt<16>("h0"), _GEN_1) @[MemCtrl.scala 74:20 MemCtrl.scala 74:20]
    MAR <= mux(reset, UInt<16>("h0"), _GEN_0) @[MemCtrl.scala 75:20 MemCtrl.scala 75:20]
    addrCtrl.clock <= clock
    addrCtrl.reset <= reset
    addrCtrl.io_MAR <= MAR @[MemCtrl.scala 113:21]
    addrCtrl.io_MIOEN <= io_MIOEN @[MemCtrl.scala 114:21]
    addrCtrl.io_RW <= io_RDWR @[MemCtrl.scala 115:21]
    DSR <= mux(reset, UInt<16>("h0"), _GEN_5) @[MemCtrl.scala 80:20 MemCtrl.scala 80:20]
    DDR <= mux(reset, UInt<16>("h0"), _GEN_6) @[MemCtrl.scala 81:20 MemCtrl.scala 81:20]
    KBSR_ready <= mux(reset, _KBSR_WIRE_ready, io_devReady) @[MemCtrl.scala 84:21 MemCtrl.scala 84:21 MemCtrl.scala 167:14]
    KBSR_int_en <= mux(reset, _KBSR_WIRE_int_en, _GEN_3) @[MemCtrl.scala 84:21 MemCtrl.scala 84:21]
    KBSR_unused <= mux(reset, _KBSR_WIRE_unused, _GEN_2) @[MemCtrl.scala 84:21 MemCtrl.scala 84:21]
    KBDR <= mux(reset, UInt<16>("h0"), io_devData) @[MemCtrl.scala 85:21 MemCtrl.scala 85:21 MemCtrl.scala 181:8]
    MCR <= mux(reset, _MCR_T, _GEN_7) @[MemCtrl.scala 87:20 MemCtrl.scala 87:20]
    io_tx_valid_REG <= addrCtrl.io_LDDDR @[MemCtrl.scala 103:25]
