`timescale 1ns / 1ps


module pulse_mod3_tb();
    reg clk,rst;
    wire [1:0]q;
    wire pulse;
    
    pulse_gen_mod3 dut(clk,rst,q,pulse);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; #10
        rst = 0; #150
        $finish;
    end
endmodule
