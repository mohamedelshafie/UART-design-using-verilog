`timescale 1us/1us
module UART_TOP_tb();


    reg clk,rst;
    reg [7:0] data_in_bus;
    reg data_valid_in;
    reg data_in_wire;
    reg par_enable;
    reg [7:0] prescale;
    reg par_type;

    wire data_out_wire;
    wire busy;
    wire [7:0] data_out_bus;
    wire data_valid_out;

    UART_TOP UART_DUT (
        .clk(clk),
        .rst(rst),
        .data_in_bus(data_in_bus),
        .data_valid_in(data_valid_in),
        .data_in_wire(data_in_wire),
        .par_enable(par_enable),
        .prescale(prescale),
        .par_type(par_type),
        .data_out_wire(data_out_wire),
        .busy(busy),
        .data_out_bus(data_out_bus),
        .data_valid_out(data_valid_out)
    );

    always #5 clk = ~clk;


    initial begin
        prescale = 4;
        data_in_wire = 1;
        clk = 1;
        data_in_bus = 8'b01001011;
        data_valid_in = 1'b1;
        rst = 1'b0;
        par_enable = 1'b1;
        par_type = 1'b0;
        
        #250000;
        data_in_bus = 8'b01001011;
        data_valid_in = 1'b1;
        rst = 1'b1;
        par_enable = 1'b1;
        par_type = 1'b0;
        #250000;
        data_valid_in = 1'b0;
        
        #100000
        rst = 1'b1;
        #(204140)
        data_in_wire = 0;
        #(204140)
        data_in_wire = 0;
        #(204140)
        data_in_wire = 1;
        #(204140)
        data_in_wire = 0;
        #(204140)
        data_in_wire = 0;
        #(204140)
        data_in_wire = 1;
        #(204140)
        data_in_wire = 0;
        #(204140)
        data_in_wire = 1;
        #(204140)
        data_in_wire = 1;
        #(204140)
        data_in_wire = 0;
        #(204140)
        data_in_wire = 1;
    end

endmodule
