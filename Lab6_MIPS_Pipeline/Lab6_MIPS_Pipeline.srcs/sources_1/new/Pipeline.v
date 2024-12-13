`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2024 12:42:51 AM
// Design Name: 
// Module Name: Pipeline
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


module Pipeline (
    input wire clk,
    input wire reset
);

    // IF stage signals
    wire [31:0] IF_instr_out, IF_pc_plus_4_out;
    
    // ID stage signals
    wire [31:0] ID_read_data1, ID_read_data2, ID_sign_extended_imm;
    wire [31:0] ID_EX_pc_plus_4;
    wire [4:0] ID_EX_rt, ID_EX_rd;
    wire ID_reg_write_control;

    // EX stage signals
    wire [31:0] EX_branch_address, EX_ALU_result, EX_write_data;
    wire [4:0] EX_write_register;
    wire EX_zero_flag;

    // MEM stage signals
    wire [31:0] MEM_WB_ALU_result, MEM_WB_Mem_data;
    wire MEM_WB_RegWrite, MEM_WB_MemToReg;

    // WB stage signals
    wire [31:0] WB_Write_data;
    wire [4:0] WB_WriteBackReg;
    wire WB_WriteEnable;

    // Control signals (could be expanded if needed)
    wire ID_RegDst, ID_ALUSrc, ID_MemToReg, ID_MemRead, ID_MemWrite, ID_Branch;
    wire [1:0] ID_ALUOp;

    // Instantiate stages and connect pipeline registers

    // IF Stage
    IF if_stage (
        .clk(clk),
        .reset(reset),
        .branch_taken(ID_Branch & EX_zero_flag),
        .branch_target(EX_branch_address),
        .instr_out(IF_instr_out),
        .pc_plus_4_out(IF_pc_plus_4_out)
    );

    // ID Stage
    Decode decode_stage (
        .clk(clk),
        .rst(reset),
        .instr(IF_instr_out),
        .reg_write_data(WB_Write_data),
        .reg_write_addr(WB_WriteBackReg),
        .reg_write_en(WB_WriteEnable),
        .pc_plus_4(IF_pc_plus_4_out),
        .read_data1(ID_read_data1),
        .read_data2(ID_read_data2),
        .sign_extended_imm(ID_sign_extended_imm),
        .id_ex_pc_plus_4(ID_EX_pc_plus_4),
        .id_ex_rt(ID_EX_rt),
        .id_ex_rd(ID_EX_rd),
        .reg_write_control(ID_reg_write_control)
    );

    // EX Stage
    Execute_Stage execute_stage (
        .clk(clk),
        .rst(reset),
        .RegDst(ID_RegDst),
        .ALUOp(ID_ALUOp),
        .ALUSrc(ID_ALUSrc),
        .npc(ID_EX_pc_plus_4),
        .readData1(ID_read_data1),
        .readData2(ID_read_data2),
        .signExtend(ID_sign_extended_imm),
        .instruction_20_16(ID_EX_rt),
        .instruction_15_11(ID_EX_rd),
        .branchAddress(EX_branch_address),
        .zeroFlag(EX_zero_flag),
        .ALUResult(EX_ALU_result),
        .writeData(EX_write_data),
        .writeRegister(EX_write_register)
    );

    // MEM Stage
    Memory memory_stage (
        .clk(clk),
        .reset(reset),
        .ALU_result(EX_ALU_result),
        .Write_data(EX_write_data),
        .MemRead(ID_MemRead),
        .MemWrite(ID_MemWrite),
        .RegWrite(ID_reg_write_control),
        .MemToReg(ID_MemToReg),
        .WB_ALU_result(MEM_WB_ALU_result),
        .WB_Mem_data(MEM_WB_Mem_data),
        .WB_RegWrite(MEM_WB_RegWrite),
        .WB_MemToReg(MEM_WB_MemToReg)
    );

    // WB Stage
    WriteBack writeback_stage (
        .clk(clk),
        .reset(reset),
        .ALU_result(MEM_WB_ALU_result),
        .Mem_data(MEM_WB_Mem_data),
        .RegWrite(MEM_WB_RegWrite),
        .MemToReg(MEM_WB_MemToReg),
        .WriteReg(EX_write_register),
        .Write_data(WB_Write_data),
        .WriteBackReg(WB_WriteBackReg),
        .WriteEnable(WB_WriteEnable)
    );

endmodule

