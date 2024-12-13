`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 01:11:25 PM
// Design Name: 
// Module Name: Registers
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


module Registers(
    input clk, 
    input rst, 
    input [4:0] read_reg1, 
    input [4:0] read_reg2, 
    input [4:0] write_reg, 
    input [31:0] write_data, 
    input reg_write, 
    output [31:0] read_data1, 
    output [31:0] read_data2
);
    reg [31:0] register_file [31:0];
    
    integer i;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 32; i = i + 1)
                register_file[i] <= 32'b0;
        end else if (reg_write) begin
            register_file[write_reg] <= write_data;
        end
    end

    assign read_data1 = register_file[read_reg1];
    assign read_data2 = register_file[read_reg2];
endmodule
