`timescale 1ns / 1ps


//1011 SEQUENCE DETECTOR
module seq_dec_moore(in,clk,rst,out);
    input in,clk,rst;
    output reg out;
    
    reg [2:0]ps,ns;
    parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100;
    
    always@(ps or in) begin
        case(ps)
            s0 : if(in == 1)
                    ns = s1;
                 else   
                    ns = s0;
            s1 : if(in == 0)
                    ns = s2;
                 else   
                    ns = s1;
            s2 : if(in == 1)
                    ns = s3;
                 else   
                    ns = s0;
            s3 : if(in == 1)
                    ns = s4;
                 else   
                    ns = s2;
            s4 : if(in == 1)
                    ns = s1;
                 else   
                    ns = s2;
            default : ns = s0;
        endcase
    end
    
    always@(posedge clk) begin
        if (rst)
            ps <= 0;
        else 
            ps <= ns;
    end
    
    always@(ps) begin
        case(ps)
            s0 : out = 0;
            s1 : out = 0;
            s2 : out = 0;
            s3 : out = 0;
            s4 : out = 1;
        endcase
    end
endmodule
