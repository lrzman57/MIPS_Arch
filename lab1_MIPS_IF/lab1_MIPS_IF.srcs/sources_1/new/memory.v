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


module memory(
    input wire clk,
    input wire [31:0] adder,
    output reg [31:0] data
);

    reg [31:0] MEM[0:127]; // Memory initialization

    initial begin
        MEM[0] = 32'hA00000AA;
        MEM[1] = 32'h10000011;
        MEM[2] = 32'h20000022;
        MEM[3] = 32'h30000033;
        MEM[4] = 32'h40000044;
        MEM[5] = 32'h50000055;
        MEM[6] = 32'h60000066;
        MEM[7] = 32'h70000077;
        MEM[8] = 32'h80000088;
        MEM[9] = 32'h90000099;
        // Add more instructions as needed
    end

    always @(posedge clk) begin
        data <= MEM[adder[6:0]]; // Use lower 7 bits for addressing
    end

endmodule
