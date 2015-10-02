# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /afs/ece.cmu.edu/usr/mwuebben/Private/545/Atari7800/memory/mem_project/mem_project.cache/wt [current_project]
set_property parent.project_path /afs/ece.cmu.edu/usr/mwuebben/Private/545/Atari7800/memory/mem_project/mem_project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
read_verilog -library xil_defaultlib -sv /afs/ece.cmu.edu/usr/mwuebben/Private/545/Atari7800/memory/mem.sv
synth_design -top tb -part xc7z020clg484-1
write_checkpoint -noxdef tb.dcp
catch { report_utilization -file tb_utilization_synth.rpt -pb tb_utilization_synth.pb }
