`timescale 1ns/1ps
module UART_tx_tb ();


    reg [7:0] data_in;
    reg valid;
    reg par_enable;
    reg par_type;
    reg clk;
    reg rst;
    wire data_out;
    wire busy;

    always #5 clk = ~clk;

    UART_TOP_tx DUT (
        .data(data_in),
        .data_valid(valid),
        .parity_type(par_type),
        .parity_en(par_enable),
        .clk(clk),
        .rst(rst),
        .data_out(data_out),
        .busy(busy)
    );

    initial begin
        
        clk = 0;
        data_in = 8'b01001011;
        valid = 1'b1;
        rst = 1'b0;
        par_enable = 1'b1;
        par_type = 1'b1;
        #15;
        data_in = 8'b01001011;
        valid = 1'b1;
        rst = 1'b1;
        par_enable = 1'b1;
        par_type = 1'b1;
        #15;
        valid = 1'b0;
        

        /*
        clk = 0;
        data_in = 8'b01001011;
        valid = 1'b1;
        rst = 1'b0;
        par_enable = 1'b1;
        par_type = 1'b0;
        #15;
        data_in = 8'b01001011;
        valid = 1'b1;
        rst = 1'b1;
        par_enable = 1'b1;
        par_type = 1'b0;
        #15;
        valid = 1'b0;
        */

        /*
        clk = 0;
        data_in = 8'b01001011;
        valid = 1'b1;
        rst = 1'b0;
        par_enable = 1'b0;
        par_type = 1'b0;
        #15;
        data_in = 8'b01001011;
        valid = 1'b1;
        rst = 1'b1;
        par_enable = 1'b0;
        par_type = 1'b0;
        #15;
        valid = 1'b0;
        */
    end

endmodule
