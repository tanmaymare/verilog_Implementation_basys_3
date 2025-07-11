`timescale 1ns/1ps
module 
    tb_and;
    reg a, b;
    wire y;

    and_gate uut(.a(a), .b(b), .y(y));  // Instantiate the module

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_and);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
	a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
	a = 0; b = 0; #10;
        a = 0; b = 0; #10;
        a = 1; b = 1; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule
