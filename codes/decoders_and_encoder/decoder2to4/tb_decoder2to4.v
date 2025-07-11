`timescale 1ns/1ps
module 
    tb_decoder2to4;
    reg [1:0] in;
    wire [3:0] out;

    decoder2to4 uut(.in(in), .out(out));  // Instantiate the module

    integer i;

    initial begin
        $dumpfile("decoder2to4.vcd");
        $dumpvars(0, uut);  
  
        $display("Time\tin\tout");
        for (i = 0; i < 4; i = i + 1) begin
            in = i;
            #10;
            $display("%0t\t%b\t%b", $time, in, out);
        end
        $finish;
    end
endmodule
