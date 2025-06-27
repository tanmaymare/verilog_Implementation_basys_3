`timescale 1ns/1ps
module 
    tb_decoder3to8;
    reg [2:0] in;
    wire [7:0] out;

    decoder3to8 uut(.in(in), .out(out));  // Instantiate the module

    integer i;

    initial begin
        $dumpfile("decoder3to8_case.vcd");
        $dumpvars(0, uut);  
  
        $display("Time\tin\tout");
        for (i = 0; i < 8; i = i + 1) begin
            in = i;
            #10;
            $display("%0t\t%b\t%b", $time, in, out);
        end
        $finish;
    end
endmodule
