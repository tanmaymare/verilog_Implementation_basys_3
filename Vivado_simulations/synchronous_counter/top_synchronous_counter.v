module top_synchronous_counter(
    input clk,
    input rst,
    output [6:0] seg,
    output [3:0] an
);
    wire [3:0] count;
    wire clk_div;
    wire [6:0] seg_out;

    // Fixed one digit ON
    assign an = 4'b1110; // Only rightmost display is active

    // Slow clock for human-readable counting
    clock_divider #(26) div (.clk(clk), .slow_clk(clk_div));

    // 4-bit up counter
    synchronous_counter counter (.clk(clk_div), .rst(rst), .count(count));

    // Binary to 7-segment decoder
    bin4_to_7seg decoder (.bin(count), .seg(seg_out));

    assign seg = seg_out;
endmodule
