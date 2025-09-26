module tb_comparator2bit;

    reg [1:0] A, B;
    wire A_gt_B, A_lt_B, A_eq_B;

    // Instantiate the 2-bit comparator
    comparator2bit uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B),
        .A_eq_B(A_eq_B)
    );

    integer i, j;

    initial begin
        // Optional: waveform output for GTKWave
        $dumpfile("sim.vcd");
        $dumpvars(0, tb_comparator2bit);

        // Print header
        $display("Time\tA\tB\tA>B\tA<B\tA==B");

        // Test all 16 input combinations
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                A = i; 
                B = j; 
                #10; // wait 10 ns
                $display("%0t\t%b\t%b\t%b\t%b\t%b", $time, A, B, A_gt_B, A_lt_B, A_eq_B);
            end
        end

        $finish;
    end

endmodule