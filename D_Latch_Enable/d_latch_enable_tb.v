`timescale 1ns / 1ps


module d_latch_enable_tb();
    reg d,en;
    wire q,qbar;
    
    d_latch_enable dut(d,en,q,qbar);
    
    initial begin
        d = 1'b0 ; en = 1'b0 ; #10
        d = 1'b1 ; en = 1'b0 ; #10
        d = 1'b0 ; en = 1'b1 ; #10
        d = 1'b1 ; en = 1'b1 ; #10
        $finish;
    end
endmodule
