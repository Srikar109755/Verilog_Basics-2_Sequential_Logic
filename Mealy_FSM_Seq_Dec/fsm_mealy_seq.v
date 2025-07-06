`timescale 1ns / 1ps

//1011 SEQUENCE DETECTOR
module fsm_mealy_seq(in,clk,rst,out);
    input in,clk,rst;
    output reg out; 
    
    reg [2:0]ns,ps;
    parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011;
    
    always@(ps or in) begin
        case(ps)
            s0 : if(in == 1)
                    ns =  s1;
                 else
                    ns = s0;
            s1 : if(in == 0)
                    ns =  s2;
                 else
                    ns = s1;
            s2 : if(in == 1)
                    ns =  s3;
                 else
                    ns = s0;
            s3 : if(in == 1)
                    ns =  s1;
                 else
                    ns = s2;
            default : ns = s0;
        endcase
    end
    
    always@(posedge clk) begin
        if(rst)
            ps <= 0;
        else 
            ps <= ns;
    end
    
    always@(ps or in) begin
        case(ps)
            //s0 : out = 0;
            //s1 : out = 0;
            //s2 : out = 0;
            s3 : out = in ? 1 : 0;
            default : out = 0;
        endcase
    end
endmodule
