module tb_mux2to1;

    reg a, b, s0;
    wire y;

    mux2to1 uut (
        .a(a),
        .b(b),
        .s0(s0),
        .y(y)
    );

    initial begin
        
        a=0; b=0; s0=0; #10;
        a=0; b=1; s0=0; #10;
        a=1; b=0; s0=0; #10;
        a=1; b=1; s0=0; #10;

        a=0; b=0; s0=1; #10;
        a=0; b=1; s0=1; #10;
        a=1; b=0; s0=1; #10;
        a=1; b=1; s0=1; #10;

        #10 $finish;
    end

    initial begin
        $monitor("At time %t, a=%b, b=%b, s0=%b => y=%b", $time, a, b, s0, y);
    end

endmodule