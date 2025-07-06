`timescale 1ns / 1ps


module sr_latch_enable_tb();
    reg s,r,en;
    wire q,qbar;
    
    sr_latch_enable dut(
    .s(s),
    .r(r),
    .en(en),
    .q(q),
    .qbar(qbar)
    );
    
    initial begin
        s = 1'b0; r = 1'b1 ; en = 1'b1; #10
        s = 1'b0; r = 1'b1 ; en = 1'b0; #10
        s = 1'b0; r = 1'b0 ; en = 1'b0; #10
        s = 1'b1; r = 1'b0 ; en = 1'b0; #10
        s = 1'b0; r = 1'b0 ; en = 1'b0; #10
        s = 1'b1; r = 1'b1 ; en = 1'b0; #10
        s = 1'b0; r = 1'b1 ; en = 1'b1; #10
        s = 1'b0; r = 1'b0 ; en = 1'b1; #10
        s = 1'b1; r = 1'b0 ; en = 1'b1; #10
        s = 1'b0; r = 1'b0 ; en = 1'b1; #10
        s = 1'b1; r = 1'b1 ; en = 1'b1; #10 
        $finish;
    end
endmodule
