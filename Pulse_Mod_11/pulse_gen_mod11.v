`timescale 1ns / 1ps


module pulse_gen_mod11(clk,rst,q,pulse);
    input clk,rst;
    output reg [3:0]q;
    output pulse;
    
    wire [3:0]q_next;
    
    assign q_next = (q == 11) ? 0 : q + 1;
    assign pulse = (q == 11) ? 1 : 0;
    
    always@(posedge clk) begin
        if (rst)
            q <= 0;
        else 
            q <= q_next;
    end
endmodule
