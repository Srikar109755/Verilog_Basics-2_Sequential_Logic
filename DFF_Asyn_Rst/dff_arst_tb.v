`timescale 1ns / 1ps


module dff_arst_tb();
    reg d,clk,rst;
    wire q,qbar;
    
    dff_arst dut(d,clk,rst,q,qbar);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; d = 0; #12;   // Apply reset
        rst = 1; d = 1; #10;   // Still in reset
        rst = 0; d = 0; #10;   // Normal operation
        rst = 0; d = 1; #10;   // Normal operation
        $finish;
    end
endmodule
