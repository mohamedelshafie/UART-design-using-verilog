`timescale 1ns/1ps
module UART_rx_tb();


    reg data;
    reg par_enable;
    reg [7:0] prescale;
    reg par_type;
    reg clk;
    reg rst;
    wire [7:0] data_out;
    wire data_valid;

    always #5 clk = ~clk;

    UART_TOP_rx DUT (
        .data(data),
        .par_enable(par_enable),
        .prescale(prescale),
        .par_type(par_type),
        .clk(clk),
        .rst(rst),
        .data_out(data_out),
        .data_valid(data_valid)
    );


    initial begin
        clk = 1;
        rst = 0;

        /*data = 1;
        par_type = 0;
        par_enable = 1;
        prescale = 4;

        #40
        rst = 1;
        data = 0;
        #40
        data = 0;
        #40
        data = 1;
        #40
        data = 0;
        #40
        data = 0;
        #40
        data = 1;
        #40
        data = 0;
        #40
        data = 1;
        #40
        data = 1;
        #40
        data = 0;
        #40
        data = 1;
        #50;*/
        
        /*data = 1;
        par_type = 1;
        par_enable = 1;
        prescale = 4;

        #40
        rst = 1;
        data = 0;
        #40
        data = 0;
        #40
        data = 1;
        #40
        data = 0;
        #40
        data = 0;
        #40
        data = 1;
        #40
        data = 0;
        #40
        data = 1;
        #40
        data = 1;
        #40
        data = 1;
        #40
        data = 1;
        #50;*/

        data = 1;
        par_type = 0;
        par_enable = 0;
        prescale = 4;

        #40
        rst = 1;
        data = 0;
        #40
        data = 0;
        #40
        data = 1;
        #40
        data = 0;
        #40
        data = 0;
        #40
        data = 1;
        #40
        data = 0;
        #40
        data = 1;
        #40
        data = 1;
        #40
        data = 1;
        #50;
    end

endmodule