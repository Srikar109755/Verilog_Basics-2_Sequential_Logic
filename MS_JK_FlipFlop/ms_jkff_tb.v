`timescale 1ns / 1ps


module ms_jkff_tb();
    reg j,k,clk,rst;
    wire q;
    
    ms_jkff dut(j,k,clk,rst,q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; j = 0; k = 0; #12
        rst = 0; #10
        rst = 1; #10
        j = 1; k = 0; #10
        j = 0; k = 0; #10
        j = 0; k = 1; #10
        j = 0; k = 0; #10
        j = 1; k = 1; #10
        $finish;
    end
endmodule
