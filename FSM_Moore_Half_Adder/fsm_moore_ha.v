`timescale 1ns / 1ps

module fsm_moore_ha(a, b, clk, rst, sum, carry);
    input a, b, clk, rst;
    output reg sum, carry; 
    
    reg [1:0] ps, ns;
    
    parameter s0 = 2'b00, // a=1, b=1 => sum=0, carry=1
              s1 = 2'b01, // transition state
              s2 = 2'b10, // a!=b => sum=1, carry=0
              s3 = 2'b11; // a=0, b=0 => sum=0, carry=0

    // Next state logic (combinational)
    always @ (ps or a or b) begin
        case(ps)
            s0 : ns = (a == 1 && b == 1) ? s0 : s1;
            s1 : begin
                if (a != b)
                    ns = s2;
                else if (a == 0 && b == 0)
                    ns = s3;
                else
                    ns = s0;
            end
            s2 : ns = (a != b) ? s2 : s1;
            s3 : ns = (a == 0 && b == 0) ? s3 : s1;
            default : ns = s0;
        endcase
    end

    // State register (sequential)
    always @ (posedge clk) begin
        if (rst)
            ps <= s0;
        else
            ps <= ns;
    end

    // Output logic (based on state only for Moore FSM)
    always @ (ps) begin
        case(ps)
            s0: begin sum = 0; carry = 1; end
            s1: begin sum = 0; carry = 0; end
            s2: begin sum = 1; carry = 0; end
            s3: begin sum = 0; carry = 0; end
            default: begin sum = 0; carry = 0; end
        endcase
    end
endmodule
