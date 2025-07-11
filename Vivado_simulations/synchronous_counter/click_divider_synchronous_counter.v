`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2025 01:47:20 PM
// Design Name: 
// Module Name: click_divider_synchronous_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clock_divider #(parameter N = 26) (
    input clk,               // 100 MHz input clock
    output reg slow_clk = 0  // Divided output clock
);
    reg [N-1:0] count = 0;

    always @(posedge clk) begin
        count <= count + 1;
        slow_clk <= count[N-1];  // MSB toggles every half period
    end
endmodule

