module mux2to1 (
    input a,     // input 0
    input b,     // input 1
    input sel,   // selector
    output y     // output
);
    assign y = (sel) ? b : a;  // if sel==1, output=b; else output=a
endmodule
