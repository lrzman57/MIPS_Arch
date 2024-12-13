`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 11:44:23 PM
// Design Name: 
// Module Name: Mux_32
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


module Mux_32(
    input wire [31:0] a,
    input wire [31:0] b,
    input wire sel,
    output wire [31:0] y
);
    assign y = (sel) ? a : b;
endmodule
