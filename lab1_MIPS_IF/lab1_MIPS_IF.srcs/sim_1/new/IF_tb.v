`timescale 1ns / 1ps

module IF_tb;

    // Inputs
    reg clk;
    reg reset;
    reg branch_taken;
    reg [31:0] branch_target;

    // Outputs
    wire [31:0] instr_out;
    wire [31:0] pc_plus_4_out;

    // Instantiate the IF module
    IF uut (
        .clk(clk),
        .reset(reset),
        .branch_taken(branch_taken),
        .branch_target(branch_target),
        .instr_out(instr_out),
        .pc_plus_4_out(pc_plus_4_out)
    );

    // Clock generation (ensure this is not overridden)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Toggle clock every 5ns
    end

    // Test sequence
    initial begin
        // Initialize inputs
        reset = 1;
        branch_taken = 0;
        branch_target = 32'b0;

        // Apply reset for sufficient time (at least 2 clock cycles)
        #10;
        reset = 0;  // Deassert reset after 10 ns

        // Test case 1: Sequential fetching
        #10;
        $display("TC1: instr_out = %h, pc_plus_4_out = %h", instr_out, pc_plus_4_out);

        // Add more clock cycles to allow signals to settle
        #10;
        $display("TC1: instr_out = %h, pc_plus_4_out = %h", instr_out, pc_plus_4_out);

        #10;
        $display("TC1: instr_out = %h, pc_plus_4_out = %h", instr_out, pc_plus_4_out);

        // Test case 2: Branch taken
        branch_taken = 1;
        branch_target = 32'h3; // Jump to instruction 3 in memory
        #10;
        branch_taken = 0; // Resume normal execution
        $display("TC2: instr_out = %h, pc_plus_4_out = %h", instr_out, pc_plus_4_out);

        #10;
        $display("TC2: instr_out = %h, pc_plus_4_out = %h", instr_out, pc_plus_4_out);

        // Test case 3: Branch again
        branch_taken = 1;
        branch_target = 32'h7; // Jump to instruction 7 in memory
        #10;
        branch_taken = 0; // Resume normal execution
        $display("TC3: instr_out = %h, pc_plus_4_out = %h", instr_out, pc_plus_4_out);

        // End simulation
        #20;
        $stop;
    end

endmodule
