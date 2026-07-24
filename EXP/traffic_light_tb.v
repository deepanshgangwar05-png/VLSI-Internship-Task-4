module traffic_light_tb;

reg clk, reset;
wire [2:0] light;

traffic_light uut(
    .clk(clk),
    .reset(reset),
    .light(light)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #100;
    $finish;
end

endmodule