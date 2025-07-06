`timescale 1ns / 1ps


module tff_dff(t,clk,q,qbar);
    input t,clk;
    output q,qbar;
    
    wire d;
    reg q_reg = 0;
    
    assign d = t ^ q_reg;
    
    d_flipflop d1(d,clk,q,qbar);
    
    always@(posedge clk) begin
        q_reg <= q;
    end
        
endmodule
