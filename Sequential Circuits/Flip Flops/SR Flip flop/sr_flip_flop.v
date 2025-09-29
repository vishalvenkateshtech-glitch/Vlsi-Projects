module sr_flip_flop (
    input S,
    input R,
    input clk,
    output reg Q,
    output reg Qn
);

    always @(posedge clk) begin
        if (S && !R) begin
            Q <= 1;
            Qn <= 0;
        end else if (!S && R) begin
            Q <= 0;
            Qn <= 1;
        end else if (!S && !R) begin
            Q <= Q;
            Qn <= Qn;
        end else begin
            Q <= 1'bx; 
            Qn <= 1'bx; 
        end
    end 
endmodule