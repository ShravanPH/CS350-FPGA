circuit RegFile :
  module RegFile :
    input clock : Clock
    input reset : UInt<1>
    input io_wEn : UInt<1>
    input io_sr1Sel : UInt<3>
    input io_sr2Sel : UInt<3>
    input io_drSel : UInt<3>
    input io_drIn : UInt<16>
    output io_sr1Out : UInt<16>
    output io_sr2Out : UInt<16>
    output io_debugR0 : UInt<16>
    output io_debugR1 : UInt<16>
    output io_debugR2 : UInt<16>
    output io_debugR3 : UInt<16>
    output io_debugR4 : UInt<16>
    output io_debugR5 : UInt<16>
    output io_debugR6 : UInt<16>
    output io_debugR7 : UInt<16>

    reg regs_0 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), regs_0) @[RegFile.scala 34:21]
    reg regs_1 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), regs_1) @[RegFile.scala 34:21]
    reg regs_2 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), regs_2) @[RegFile.scala 34:21]
    reg regs_3 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), regs_3) @[RegFile.scala 34:21]
    reg regs_4 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), regs_4) @[RegFile.scala 34:21]
    reg regs_5 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), regs_5) @[RegFile.scala 34:21]
    reg regs_6 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), regs_6) @[RegFile.scala 34:21]
    reg regs_7 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), regs_7) @[RegFile.scala 34:21]
    node _T = eq(io_wEn, UInt<1>("h1")) @[RegFile.scala 43:14]
    node _regs_io_drSel = io_drIn @[RegFile.scala 44:19 RegFile.scala 44:19]
    node _GEN_0 = mux(eq(UInt<1>("h0"), io_drSel), _regs_io_drSel, regs_0) @[RegFile.scala 44:19 RegFile.scala 44:19 RegFile.scala 34:21]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_drSel), _regs_io_drSel, regs_1) @[RegFile.scala 44:19 RegFile.scala 44:19 RegFile.scala 34:21]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_drSel), _regs_io_drSel, regs_2) @[RegFile.scala 44:19 RegFile.scala 44:19 RegFile.scala 34:21]
    node _GEN_3 = mux(eq(UInt<2>("h3"), io_drSel), _regs_io_drSel, regs_3) @[RegFile.scala 44:19 RegFile.scala 44:19 RegFile.scala 34:21]
    node _GEN_4 = mux(eq(UInt<3>("h4"), io_drSel), _regs_io_drSel, regs_4) @[RegFile.scala 44:19 RegFile.scala 44:19 RegFile.scala 34:21]
    node _GEN_5 = mux(eq(UInt<3>("h5"), io_drSel), _regs_io_drSel, regs_5) @[RegFile.scala 44:19 RegFile.scala 44:19 RegFile.scala 34:21]
    node _GEN_6 = mux(eq(UInt<3>("h6"), io_drSel), _regs_io_drSel, regs_6) @[RegFile.scala 44:19 RegFile.scala 44:19 RegFile.scala 34:21]
    node _GEN_7 = mux(eq(UInt<3>("h7"), io_drSel), _regs_io_drSel, regs_7) @[RegFile.scala 44:19 RegFile.scala 44:19 RegFile.scala 34:21]
    node _GEN_8 = validif(eq(UInt<1>("h0"), io_sr1Sel), regs_0) @[RegFile.scala 45:14 RegFile.scala 45:14]
    node _GEN_9 = mux(eq(UInt<1>("h1"), io_sr1Sel), regs_1, _GEN_8) @[RegFile.scala 45:14 RegFile.scala 45:14]
    node _GEN_10 = mux(eq(UInt<2>("h2"), io_sr1Sel), regs_2, _GEN_9) @[RegFile.scala 45:14 RegFile.scala 45:14]
    node _GEN_11 = mux(eq(UInt<2>("h3"), io_sr1Sel), regs_3, _GEN_10) @[RegFile.scala 45:14 RegFile.scala 45:14]
    node _GEN_12 = mux(eq(UInt<3>("h4"), io_sr1Sel), regs_4, _GEN_11) @[RegFile.scala 45:14 RegFile.scala 45:14]
    node _GEN_13 = mux(eq(UInt<3>("h5"), io_sr1Sel), regs_5, _GEN_12) @[RegFile.scala 45:14 RegFile.scala 45:14]
    node _GEN_14 = mux(eq(UInt<3>("h6"), io_sr1Sel), regs_6, _GEN_13) @[RegFile.scala 45:14 RegFile.scala 45:14]
    node _GEN_15 = mux(eq(UInt<3>("h7"), io_sr1Sel), regs_7, _GEN_14) @[RegFile.scala 45:14 RegFile.scala 45:14]
    node _GEN_16 = validif(eq(UInt<1>("h0"), io_sr2Sel), regs_0) @[RegFile.scala 46:14 RegFile.scala 46:14]
    node _GEN_17 = mux(eq(UInt<1>("h1"), io_sr2Sel), regs_1, _GEN_16) @[RegFile.scala 46:14 RegFile.scala 46:14]
    node _GEN_18 = mux(eq(UInt<2>("h2"), io_sr2Sel), regs_2, _GEN_17) @[RegFile.scala 46:14 RegFile.scala 46:14]
    node _GEN_19 = mux(eq(UInt<2>("h3"), io_sr2Sel), regs_3, _GEN_18) @[RegFile.scala 46:14 RegFile.scala 46:14]
    node _GEN_20 = mux(eq(UInt<3>("h4"), io_sr2Sel), regs_4, _GEN_19) @[RegFile.scala 46:14 RegFile.scala 46:14]
    node _GEN_21 = mux(eq(UInt<3>("h5"), io_sr2Sel), regs_5, _GEN_20) @[RegFile.scala 46:14 RegFile.scala 46:14]
    node _GEN_22 = mux(eq(UInt<3>("h6"), io_sr2Sel), regs_6, _GEN_21) @[RegFile.scala 46:14 RegFile.scala 46:14]
    node _GEN_23 = mux(eq(UInt<3>("h7"), io_sr2Sel), regs_7, _GEN_22) @[RegFile.scala 46:14 RegFile.scala 46:14]
    node _GEN_24 = mux(_T, _GEN_0, regs_0) @[RegFile.scala 43:24 RegFile.scala 34:21]
    node _GEN_25 = mux(_T, _GEN_1, regs_1) @[RegFile.scala 43:24 RegFile.scala 34:21]
    node _GEN_26 = mux(_T, _GEN_2, regs_2) @[RegFile.scala 43:24 RegFile.scala 34:21]
    node _GEN_27 = mux(_T, _GEN_3, regs_3) @[RegFile.scala 43:24 RegFile.scala 34:21]
    node _GEN_28 = mux(_T, _GEN_4, regs_4) @[RegFile.scala 43:24 RegFile.scala 34:21]
    node _GEN_29 = mux(_T, _GEN_5, regs_5) @[RegFile.scala 43:24 RegFile.scala 34:21]
    node _GEN_30 = mux(_T, _GEN_6, regs_6) @[RegFile.scala 43:24 RegFile.scala 34:21]
    node _GEN_31 = mux(_T, _GEN_7, regs_7) @[RegFile.scala 43:24 RegFile.scala 34:21]
    node _regs_io_sr1Sel = _GEN_15 @[RegFile.scala 45:14]
    node _regs_io_sr1Sel_0 = _GEN_15 @[RegFile.scala 48:12]
    node _GEN_32 = mux(_T, _regs_io_sr1Sel, _regs_io_sr1Sel_0) @[RegFile.scala 43:24 RegFile.scala 45:14 RegFile.scala 48:12]
    node _regs_io_sr2Sel = _GEN_23 @[RegFile.scala 46:14]
    node _regs_io_sr2Sel_0 = _GEN_23 @[RegFile.scala 49:12]
    node _GEN_33 = mux(_T, _regs_io_sr2Sel, _regs_io_sr2Sel_0) @[RegFile.scala 43:24 RegFile.scala 46:14 RegFile.scala 49:12]
    node _regs_WIRE_0 = UInt<16>("h0") @[RegFile.scala 34:29 RegFile.scala 34:29]
    node _regs_WIRE_1 = UInt<16>("h0") @[RegFile.scala 34:29 RegFile.scala 34:29]
    node _regs_WIRE_2 = UInt<16>("h0") @[RegFile.scala 34:29 RegFile.scala 34:29]
    node _regs_WIRE_3 = UInt<16>("h0") @[RegFile.scala 34:29 RegFile.scala 34:29]
    node _regs_WIRE_4 = UInt<16>("h0") @[RegFile.scala 34:29 RegFile.scala 34:29]
    node _regs_WIRE_5 = UInt<16>("h0") @[RegFile.scala 34:29 RegFile.scala 34:29]
    node _regs_WIRE_6 = UInt<16>("h0") @[RegFile.scala 34:29 RegFile.scala 34:29]
    node _regs_WIRE_7 = UInt<16>("h0") @[RegFile.scala 34:29 RegFile.scala 34:29]
    io_sr1Out <= _GEN_32
    io_sr2Out <= _GEN_33
    io_debugR0 <= regs_0 @[RegFile.scala 86:14]
    io_debugR1 <= regs_1 @[RegFile.scala 87:14]
    io_debugR2 <= regs_2 @[RegFile.scala 88:14]
    io_debugR3 <= regs_3 @[RegFile.scala 89:14]
    io_debugR4 <= regs_4 @[RegFile.scala 90:14]
    io_debugR5 <= regs_5 @[RegFile.scala 91:14]
    io_debugR6 <= regs_6 @[RegFile.scala 92:14]
    io_debugR7 <= regs_7 @[RegFile.scala 93:14]
    regs_0 <= mux(reset, _regs_WIRE_0, _GEN_24) @[RegFile.scala 34:21 RegFile.scala 34:21]
    regs_1 <= mux(reset, _regs_WIRE_1, _GEN_25) @[RegFile.scala 34:21 RegFile.scala 34:21]
    regs_2 <= mux(reset, _regs_WIRE_2, _GEN_26) @[RegFile.scala 34:21 RegFile.scala 34:21]
    regs_3 <= mux(reset, _regs_WIRE_3, _GEN_27) @[RegFile.scala 34:21 RegFile.scala 34:21]
    regs_4 <= mux(reset, _regs_WIRE_4, _GEN_28) @[RegFile.scala 34:21 RegFile.scala 34:21]
    regs_5 <= mux(reset, _regs_WIRE_5, _GEN_29) @[RegFile.scala 34:21 RegFile.scala 34:21]
    regs_6 <= mux(reset, _regs_WIRE_6, _GEN_30) @[RegFile.scala 34:21 RegFile.scala 34:21]
    regs_7 <= mux(reset, _regs_WIRE_7, _GEN_31) @[RegFile.scala 34:21 RegFile.scala 34:21]
