`timescale 1ns / 1ps


module pipo_tb();
    reg [3:0]in;
    reg clk,rst;
    wire [3:0]out;
    
    pipo dut(in,rst,clk,out);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; #7
        rst = 0; in = 4'd0; #10
        in = 4'd1; #10
        in = 4'd2; #10
        in = 4'd3; #10
        in = 4'd4; #10
        in = 4'd5; #10
        $finish;
        
    end
endmodule
