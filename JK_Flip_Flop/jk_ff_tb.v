`timescale 1ns / 1ps


module jk_ff_tb();
    reg j,k,clk,rst;
    wire q;
    
    jk_ff dut(j,k,clk,rst,q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
    
        $display("Time\tclk\tj\tk\tq");
        $monitor("%0dns\t%b\t%b\t%b\t%b",$time,clk,j,k,q);
        
        j = 0 ; k = 0 ; rst = 1;
        #12 rst = 0;
        #10 rst = 1; 
        #10
        j = 0 ; k = 1; #10
        j = 0 ; k = 0; #10
        j = 1 ; k = 0; #10
        j = 0 ; k = 0; #10
        j = 1 ; k = 1; #10
        $finish;
    end
endmodule

