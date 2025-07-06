`timescale 1ns / 1ps


module d_ff_tb();
    reg d,clk;
    wire q,qbar;
    
    d_flipflop dut(
    .d(d),
    .clk(clk),
    .q(q),
    .qbar(qbar)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        
        $display("time\tclk\td\tq\tqbar\t");
        $monitor("%0dns\t%b\t%b\t%b\t%b",$time,clk,d,q,qbar);
        
        d = 0; #12
        d = 1; #10;
        d = 0; #4;
        d = 1; #15;
        $finish;
    end
endmodule
