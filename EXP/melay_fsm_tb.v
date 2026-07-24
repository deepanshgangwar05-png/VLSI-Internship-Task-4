module mealy_fsm_tb;

reg clk;
reg reset;
reg x;
wire y;

mealy_fsm uut (
    .clk(clk),
    .reset(reset),
    .x(x),
    .y(y)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    x = 0;

    #10 reset = 0;

    // Test sequence
    x = 1; #10;
    x = 1; #10;
    x = 0; #10;
    x = 1; #10;
    x = 1; #10;
    x = 0; #10;

    #20 $finish;
end

initial begin
    $monitor("Time=%0t Reset=%b X=%b Y=%b",
              $time, reset, x, y);
end

endmodule