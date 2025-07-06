`timescale 1ns / 1ps


module jkff_dff_tb();
    reg j,k,clk;
    wire q,qbar;
    
    jkff_dff dut(j,k,clk,q,qbar);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        j = 0; k = 0; #12
        j = 0; k = 1; #10
        j = 0; k = 0; #10
        j = 1; k = 1; #10
        j = 1; k = 0; #10
        j = 1; k = 1; #10
        $finish;
    end
endmodule
