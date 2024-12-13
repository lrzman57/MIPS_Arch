`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 01:11:25 PM
// Design Name: 
// Module Name: Decode
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


module Decode(
    input clk, 
    input rst, 
    input [31:0] instr, 
    input [31:0] reg_write_data, 
    input [4:0] reg_write_addr, 
    input reg_write_en, 
    input [31:0] pc_plus_4,
    output [31:0] read_data1, 
    output [31:0] read_data2, 
    output [31:0] sign_extended_imm,
    output [31:0] id_ex_pc_plus_4, 
    output [4:0] id_ex_rt, 
    output [4:0] id_ex_rd, 
    output reg_write_control
);

    // Control signals
    wire reg_dst, alu_src, mem_to_reg, reg_write, mem_read, mem_write, branch, jump;
    wire [1:0] alu_op;

    // Decode control
    Control control_unit(
        .opcode(instr[31:26]), 
        .reg_dst(reg_dst), 
        .alu_src(alu_src), 
        .mem_to_reg(mem_to_reg), 
        .reg_write(reg_write), 
        .mem_read(mem_read), 
        .mem_write(mem_write), 
        .branch(branch), 
        .jump(jump), 
        .alu_op(alu_op)
    );

    // Registers
    Registers register_file(
        .clk(clk), 
        .rst(rst), 
        .read_reg1(instr[25:21]), 
        .read_reg2(instr[20:16]), 
        .write_reg(reg_write_addr), 
        .write_data(reg_write_data), 
        .reg_write(reg_write_en), 
        .read_data1(read_data1), 
        .read_data2(read_data2)
    );

    // Sign extend
    Sign_Extend sign_extender(
        .instr(instr[15:0]), 
        .sign_extended_imm(sign_extended_imm)
    );

    // ID/EX pipeline register
    ID_EX id_ex_pipeline(
        .clk(clk), 
        .rst(rst), 
        .pc_plus_4(pc_plus_4), 
        .read_data1(read_data1), 
        .read_data2(read_data2), 
        .sign_extended_imm(sign_extended_imm), 
        .rt(instr[20:16]), 
        .rd(instr[15:11]), 
        .id_ex_pc_plus_4(id_ex_pc_plus_4), 
        .id_ex_rt(id_ex_rt), 
        .id_ex_rd(id_ex_rd)
    );

    assign reg_write_control = reg_write;

endmodule
