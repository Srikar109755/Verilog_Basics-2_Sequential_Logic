`timescale 1ns / 1ps


module clk_div_3_tb();
    reg clk,rst;
    wire clk_3,pulse,q;
    
    clk_div_3 dut(clk, rst, clk_3,pulse,q);
    
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
