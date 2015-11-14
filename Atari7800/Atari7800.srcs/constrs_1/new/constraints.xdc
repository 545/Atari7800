set_property PACKAGE_PIN AB19 [get_ports {BLUE[3]}]
set_property PACKAGE_PIN AB20 [get_ports {BLUE[2]}]
set_property PACKAGE_PIN Y20 [get_ports {BLUE[1]}]
set_property PACKAGE_PIN Y21 [get_ports {BLUE[0]}]
set_property PACKAGE_PIN AA21 [get_ports {GREEN[3]}]
set_property PACKAGE_PIN AB21 [get_ports {GREEN[2]}]
set_property PACKAGE_PIN AA22 [get_ports {GREEN[1]}]
set_property PACKAGE_PIN AB22 [get_ports {GREEN[0]}]
set_property PACKAGE_PIN V18 [get_ports {RED[3]}]
set_property PACKAGE_PIN V19 [get_ports {RED[2]}]
set_property PACKAGE_PIN U20 [get_ports {RED[1]}]
set_property PACKAGE_PIN V20 [get_ports {RED[0]}]
set_property PACKAGE_PIN Y9 [get_ports CLOCK_PLL]
set_property PACKAGE_PIN AA19 [get_ports HSync]
set_property PACKAGE_PIN R18 [get_ports reset]
set_property PACKAGE_PIN Y19 [get_ports VSync]
set_property IOSTANDARD LVCMOS18 [get_ports CLOCK_PLL]
set_property IOSTANDARD LVCMOS18 [get_ports HSync]
set_property IOSTANDARD LVCMOS18 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports VSync]
set_property IOSTANDARD LVCMOS18 [get_ports {RED[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RED[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RED[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RED[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GREEN[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GREEN[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GREEN[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GREEN[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {BLUE[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {BLUE[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {BLUE[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {BLUE[0]}]



set_property PACKAGE_PIN AB1 [get_ports AC_ADR0]
set_property PACKAGE_PIN Y5 [get_ports AC_ADR1]
set_property PACKAGE_PIN AB2 [get_ports AC_MCLK]
set_property PACKAGE_PIN Y8 [get_ports AC_GPIO0]
set_property PACKAGE_PIN AA7 [get_ports AC_GPIO1]
set_property PACKAGE_PIN AA6 [get_ports AC_GPIO2]
set_property PACKAGE_PIN Y6 [get_ports AC_GPIO3]
set_property PACKAGE_PIN AB4 [get_ports AC_SCK]
set_property PACKAGE_PIN AB5 [get_ports AC_SDA]
set_property IOSTANDARD LVCMOS18 [get_ports AC_ADR0]
set_property IOSTANDARD LVCMOS18 [get_ports AC_ADR1]
set_property IOSTANDARD LVCMOS18 [get_ports AC_GPIO0]
set_property IOSTANDARD LVCMOS18 [get_ports AC_GPIO1]
set_property IOSTANDARD LVCMOS18 [get_ports AC_GPIO2]
set_property IOSTANDARD LVCMOS18 [get_ports AC_GPIO3]
set_property IOSTANDARD LVCMOS18 [get_ports AC_MCLK]
set_property IOSTANDARD LVCMOS18 [get_ports AC_SCK]
set_property IOSTANDARD LVCMOS18 [get_ports AC_SDA]


set_property IOSTANDARD LVCMOS18 [get_ports {ld[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ld[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ld[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ld[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ld[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ld[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ld[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ld[0]}]
set_property PACKAGE_PIN U14 [get_ports {ld[7]}]
set_property PACKAGE_PIN U19 [get_ports {ld[6]}]
set_property PACKAGE_PIN W22 [get_ports {ld[5]}]
set_property PACKAGE_PIN V22 [get_ports {ld[4]}]
set_property PACKAGE_PIN U21 [get_ports {ld[3]}]
set_property PACKAGE_PIN U22 [get_ports {ld[2]}]
set_property PACKAGE_PIN T21 [get_ports {ld[1]}]
set_property PACKAGE_PIN T22 [get_ports {ld[0]}]







connect_debug_port dbg_hub/clk [get_nets u_ila_0_CLOCK_7_143]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 32768 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list console/divider/inst/CLOCK_100]]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {console/read_DB[0]} {console/read_DB[1]} {console/read_DB[2]} {console/read_DB[3]} {console/read_DB[4]} {console/read_DB[5]} {console/read_DB[6]} {console/read_DB[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 16 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {console/core_AB_out[0]} {console/core_AB_out[1]} {console/core_AB_out[2]} {console/core_AB_out[3]} {console/core_AB_out[4]} {console/core_AB_out[5]} {console/core_AB_out[6]} {console/core_AB_out[7]} {console/core_AB_out[8]} {console/core_AB_out[9]} {console/core_AB_out[10]} {console/core_AB_out[11]} {console/core_AB_out[12]} {console/core_AB_out[13]} {console/core_AB_out[14]} {console/core_AB_out[15]}]]
create_debug_port u_ila_0 probe
set_property port_width 4 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {console/CS[0]} {console/CS[1]} {console/CS[2]} {console/CS[3]}]]
create_debug_port u_ila_0 probe
set_property port_width 8 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {console/cpu_inst/core/PCH[0]} {console/cpu_inst/core/PCH[1]} {console/cpu_inst/core/PCH[2]} {console/cpu_inst/core/PCH[3]} {console/cpu_inst/core/PCH[4]} {console/cpu_inst/core/PCH[5]} {console/cpu_inst/core/PCH[6]} {console/cpu_inst/core/PCH[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 8 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {console/write_DB[0]} {console/write_DB[1]} {console/write_DB[2]} {console/write_DB[3]} {console/write_DB[4]} {console/write_DB[5]} {console/write_DB[6]} {console/write_DB[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 8 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {console/cpu_inst/core/DI[0]} {console/cpu_inst/core/DI[1]} {console/cpu_inst/core/DI[2]} {console/cpu_inst/core/DI[3]} {console/cpu_inst/core/DI[4]} {console/cpu_inst/core/DI[5]} {console/cpu_inst/core/DI[6]} {console/cpu_inst/core/DI[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 8 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {console/cpu_inst/core/IRHOLD[0]} {console/cpu_inst/core/IRHOLD[1]} {console/cpu_inst/core/IRHOLD[2]} {console/cpu_inst/core/IRHOLD[3]} {console/cpu_inst/core/IRHOLD[4]} {console/cpu_inst/core/IRHOLD[5]} {console/cpu_inst/core/IRHOLD[6]} {console/cpu_inst/core/IRHOLD[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list console/bios_en_b]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list console/core_halt_b]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list console/cpu_reset]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list console/ctrl/latch_b]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list console/ctrl/lock_out]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list console/maria_drive_AB]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list console/ctrl/maria_en_out]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list console/memclk]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list pclk_0]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list console/cpu_inst/rdy_in]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list reset_IBUF]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list console/maria_inst/RW]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list console/sysclk_7_143]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list console/ctrl/tia_en_out]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_CLOCK_100]
