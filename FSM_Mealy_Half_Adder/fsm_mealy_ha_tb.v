`timescale 1ns / 1ps


module fsm_mealy_ha_tb();
    reg a,b,clk,rst;
    wire sum,carry;
    
    fsm_mealy_ha dut(a,b,clk,rst,sum,carry);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 0; a = 0; b = 0; #12
        rst = 1; #10
        rst = 0; a = 1; b = 1; #10
        a = 1; b = 0; #10
        a = 0; b = 1; #10
        a = 0; b = 0; #10
        $finish;
    end
    
    initial begin
        $monitor("Time=%0t a=%b b=%b sum=%b carry=%b", $time, a, b, sum, carry);
    end

endmodule
