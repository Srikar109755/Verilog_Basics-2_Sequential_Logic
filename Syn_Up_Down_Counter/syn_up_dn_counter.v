`timescale 1ns / 1ps


module syn_up_dn_counter(up,down,rst,clk,count);
    input up,down,rst,clk;
    output reg [3:0]count;
    
    always@(posedge clk) begin
        if (rst)
            count = 0;
        else if (up && !down)
            count = count + 1'b1;
        else if(down && !up)
            count = count - 1'b1;
    end
endmodule
