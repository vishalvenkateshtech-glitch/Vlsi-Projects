module tb_decoder3to8;
    reg [2:0] A;
    wire [7:0] Y;

    decoder3to8 uut (
        .A(A),
        .Y(Y)
    );

    initial begin
        // Test cases
        A = 3'b000; #10;
        A = 3'b001; #10;
        A = 3'b010; #10;
        A = 3'b011; #10;
        A = 3'b100; #10;
        A = 3'b101; #10;
        A = 3'b110; #10;
        A = 3'b111; #10;
        $finish;
    end
    initial begin
        $monitor("A = %b, Y = %b", A, Y);
    end
endmodule