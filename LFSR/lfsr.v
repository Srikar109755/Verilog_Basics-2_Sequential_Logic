`timescale 1ns / 1ps


module lfsr(clk,rst,out);
    input clk,rst;
    output reg [3:0]out;
    
    wire feedback;
    assign feedback = (out[1] ^ out[0]);
    
    always@(posedge clk) begin
        if (rst)
            out <= 4'b0001;     //....SEED VALUE CANNOT BE ZERO, SO DON'T GIVE THE VALUE 0.....//
        else 
            out <= {feedback,out[3:1]};
    end
endmodule
