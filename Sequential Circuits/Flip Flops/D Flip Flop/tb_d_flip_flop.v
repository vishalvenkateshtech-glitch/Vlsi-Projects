module tb_d_flip_flop;

    reg d;
    reg clk;
    wire q;
    wire qn;

    d_flip_flop uut (
        .d(d),
        .clk(clk),
        .q(q),
        .qn(qn)
    );

    initial clk=0;
    always #5 clk = ~clk;


    initial begin
        
        d=0; #10;
        d=1; #10;
        $finish;
    end

    initial begin
        $monitor("At time %t, d = %b, clk = %b, q = %b, qn = %b", $time, d, clk, q, qn);
    end
endmodule