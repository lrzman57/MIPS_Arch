`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 01:11:25 PM
// Design Name: 
// Module Name: Control
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

module Control(
    input [5:0] opcode, 
    output reg_dst, 
    output alu_src, 
    output mem_to_reg, 
    output reg_write, 
    output mem_read, 
    output mem_write, 
    output branch, 
    output jump, 
    output [1:0] alu_op
);
    always @(*) begin
        case(opcode)
            6'b000000: begin // R-type
                reg_dst = 1;
                alu_src = 0;
                mem_to_reg = 0;
                reg_write = 1;
                mem_read = 0;
                mem_write = 0;
                branch = 0;
                jump = 0;
                alu_op = 2'b10;
            end
            // Add more cases for other opcodes
            default: begin
                reg_dst = 0;
                alu_src = 0;
                mem_to_reg = 0;
                reg_write = 0;
                mem_read = 0;
                mem_write = 0;
                branch = 0;
                jump = 0;
                alu_op = 2'b00;
            end
        endcase
    end
endmodule
