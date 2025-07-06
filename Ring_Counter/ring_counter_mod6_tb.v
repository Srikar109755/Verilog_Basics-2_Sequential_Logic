`timescale 1ns / 1ps


module ring_counter_mod6_tb();
    reg st,rst,clk;
    wire [5:0]out;
    
    ring_counter_mod6 dut(st,rst,clk,out);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; 
        #12 rst = 0;
        #10 st = 1; 
        #10 st = 0;
        #100 $finish;
    end
endmodule
