module d_flip_flop (
    input wire d,
    input wire clk,
    output reg q,
    output reg qn
);
    always @(posedge clk) begin
        q <= d;
        qn <= ~d;
    end
endmodule