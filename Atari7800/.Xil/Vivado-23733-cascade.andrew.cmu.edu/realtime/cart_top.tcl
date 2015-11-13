# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    set ::env(RT_TMP) "./.Xil/Vivado-23733-cascade.andrew.cmu.edu/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7z020clg484-1

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include {
    /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new
    /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/riot
    /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/BIOS_ROM
    /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/CART_ROM
  } {
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/audio.sv
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new/line_ram.sv
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new/dma_ctrl.sv
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new/memory_map.sv
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new/timing_ctrl.sv
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new/cpu_wrapper.sv
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/audio_xformer.sv
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new/uv_vga.sv
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new/maria.sv
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new/top.sv
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new/cart_top.sv
    }
      rt::read_verilog -include {
    /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new
    /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/riot
    /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/BIOS_ROM
    /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/CART_ROM
  } {
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/imports/NMOS/ALU.v
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/imports/NMOS/cpu.v
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/new/tia.v
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/riot/riot.v
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/clock_divider/clock_divider_clk_wiz.v
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/clock_divider/clock_divider.v
    }
      rt::read_vhdl -lib xil_defaultlib {
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/sound_interface/i3c2.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/sound_interface/adau1761_configuraiton_data.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/sound_interface/i2s_data_interface.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/sound_interface/i2c.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/sound_interface/ADAU1761_interface.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/sound_interface/dsp_block.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/sound_interface/clocking.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/sound_interface/adau1761_izedboard.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/ram1/synth/ram1.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/ram0/synth/ram0.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/BIOS_ROM/synth/BIOS_ROM.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/tia/sound_interface/adau1761_test.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/CART_ROM/synth/CART_ROM.vhd
    }
      rt::read_vhdl -lib blk_mem_gen_v8_2 {
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/ram1/blk_mem_gen_v8_2/hdl/blk_mem_gen_v8_2_vhsyn_rfs.vhd
      /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/Atari7800/Atari7800.srcs/sources_1/ip/ram1/blk_mem_gen_v8_2/hdl/blk_mem_gen_v8_2.vhd
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top cart_top
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-23733-cascade.andrew.cmu.edu/"
    if {$rt::useElabCache == false} {
      rt::run_rtlelab -module $rt::top
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }

    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
    }


    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
