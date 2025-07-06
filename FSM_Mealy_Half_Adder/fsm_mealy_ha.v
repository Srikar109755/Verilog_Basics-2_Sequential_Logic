`timescale 1ns / 1ps


module fsm_mealy_ha(a,b,clk,rst,sum,carry);
    input a,b,clk,rst;
    output reg sum,carry;
    
    parameter s0 = 0, s1 = 1;
    reg ps,ns;
    
    always@(a or b or ps) begin
        case(ps)
            s0 : if(a==1 && b == 1)
                    ns = s0;
                 else
                    ns = s1;
            s1 : /*if ((a != b) || (a==0 && b==0))
                    ns = s1;
                 else 
                    ns = s0;*/ //or u can also use this
                 if (a == 1 && b == 1)
                    ns = s0; 
                 else 
                    ns = s1;
            default : ns = s0;
        endcase
    end
    
    always@(posedge clk) begin
        if (rst)
            ps <= 0;
        else 
            ps <= ns;
    end
    
    always@(ps or a or b) begin
        case(ps)
            s0 : begin
                    sum = 0;
                    carry = 1;
                 end
            s1 : begin
                    if (a!=b) begin
                        sum = 1;
                        carry = 0;
                    end
                    else begin
                        sum = 0;
                        carry = 0;
                    end
                 end
        endcase
    end
    
endmodule
