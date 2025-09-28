module tb_demux1to4;

    reg in;
    reg [1:0] sel;
    wire [3:0] out;

    demux1to4 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        
        in=0; sel=2'b00; #10;
        in=0; sel=2'b01; #10;
        in=0; sel=2'b10; #10;
        in=0; sel=2'b11; #10;
        in=1; sel=2'b00; #10;
        in=1; sel=2'b01; #10;
        in=1; sel=2'b10; #10;
        in=1; sel=2'b11; #10;
        $finish;
    end 

    initial begin
        $monitor("Time=%0d | in=%b sel=%b | out=%b", $time, in, sel, out);
    end
endmodule