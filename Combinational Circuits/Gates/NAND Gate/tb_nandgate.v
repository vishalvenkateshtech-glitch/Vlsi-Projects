module tb_nandgate;
    reg a;
    reg b;
    wire y;

    nand_gate uut(
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $display("A B | Y");
        $monitor("%b %b | %b", a, b, y);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule