`timescale 1ns / 1ps


module clk_div_248_tb();
    reg clk,rst;
    wire clk2,clk4,clk8;
    
    clk_div_248 dut(clk,rst,clk2,clk4,clk8);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; #10;
        rst = 0; #200
        $finish;
    end
endmodule
