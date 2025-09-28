//this 2-bit comparator i am making using as a mini combinational project for and gates, or gates and not gates

// 2-bit Comparator using AND, OR, NOT gates
module comparator2bit (
    input [1:0] A,
    input [1:0] B,
    output A_gt_B,
    output A_lt_B,
    output A_eq_B
);

    // Internal wires
    wire A1_eq_B1, A0_eq_B0;
    wire A1_gt_B1, A1_lt_B1;
    wire A0_gt_B0, A0_lt_B0;
    wire nota1, notb1, nota0, notb0;

    // Invert inputs using not_gate (output = b)
    not_gate n1 (.a(A[1]), .b(nota1));
    not_gate n2 (.a(B[1]), .b(notb1));
    not_gate n3 (.a(A[0]), .b(nota0));
    not_gate n4 (.a(B[0]), .b(notb0));

    // Bit equalities: Ai == Bi = (Ai & Bi) | (~Ai & ~Bi)
    wire t1, t2, t3, t4;
    and_gate e1 (.a(A[1]), .b(B[1]), .y(t1));
    and_gate e2 (.a(nota1), .b(notb1), .y(t2));
    or_gate  e3 (.a(t1), .b(t2), .c(A1_eq_B1));

    and_gate e4 (.a(A[0]), .b(B[0]), .y(t3));
    and_gate e5 (.a(nota0), .b(notb0), .y(t4));
    or_gate  e6 (.a(t3), .b(t4), .c(A0_eq_B0));

    // A == B
    and_gate eq_and (.a(A1_eq_B1), .b(A0_eq_B0), .y(A_eq_B));

    // A1 > B1
    and_gate g1 (.a(A[1]), .b(notb1), .y(A1_gt_B1));
    // A0 > B0
    and_gate g0 (.a(A[0]), .b(notb0), .y(A0_gt_B0));

    // A1 < B1
    and_gate l1 (.a(nota1), .b(B[1]), .y(A1_lt_B1));
    // A0 < B0
    and_gate l0 (.a(nota0), .b(B[0]), .y(A0_lt_B0));

    // Final outputs
    wire eq1, eq2;
    and_gate eq1_and (.a(A1_eq_B1), .b(A0_gt_B0), .y(eq1));
    or_gate  gt_or  (.a(A1_gt_B1), .b(eq1), .c(A_gt_B));

    and_gate eq2_and (.a(A1_eq_B1), .b(A0_lt_B0), .y(eq2));
    or_gate  lt_or   (.a(A1_lt_B1), .b(eq2), .c(A_lt_B));

endmodule
