`timescale 1ns / 1ps


module ring_counter_mod6(st,rst,clk,out);
    input rst,clk,st;
    output reg [5:0]out;
    
    reg [5:0]t;
    
    always@(posedge clk) begin
        if (rst)
            out <= 6'b000000;
        else if(st)
            out <= 6'b000001;
        else
            //......CIRCULAR LEFT SHIFT......//
            out <= {out[4:0],out[5]};
    end
endmodule
