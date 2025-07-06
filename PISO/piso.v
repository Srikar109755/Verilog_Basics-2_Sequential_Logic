`timescale 1ns / 1ps


module piso(in,rst,clk,ld,out);
    input [3:0]in;
    input rst,clk,ld;
    output reg out;
    
    reg [3:0]t;
    
    always@(posedge clk) begin
        if (rst)
            t <= 0;
        else if(ld) begin
            t <= in;
            //t <= (t<<1);
            //out <= t[3];
        end
        else 
            t <= (t<<1);
        
        out <= t[3];
    end
endmodule
