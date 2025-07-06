`timescale 1ns / 1ps


module ms_jkff(j,k,clk,rst,q);
    input j,k,clk,rst;
    output q;
    
    wire qm;
    
    jk_ff m1(j,k,clk,rst,qm);
    jk_ff s1(qm,~qm,clk,rst,q);
endmodule
