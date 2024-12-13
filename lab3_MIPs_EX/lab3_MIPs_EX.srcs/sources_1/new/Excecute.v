`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 11:23:43 PM
// Design Name: 
// Module Name: Excecute
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

`timescale 1ns / 1ps

module Execute_Stage(
    input clk,
    input rst,

    // Control inputs
    input wire RegDst,
    input wire [1:0] ALUOp,
    input wire ALUSrc,

    // Data inputs
    input wire [31:0] npc,
    input wire [31:0] readData1,
    input wire [31:0] readData2,
    input wire [31:0] signExtend,
    input wire [4:0] instruction_20_16,
    input wire [4:0] instruction_15_11,

    // Outputs to the EX/MEM stage
    output wire [31:0] branchAddress,
    output wire zeroFlag,
    output wire [31:0] ALUResult,
    output wire [31:0] writeData,
    output wire [4:0] writeRegister
);

    // Internal wires
    wire [31:0] ALU_inputB;
    wire [2:0] ALUControl;
    wire [4:0] mux_out;

    // Instantiate Add module (branch address calculation)
    Add add_branch (
        .A(npc),
        .B(signExtend),
        .Result(branchAddress)
    );

    // Instantiate ALU Control
    ALU_Control alu_control (
        .funct(signExtend[5:0]),
        .ALUOp(ALUOp),
        .ALUControl(ALUControl)
    );

    // Instantiate 32-bit MUX (ALU Source selection)
    Mux_32 mux_ALUSrc (
        .a(signExtend),
        .b(readData2),
        .sel(ALUSrc),
        .y(ALU_inputB)
    );

    // Instantiate the ALU
    Execute_ALU alu (
        .A(readData1),
        .B(ALU_inputB),
        .ALUControl(ALUControl),
        .zero(zeroFlag),
        .Result(ALUResult)
    );

    // Instantiate 5-bit MUX (Register Destination selection)
    Mux_5 mux_RegDst (
        .a(instruction_15_11),
        .b(instruction_20_16),
        .sel(RegDst),
        .y(mux_out)
    );

    // EX/MEM pipeline register
    EX_MEM ex_mem (
        .clk(clk),
        .rst(rst),
        .branchAddress(branchAddress),
        .zeroFlag(zeroFlag),
        .ALUResult(ALUResult),
        .writeData(readData2),
        .writeRegister(mux_out),
        .writeData_out(writeData),
        .writeRegister_out(writeRegister)
    );

endmodule
