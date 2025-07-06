`timescale 1ns / 1ps


module d_latch_enable(d,en,q,qbar);
    input d,en;
    output q,qbar;
    
    wire d1,d1bar;
    
    nand g1(d1,d,en);
    nand g2(d1bar,~d,en);
    nand g3(q,d1,qbar);
    nand g4(qbar,d1bar,q);
endmodule
