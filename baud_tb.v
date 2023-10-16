`timescale 1us/10ps
module baud_tb();

    reg clk,rst;
    reg [7:0] prescale;
    wire tx_clk,rx_clk;

    baud_rate_generator b1 (
        .clk(clk),
        .rst(rst),
        .prescale(prescale),
        .tx_clk(tx_clk),
        .rx_clk(rx_clk)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 0;
        prescale = 4;
        #15
        rst = 1;

    end


endmodule
