`timescale 1ns/1ps

module tb_priority_encoder_4to2;

    reg [3:0] D;
    wire [1:0] Y;
    wire V;

    priority_encoder_4to2 uut (.D(D), .Y(Y), .V(V));

    integer i;

    initial begin
        $dumpfile("priority_encoder_4to2.vcd");
        $dumpvars(0, uut);

        $display("Time\tD\tY\tV");

        for (i = 0; i < 16; i = i + 1) begin
            D = i;
            #10;
            $display("%0t\t%b\t%b\t%b", $time, D, Y, V);
        end

        $finish;
    end

endmodule
