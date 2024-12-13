`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 05:04:43 PM
// Design Name: 
// Module Name: Memory
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


module Memory (
    input wire clk,
    input wire reset,
    input wire [31:0] ALU_result,  // Address computed in Execute stage
    input wire [31:0] Write_data, // Data to be written to memory
    input wire MemRead,           // Control signal: read memory
    input wire MemWrite,          // Control signal: write memory
    input wire RegWrite,          // Control signal: write to register
    input wire MemToReg,          // Control signal: memory data to register
    output wire [31:0] WB_ALU_result, // ALU result forwarded to Write Back
    output wire [31:0] WB_Mem_data,   // Data read from memory
    output wire WB_RegWrite,          // Forwarded control signal
    output wire WB_MemToReg           // Forwarded control signal
);
    // Internal signal for memory read data
    wire [31:0] Mem_data;

    // Data Memory module
    Data_Mem data_mem (
        .address(ALU_result),
        .write_data(Write_data),
        .read_enable(MemRead),
        .write_enable(MemWrite),
        .read_data(Mem_data)
    );

    // MEM/WB Pipeline Register
    MEM_WB mem_wb (
        .clk(clk),
        .reset(reset),
        .ALU_result(ALU_result),
        .Mem_data(Mem_data),
        .RegWrite(RegWrite),
        .MemToReg(MemToReg),
        .WB_ALU_result(WB_ALU_result),
        .WB_Mem_data(WB_Mem_data),
        .WB_RegWrite(WB_RegWrite),
        .WB_MemToReg(WB_MemToReg)
    );
endmodule

