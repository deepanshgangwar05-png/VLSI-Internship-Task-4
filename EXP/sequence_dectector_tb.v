module seq_detector_tb;

reg clk, reset, in;
wire detected;

seq_detector uut(
    .clk(clk),
    .reset(reset),
    .in(in),
    .detected(detected)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    in = 0;

    #10 reset = 0;

    in=1; #10;
    in=0; #10;
    in=1; #10;
    in=1; #10;

    #20;
    $finish;
end

endmodule