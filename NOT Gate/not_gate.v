module not_gate (
    input wire a,
    output wire b
);

    assign b = ~a;

endmodule

// Testbench for NOT gate
module test_not_gate;

    reg a;
    wire b;

    not_gate uut (
        .a(a),
        .b(b)
    );

    initial begin
        $display("A | B");
        $display("---------");
        a = 0; #10; $display("%b | %b", a, b);
        a = 1; #10; $display("%b | %b", a, b);
        $finish;
    end
endmodule