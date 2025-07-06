`timescale 1ns / 1ps


module jkff_dff(j,k,clk,q,qbar);
    input j,k,clk;
    output q,qbar;
    
    wire d;
    reg q_reg;
    
    assign d = (j&(~q)) | ((~k)&q);
    
    d_flipflop dut(d,clk,q,qbar);
    
    always@(posedge clk) begin
        q_reg <= q;
    end
endmodule
