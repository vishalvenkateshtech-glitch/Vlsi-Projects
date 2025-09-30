module tb_register2bit;

    reg clk;    
    reg [1:0] d;
    wire [1:0] q;

    register2bit uut (
        .d(d),
        .clk(clk),
        .q(q)
    );

    initial begin
        clk=0;
        forever begin
            #5 clk = ~clk;
        end
    end

    initial begin
        d = 2'b00;
        #10 d = 2'b01;
        #10 d = 2'b10;
        #10 d = 2'b11;
        #10 $finish;
    end

    initial begin
        $monitor("At time %t, d = %b, q = %b", $time, d, q);
    end
endmodule