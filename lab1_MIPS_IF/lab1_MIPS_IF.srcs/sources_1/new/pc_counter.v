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

module pc_counter(
    input wire [31:0] npc,
    input wire clk,
    input wire reset, // Added reset signal
    output reg [31:0] pc
);

    initial begin
        pc <= 0;
    end

    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 0; // Reset PC to 0
        else
            pc <= npc; // Update PC with the next value
    end

endmodule
