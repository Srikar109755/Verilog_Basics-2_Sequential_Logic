`timescale 1ns / 1ps

module t_ff_tb();
    reg t, clk, rst;
    wire q;

    // Instantiate the T Flip-Flop
    t_ff dut (
        .t(t),
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10 ns clock period
    end

    // Stimulus
    initial begin
        $display("Time\tclk\trst\tt\tq");
        $monitor("%0dns\t%b\t%b\t%b\t%b", $time, clk, rst, t, q);

        rst = 1; t = 0; #12;  // Apply reset
        rst = 0; t = 1; #40;  // Toggle T to observe flip-flop behavior
        t = 0; #20;           // T = 0 → Q should hold
        t = 1; #30;           // T = 1 → Q should toggle
        rst = 1; #10;         // Assert reset again
        rst = 0; t = 1; #20;  // Resume operation
        $finish;
    end
endmodule
