`timescale 1ns / 1ps

module t_ff(t, rst, clk, q);
    input t, clk, rst;
    output reg q;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 1'b0;
        else if (t)
            q <= ~q;
    end
endmodule
