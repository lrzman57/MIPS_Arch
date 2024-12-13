`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 03:18:59 PM
// Design Name: 
// Module Name: Decode_tb
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


module Decode_tb;

    // Inputs
    reg clk;
    reg rst;
    reg [31:0] instr;
    reg [31:0] reg_write_data;
    reg [4:0] reg_write_addr;
    reg reg_write_en;
    reg [31:0] pc_plus_4;

    // Outputs
    wire [31:0] read_data1;
    wire [31:0] read_data2;
    wire [31:0] sign_extended_imm;
    wire [31:0] id_ex_pc_plus_4;
    wire [4:0] id_ex_rt;
    wire [4:0] id_ex_rd;
    wire reg_write_control;

    // Instantiate the Decode module
    Decode uut (
        .clk(clk),
        .rst(rst),
        .instr(instr),
        .reg_write_data(reg_write_data),
        .reg_write_addr(reg_write_addr),
        .reg_write_en(reg_write_en),
        .pc_plus_4(pc_plus_4),
        .read_data1(read_data1),
        .read_data2(read_data2),
        .sign_extended_imm(sign_extended_imm),
        .id_ex_pc_plus_4(id_ex_pc_plus_4),
        .id_ex_rt(id_ex_rt),
        .id_ex_rd(id_ex_rd),
        .reg_write_control(reg_write_control)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize inputs
        clk = 0;
        rst = 1;
        instr = 32'b0;
        reg_write_data = 32'b0;
        reg_write_addr = 5'b0;
        reg_write_en = 0;
        pc_plus_4 = 32'b0;

        // Apply reset
        #10;
        rst = 0;

        // Test case 1: Load R-type instruction
        instr = 32'b000000_00001_00010_00011_00000_100000; // add $3, $1, $2
        pc_plus_4 = 32'h4;
        #10;

        // Test case 2: Write to a register
        reg_write_en = 1;
        reg_write_addr = 5'b00011; // Write to $3
        reg_write_data = 32'hA5A5A5A5;
        #10;
        reg_write_en = 0;

        // Test case 3: Load I-type instruction
        instr = 32'b001000_00001_00100_0000000000001010; // addi $4, $1, 10
        pc_plus_4 = 32'h8;
        #10;

        // Test case 4: Write to another register
        reg_write_en = 1;
        reg_write_addr = 5'b00100; // Write to $4
        reg_write_data = 32'h5A5A5A5A;
        #10;
        reg_write_en = 0;

        // Test case 5: Check sign extension
        instr = 32'b001000_00001_00101_1111111111111111; // addi $5, $1, -1
        #10;

        // Test case 6: Check pipeline register (ID/EX)
        pc_plus_4 = 32'hC; // Simulating next PC
        #10;

        // Test case 7: Reset
        rst = 1;
        #10;
        rst = 0;

        // End simulation
        #20;
        $stop;
    end

endmodule
