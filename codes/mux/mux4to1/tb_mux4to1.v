`timescale 1ns/1ps

module tb_mux4to1;
    reg a, b, c, d;
    reg [1:0]sel;
    wire y;

    mux4to1 uut (.a(a), .b(b), .c(c), .d(d), .sel(sel), .y(y));

    integer i;

    initial begin
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, uut);

        // Loop over all 2^6 = 64 combinations of a, b, [1:0] sel
        for (i = 0; i < 64; i = i + 1) begin
            {a, b, c, d, sel} = i;  // assign inputs
            #20;
        end

        $finish;
    end
endmodule
