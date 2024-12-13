`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 01:11:25 PM
// Design Name: 
// Module Name: ID_EX
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


module ID_EX(
    input clk, 
    input rst, 
    input [31:0] pc_plus_4, 
    input [31:0] read_data1, 
    input [31:0] read_data2, 
    input [31:0] sign_extended_imm, 
    input [4:0] rt, 
    input [4:0] rd, 
    output reg [31:0] id_ex_pc_plus_4, 
    output reg [31:0] id_ex_read_data1, 
    output reg [31:0] id_ex_read_data2, 
    output reg [31:0] id_ex_sign_extended_imm, 
    output reg [4:0] id_ex_rt, 
    output reg [4:0] id_ex_rd
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            id_ex_pc_plus_4 <= 0;
            id_ex_read_data1 <= 0;
            id_ex_read_data2 <= 0;
            id_ex_sign_extended_imm <= 0;
            id_ex_rt <= 0;
            id_ex_rd <= 0;
        end else begin
            id_ex_pc_plus_4 <= pc_plus_4;
            id_ex_read_data1 <= read_data1;
            id_ex_read_data2 <= read_data2;
            id_ex_sign_extended_imm <= sign_extended_imm;
            id_ex_rt <= rt;
            id_ex_rd <= rd;
        end
    end
endmodule
