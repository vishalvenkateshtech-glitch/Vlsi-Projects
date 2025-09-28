module demux1to2 (
    input wire in,
    input wire sel,
    output wire out0,
    output wire out1
);

    assign out0 = (sel == 1'b0) ? in : 1'b0;
    assign out1 = (sel == 1'b1) ? in : 1'b0;
endmodule