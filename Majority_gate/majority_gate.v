module majority_gate (
    input a,
    input b,
    input c,
    output y
);
    assign y = (a & b) | (a & c) | (b & c);
endmodule
