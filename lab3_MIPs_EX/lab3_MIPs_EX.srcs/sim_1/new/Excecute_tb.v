`timescale 1ns / 1ps

module Execute_Stage_tb;

    // Inputs
    reg clk;
    reg rst;
    reg RegDst;
    reg [1:0] ALUOp;
    reg ALUSrc;
    reg [31:0] npc;
    reg [31:0] readData1;
    reg [31:0] readData2;
    reg [31:0] signExtend;
    reg [4:0] instruction_20_16;
    reg [4:0] instruction_15_11;

    // Outputs
    wire [31:0] branchAddress;
    wire zeroFlag;
    wire [31:0] ALUResult;
    wire [31:0] writeData;
    wire [4:0] writeRegister;

    // Instantiate the Execute Stage
    Execute_Stage uut (
        .clk(clk),
        .rst(rst),
        .RegDst(RegDst),
        .ALUOp(ALUOp),
        .ALUSrc(ALUSrc),
        .npc(npc),
        .readData1(readData1),
        .readData2(readData2),
        .signExtend(signExtend),
        .instruction_20_16(instruction_20_16),
        .instruction_15_11(instruction_15_11),
        .branchAddress(branchAddress),
        .zeroFlag(zeroFlag),
        .ALUResult(ALUResult),
        .writeData(writeData),
        .writeRegister(writeRegister)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test cases
    initial begin
        // Initialize inputs
        rst = 1;
        RegDst = 0;
        ALUOp = 2'b00;
        ALUSrc = 0;
        npc = 32'd100;
        readData1 = 32'd10;
        readData2 = 32'd20;
        signExtend = 32'd4;
        instruction_20_16 = 5'd2;
        instruction_15_11 = 5'd3;

        // Reset
        #10 rst = 0;

        // Test Case 1: I-type instruction (ALUSrc = 1, ADD)
        #10 ALUSrc = 1;
            ALUOp = 2'b00;  // ADD operation
        #10 $display("TC1: I-type ADD | ALUResult = %d, ZeroFlag = %b", ALUResult, zeroFlag);

        // Test Case 2: R-type instruction (ALUSrc = 0, SUB)
        #10 ALUSrc = 0;
            ALUOp = 2'b10;  // R-type ALU operation
            signExtend = 32'd4; // Assume 'funct' is for SUB
            readData1 = 32'd50;
            readData2 = 32'd50;
        #10 $display("TC2: R-type SUB | ALUResult = %d, ZeroFlag = %b", ALUResult, zeroFlag);

        // Test Case 3: Branch instruction (ALUOp = 2'b01)
        #10 ALUSrc = 0;
            ALUOp = 2'b01;  // SUB for branch comparison
            readData1 = 32'd20;
            readData2 = 32'd20;
        #10 $display("TC3: Branch | ZeroFlag = %b, Branch Address = %d", zeroFlag, branchAddress);

        // Test Case 4: Register Destination Mux (RegDst = 1)
        #10 RegDst = 1;
            instruction_15_11 = 5'd5;
            instruction_20_16 = 5'd10;
        #10 $display("TC4: RegDst = %b, WriteRegister = %d", RegDst, writeRegister);

        // Test Case 5: Reset behavior
        #10 rst = 1;
        #10 $display("TC5: After Reset | ALUResult = %d, WriteRegister = %d", ALUResult, writeRegister);

        // Finish simulation
        #20 $finish;
    end

endmodule