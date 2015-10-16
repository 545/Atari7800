set_property SRC_FILE_INFO {cfile:/afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/maria/maria.srcs/sources_1/ip/clock_divider/clock_divider.xdc rfile:../../../maria.srcs/sources_1/ip/clock_divider/clock_divider.xdc id:1 order:EARLY scoped_inst:divider/inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports CLOCK_PLL]] 0.1
