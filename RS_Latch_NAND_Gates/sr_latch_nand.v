`timescale 1ns / 1ps


module sr_latch_nand(s,r,q,qbar);
    input s,r;
    output q,qbar;
    
    nand g1(q,s,qbar);
    nand g2(qbar,r,q);
endmodule
