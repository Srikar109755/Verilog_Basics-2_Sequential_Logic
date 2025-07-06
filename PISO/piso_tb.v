`timescale 1ns / 1ps


module piso_tb();
    reg [3:0]in;
    reg rst,ld,clk;
    wire out;
    
    piso dut(in,rst,clk,ld,out);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1; ld = 0; in = 4'd0;
        #12;              // Hold reset for a bit more than one clock
        rst = 0;          // Deassert reset

        #10;
        ld = 1; in = 4'b1010;   // Load input (e.g., 10 in binary)
        #10;
        ld = 0;                 // Start shifting on next clocks

        // Wait for 4 shifts
        #50;

        $finish;
    end
endmodule
