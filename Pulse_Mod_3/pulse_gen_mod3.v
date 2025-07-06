`timescale 1ns / 1ps


module pulse_gen_mod3(clk,rst,q,pulse);
    input clk,rst;
    output reg [1:0]q;
    output pulse;
    
    wire [1:0]q_next;
    
    
    assign q_next = (q == 2) ? 0 : (q +1);
    assign pulse = (q == 2) ? 1 : 0;
    
   always@(posedge clk) begin
    if(rst)
        q <= 0;
    else 
        q <= q_next;
   end
   
   
   //.......DON'T TRY THIS WAY.....,// U EVEN FACE 
    /*always@(posedge clk) begin
        if (rst) begin
            q <= 0;
            pulse <= 0;
        end
        else if (q == 2) begin
            q <= 0;
            pulse <= 1;
        end
        else begin
            q <= q + 1;
            pulse <= 0;
        end
    end*/
endmodule
