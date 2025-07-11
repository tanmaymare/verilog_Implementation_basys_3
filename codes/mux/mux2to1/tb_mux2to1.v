`timescale 1ns/1ps

module tb_mux2to1;
    reg a, b, sel;
    wire y;

    mux2to1 uut (.a(a), .b(b), .sel(sel), .y(y));

    integer i;

    initial begin
        $dumpfile("mux2to1.vcd");
        $dumpvars(0, uut);

        // Loop over all 2^3 = 8 combinations of a, b, sel
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, sel} = i;  // assign inputs
            #10;
        end

        $finish;
    end
endmodule
