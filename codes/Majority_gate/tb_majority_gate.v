`timescale 1ns/1ps

module tb_majority_gate;
    reg a, b, c;
    wire y;

    majority_gate uut (.a(a), .b(b), .c(c), .y(y));

    integer i;

    initial begin
        $dumpfile("wave_majority_gate.vcd");
        $dumpvars(0, uut);

        for (i = 0; i < 8; i = i + 1) begin
            {a, b, c} = i;
            #10;
        end

        $finish;
    end
endmodule
