`timescale 1ns/1ps

module tb_not;
    reg a;
    wire y;

    not_gate uut (.a(a), .y(y));

    initial begin
        $dumpfile("wave_not.vcd");
        $dumpvars(0, uut);

        a = 0; #10
        a = 1; #20
        a = 0; #50
        a = 1; #55
	

        $finish;
    end
endmodule
