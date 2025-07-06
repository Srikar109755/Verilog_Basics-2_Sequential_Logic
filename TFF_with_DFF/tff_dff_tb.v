`timescale 1ns / 1ps


module tff_dff_tb();
    reg t,clk;
    wire q,bar;
    
    tff_dff dut(t,clk,q,qbar);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        t = 0; #12;
        t = 1; #10;
        t = 0; #10;
        $finish;
    end
endmodule
