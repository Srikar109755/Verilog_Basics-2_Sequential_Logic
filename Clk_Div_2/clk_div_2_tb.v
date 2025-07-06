`timescale 1ns / 1ps


module clk_div_2_tb();
    reg clk,rst;
    wire q;
    
    clk_div_2 dut(clk,rst,q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; #10
        rst = 0; #200
        $finish;
    end
endmodule
