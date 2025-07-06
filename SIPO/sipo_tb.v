`timescale 1ns / 1ps


module sipo_tb();
    reg in,clk,rst;
    wire [3:0]out;
    
    sipo dut(in,rst,clk,out);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; #12;
        rst = 0; in = 1; #10
        in = 1; #10
        in = 0; #10
        in = 1; #10
        in = 1; #10
        in = 0; #10
        $finish;
    end
endmodule
