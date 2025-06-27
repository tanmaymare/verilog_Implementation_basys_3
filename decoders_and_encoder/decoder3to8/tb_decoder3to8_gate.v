`timescale 1ns/1ps
module 
    tb_decoder3to8_gate;
    reg a, b, c;
    wire [7:0] out;

    decoder3to8_gate uut(.a(a), .b(b), .c(c), .out(out));  // Instantiate the module

    integer i;

    initial begin
        $dumpfile("decoder3to8_gate.vcd");
        $dumpvars(0, uut);  
  
        $display("Time\t a b c\tout");
        for (i = 0; i < 8; i = i + 1) begin
            {a,b,c} = i;
            #10;
            $display("%0t\t %b %b %b\t %b", $time, a, b, c, out);
        end
        $finish;
    end
endmodule
