`timescale 1ns/1ps

module tb_mux8to1;
    reg a, b, c, d, e, f, g, h ;
    reg [2:0]sel;
    wire y;

    mux8to1 uut (.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h), .sel(sel), .y(y));

    integer i;

    initial begin
        $dumpfile("mux8to1.vcd");
        $dumpvars(0, uut);

        // Loop over all 2^11 = 2048 combinations of a, b, c, d, e, f, g, h, [2:0] sel
        for (i = 0; i < 2048; i = i + 1) begin
            {a, b, c, d, e, f, g, h, sel} = i;  // assign inputs
            #10;
        end

        $finish;
    end
endmodule
