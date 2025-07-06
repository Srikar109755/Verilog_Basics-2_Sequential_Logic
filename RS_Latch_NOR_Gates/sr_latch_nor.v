`timescale 1ns / 1ps


module sr_latch_nor(s,r,q,qbar);
    input s,r;
    output q,qbar;
    
    nor g1(q,r,qbar);
    nor g2(qbar,s,q);
    
    //........NO CLK IS USED IN THE LATCHES..............//
    /*always@(clk) begin
        case({s,r})
            2'b00 : begin
                        q = q; qbar = qbar;
                    end
            2'b01 : begin
                        q = 1'b0; qbar = 1'b1;
                    end
            2'b10 : begin
                        q = 1'b1; qbar = 1'b0;
                    end
            2'b11 : begin
                        q = 1'b0; qbar = 1'b0;
                    end
            default : begin
                        q = 1'b0; qbar = 1'b0;
                    end
        endcase           
    end*/
endmodule
