`timescale 1ns / 1ps


module clk_div_2(clk,rst,q);
    input clk,rst;
    output reg q;
    
    always@(posedge clk) begin
        if (rst)
            q <= 0;
        else 
            q <= ~q;
    end
endmodule
