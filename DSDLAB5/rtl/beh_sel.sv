`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 10:20:15 PM
// Design Name: 
// Module Name: beh_sel
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


module beh_sel(
    input  logic [2:0] sel,   
    output logic AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7 
);

    always_comb begin
        
        AN0 = 1;
        AN1 = 1;
        AN2 = 1;
        AN3 = 1;
        AN4 = 1;
        AN5 = 1;
        AN6 = 1;
        AN7 = 1;
        
        case (sel)
            3'b000: AN0 = 0;
            3'b001: AN1 = 0;
            3'b010: AN2 = 0;
            3'b011: AN3 = 0;
            3'b100: AN4 = 0;
            3'b101: AN5 = 0;
            3'b110: AN6 = 0;
            3'b111: AN7 = 0;
        endcase
    end
    
endmodule
