module WriteBack (
    input wire clk,                     // Clock signal
    input wire reset,                   // Reset signal
    input wire [31:0] ALU_result,       // ALU result from MEM stage
    input wire [31:0] Mem_data,         // Memory data from MEM stage
    input wire RegWrite,                // Write-back control signal
    input wire MemToReg,                // MUX control signal for data selection
    input wire [4:0] WriteReg,          // Destination register
    output reg [31:0] Write_data,       // Data to be written to register
    output reg [4:0] WriteBackReg,      // Destination register address for debugging
    output reg WriteEnable              // Control: Enable write-back
);
    // Internal signals to connect MEM/WB to WB logic
    wire [31:0] WB_ALU_result;
    wire [31:0] WB_Mem_data;
    wire WB_RegWrite;
    wire WB_MemToReg;
    wire [4:0] WB_WriteReg;

    // Instantiate the MEM/WB pipeline register
    MEM_WB mem_wb_inst (
        .clk(clk),
        .reset(reset),
        .ALU_result(ALU_result),
        .Mem_data(Mem_data),
        .RegWrite(RegWrite),
        .MemToReg(MemToReg),
        .WriteReg(WriteReg),
        .WB_ALU_result(WB_ALU_result),
        .WB_Mem_data(WB_Mem_data),
        .WB_RegWrite(WB_RegWrite),
        .WB_MemToReg(WB_MemToReg),
        .WB_WriteReg(WB_WriteReg)
    );

    // Write-back logic
    always @(*) begin
        // Select data to write back
        if (WB_MemToReg)
            Write_data = WB_Mem_data;
        else
            Write_data = WB_ALU_result;

        // Forward control signals and register address for debugging or connection to the register file
        WriteEnable = WB_RegWrite;
        WriteBackReg = WB_WriteReg;
    end
endmodule