`timescale 1ns/1ps
module 
    tb_xor_and;
    reg a, b, c;
    wire y;

    Xor_and_gate uut(.a(a), .b(b), .c(c), .y(y));  // Instantiate the module

    initial begin
        $dumpfile("wave_xor_and.vcd");
        $dumpvars(0, tb_xor_and);

        a=0; b=0; c=0; #10
	a=0; b=0; c=1; #10
	a=0; b=1; c=0; #10
	a=0; b=1; c=1; #10
	a=1; b=0; c=0; #10
	a=1; b=0; c=1; #10
	a=1; b=1; c=0; #10
	a=1; b=1; c=1; #10
        $finish;
    end
endmodule
