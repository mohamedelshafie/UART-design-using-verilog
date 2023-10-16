`timescale 1ns/1ps
module serializer_tb ();
    

    reg [7:0] data_in;
    reg valid;
    reg busy;
    reg enable;
    reg clk;
    reg rst;
    wire data_out;
    wire done;

    always #5 clk = ~clk;

    serializer s1 (data_in,valid,busy,enable,clk,rst,data_out,done);

    initial begin
        clk = 0;
        data_in = 8'b01001011;
        enable = 1'b0;
        busy = 1'b0;
        valid = 1'b1;
        rst = 1'b0;
        #20;
        data_in = 8'b01001011;
        enable = 1'b0;
        busy = 1'b0;
        valid = 1'b1;
        rst = 1'b1;
        #10;
        data_in = 8'b01001011;
        enable = 1'b0;
        busy = 1'b1;
        valid = 1'b0;
        rst = 1'b1;
        #10;
        data_in = 8'b01001011;
        enable = 1'b1;
        busy = 1'b1;
        valid = 1'b0;
        rst = 1'b1;
    end
endmodule
