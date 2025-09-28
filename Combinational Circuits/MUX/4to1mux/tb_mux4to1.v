`timescale 1ns/1ps
module tb_mux4to1_full;

    reg [3:0] in;
    reg [1:0] sel;
    wire out;

    // Instantiate the DUT
    mux4to1 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    integer i, j; // loop variables

    initial begin
        // Optional: dump waveforms for GTKWave
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, tb_mux4to1_full);

        // Loop through all 16 input combinations
        for (i = 0; i < 16; i = i + 1) begin
            in = i; // set data input

            // Loop through all 4 select values
            for (j = 0; j < 4; j = j + 1) begin
                sel = j;
                #10; // wait for output to settle
                $display("Time=%0t | in=%b | sel=%b | out=%b", $time, in, sel, out);
            end
        end

        $finish;
    end

endmodule
