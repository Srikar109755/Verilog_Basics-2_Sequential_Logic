`timescale 1ns / 1ps


module clk_div_248(clk,rst,clk2,clk4,clk8);
    input clk,rst;
    output clk2,clk4,clk8;
    
    reg [2:0]counter;
    
    always@(posedge clk) begin
        if(rst)
            counter <= 0;
        else 
            counter = counter + 1;
    end
    
    assign clk2 = counter[0];
    assign clk4 = counter[1];
    assign clk8 = counter[2];
endmodule
