`timescale 1ns/1ps

module tb_xor;
    reg a, b;
    wire y;

    // Instantiate the module
    or_gate uut(.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("wave_xor.vcd");
        $dumpvars(0, uut);

        a = 0; b = 0; #20;
        a = 0; b = 1; #20;
        a = 1; b = 0; #20;
        a = 1; b = 1; #20;   
        $finish;
    end
endmodule
