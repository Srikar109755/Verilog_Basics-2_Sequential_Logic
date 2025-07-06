`timescale 1ns / 1ps


module pipo(in,rst,clk,out);
    input [3:0]in;
    input clk,rst;
    output [3:0]out;
    
    reg [3:0]t = 0;
    
    assign out = t;
    
    always@(posedge clk) begin
        if (rst)
            t <= 0;
        else 
            t <= in;
       
    end
endmodule
