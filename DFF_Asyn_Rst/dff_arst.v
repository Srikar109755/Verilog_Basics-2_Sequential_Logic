`timescale 1ns / 1ps


module dff_arst(d,clk,rst,q,qbar);
    input d,clk,rst;
    output reg q,qbar;
    
    always@(posedge clk or negedge rst) begin
        if (!rst) begin         //...ACTIVE LOW ASYNCHRNOUS RESET......//
            q <= 0; 
            qbar <= 1;
        end
        else begin
            q <= d;
            qbar <= ~d;
        end
    end
endmodule
