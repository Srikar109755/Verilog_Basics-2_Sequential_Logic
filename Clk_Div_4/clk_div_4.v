`timescale 1ns / 1ps


module clk_div_4(clk,rst,q);
    input clk,rst;
    output reg q;
    
    reg [1:0]counter;
    
    always@(posedge clk) begin
        if (rst) begin
            counter <= 0;
            q <= 0;
        end 
        else if (counter == 2'b11) begin
            counter <= 0;
            q <= ~q;
        end
        else begin
            counter <= counter + 1;
            //q <= q;
        end
    end
endmodule
