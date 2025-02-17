`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 11:51:43 PM
// Design Name: 
// Module Name: lab4_tb
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


module lab4_tb(
    logic [1:0] a,b;
    logic r, g, b;
    
    RGB_LED uut (
        .a(a),
        .b(b),
        .r(r),
        .g(g),
        .b(b)
    );
    
    initial begin
        $monitor("Time = %0t | a = %b, b = %b | r = %b, g = %b, b = %b", $time, a, b, r, g, b);
        
        a = 2'b00; b = 2'b00; #10;
        a = 2'b01; b = 2'b00; #10;
        a = 2'b10; b = 2'b00; #10;
        a = 2'b11; b = 2'b00; #10;
        a = 2'b00; b = 2'b01; #10;
        a = 2'b01; b = 2'b01; #10;
        a = 2'b10; b = 2'b01; #10;
        a = 2'b11; b = 2'b01; #10;
        a = 2'b00; b = 2'b10; #10;
        a = 2'b01; b = 2'b10; #10;
        a = 2'b10; b = 2'b10; #10;
        a = 2'b11; b = 2'b10; #10;
        a = 2'b00; b = 2'b11; #10;
        a = 2'b01; b = 2'b11; #10;
        a = 2'b10; b = 2'b11; #10;
        a = 2'b11; b = 2'b11; #10;
        
        $stop;
    end
endmodule
