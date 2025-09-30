module register2bit (
    input wire [1:0] d,
    input wire clk,
    output wire [1:0] q
);

    d_flip_flop dff0 (
        .d(d[0]),
        .clk(clk),
        .q(q[0])
    );

    d_flip_flop dff1 (
        .d(d[1]),
        .clk(clk),
        .q(q[1])
    );

endmodule