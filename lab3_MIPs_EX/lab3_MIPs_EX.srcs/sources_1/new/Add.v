`timescale 1ns / 1ps

module Add(
    input wire [31:0] A,
    input wire [31:0] B,
    output wire [31:0] Result
);
    assign Result = A + B;
endmodule