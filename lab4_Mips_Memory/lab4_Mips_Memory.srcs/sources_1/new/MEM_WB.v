`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 05:04:43 PM
// Design Name: 
// Module Name: MEM_WB
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


module MEM_WB (
    input wire clk,
    input wire reset,
    input wire [31:0] ALU_result,
    input wire [31:0] Mem_data,
    input wire RegWrite,
    input wire MemToReg,
    output reg [31:0] WB_ALU_result,
    output reg [31:0] WB_Mem_data,
    output reg WB_RegWrite,
    output reg WB_MemToReg
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            WB_ALU_result <= 32'b0;
            WB_Mem_data <= 32'b0;
            WB_RegWrite <= 1'b0;
            WB_MemToReg <= 1'b0;
        end else begin
            WB_ALU_result <= ALU_result;
            WB_Mem_data <= Mem_data;
            WB_RegWrite <= RegWrite;
            WB_MemToReg <= MemToReg;
        end
    end
endmodule
