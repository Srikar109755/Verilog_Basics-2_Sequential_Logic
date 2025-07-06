`timescale 1ns / 1ps


module sr_latch_nor_tb();
    reg s,r;
    wire q,qbar;
    
    sr_latch_nor dut(
    .s(s),
    .r(r),
    .q(q),
    .qbar(qbar)
    );
    
    initial begin
        s = 1'b1; r = 1'b0; #10
        s = 1'b0; r = 1'b0; #10
        s = 1'b0; r = 1'b1; #10
        s = 1'b0; r = 1'b0; #10
        s = 1'b1; r = 1'b1; #10
        s = 1'b1; r = 1'b0; #10
        $finish;
    end
endmodule
