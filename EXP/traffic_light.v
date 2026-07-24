module traffic_light(
    input clk,
    input reset,
    output reg [2:0] light
);

parameter RED    = 3'b100;
parameter YELLOW = 3'b010;
parameter GREEN  = 3'b001;

reg [1:0] state;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        state <= 0;
        light <= RED;
    end
    else
    begin
        case(state)
            0:
            begin
                light <= GREEN;
                state <= 1;
            end

            1:
            begin
                light <= YELLOW;
                state <= 2;
            end

            2:
            begin
                light <= RED;
                state <= 0;
            end
        endcase
    end
end

endmodule