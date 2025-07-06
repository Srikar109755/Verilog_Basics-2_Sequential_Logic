`timescale 1ns / 1ps


module fsm_moore_ha_tb();
    reg a,b,clk,rst;
    wire sum,carry;
    
    fsm_moore_ha dut(a,b,clk,rst,sum,carry);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
    
        $monitor("time : %0t a : %b b : %b sum : %b carry : %b",$time,a,b,sum,carry);
        
        rst = 0; a = 0; b = 0; #12
        rst = 1; #10
        rst = 0; a = 1 ; b = 1; #15
        a = 0 ; b = 1; #30
        a = 1 ; b = 0; #15
        a = 0 ; b = 0; #15
        $finish;
    end
    
endmodule
