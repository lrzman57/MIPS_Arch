`timescale 1ns / 1ps

module Execute_ALU(
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [2:0] ALUControl,
    output reg zero,
    output reg [31:0] Result
);
    always @(*) begin
        case (ALUControl)
            3'b010: Result = A + B;          // ADD
            3'b110: Result = A - B;          // SUB
            3'b000: Result = A & B;          // AND
            3'b001: Result = A | B;          // OR
            3'b111: Result = (A < B) ? 1 : 0; // SLT
            default: Result = 32'b0;
        endcase
        zero = (Result == 32'b0); // Zero flag
    end
endmodule