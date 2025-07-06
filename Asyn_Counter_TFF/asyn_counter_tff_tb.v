`timescale 1ns / 1ps

module asyn_counter_tff_tb();
    reg rst, clk;
    wire [3:0] q;

    asyn_counter_tff dut(.rst(rst), .clk(clk), .q(q));

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10 ns clock period
    end

    // Stimulus
    initial begin
        rst = 1;
        #15;         // Hold reset for more than one clk cycle
        rst = 0;
        #300;        // Run simulation for a while
        $finish;
    end

    // Monitor outputs
    /*initial begin
        $display("Time\tclk\trst\tq");
        $monitor("%0dns\t%b\t%b\t%04b", $time, clk, rst, q);
    end*/
endmodule
