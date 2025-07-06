`timescale 1ns / 1ps


module lfsr_tb();
    reg clk,rst;
    wire [3:0]out;
    
    lfsr dut(clk,rst,out);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; #12 
        rst = 0; #200
        $finish;
    end
endmodule
