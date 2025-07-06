`timescale 1ns / 1ps


module jhonson_counter(rst,clk,out);
    input rst,clk;
    output reg [3:0]out;
    
    always@(posedge clk) begin
        if (rst) 
            out <= 4'b0000;
        else 
            out <= {(~out[0]),out[3:1]};
    end
endmodule
