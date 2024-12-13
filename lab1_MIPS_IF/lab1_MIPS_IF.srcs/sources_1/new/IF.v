`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 03:23:22 PM
// Design Name: 
// Module Name: IF
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


module IF(
    input wire clk,                     // Clock signal
    input wire reset,                   // Reset signal to initialize the PC
    input wire branch_taken,            // Signal to control branching
    input wire [31:0] branch_target,    // Branch target address
    output wire [31:0] instr_out,       // Fetched instruction
    output wire [31:0] pc_plus_4_out    // PC + 4 (next instruction address)
);

    // Internal signals
    wire [31:0] pc_current;             // Current program counter
    wire [31:0] pc_next;                // Next program counter
    wire [31:0] pc_plus_4;              // Incremented program counter
    wire [31:0] instr;                  // Fetched instruction

    // Program Counter
    pc_counter pc_counter_inst(
        .npc(pc_next),
        .clk(clk),
        .pc(pc_current)
    );

    // Incrementer (PC + 1 for word alignment; use 4 if byte addressing is needed)
    incrementer incrementer_inst(
        .PC(pc_current),
        .next_PC(pc_plus_4)
    );

    // Mux for Branching Logic
    Mux mux_inst(
        .y(pc_next),
        .a(pc_plus_4),              // Default: PC + 1 (next sequential instruction)
        .b(branch_target),          // Branch target
        .sel(branch_taken)          // Branch condition
    );

    // Instruction Memory
    memory memory_inst(
        .clk(clk),
        .adder(pc_current),
        .data(instr)
    );

    // Latch for Outputs
    Latch latch_inst(
        .clk(clk),
        .instr(instr),
        .npc(pc_plus_4),
        .instrout(instr_out),
        .npcout(pc_plus_4_out)
    );

endmodule
