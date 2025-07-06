`timescale 1ns / 1ps

module asyn_counter_tff(rst, clk, q);
    input rst, clk;
    output [3:0] q;

    wire q0, q1, q2, q3;

    t_ff t0(.t(1'b1), .rst(rst), .clk(clk),  .q(q0));
    t_ff t1(.t(1'b1), .rst(rst), .clk(q0),   .q(q1));
    t_ff t2(.t(1'b1), .rst(rst), .clk(q1),   .q(q2));
    t_ff t3(.t(1'b1), .rst(rst), .clk(q2),   .q(q3));

    assign q = {q3, q2, q1, q0};  // MSB to LSB
endmodule
