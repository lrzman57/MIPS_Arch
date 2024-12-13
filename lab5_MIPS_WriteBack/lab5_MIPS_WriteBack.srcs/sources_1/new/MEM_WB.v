module MEM_WB (
    input wire clk,
    input wire reset,
    input wire [31:0] ALU_result,  // ALU result from MEM stage
    input wire [31:0] Mem_data,   // Data from memory
    input wire RegWrite,          // Write to register control
    input wire MemToReg,          // Source of write-back data
    input wire [4:0] WriteReg,    // Register destination
    output reg [31:0] WB_ALU_result, // Forwarded ALU result
    output reg [31:0] WB_Mem_data,   // Forwarded memory data
    output reg WB_RegWrite,          // Forwarded RegWrite control
    output reg WB_MemToReg,          // Forwarded MemToReg control
    output reg [4:0] WB_WriteReg     // Forwarded destination register
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            WB_ALU_result <= 32'b0;
            WB_Mem_data <= 32'b0;
            WB_RegWrite <= 1'b0;
            WB_MemToReg <= 1'b0;
            WB_WriteReg <= 5'b0;
        end else begin
            WB_ALU_result <= ALU_result;
            WB_Mem_data <= Mem_data;
            WB_RegWrite <= RegWrite;
            WB_MemToReg <= MemToReg;
            WB_WriteReg <= WriteReg;
        end
    end
endmodule
