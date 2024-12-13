`timescale 1ns / 1ps

module EX_MEM(
    input clk,
    input rst,
    input [31:0] branchAddress,
    input zeroFlag,
    input [31:0] ALUResult,
    input [31:0] writeData,
    input [4:0] writeRegister,

    output reg [31:0] writeData_out,
    output reg [4:0] writeRegister_out
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            writeData_out <= 32'b0;
            writeRegister_out <= 5'b0;
        end else begin
            writeData_out <= writeData;
            writeRegister_out <= writeRegister;
        end
    end
endmodule