module tb_sr_flip_flop;

    reg s;
    reg r;
    reg clk;
    wire q;
    wire qn;

    sr_flip_flop uut (
        .S(s),
        .R(r),
        .clk(clk),
        .Q(q),
        .Qn(qn)
    );

    initial begin
        s = 0;
        r = 0;
        clk = 0;

        #10 s = 1; r = 0;
        #10 s = 0; r = 1;
        #10 s = 0; r = 0; 
        #10 s = 1; r = 1; 
    end

    always #5 clk = ~clk;

    initial begin
        $monitor("At time %t: S=%b, R=%b, Q=%b, Qn=%b", $time, s, r, q, qn);
        #50 $finish;
    end

endmodule