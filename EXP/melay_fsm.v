`timescale 1ns / 1ps
module mealy_fsm(
    input clk,
    input reset,
    input x,
    output reg y
);
reg state;
always @(posedge clk or posedge reset)
begin
    if(reset) begin
        state <= 0;
        y <= 0;
    end
    else begin
        case(state)
            0: begin
                if(x) begin
                    state <= 1;
                    y <= 0;
                end
            end
            1: begin
                if(x)
                    y <= 1;
                else
                    y <= 0;
            end
        endcase
    end
end
endmodule