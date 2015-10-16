`timescale 1ns / 1ps
`default_nettype none

module tb();
    // For simulation only.
    
    logic       clk, reset, HSync, VSync;
    logic [3:0] RED, GREEN, BLUE;
    
    Atari7800 console(
        .CLOCK_PLL(clk), .reset(reset),
        .RED(RED), .GREEN(GREEN), .BLUE(BLUE),
        .HSync(HSync), .VSync(VSync)
    );
    
    
    logic ram_we;
    logic [15:0] ram_addr;
    logic [7:0] ram_din, ram_dout;

    dll_img_ram dll_img(
      .clka(clk),
      .ena(~reset & ram_we),
      .wea(ram_we),
      .addra(ram_addr),
      .dina(ram_din),
      .clkb(clk),
      .enb(~reset & ~ram_we),
      .addrb(ram_addr),
      .doutb(ram_dout)
    );
    
    initial clk = 0;

    always begin
        #1 clk = ~clk;
    end
    
    task reset_all();
        @(posedge clk);
        reset = 1'b1;
        @(posedge clk);
        @(posedge clk);
        reset = 0'b0;
        @(posedge clk);
        @(posedge clk);
    endtask
    
    task initialize_mem();
        ram_addr = 16'h1234;
        ram_din = 8'hb3;
        ram_we = 1'b1;
        $display("Before clock: %02x", ram_dout);
        @(posedge clk);
        $display("After clock: %02x", ram_dout);
        ram_we = 1'b0;
        @(posedge clk);
        $display("After another: %02x", ram_dout);    
        @(posedge clk);
        $display("and another: %02x", ram_dout);
    endtask
    
    initial begin
        $display("Hello");
        
        reset_all();
        initialize_mem();
        #100 $finish;
    end

endmodule
