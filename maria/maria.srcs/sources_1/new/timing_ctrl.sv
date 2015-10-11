`default_nettype none

module timing_ctrl (
    // Clocking
    input  logic sysclk, reset, pclk_2,
    output logic pclk_0, tia_clk,
    input  logic slow_clock,
    
    // Outputs to 6532
    output logic halt_b, int_b, ready,
    
    // Signals to/from dma_ctrl
    output logic zp_dma_start, dp_dma_start,
    input  logic zp_dma_done, dp_dma_done,
    input  logic dp_dma_done_dli,
    output logic dp_dma_kill,
    
    // Signals to/from line_ram
    output logic lram_swap,
    
    // Maria configuration
    input logic RW, enable,
    
    // VGA Status
    input logic [9:0] vga_row, vga_col
);
    // Current NTSC row and col
    logic [8:0]          row, col;
    
    logic [9:0]          vga_row_prev, vga_col_prev;
    
    // Each ntsc line is two vga lines. Asserted => we are on second one
    logic second_vga_line;
    logic vga_line_delta;
    
    // Clock division
    logic [1:0] fast_ctr;
    logic [2:0] slow_ctr;
    logic fast_clk, slow_clk;
    
    // interrupt on next cycle
    logic int_b_next;
    
    assign vga_line_delta = vga_row_prev != vga_row;

    enum {
        VWAIT,
        ZP_DMA,
        HWAIT,
        DP_DMA
    } state;
    
    // There are 452 cycles per line. DMA Shutdown can take up to 13.
    assign dp_dma_kill = second_vga_line & (col == 9'd436);
    assign zp_dma_start = (vga_row == 10'd520) & (col == 9'd420);
    assign dp_dma_start = second_vga_line & vga_line_delta;
    assign tia_clk = slow_clk;
    assign pclk_0 = slock_clock ? slow_clk : fast_clk;
    assign halt_b = ~(dp_dma_start | zp_dma_start |
                      (state == ZP_DMA | state == DP_DMA));
    assign lram_swap = dp_dma_done;
      
    
    always @(posedge sysclk, posedge reset) begin
        if (reset) begin
            row <= 9'b0;
            col <= 9'b0;
            vga_row_prev <= vga_row;
            vga_col_prev <= vga_col;
            second_vga_line <= 1'b0;
            fast_clk <= 1'b0;
            slow_clk <= 1'b0;
            fast_ctr <= 2'b0;
            slow_ctr <= 3'b0;
            int_b <= 1'b0;
            int_b_next <= 1'b0;
        end else begin
            // Clock generation
            fast_ctr <= fast_ctr + 2'b01;
            if (&fast_ctr)
                fast_clk <= ~fast_clk;
            if (slow_ctr == 3'd5) begin
                slow_ctr <= 3'b0;
                slow_clk <= ~slow_clk;
            end else begin
                slow_ctr <= slow_ctr + 3'b001;
            end
            
            // Interrupt generation
            int_b <= int_b_next;
            int_b_next <= dp_dma_done_dli;
            
            // Next state logic
            case (state)
                VWAIT, default: begin
                    if (zp_dma_start) begin
                        state <= ZP_DMA;
                    end
                end
                ZP_DMA: begin
                   if (zp_dma_done) begin
                        state <= HWAIT;
                        second_vga_line <= 1'b1;
                        row <= ~9'd0;
                   end
                end
                HWAIT: begin
                    if (dp_dma_start) begin
                        state <= DP_DMA;
                        second_vga_line <= 1'b0;
                        col <= 9'b0;
                        row <= row + 9'd1;
                    end
                end
                DP_DMA: begin
                    if (vga_line_delta)
                        second_vga_line <= 1'b1;
                    if (dp_dma_done) begin
                        if (row == 9'd241) begin
                            row <= 9'd0;
                            state <= VWAIT;
                        end else begin
                            state <= HWAIT;
                        end
                    end
                end
            endcase
        end
    end

   
  
endmodule