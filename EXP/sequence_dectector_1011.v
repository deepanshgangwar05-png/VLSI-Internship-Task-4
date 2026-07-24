module seq_detector(
    input clk,
    input reset,
    input in,
    output reg detected
);

parameter S0=0,S1=1,S2=2,S3=3;

reg [1:0] state;

always @(posedge clk or posedge reset)
begin
    if(reset) begin
        state <= S0;
        detected <= 0;
    end
    else begin
        case(state)
            S0: state <= (in)?S1:S0;

            S1: state <= (in)?S1:S2;

            S2: state <= (in)?S3:S0;

            S3: begin
                if(in) begin
                    detected <= 1;
                    state <= S1;
                end
                else begin
                    detected <= 0;
                    state <= S2;
                end
            end
        endcase
    end
end

endmodule