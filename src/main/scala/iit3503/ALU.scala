package iit3503

import chisel3._
import chisel3.util._


/**
  * Implements the simple 4-op 3503 ALU
  * Following the LC-3 ISA specification,
  * we only support:
  *   - ADD 0
  *   - AND 1
  *   - NOT 2
  *   - PASSA 3 : just passes the A reg out to the output
  */

object ALU {
  val width  = 2
  val OP_ADD = 0.U(width.W)
  val OP_AND = 1.U(width.W)
  val OP_NOT  = 2.U(width.W)
  val OP_PASSA = 3.U(width.W)
}

import ALU._

class ALU extends Module {
  val io = IO(new Bundle {
    val opSel = Input(UInt(2.W))
    val in_a  = Input(UInt(16.W))
    val in_b  = Input(UInt(16.W))
    val out   = Output(UInt(16.W))
    })
    

when(io.opSel===OP_ADD){						
  io.out := io.in_a + io.in_b
  }.elsewhen(io.opSel===OP_AND){
  io.out := io.in_a & io.in_b
  }.elsewhen(io.opSel===OP_NOT){
  io.out := ~io.in_a 
  }.elsewhen(io.opSel===OP_PASSA){
  io.out := io.in_a 
  }.otherwise{
  io.out:=0.U
  }
  
  
  
}

