timescale 1ns / 1ps
// Engineer: Rida Zainab 
// 
// Module Name: Lab3
// Target Devices:Nexys-A7-100T
// 
//////////////////////////////////////////////////////////////////////////////////


module Lab3(output x , y ,
    input a , b, c
    );
assign x = (a|b) ^ ~c;
assign y = (a|b) & (~(a&b)^(a|b));

endmodule