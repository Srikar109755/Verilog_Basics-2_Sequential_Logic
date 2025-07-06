`timescale 1ns / 1ps


module siso_tb();
    reg in;
    reg clk,rst;
    wire out;
    
    siso dut(in,rst,clk,out);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
    
        rst = 1; in = 4'd0; #12
        in = 1'b1; #10
        in = 1'b1; #10
        in = 1'b1; #10
        
        rst = 0; in = 4'd1; #10
        in = 1'b1; #10
        in = 1'b0; #10
        in = 1'b1; #10
        in = 1'b0; #10
        in = 1'b1; #10
        in = 1'b1; #10
        in = 1'b1; #10
        in = 1'b0; #10
        in = 1'b1; #10
        in = 1'b0; #10
        in = 1'b0; #10
        $finish;
    end
endmodule
