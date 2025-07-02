`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2025 02:27:01 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
      input A,
      input B,
      input Cin,
      output Sum,
      output Carry
    );
      assign Sum = A ^ B ^ Cin;
      assign Carry = (A & B) | (B & Cin) | (A & Cin);
endmodule
