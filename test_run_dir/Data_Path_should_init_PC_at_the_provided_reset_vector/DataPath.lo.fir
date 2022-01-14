circuit DataPath :
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

  module Bus :
    input clock : Clock
    input reset : UInt<1>
    input io_inputSel : UInt<8>
    input io_inputs_0 : UInt<16>
    input io_inputs_1 : UInt<16>
    input io_inputs_2 : UInt<16>
    input io_inputs_3 : UInt<16>
    input io_inputs_4 : UInt<16>
    input io_inputs_5 : UInt<16>
    input io_inputs_6 : UInt<16>
    input io_inputs_7 : UInt<16>
    output io_output : UInt<16>

    node _oneHotMux_T = bits(io_inputSel, 0, 0) @[Bus.scala 29:16]
    node _oneHotMux_T_1 = bits(io_inputSel, 1, 1) @[Bus.scala 30:16]
    node _oneHotMux_T_2 = bits(io_inputSel, 2, 2) @[Bus.scala 31:16]
    node _oneHotMux_T_3 = bits(io_inputSel, 3, 3) @[Bus.scala 32:16]
    node _oneHotMux_T_4 = bits(io_inputSel, 4, 4) @[Bus.scala 33:16]
    node _oneHotMux_T_5 = bits(io_inputSel, 5, 5) @[Bus.scala 34:16]
    node _oneHotMux_T_6 = bits(io_inputSel, 6, 6) @[Bus.scala 35:16]
    node _oneHotMux_T_7 = bits(io_inputSel, 7, 7) @[Bus.scala 36:16]
    node _oneHotMux_T_8 = mux(_oneHotMux_T, io_inputs_0, UInt<1>("h0")) @[Mux.scala 27:72]
    node _oneHotMux_T_9 = mux(_oneHotMux_T_1, io_inputs_1, UInt<1>("h0")) @[Mux.scala 27:72]
    node _oneHotMux_T_10 = mux(_oneHotMux_T_2, io_inputs_2, UInt<1>("h0")) @[Mux.scala 27:72]
    node _oneHotMux_T_11 = mux(_oneHotMux_T_3, io_inputs_3, UInt<1>("h0")) @[Mux.scala 27:72]
    node _oneHotMux_T_12 = mux(_oneHotMux_T_4, io_inputs_4, UInt<1>("h0")) @[Mux.scala 27:72]
    node _oneHotMux_T_13 = mux(_oneHotMux_T_5, io_inputs_5, UInt<1>("h0")) @[Mux.scala 27:72]
    node _oneHotMux_T_14 = mux(_oneHotMux_T_6, io_inputs_6, UInt<1>("h0")) @[Mux.scala 27:72]
    node _oneHotMux_T_15 = mux(_oneHotMux_T_7, io_inputs_7, UInt<1>("h0")) @[Mux.scala 27:72]
    node _oneHotMux_T_16 = or(_oneHotMux_T_8, _oneHotMux_T_9) @[Mux.scala 27:72]
    node _oneHotMux_T_17 = or(_oneHotMux_T_16, _oneHotMux_T_10) @[Mux.scala 27:72]
    node _oneHotMux_T_18 = or(_oneHotMux_T_17, _oneHotMux_T_11) @[Mux.scala 27:72]
    node _oneHotMux_T_19 = or(_oneHotMux_T_18, _oneHotMux_T_12) @[Mux.scala 27:72]
    node _oneHotMux_T_20 = or(_oneHotMux_T_19, _oneHotMux_T_13) @[Mux.scala 27:72]
    node _oneHotMux_T_21 = or(_oneHotMux_T_20, _oneHotMux_T_14) @[Mux.scala 27:72]
    node _oneHotMux_T_22 = or(_oneHotMux_T_21, _oneHotMux_T_15) @[Mux.scala 27:72]
    node oneHotMux = _oneHotMux_T_22 @[Mux.scala 27:72 Mux.scala 27:72]
    io_output <= oneHotMux @[Bus.scala 39:13]

  module DataPath :
    input clock : Clock
    input reset : UInt<1>
    input io_intPriority : UInt<3>
    input io_ctrlSigs_LDMAR : UInt<1>
    input io_ctrlSigs_LDMDR : UInt<1>
    input io_ctrlSigs_LDIR : UInt<1>
    input io_ctrlSigs_LDBEN : UInt<1>
    input io_ctrlSigs_LDREG : UInt<1>
    input io_ctrlSigs_LDCC : UInt<1>
    input io_ctrlSigs_LDPC : UInt<1>
    input io_ctrlSigs_LDPriv : UInt<1>
    input io_ctrlSigs_LDSavedSSP : UInt<1>
    input io_ctrlSigs_LDSavedUSP : UInt<1>
    input io_ctrlSigs_LDVector : UInt<1>
    input io_ctrlSigs_LDPriority : UInt<1>
    input io_ctrlSigs_LDACV : UInt<1>
    input io_ctrlSigs_GatePC : UInt<1>
    input io_ctrlSigs_GateMDR : UInt<1>
    input io_ctrlSigs_GateALU : UInt<1>
    input io_ctrlSigs_GateMARMUX : UInt<1>
    input io_ctrlSigs_GateVector : UInt<1>
    input io_ctrlSigs_GatePCm1 : UInt<1>
    input io_ctrlSigs_GatePSR : UInt<1>
    input io_ctrlSigs_GateSP : UInt<1>
    input io_ctrlSigs_PCMUX : UInt<2>
    input io_ctrlSigs_DRMUX : UInt<2>
    input io_ctrlSigs_SR1MUX : UInt<2>
    input io_ctrlSigs_ADDR1MUX : UInt<1>
    input io_ctrlSigs_ADDR2MUX : UInt<2>
    input io_ctrlSigs_SPMUX : UInt<2>
    input io_ctrlSigs_MARMUX : UInt<1>
    input io_ctrlSigs_TableMUX : UInt<1>
    input io_ctrlSigs_VectorMUX : UInt<2>
    input io_ctrlSigs_PSRMUX : UInt<1>
    input io_ctrlSigs_ALUK : UInt<2>
    input io_ctrlSigs_MIOEN : UInt<1>
    input io_ctrlSigs_RW : UInt<1>
    input io_ctrlSigs_SetPriv : UInt<1>
    input io_mdrVal : UInt<16>
    input io_devIntEnable : UInt<1>
    input io_intHandlerAddr : UInt<16>
    input io_resetVec : UInt<16>
    output io_ir : UInt<16>
    output io_bus : UInt<16>
    output io_psr15 : UInt<1>
    output io_n : UInt<1>
    output io_z : UInt<1>
    output io_p : UInt<1>
    output io_bEn : UInt<1>
    output io_ACV : UInt<1>
    output io_irq : UInt<1>
    output io_debugPC : UInt<16>
    output io_debugIR : UInt<16>
    output io_debugPSR : UInt<16>
    output io_debugR0 : UInt<16>
    output io_debugR1 : UInt<16>
    output io_debugR2 : UInt<16>
    output io_debugR3 : UInt<16>
    output io_debugR4 : UInt<16>
    output io_debugR5 : UInt<16>
    output io_debugR6 : UInt<16>
    output io_debugR7 : UInt<16>

    inst ALU of ALU @[DataPath.scala 74:20]
    inst regs of RegFile @[DataPath.scala 75:20]
    inst bus of Bus @[DataPath.scala 90:22]
    reg ACV : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ACV) @[DataPath.scala 59:20]
    reg BEN : UInt<1>, clock with :
      reset => (UInt<1>("h0"), BEN) @[DataPath.scala 60:20]
    reg IR : UInt<16>, clock with :
      reset => (UInt<1>("h0"), IR) @[DataPath.scala 62:20]
    reg PSR_priv : UInt<1>, clock with :
      reset => (UInt<1>("h0"), PSR_priv) @[DataPath.scala 63:20]
    reg PSR_unused1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), PSR_unused1) @[DataPath.scala 63:20]
    reg PSR_priority : UInt<3>, clock with :
      reset => (UInt<1>("h0"), PSR_priority) @[DataPath.scala 63:20]
    reg PSR_unused2 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), PSR_unused2) @[DataPath.scala 63:20]
    reg PSR_cc : UInt<3>, clock with :
      reset => (UInt<1>("h0"), PSR_cc) @[DataPath.scala 63:20]
    reg PC : UInt<16>, clock with :
      reset => (UInt<1>("h0"), PC) @[DataPath.scala 65:20]
    node N = bits(PSR_cc, 2, 2) @[DataPath.scala 67:17]
    node Z = bits(PSR_cc, 1, 1) @[DataPath.scala 68:17]
    node P = bits(PSR_cc, 0, 0) @[DataPath.scala 69:17]
    reg SavedSSP : UInt<16>, clock with :
      reset => (UInt<1>("h0"), SavedSSP) @[DataPath.scala 71:25]
    reg SavedUSP : UInt<16>, clock with :
      reset => (UInt<1>("h0"), SavedUSP) @[DataPath.scala 72:25]
    reg aGbReg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), aGbReg) @[DataPath.scala 78:23]
    node bus_io_inputSel_lo_lo = cat(io_ctrlSigs_GatePSR, io_ctrlSigs_GateSP) @[Cat.scala 30:58]
    node bus_io_inputSel_lo_hi = cat(io_ctrlSigs_GateVector, io_ctrlSigs_GatePCm1) @[Cat.scala 30:58]
    node bus_io_inputSel_lo = cat(bus_io_inputSel_lo_hi, bus_io_inputSel_lo_lo) @[Cat.scala 30:58]
    node bus_io_inputSel_hi_lo = cat(io_ctrlSigs_GateALU, io_ctrlSigs_GateMARMUX) @[Cat.scala 30:58]
    node bus_io_inputSel_hi_hi = cat(io_ctrlSigs_GatePC, io_ctrlSigs_GateMDR) @[Cat.scala 30:58]
    node bus_io_inputSel_hi = cat(bus_io_inputSel_hi_hi, bus_io_inputSel_hi_lo) @[Cat.scala 30:58]
    node _bus_io_inputSel_T = cat(bus_io_inputSel_hi, bus_io_inputSel_lo) @[Cat.scala 30:58]
    node _bus_io_inputs_2_T = sub(PC, UInt<1>("h1")) @[DataPath.scala 119:26]
    node _bus_io_inputs_2_T_1 = tail(_bus_io_inputs_2_T, 1) @[DataPath.scala 119:26]
    node bus_io_inputs_1_lo = cat(PSR_unused2, PSR_cc) @[DataPath.scala 120:33]
    node bus_io_inputs_1_hi_hi = cat(PSR_priv, PSR_unused1) @[DataPath.scala 120:33]
    node bus_io_inputs_1_hi = cat(bus_io_inputs_1_hi_hi, PSR_priority) @[DataPath.scala 120:33]
    node _bus_io_inputs_1_T = cat(bus_io_inputs_1_hi, bus_io_inputs_1_lo) @[DataPath.scala 120:33]
    node ADDR1MUX = mux(io_ctrlSigs_ADDR1MUX, regs.io_sr1Out, PC) @[DataPath.scala 129:21]
    node ADDR2MUX_hi = mux(UInt<1>("h0"), UInt<15>("h7fff"), UInt<15>("h0")) @[Bitwise.scala 72:12]
    node _ADDR2MUX_T = cat(ADDR2MUX_hi, UInt<1>("h0")) @[Cat.scala 30:58]
    node ADDR2MUX_hi_1 = mux(UInt<1>("h0"), UInt<15>("h7fff"), UInt<15>("h0")) @[Bitwise.scala 72:12]
    node _ADDR2MUX_T_1 = cat(ADDR2MUX_hi_1, UInt<1>("h0")) @[Cat.scala 30:58]
    node ADDR2MUX_lo = bits(IR, 5, 0) @[DataPath.scala 137:20]
    node ADDR2MUX_signBit = bits(ADDR2MUX_lo, 5, 5) @[Utils.scala 9:20]
    node _ADDR2MUX_T_2 = bits(ADDR2MUX_signBit, 0, 0) @[Bitwise.scala 72:15]
    node ADDR2MUX_hi_2 = mux(_ADDR2MUX_T_2, UInt<10>("h3ff"), UInt<10>("h0")) @[Bitwise.scala 72:12]
    node _ADDR2MUX_T_3 = cat(ADDR2MUX_hi_2, ADDR2MUX_lo) @[Cat.scala 30:58]
    node ADDR2MUX_lo_1 = bits(IR, 8, 0) @[DataPath.scala 138:20]
    node ADDR2MUX_signBit_1 = bits(ADDR2MUX_lo_1, 8, 8) @[Utils.scala 9:20]
    node _ADDR2MUX_T_4 = bits(ADDR2MUX_signBit_1, 0, 0) @[Bitwise.scala 72:15]
    node ADDR2MUX_hi_3 = mux(_ADDR2MUX_T_4, UInt<7>("h7f"), UInt<7>("h0")) @[Bitwise.scala 72:12]
    node _ADDR2MUX_T_5 = cat(ADDR2MUX_hi_3, ADDR2MUX_lo_1) @[Cat.scala 30:58]
    node ADDR2MUX_lo_2 = bits(IR, 10, 0) @[DataPath.scala 139:20]
    node ADDR2MUX_signBit_2 = bits(ADDR2MUX_lo_2, 10, 10) @[Utils.scala 9:20]
    node _ADDR2MUX_T_6 = bits(ADDR2MUX_signBit_2, 0, 0) @[Bitwise.scala 72:15]
    node ADDR2MUX_hi_4 = mux(_ADDR2MUX_T_6, UInt<5>("h1f"), UInt<5>("h0")) @[Bitwise.scala 72:12]
    node _ADDR2MUX_T_7 = cat(ADDR2MUX_hi_4, ADDR2MUX_lo_2) @[Cat.scala 30:58]
    node _ADDR2MUX_T_8 = eq(UInt<1>("h1"), io_ctrlSigs_ADDR2MUX) @[Mux.scala 80:60]
    node _ADDR2MUX_T_9 = mux(_ADDR2MUX_T_8, _ADDR2MUX_T_3, _ADDR2MUX_T_1) @[Mux.scala 80:57]
    node _ADDR2MUX_T_10 = eq(UInt<2>("h2"), io_ctrlSigs_ADDR2MUX) @[Mux.scala 80:60]
    node _ADDR2MUX_T_11 = mux(_ADDR2MUX_T_10, _ADDR2MUX_T_5, _ADDR2MUX_T_9) @[Mux.scala 80:57]
    node _ADDR2MUX_T_12 = eq(UInt<2>("h3"), io_ctrlSigs_ADDR2MUX) @[Mux.scala 80:60]
    node ADDR2MUX = mux(_ADDR2MUX_T_12, _ADDR2MUX_T_7, _ADDR2MUX_T_11) @[Mux.scala 80:57]
    node _addrCalc_T = add(ADDR1MUX, ADDR2MUX) @[DataPath.scala 144:27]
    node addrCalc = tail(_addrCalc_T, 1) @[DataPath.scala 144:27]
    node _PCMUX_T = add(PC, UInt<1>("h1")) @[DataPath.scala 146:41]
    node _PCMUX_T_1 = tail(_PCMUX_T, 1) @[DataPath.scala 146:41]
    node _PCMUX_T_2 = add(PC, UInt<1>("h1")) @[DataPath.scala 147:16]
    node _PCMUX_T_3 = tail(_PCMUX_T_2, 1) @[DataPath.scala 147:16]
    node _PCMUX_T_4 = eq(UInt<1>("h0"), io_ctrlSigs_PCMUX) @[Mux.scala 80:60]
    node _PCMUX_T_5 = mux(_PCMUX_T_4, _PCMUX_T_3, _PCMUX_T_1) @[Mux.scala 80:57]
    node _PCMUX_T_6 = eq(UInt<1>("h1"), io_ctrlSigs_PCMUX) @[Mux.scala 80:60]
    node _PCMUX_T_7 = mux(_PCMUX_T_6, addrCalc, _PCMUX_T_5) @[Mux.scala 80:57]
    node _PCMUX_T_8 = eq(UInt<2>("h2"), io_ctrlSigs_PCMUX) @[Mux.scala 80:60]
    node PCMUX = mux(_PCMUX_T_8, bus.io_output, _PCMUX_T_7) @[Mux.scala 80:57]
    node _SPMUX_T = add(regs.io_sr1Out, UInt<1>("h1")) @[DataPath.scala 153:28]
    node _SPMUX_T_1 = tail(_SPMUX_T, 1) @[DataPath.scala 153:28]
    node _SPMUX_T_2 = sub(regs.io_sr1Out, UInt<1>("h1")) @[DataPath.scala 154:28]
    node _SPMUX_T_3 = tail(_SPMUX_T_2, 1) @[DataPath.scala 154:28]
    node _SPMUX_T_4 = eq(UInt<1>("h1"), io_ctrlSigs_SPMUX) @[Mux.scala 80:60]
    node _SPMUX_T_5 = mux(_SPMUX_T_4, _SPMUX_T_3, _SPMUX_T_1) @[Mux.scala 80:57]
    node _SPMUX_T_6 = eq(UInt<2>("h2"), io_ctrlSigs_SPMUX) @[Mux.scala 80:60]
    node _SPMUX_T_7 = mux(_SPMUX_T_6, SavedSSP, _SPMUX_T_5) @[Mux.scala 80:57]
    node _SPMUX_T_8 = eq(UInt<2>("h3"), io_ctrlSigs_SPMUX) @[Mux.scala 80:60]
    node _SPMUX_T_9 = mux(_SPMUX_T_8, SavedUSP, _SPMUX_T_7) @[Mux.scala 80:57]
    node MARMUX_lo = bits(IR, 7, 0) @[DataPath.scala 160:49]
    node _MARMUX_T = cat(UInt<8>("h0"), MARMUX_lo) @[Cat.scala 30:58]
    node _MARMUX_T_1 = mux(io_ctrlSigs_MARMUX, addrCalc, _MARMUX_T) @[DataPath.scala 160:15]
    node _DRMUX_T = bits(IR, 11, 9) @[DataPath.scala 164:39]
    node _DRMUX_T_1 = bits(IR, 11, 9) @[DataPath.scala 165:14]
    node _DRMUX_T_2 = eq(UInt<1>("h0"), io_ctrlSigs_DRMUX) @[Mux.scala 80:60]
    node _DRMUX_T_3 = mux(_DRMUX_T_2, _DRMUX_T_1, _DRMUX_T) @[Mux.scala 80:57]
    node _DRMUX_T_4 = eq(UInt<1>("h1"), io_ctrlSigs_DRMUX) @[Mux.scala 80:60]
    node _DRMUX_T_5 = mux(_DRMUX_T_4, UInt<3>("h7"), _DRMUX_T_3) @[Mux.scala 80:57]
    node _DRMUX_T_6 = eq(UInt<2>("h2"), io_ctrlSigs_DRMUX) @[Mux.scala 80:60]
    node DRMUX = mux(_DRMUX_T_6, UInt<3>("h6"), _DRMUX_T_5) @[Mux.scala 80:57]
    node _SR1MUX_T = bits(IR, 11, 9) @[DataPath.scala 170:41]
    node _SR1MUX_T_1 = bits(IR, 11, 9) @[DataPath.scala 171:14]
    node _SR1MUX_T_2 = bits(IR, 8, 6) @[DataPath.scala 172:14]
    node _SR1MUX_T_3 = eq(UInt<1>("h0"), io_ctrlSigs_SR1MUX) @[Mux.scala 80:60]
    node _SR1MUX_T_4 = mux(_SR1MUX_T_3, _SR1MUX_T_1, _SR1MUX_T) @[Mux.scala 80:57]
    node _SR1MUX_T_5 = eq(UInt<1>("h1"), io_ctrlSigs_SR1MUX) @[Mux.scala 80:60]
    node _SR1MUX_T_6 = mux(_SR1MUX_T_5, _SR1MUX_T_2, _SR1MUX_T_4) @[Mux.scala 80:57]
    node _SR1MUX_T_7 = eq(UInt<2>("h2"), io_ctrlSigs_SR1MUX) @[Mux.scala 80:60]
    node SR1MUX = mux(_SR1MUX_T_7, UInt<3>("h6"), _SR1MUX_T_6) @[Mux.scala 80:57]
    node _SR2MUX_T = bits(IR, 5, 5) @[DataPath.scala 181:22]
    node SR2MUX_lo = bits(IR, 4, 0) @[DataPath.scala 181:37]
    node SR2MUX_signBit = bits(SR2MUX_lo, 4, 4) @[Utils.scala 9:20]
    node _SR2MUX_T_1 = bits(SR2MUX_signBit, 0, 0) @[Bitwise.scala 72:15]
    node SR2MUX_hi = mux(_SR2MUX_T_1, UInt<11>("h7ff"), UInt<11>("h0")) @[Bitwise.scala 72:12]
    node _SR2MUX_T_2 = cat(SR2MUX_hi, SR2MUX_lo) @[Cat.scala 30:58]
    node SR2MUX = mux(_SR2MUX_T, _SR2MUX_T_2, regs.io_sr2Out) @[DataPath.scala 181:19]
    node newN = bits(bus.io_output, 15, 15) @[DataPath.scala 184:23]
    node _newZ_T = orr(bus.io_output) @[DataPath.scala 185:28]
    node newZ = not(_newZ_T) @[DataPath.scala 185:17]
    node _newP_T = not(newN) @[DataPath.scala 186:17]
    node _newP_T_1 = not(newZ) @[DataPath.scala 186:25]
    node newP = and(_newP_T, _newP_T_1) @[DataPath.scala 186:23]
    node ccLogic_hi = cat(newN, newZ) @[Cat.scala 30:58]
    node ccLogic = cat(ccLogic_hi, newP) @[Cat.scala 30:58]
    node _CCMUX_T = bits(bus.io_output, 2, 0) @[DataPath.scala 192:47]
    node CCMUX = mux(io_ctrlSigs_PSRMUX, ccLogic, _CCMUX_T) @[DataPath.scala 192:18]
    node _PRIVMUX_T = bits(bus.io_output, 15, 15) @[DataPath.scala 196:54]
    node PRIVMUX = mux(io_ctrlSigs_PSRMUX, io_ctrlSigs_SetPriv, _PRIVMUX_T) @[DataPath.scala 196:20]
    node _PRIOMUX_T = bits(bus.io_output, 10, 8) @[DataPath.scala 201:56]
    node PRIOMUX = mux(io_ctrlSigs_PSRMUX, io_intPriority, _PRIOMUX_T) @[DataPath.scala 201:20]
    node _GEN_0 = mux(io_ctrlSigs_LDIR, io_bus, IR) @[DataPath.scala 212:20 DataPath.scala 213:9 DataPath.scala 62:20]
    node _GEN_1 = mux(io_ctrlSigs_LDPC, PCMUX, PC) @[DataPath.scala 217:21 DataPath.scala 218:9 DataPath.scala 65:20]
    node _GEN_2 = mux(io_ctrlSigs_LDPriv, PRIVMUX, PSR_priv) @[DataPath.scala 221:23 DataPath.scala 222:15 DataPath.scala 63:20]
    node _GEN_3 = mux(io_ctrlSigs_LDPriority, PRIOMUX, PSR_priority) @[DataPath.scala 225:27 DataPath.scala 226:19 DataPath.scala 63:20]
    node _GEN_4 = mux(io_ctrlSigs_LDCC, CCMUX, PSR_cc) @[DataPath.scala 229:21 DataPath.scala 230:13 DataPath.scala 63:20]
    node _GEN_5 = mux(io_ctrlSigs_LDSavedSSP, regs.io_sr1Out, SavedSSP) @[DataPath.scala 233:27 DataPath.scala 234:15 DataPath.scala 71:25]
    node _GEN_6 = mux(io_ctrlSigs_LDSavedUSP, regs.io_sr1Out, SavedUSP) @[DataPath.scala 237:27 DataPath.scala 238:15 DataPath.scala 72:25]
    node _BEN_T = bits(IR, 11, 11) @[DataPath.scala 243:16]
    node _BEN_T_1 = and(_BEN_T, N) @[DataPath.scala 243:21]
    node _BEN_T_2 = bits(IR, 10, 10) @[DataPath.scala 244:16]
    node _BEN_T_3 = and(_BEN_T_2, Z) @[DataPath.scala 244:21]
    node _BEN_T_4 = or(_BEN_T_1, _BEN_T_3) @[DataPath.scala 243:26]
    node _BEN_T_5 = bits(IR, 9, 9) @[DataPath.scala 245:16]
    node _BEN_T_6 = and(_BEN_T_5, P) @[DataPath.scala 245:21]
    node _BEN_T_7 = or(_BEN_T_4, _BEN_T_6) @[DataPath.scala 244:26]
    node _GEN_7 = mux(io_ctrlSigs_LDBEN, _BEN_T_7, BEN) @[DataPath.scala 242:22 DataPath.scala 243:10 DataPath.scala 60:20]
    node _busOr_T = bits(bus.io_output, 15, 9) @[DataPath.scala 254:24]
    node _busOr_T_1 = andr(_busOr_T) @[DataPath.scala 254:35]
    node _busOr_T_2 = bits(bus.io_output, 15, 12) @[DataPath.scala 255:24]
    node _busOr_T_3 = lt(_busOr_T_2, UInt<2>("h3")) @[DataPath.scala 255:41]
    node busOr = or(_busOr_T_1, _busOr_T_3) @[DataPath.scala 254:38]
    node _ACV_T = and(busOr, PSR_priv) @[DataPath.scala 256:19]
    node _GEN_8 = mux(io_ctrlSigs_LDACV, _ACV_T, ACV) @[DataPath.scala 253:22 DataPath.scala 256:10 DataPath.scala 59:20]
    node _T = gt(io_intPriority, PSR_priority) @[DataPath.scala 259:25]
    node _GEN_9 = mux(_T, UInt<1>("h1"), aGbReg) @[DataPath.scala 259:41 DataPath.scala 260:13 DataPath.scala 78:23]
    node _io_irq_T = and(aGbReg, io_devIntEnable) @[DataPath.scala 264:24]
    node _regs_io_sr2Sel_T = bits(IR, 2, 0) @[DataPath.scala 278:23]
    node io_debugPSR_lo = cat(PSR_unused2, PSR_cc) @[DataPath.scala 284:28]
    node io_debugPSR_hi_hi = cat(PSR_priv, PSR_unused1) @[DataPath.scala 284:28]
    node io_debugPSR_hi = cat(io_debugPSR_hi_hi, PSR_priority) @[DataPath.scala 284:28]
    node _io_debugPSR_T = cat(io_debugPSR_hi, io_debugPSR_lo) @[DataPath.scala 284:28]
    node _PSR_WIRE_priv = UInt<1>("h0") @[DataPath.scala 63:33 DataPath.scala 63:33]
    node _PSR_WIRE_unused1 = UInt<4>("h0") @[DataPath.scala 63:33 DataPath.scala 63:33]
    node _PSR_WIRE_priority = UInt<3>("h0") @[DataPath.scala 63:33 DataPath.scala 63:33]
    node _PSR_WIRE_unused2 = UInt<5>("h0") @[DataPath.scala 63:33 DataPath.scala 63:33]
    node _PSR_WIRE_cc = UInt<3>("h2") @[DataPath.scala 63:33 DataPath.scala 63:33]
    node MARMUX = _MARMUX_T_1 @[DataPath.scala 109:20 DataPath.scala 160:9]
    node SPMUX = _SPMUX_T_9 @[DataPath.scala 110:20 DataPath.scala 152:9]
    io_ir <= IR @[DataPath.scala 81:12]
    io_bus <= bus.io_output @[DataPath.scala 93:10]
    io_psr15 <= PSR_priv @[DataPath.scala 82:12]
    io_n <= N @[DataPath.scala 83:12]
    io_z <= Z @[DataPath.scala 84:12]
    io_p <= P @[DataPath.scala 85:12]
    io_bEn <= BEN @[DataPath.scala 86:12]
    io_ACV <= ACV @[DataPath.scala 87:12]
    io_irq <= _io_irq_T @[DataPath.scala 264:14]
    io_debugPC <= PC @[DataPath.scala 282:15]
    io_debugIR <= IR @[DataPath.scala 283:15]
    io_debugPSR <= _io_debugPSR_T @[DataPath.scala 284:15]
    io_debugR0 <= regs.io_debugR0 @[DataPath.scala 285:15]
    io_debugR1 <= regs.io_debugR1 @[DataPath.scala 286:15]
    io_debugR2 <= regs.io_debugR2 @[DataPath.scala 287:15]
    io_debugR3 <= regs.io_debugR3 @[DataPath.scala 288:15]
    io_debugR4 <= regs.io_debugR4 @[DataPath.scala 289:15]
    io_debugR5 <= regs.io_debugR5 @[DataPath.scala 290:15]
    io_debugR6 <= regs.io_debugR6 @[DataPath.scala 291:15]
    io_debugR7 <= regs.io_debugR7 @[DataPath.scala 292:15]
    ACV <= mux(reset, UInt<1>("h0"), _GEN_8) @[DataPath.scala 59:20 DataPath.scala 59:20]
    BEN <= mux(reset, UInt<1>("h0"), _GEN_7) @[DataPath.scala 60:20 DataPath.scala 60:20]
    IR <= mux(reset, UInt<16>("h0"), _GEN_0) @[DataPath.scala 62:20 DataPath.scala 62:20]
    PSR_priv <= mux(reset, _PSR_WIRE_priv, _GEN_2) @[DataPath.scala 63:20 DataPath.scala 63:20]
    PSR_unused1 <= mux(reset, _PSR_WIRE_unused1, PSR_unused1) @[DataPath.scala 63:20 DataPath.scala 63:20 DataPath.scala 63:20]
    PSR_priority <= mux(reset, _PSR_WIRE_priority, _GEN_3) @[DataPath.scala 63:20 DataPath.scala 63:20]
    PSR_unused2 <= mux(reset, _PSR_WIRE_unused2, PSR_unused2) @[DataPath.scala 63:20 DataPath.scala 63:20 DataPath.scala 63:20]
    PSR_cc <= mux(reset, _PSR_WIRE_cc, _GEN_4) @[DataPath.scala 63:20 DataPath.scala 63:20]
    PC <= mux(reset, io_resetVec, _GEN_1) @[DataPath.scala 65:20 DataPath.scala 65:20]
    SavedSSP <= mux(reset, UInt<16>("h0"), _GEN_5) @[DataPath.scala 71:25 DataPath.scala 71:25]
    SavedUSP <= mux(reset, UInt<16>("hfdff"), _GEN_6) @[DataPath.scala 72:25 DataPath.scala 72:25]
    ALU.clock <= clock
    ALU.reset <= reset
    ALU.io_opSel <= io_ctrlSigs_ALUK @[DataPath.scala 271:16]
    ALU.io_in_a <= regs.io_sr1Out @[DataPath.scala 269:16]
    ALU.io_in_b <= SR2MUX @[DataPath.scala 270:16]
    regs.clock <= clock
    regs.reset <= reset
    regs.io_wEn <= io_ctrlSigs_LDREG @[DataPath.scala 274:18]
    regs.io_sr1Sel <= SR1MUX @[DataPath.scala 277:18]
    regs.io_sr2Sel <= _regs_io_sr2Sel_T @[DataPath.scala 278:18]
    regs.io_drSel <= DRMUX @[DataPath.scala 275:18]
    regs.io_drIn <= bus.io_output @[DataPath.scala 276:18]
    aGbReg <= mux(reset, UInt<1>("h0"), _GEN_9) @[DataPath.scala 78:23 DataPath.scala 78:23]
    bus.clock <= clock
    bus.reset <= reset
    bus.io_inputSel <= _bus_io_inputSel_T @[DataPath.scala 97:19]
    bus.io_inputs_0 <= SPMUX @[DataPath.scala 121:20]
    bus.io_inputs_1 <= _bus_io_inputs_1_T @[DataPath.scala 120:20]
    bus.io_inputs_2 <= _bus_io_inputs_2_T_1 @[DataPath.scala 119:20]
    bus.io_inputs_3 <= io_intHandlerAddr @[DataPath.scala 118:20]
    bus.io_inputs_4 <= MARMUX @[DataPath.scala 117:20]
    bus.io_inputs_5 <= ALU.io_out @[DataPath.scala 116:20]
    bus.io_inputs_6 <= io_mdrVal @[DataPath.scala 115:20]
    bus.io_inputs_7 <= PC @[DataPath.scala 114:20]
