`timescale 1ns / 1ps


module siso(in,rst,clk,out);
    input in;
    input clk,rst;
    output out;
    
    reg [3:0]t ;
    
    assign out = t[3];
    always@(posedge clk) begin
        if (rst)
            t <= 0;
        else begin
            t <= {t[2:0],in};
            //out <= t[3];
        end
        
    end
endmodule
