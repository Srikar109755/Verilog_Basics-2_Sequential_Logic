`timescale 1ns / 1ps


module d_flipflop(d,clk,q,qbar);
    input d,clk;
    output reg q,qbar;
    
    always@(posedge clk) begin
        q <= d;
        qbar <= ~d;
    end
endmodule

