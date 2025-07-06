`timescale 1ns / 1ps


//.......ENABLE IS SAME AS THE CLOCK IN THE SR FLIPFLOP..............//
//........NOW THIS IS A SR FLIPFLOP INSTEAD OF SAYING LATCH...........//

module sr_latch_enable(s,r,en,q,qbar);
    input s,r,en;
    output q,qbar;
    
    wire s1,r1;
    nand g1(s1,en,s);
    nand g2(r1,en,r);
    
    nand g3(q,s1,qbar);
    nand g4(qbar,r1,q);
endmodule
