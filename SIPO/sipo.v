`timescale 1ns / 1ps


module sipo(in,rst,clk,out);
    input in,rst,clk;
    output [3:0]out;
    
    reg [3:0]t;
    
    assign out = t;
    
    always@(posedge clk) begin
        if (rst)
           t <= 0;
        else begin
            t <= {t[2:0],in};
            //out <= t;
        end
    end
endmodule
