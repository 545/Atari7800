# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.cache/wt [current_project]
set_property parent.project_path /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
read_ip /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.srcs/sources_1/ip/clock_divider/clock_divider.xci
set_property used_in_implementation false [get_files -all /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.srcs/sources_1/ip/clock_divider/clock_divider_board.xdc]
set_property used_in_implementation false [get_files -all /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.srcs/sources_1/ip/clock_divider/clock_divider.xdc]
set_property used_in_implementation false [get_files -all /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.srcs/sources_1/ip/clock_divider/clock_divider_ooc.xdc]
set_property is_locked true [get_files /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.srcs/sources_1/ip/clock_divider/clock_divider.xci]

read_verilog -library xil_defaultlib -sv {
  /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.srcs/sources_1/new/timing_ctrl.sv
  /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.srcs/sources_1/new/line_ram.sv
  /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/vga.sv
  /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.srcs/sources_1/new/maria.sv
  /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.srcs/sources_1/new/top.sv
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top Atari7800 -part xc7z020clg484-1 -flatten_hierarchy full
write_checkpoint -noxdef Atari7800.dcp
catch { report_utilization -file Atari7800_utilization_synth.rpt -pb Atari7800_utilization_synth.pb }
