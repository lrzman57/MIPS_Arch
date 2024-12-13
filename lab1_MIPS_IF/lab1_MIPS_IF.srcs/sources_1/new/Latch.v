`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2024 07:24:32 PM
// Design Name: 
// Module Name: Latch
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


module Latch(
    input wire clk,
    input wire [31:0] instr,
    input wire [31:0] npc,
    output reg [31:0] instrout,
    output reg [31:0] npcout
);

    initial begin
        instrout <= 0;
        npcout <= 0;
    end

    always @(posedge clk) begin
        instrout <= instr;
        npcout <= npc;
    end

endmodule