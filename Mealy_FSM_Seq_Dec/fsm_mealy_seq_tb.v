`timescale 1ns / 1ps


module fsm_mealy_seq_tb();
    reg in,clk,rst;
    wire out;
    
    fsm_mealy_seq dut(in,clk,rst,out);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 0; in = 0; #12
        rst = 1; #10
        rst = 0; in = 1; #10
        in = 1; #10
        in = 0; #10
        in = 0; #10
        in = 1; #10
        in = 0; #10
        in = 1; #10
        in = 1; #10
        in = 0; #10
        in = 1; #10
        $finish;
    end
endmodule
