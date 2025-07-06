`timescale 1ns / 1ps


module seq_dec_moore_tb();
    reg in,clk,rst;
    wire out;
    
    seq_dec_moore dut(in,clk,rst,out);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 0; in = 0; #12
        rst = 1; #10
        rst = 0; in = 1; #10
        in = 1; #10
        in = 1; #10
        in = 0; #10
        in = 1; #10
        in = 1; #10
        in = 0; #10
        in = 1; #10
        in = 0; #10
        in = 0; #10
        $finish; 
    end
endmodule
