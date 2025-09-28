module tb_demux1to2;

    reg in;
    reg sel;
    wire out0;
    wire out1;
    
    demux1to2 uut (
        .in(in),
        .sel(sel),
        .out0(out0),
        .out1(out1)
    );

    initial begin

        in=0; sel=0; #10;
        in=0; sel=1; #10;
        in=1; sel=0; #10;
        in=1; sel=1; #10;
        $finish;
    end

    initial begin
        $monitor("t=%0t | din=%b sel=%b -> y0=%b y1=%b", $time, in, sel, out0, out1);
    end
endmodule