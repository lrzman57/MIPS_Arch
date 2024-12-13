`timescale 1ns / 1ps

module Mux_5(
    input wire [4:0] a,
    input wire [4:0] b,
    input wire sel,
    output wire [4:0] y
);
    assign y = (sel) ? a : b;
endmodule