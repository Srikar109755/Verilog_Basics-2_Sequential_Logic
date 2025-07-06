`timescale 1ns / 1ps


module jhonson_tb();
    reg rst,clk;
    wire [3:0]out;
    
    jhonson_counter dut(rst,clk,out);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1;
        #12 rst = 0;
        #100 $finish;
    end
endmodule
