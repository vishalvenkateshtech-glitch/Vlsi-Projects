module mux2to1 (
    input wire a,
    input wire b,
    input wire s0,
    output wire y
);

    assign y=s0 ? b : a;

endmodule