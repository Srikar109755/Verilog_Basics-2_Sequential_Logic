`timescale 1ns / 1ps


module mod11_tb();
    reg clk,rst;
    wire [3:0]q;
    wire pulse;
    
    pulse_gen_mod11 dut(clk,rst,q,pulse);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; #12
        rst = 0; #300
        $finish;
    end
endmodule
