`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/07/2015 11:22:25 AM
// Design Name:
// Module Name: maria
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

`default_nettype none

module maria(
    // Busses
    input logic [15:0] AB,
    input logic [7:0]  DB,

    // Clocking
    input logic        reset,
    input logic        sysclk, pclk_2,
    output logic       tia_clk, pclk_0,

    // Memory Map Select lines
    output logic       ram0_b, ram1_b, p6532_b, tia_b,

    // Maria configuration
    input logic        RW, enable,

    // VGA Interface
    input logic [9:0]  vga_row, vga_col,
    output logic [7:0] UV_out,

    // Outputs to 6532
    output logic       int_b, halt_b, ready
);

    //// Memory Mapped Registers
    // Control register format:
    // {CK, DM1, DM0, CW, BC, KM, RM1, RM0}
    // CK: Color Kill
    // {DM1, DM0}: DMA Control. 0: Test A. 1: Test B.
    //                          2: Normal DMA. 3: No DMA.
    // CW: Character Width (For indirect mode). 0=>2bytes. 1=>1byte.
    // BC: Border Control: 0=>Background Color. 1=>Black Border.
    // KM: Kangaroo Mode: 0=>Transparency, 1=>No transparency
    // {RM1, RM0}: Read mode.
    logic [7:0]       ctrl;
    logic [24:0][7:0] color_map;

    // Write enables for internal Display List registers
    logic             palette_w, input_w, pixels_w, wm_w, ind_w;

    //// Control signals between timing_ctrl and dma_ctrl
    logic             zp_dma_start, dp_dma_start;
    logic             zp_dma_done, dp_dma_done;
    // When dp_dma_done is asserted, use this signal to specify
    // whether timing_ctrl needs to raise a display list interrupt
    logic             dp_dma_done_dli;
    // If a DMA is taking too long (too many objects,) kill it
    logic             dp_dma_kill;

    //// Control signals between timing_ctrl and line_ram
    logic             lram_swap;

    //// Shared memory map data
    // timing_ctrl asserts to switch ready to hig
    logic             assert_ready;

    line_ram line_ram_inst(
       .SYSCLK(sysclk), .RESET(reset),
       .PLAYBACK(UV_out),
       // Databus inputs
       .INPUT_ADDR(DB), .PALETTE(DB[7:5]), .PIXELS(DB),
       .WM(DB[7]), .IND(DB[5]),
       // Write enable for databus inputs
       .PALETTE_W(palette_w), .INPUT_W(input_w), .PIXELS_W(pixels_w),
       .WM_W(wm_w), .IND_W(ind_w),
       // Memory mapped registers
       .COLOR_MAP(color_map),
       .READ_MODE(ctrl[1:0]),
       .KANGAROO_MODE(ctrl[2]),
       .BORDER_CONTROL(ctrl[3]),
       .CHARACTER_WIDTH(ctrl[4]),
       .COLOR_KILL(ctrl[7]),
       // Control signals from timing_ctrl
       .LRAM_SWAP(lram_swap)
    );

    timing_ctrl timing_ctrl_inst(
        // Enabled only if men is asserted and display mode is 10
        .enable(enable & ctrl[6] & ~ctrl[5]),
        // Clocking
        .sysclk(sysclk), .reset(reset), .pclk_2(pclk_2),
        .pclk_0(pclk_0), .tia_clk(tia_clk),
        // Signals needed to slow pclk_0
        .slow_clock(~p6532_b | ~tia_b),
        // Outputs to 6532
        .halt_b(halt_b), .int_b(int_b), .assert_ready(assert_ready),
        // Signals to/from dma_ctrl
        .zp_dma_start(zp_dma_start), .dp_dma_start(dp_dma_start),
        .zp_dma_done(zp_dma_done), .dp_dma_done(dp_dma_done),
        .dp_dma_done_dli(dp_dma_done_dli),
        .dp_dma_kill(dp_dma_kill),
        // Signals to/from line_ram
        .lram_swap(lram_swap),
        // Signals to/from VGA
        .vga_row(vga_row), .vga_col(vga_col)
    );

endmodule
