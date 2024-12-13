`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 05:04:43 PM
// Design Name: 
// Module Name: Data_Mem
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


module Data_Mem (
    input wire [31:0] address,
    input wire [31:0] write_data,
    input wire read_enable,
    input wire write_enable,
    output reg [31:0] read_data
);
    reg [31:0] memory [0:255];  // 256 words of 32-bit memory

    always @(*) begin
        if (read_enable) 
            read_data = memory[address >> 2];  // Word addressing
        else 
            read_data = 32'b0;
    end

    always @(posedge write_enable) begin
        if (write_enable)
            memory[address >> 2] <= write_data;  // Word addressing
    end
endmodule
