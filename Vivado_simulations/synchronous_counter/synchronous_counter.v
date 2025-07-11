`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2025 01:19:18 PM
// Design Name: 
// Module Name: synchronous_counter
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


module synchronous_counter(
    input rst,
    input clk,
    output reg [3:0] count
    );
    
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            count <= 4'b0000;
        else 
            count <= count +1; 
    end
endmodule
