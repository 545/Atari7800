`default_nettype none

module memory_map(
  //merq
    input maria_en,
    input [15:0] AB,
    input [7:0] DB,
    output tia_b, p6532_b, ram0_b, ram1_b,
    output [7:0] ctrl,
    output [24:0][7:0] color_map,
    output [7:0] status_read,
    output [7:0] wait_sync,
    
    // whether to slow pclk_0 for slow memory accesses
    output       slow_clock
);

endmodule