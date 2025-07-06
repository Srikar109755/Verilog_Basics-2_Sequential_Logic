`timescale 1ns / 1ps


module up_dn_tb();
    reg up,down,rst,clk;
    wire [3:0]count;
    
    syn_up_dn_counter dut(up,down,rst,clk,count);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; up = 0; down = 0;
        #12 rst = 0;
        
        #10 up = 1; 
        #100 up = 0; 
        
        #10 down = 1; 
        #100 down = 0; 
        #10 $finish;
    end
endmodule
