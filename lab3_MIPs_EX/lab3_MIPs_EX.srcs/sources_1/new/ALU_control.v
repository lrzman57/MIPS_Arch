`timescale 1ns / 1ps

module ALU_Control(
    input wire [5:0] funct,
    input wire [1:0] ALUOp,
    output reg [2:0] ALUControl
);
    always @(*) begin
        case (ALUOp)
            2'b00: ALUControl = 3'b010; // ADD (LW/SW)
            2'b01: ALUControl = 3'b110; // SUB (Branch)
            2'b10: begin
                case (funct)
                    6'b100000: ALUControl = 3'b010; // ADD
                    6'b100010: ALUControl = 3'b110; // SUB
                    6'b100100: ALUControl = 3'b000; // AND
                    6'b100101: ALUControl = 3'b001; // OR
                    6'b101010: ALUControl = 3'b111; // SLT
                    default:   ALUControl = 3'bxxx; // Undefined
                endcase
            end
            default: ALUControl = 3'bxxx; // Undefined
        endcase
    end
endmodule