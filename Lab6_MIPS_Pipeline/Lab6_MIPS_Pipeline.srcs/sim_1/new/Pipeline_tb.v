`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2024 05:15:32 PM
// Design Name: 
// Module Name: Pipeline_tb
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

`timescale 1ns / 1ps

module Pipeline_tb;

    // Inputs
    reg clk;
    reg reset;

    // Instantiate the Pipeline module
    Pipeline uut (
        .clk(clk),
        .reset(reset)
    );

    // Clock generation
    always #5 clk = ~clk; // Generate a 10ns clock period (100MHz)

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;

        // Apply reset
        $display("Applying reset...");
        #10;
        reset = 0;

        // Initialize memory and instructions for testing
        initialize_test();

        // Monitor pipeline operation
        monitor_pipeline();

        // Simulation runtime
        #1000; // Run for 1000ns

        // End simulation
        $stop;
    end

    task initialize_test;
        begin
            $display("Initializing test...");
            
            // Provide initial conditions for the instruction memory, registers, and data memory
            // Assuming the Pipeline connects to instruction and data memory, this will involve writing to those.
            
            // Example:
            // Instruction Memory initialization (e.g., some R-type, I-type, and branch instructions)
            // memory_inst.memory_array[0] = 32'b000000_00001_00010_00011_00000_100000; // ADD R3, R1, R2
            // memory_inst.memory_array[1] = 32'b000000_00011_00100_00101_00000_100010; // SUB R5, R3, R4
            // memory_inst.memory_array[2] = 32'b100011_00001_00110_0000000000000100;   // LW R6, 4(R1)
            // memory_inst.memory_array[3] = 32'b101011_00010_00111_0000000000001000;   // SW R7, 8(R2)
            
            // Similarly, initialize register file and data memory if needed
        end
    endtask

    task monitor_pipeline;
        begin
            // Monitor key signals to verify pipeline behavior
            $monitor("Time: %0t | Reset: %b | PC: %h | Instruction: %h",
                     $time, reset, uut.if_stage.pc_current, uut.if_stage.instr_out);

            // Additional monitors can be added for ID, EX, MEM, and WB stages to verify correctness
            // Example:
            // $monitor("ID Stage: RegWrite=%b | ALUSrc=%b | ReadData1=%h | ReadData2=%h",
            //          uut.decode_stage.reg_write_control, uut.decode_stage.alu_src,
            //          uut.decode_stage.read_data1, uut.decode_stage.read_data2);
        end
    endtask

endmodule
