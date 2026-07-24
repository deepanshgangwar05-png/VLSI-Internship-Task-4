`timescale 1ns / 1ps
module moore_fsm_tb;

reg clk, reset;
wire [1:0] state;

moore_fsm uut(
    .clk(clk),
    .reset(reset),
    .state(state)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #50;
    $finish;
end

endmodule