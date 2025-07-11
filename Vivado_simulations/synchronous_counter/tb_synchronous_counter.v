`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2025 01:23:52 PM
// Design Name: 
// Module Name: tb_synchronous_counter
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


module tb_synchronous_counter;
    reg clk, rst;
    wire [3:0] count;
    
    synchronous_counter uut(.clk(clk), .rst(rst), .count(count));
    
    integer i;
    
    // generate clock
    initial begin
    clk = 0;
    forever #10 clk = ~ clk;
    end
    
    // rst and clk inputs 
    initial begin 
    #200;
    rst = 1;
    #20;
    rst = 1;
    #300;
    rst = 0;
    #400;
    $finish;
    end
    
        
endmodule
