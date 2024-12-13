`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2024 07:23:02 PM
// Design Name: 
// Module Name: incrementer
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


module incrementer(
                   input [31:0] PC,
                   output [31:0] next_PC
                );
                
                assign next_PC = PC+4;
endmodule
