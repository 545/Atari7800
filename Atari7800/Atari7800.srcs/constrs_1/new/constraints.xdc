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




create_debug_core u_ila_0_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0_0]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0_0]
set_property port_width 1 [get_debug_ports u_ila_0_0/clk]
connect_debug_port u_ila_0_0/clk [get_nets [list console/divider/inst/CLOCK_100]]
set_property port_width 6 [get_debug_ports u_ila_0_0/probe0]
connect_debug_port u_ila_0_0/probe0 [get_nets [list {console/cpu_inst/core/state[0]} {console/cpu_inst/core/state[1]} {console/cpu_inst/core/state[2]} {console/cpu_inst/core/state[3]} {console/cpu_inst/core/state[4]} {console/cpu_inst/core/state[5]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 4 [get_debug_ports u_ila_0_0/probe1]
connect_debug_port u_ila_0_0/probe1 [get_nets [list {console/audio_xform/AUDV0[0]} {console/audio_xform/AUDV0[1]} {console/audio_xform/AUDV0[2]} {console/audio_xform/AUDV0[3]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 5 [get_debug_ports u_ila_0_0/probe2]
connect_debug_port u_ila_0_0/probe2 [get_nets [list {console/tia_inst/audio_ctrl/AUDF0[0]} {console/tia_inst/audio_ctrl/AUDF0[1]} {console/tia_inst/audio_ctrl/AUDF0[2]} {console/tia_inst/audio_ctrl/AUDF0[3]} {console/tia_inst/audio_ctrl/AUDF0[4]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 4 [get_debug_ports u_ila_0_0/probe3]
connect_debug_port u_ila_0_0/probe3 [get_nets [list {console/tia_inst/audio_ctrl/AUDC0[0]} {console/tia_inst/audio_ctrl/AUDC0[1]} {console/tia_inst/audio_ctrl/AUDC0[2]} {console/tia_inst/audio_ctrl/AUDC0[3]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 8 [get_debug_ports u_ila_0_0/probe4]
connect_debug_port u_ila_0_0/probe4 [get_nets [list {console/cpu_inst/core/SS[0]} {console/cpu_inst/core/SS[1]} {console/cpu_inst/core/SS[2]} {console/cpu_inst/core/SS[3]} {console/cpu_inst/core/SS[4]} {console/cpu_inst/core/SS[5]} {console/cpu_inst/core/SS[6]} {console/cpu_inst/core/SS[7]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 8 [get_debug_ports u_ila_0_0/probe5]
connect_debug_port u_ila_0_0/probe5 [get_nets [list {console/cpu_inst/core/XX[0]} {console/cpu_inst/core/XX[1]} {console/cpu_inst/core/XX[2]} {console/cpu_inst/core/XX[3]} {console/cpu_inst/core/XX[4]} {console/cpu_inst/core/XX[5]} {console/cpu_inst/core/XX[6]} {console/cpu_inst/core/XX[7]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 8 [get_debug_ports u_ila_0_0/probe6]
connect_debug_port u_ila_0_0/probe6 [get_nets [list {console/cpu_inst/core/YY[0]} {console/cpu_inst/core/YY[1]} {console/cpu_inst/core/YY[2]} {console/cpu_inst/core/YY[3]} {console/cpu_inst/core/YY[4]} {console/cpu_inst/core/YY[5]} {console/cpu_inst/core/YY[6]} {console/cpu_inst/core/YY[7]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 8 [get_debug_ports u_ila_0_0/probe7]
connect_debug_port u_ila_0_0/probe7 [get_nets [list {console/cpu_inst/core/AA[0]} {console/cpu_inst/core/AA[1]} {console/cpu_inst/core/AA[2]} {console/cpu_inst/core/AA[3]} {console/cpu_inst/core/AA[4]} {console/cpu_inst/core/AA[5]} {console/cpu_inst/core/AA[6]} {console/cpu_inst/core/AA[7]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 8 [get_debug_ports u_ila_0_0/probe8]
connect_debug_port u_ila_0_0/probe8 [get_nets [list {console/maria_inst/ctrl[0]} {console/maria_inst/ctrl[1]} {console/maria_inst/ctrl[2]} {console/maria_inst/ctrl[3]} {console/maria_inst/ctrl[4]} {console/maria_inst/ctrl[5]} {console/maria_inst/ctrl[6]} {console/maria_inst/ctrl[7]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 16 [get_debug_ports u_ila_0_0/probe9]
connect_debug_port u_ila_0_0/probe9 [get_nets [list {console/maria_inst/ZP[0]} {console/maria_inst/ZP[1]} {console/maria_inst/ZP[2]} {console/maria_inst/ZP[3]} {console/maria_inst/ZP[4]} {console/maria_inst/ZP[5]} {console/maria_inst/ZP[6]} {console/maria_inst/ZP[7]} {console/maria_inst/ZP[8]} {console/maria_inst/ZP[9]} {console/maria_inst/ZP[10]} {console/maria_inst/ZP[11]} {console/maria_inst/ZP[12]} {console/maria_inst/ZP[13]} {console/maria_inst/ZP[14]} {console/maria_inst/ZP[15]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 4 [get_debug_ports u_ila_0_0/probe10]
connect_debug_port u_ila_0_0/probe10 [get_nets [list {console/maria_inst/timing_ctrl_inst/state[0]} {console/maria_inst/timing_ctrl_inst/state[1]} {console/maria_inst/timing_ctrl_inst/state[2]} {console/maria_inst/timing_ctrl_inst/state[3]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 16 [get_debug_ports u_ila_0_0/probe11]
connect_debug_port u_ila_0_0/probe11 [get_nets [list {console/maria_inst/dma_ctrl_inst/DP[0]} {console/maria_inst/dma_ctrl_inst/DP[1]} {console/maria_inst/dma_ctrl_inst/DP[2]} {console/maria_inst/dma_ctrl_inst/DP[3]} {console/maria_inst/dma_ctrl_inst/DP[4]} {console/maria_inst/dma_ctrl_inst/DP[5]} {console/maria_inst/dma_ctrl_inst/DP[6]} {console/maria_inst/dma_ctrl_inst/DP[7]} {console/maria_inst/dma_ctrl_inst/DP[8]} {console/maria_inst/dma_ctrl_inst/DP[9]} {console/maria_inst/dma_ctrl_inst/DP[10]} {console/maria_inst/dma_ctrl_inst/DP[11]} {console/maria_inst/dma_ctrl_inst/DP[12]} {console/maria_inst/dma_ctrl_inst/DP[13]} {console/maria_inst/dma_ctrl_inst/DP[14]} {console/maria_inst/dma_ctrl_inst/DP[15]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 16 [get_debug_ports u_ila_0_0/probe12]
connect_debug_port u_ila_0_0/probe12 [get_nets [list {console/maria_inst/dma_ctrl_inst/DP_saved[0]} {console/maria_inst/dma_ctrl_inst/DP_saved[1]} {console/maria_inst/dma_ctrl_inst/DP_saved[2]} {console/maria_inst/dma_ctrl_inst/DP_saved[3]} {console/maria_inst/dma_ctrl_inst/DP_saved[4]} {console/maria_inst/dma_ctrl_inst/DP_saved[5]} {console/maria_inst/dma_ctrl_inst/DP_saved[6]} {console/maria_inst/dma_ctrl_inst/DP_saved[7]} {console/maria_inst/dma_ctrl_inst/DP_saved[8]} {console/maria_inst/dma_ctrl_inst/DP_saved[9]} {console/maria_inst/dma_ctrl_inst/DP_saved[10]} {console/maria_inst/dma_ctrl_inst/DP_saved[11]} {console/maria_inst/dma_ctrl_inst/DP_saved[12]} {console/maria_inst/dma_ctrl_inst/DP_saved[13]} {console/maria_inst/dma_ctrl_inst/DP_saved[14]} {console/maria_inst/dma_ctrl_inst/DP_saved[15]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 16 [get_debug_ports u_ila_0_0/probe13]
connect_debug_port u_ila_0_0/probe13 [get_nets [list {console/maria_inst/dma_ctrl_inst/PP[0]} {console/maria_inst/dma_ctrl_inst/PP[1]} {console/maria_inst/dma_ctrl_inst/PP[2]} {console/maria_inst/dma_ctrl_inst/PP[3]} {console/maria_inst/dma_ctrl_inst/PP[4]} {console/maria_inst/dma_ctrl_inst/PP[5]} {console/maria_inst/dma_ctrl_inst/PP[6]} {console/maria_inst/dma_ctrl_inst/PP[7]} {console/maria_inst/dma_ctrl_inst/PP[8]} {console/maria_inst/dma_ctrl_inst/PP[9]} {console/maria_inst/dma_ctrl_inst/PP[10]} {console/maria_inst/dma_ctrl_inst/PP[11]} {console/maria_inst/dma_ctrl_inst/PP[12]} {console/maria_inst/dma_ctrl_inst/PP[13]} {console/maria_inst/dma_ctrl_inst/PP[14]} {console/maria_inst/dma_ctrl_inst/PP[15]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 16 [get_debug_ports u_ila_0_0/probe14]
connect_debug_port u_ila_0_0/probe14 [get_nets [list {console/maria_inst/dma_ctrl_inst/ZP_saved_next[0]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[1]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[2]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[3]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[4]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[5]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[6]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[7]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[8]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[9]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[10]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[11]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[12]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[13]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[14]} {console/maria_inst/dma_ctrl_inst/ZP_saved_next[15]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 4 [get_debug_ports u_ila_0_0/probe15]
connect_debug_port u_ila_0_0/probe15 [get_nets [list {console/maria_inst/dma_ctrl_inst/dp_state[0]} {console/maria_inst/dma_ctrl_inst/dp_state[1]} {console/maria_inst/dma_ctrl_inst/dp_state[2]} {console/maria_inst/dma_ctrl_inst/dp_state[3]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 8 [get_debug_ports u_ila_0_0/probe16]
connect_debug_port u_ila_0_0/probe16 [get_nets [list {console/write_DB[0]} {console/write_DB[1]} {console/write_DB[2]} {console/write_DB[3]} {console/write_DB[4]} {console/write_DB[5]} {console/write_DB[6]} {console/write_DB[7]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 8 [get_debug_ports u_ila_0_0/probe17]
connect_debug_port u_ila_0_0/probe17 [get_nets [list {console/read_DB[0]} {console/read_DB[1]} {console/read_DB[2]} {console/read_DB[3]} {console/read_DB[4]} {console/read_DB[5]} {console/read_DB[6]} {console/read_DB[7]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 16 [get_debug_ports u_ila_0_0/probe18]
connect_debug_port u_ila_0_0/probe18 [get_nets [list {console/pc_temp[0]} {console/pc_temp[1]} {console/pc_temp[2]} {console/pc_temp[3]} {console/pc_temp[4]} {console/pc_temp[5]} {console/pc_temp[6]} {console/pc_temp[7]} {console/pc_temp[8]} {console/pc_temp[9]} {console/pc_temp[10]} {console/pc_temp[11]} {console/pc_temp[12]} {console/pc_temp[13]} {console/pc_temp[14]} {console/pc_temp[15]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 4 [get_debug_ports u_ila_0_0/probe19]
connect_debug_port u_ila_0_0/probe19 [get_nets [list {console/CS[0]} {console/CS[1]} {console/CS[2]} {console/CS[3]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 16 [get_debug_ports u_ila_0_0/probe20]
connect_debug_port u_ila_0_0/probe20 [get_nets [list {AB[0]} {AB[1]} {AB[2]} {AB[3]} {AB[4]} {AB[5]} {AB[6]} {AB[7]} {AB[8]} {AB[9]} {AB[10]} {AB[11]} {AB[12]} {AB[13]} {AB[14]} {AB[15]}]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe21]
connect_debug_port u_ila_0_0/probe21 [get_nets [list console/bios_en_b]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe22]
connect_debug_port u_ila_0_0/probe22 [get_nets [list console/core_halt_b]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe23]
connect_debug_port u_ila_0_0/probe23 [get_nets [list console/cpu_reset]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe24]
connect_debug_port u_ila_0_0/probe24 [get_nets [list console/maria_inst/dp_dma_start]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe25]
connect_debug_port u_ila_0_0/probe25 [get_nets [list console/ctrl/latch_b]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe26]
connect_debug_port u_ila_0_0/probe26 [get_nets [list console/ctrl/lock_out]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe27]
connect_debug_port u_ila_0_0/probe27 [get_nets [list console/m_int_b]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe28]
connect_debug_port u_ila_0_0/probe28 [get_nets [list console/maria_drive_AB]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe29]
connect_debug_port u_ila_0_0/probe29 [get_nets [list console/ctrl/maria_en_out]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe30]
connect_debug_port u_ila_0_0/probe30 [get_nets [list console/memclk]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe31]
connect_debug_port u_ila_0_0/probe31 [get_nets [list console/cpu_inst/NMI]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe32]
connect_debug_port u_ila_0_0/probe32 [get_nets [list pclk_0]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe33]
connect_debug_port u_ila_0_0/probe33 [get_nets [list console/cpu_inst/rdy_in]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe34]
connect_debug_port u_ila_0_0/probe34 [get_nets [list reset_IBUF]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe35]
connect_debug_port u_ila_0_0/probe35 [get_nets [list console/maria_inst/RW]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe36]
connect_debug_port u_ila_0_0/probe36 [get_nets [list console/sysclk_7_143]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe37]
connect_debug_port u_ila_0_0/probe37 [get_nets [list console/ctrl/tia_en_out]]
create_debug_port u_ila_0_0 probe
set_property port_width 1 [get_debug_ports u_ila_0_0/probe38]
connect_debug_port u_ila_0_0/probe38 [get_nets [list console/maria_inst/zp_dma_start]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_CLOCK_100]

