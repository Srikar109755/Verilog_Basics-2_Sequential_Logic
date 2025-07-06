`timescale 1ns / 1ps

//......,CLK DIVIDE BY 3 USING MOD 3 PULSE..........//
module clk_div_3(clk,rst,clk_3,pulse,q);
    input clk,rst;
    output clk_3,pulse,q;
    
    wire pulse;
    reg q;
    wire q1;
    
    assign clk_3 = q | pulse;
    
    pulse_gen_mod3 p1(clk,rst,q1,pulse);
    
    
    always@(negedge clk) begin
        if(rst)
            q <= 0;
        else    
            q <= pulse;
    end    
endmodule
