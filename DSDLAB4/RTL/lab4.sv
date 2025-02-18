`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 11:39:43 PM
// Design Name: 
// Module Name: lab4
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


module lab4(
    input logic [1:0] a, b,
    output logic r, g, b_led
    );
     assign r = (~b[1] & (~b[0] | a[0])) | (a[1] & (a[0] | ~b[1] | ~b[0]));
     assign g = (~a[1] & (b[0] | b[1] | ~a[0])) | (b[1] & (b[0] | ~a[0]));
     assign b_led = (a[1] ^ b[1]) | (a[0] ^ b[0]);
    endmodule


