// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Dec 13 06:06:07 2024
// Host        : DESKTOP-LKEL6JE running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Loagster/Desktop/4300/lab1_MIPS_IF/lab1_MIPS_IF.sim/sim_1/synth/timing/xsim/IF_time_synth.v
// Design      : IF
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module IF
   (clk,
    reset,
    branch_taken,
    branch_target,
    instr_out,
    pc_plus_4_out);
  input clk;
  input reset;
  input branch_taken;
  input [31:0]branch_target;
  output [31:0]instr_out;
  output [31:0]pc_plus_4_out;

  wire branch_taken;
  wire branch_taken_IBUF;
  wire [31:0]branch_target;
  wire [31:0]branch_target_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:28]data;
  wire [31:0]instr_out;
  wire [3:0]instr_out_OBUF;
  wire [31:0]npc;
  wire pc_counter_inst_n_0;
  wire pc_counter_inst_n_1;
  wire pc_counter_inst_n_2;
  wire [3:0]pc_current;
  wire [31:0]pc_plus_4_out;
  wire [31:0]pc_plus_4_out_OBUF;
  wire [31:4]pc_reg;

initial begin
 $sdf_annotate("IF_time_synth.sdf",,,,"tool_control");
end
  IBUF branch_taken_IBUF_inst
       (.I(branch_taken),
        .O(branch_taken_IBUF));
  IBUF \branch_target_IBUF[0]_inst 
       (.I(branch_target[0]),
        .O(branch_target_IBUF[0]));
  IBUF \branch_target_IBUF[10]_inst 
       (.I(branch_target[10]),
        .O(branch_target_IBUF[10]));
  IBUF \branch_target_IBUF[11]_inst 
       (.I(branch_target[11]),
        .O(branch_target_IBUF[11]));
  IBUF \branch_target_IBUF[12]_inst 
       (.I(branch_target[12]),
        .O(branch_target_IBUF[12]));
  IBUF \branch_target_IBUF[13]_inst 
       (.I(branch_target[13]),
        .O(branch_target_IBUF[13]));
  IBUF \branch_target_IBUF[14]_inst 
       (.I(branch_target[14]),
        .O(branch_target_IBUF[14]));
  IBUF \branch_target_IBUF[15]_inst 
       (.I(branch_target[15]),
        .O(branch_target_IBUF[15]));
  IBUF \branch_target_IBUF[16]_inst 
       (.I(branch_target[16]),
        .O(branch_target_IBUF[16]));
  IBUF \branch_target_IBUF[17]_inst 
       (.I(branch_target[17]),
        .O(branch_target_IBUF[17]));
  IBUF \branch_target_IBUF[18]_inst 
       (.I(branch_target[18]),
        .O(branch_target_IBUF[18]));
  IBUF \branch_target_IBUF[19]_inst 
       (.I(branch_target[19]),
        .O(branch_target_IBUF[19]));
  IBUF \branch_target_IBUF[1]_inst 
       (.I(branch_target[1]),
        .O(branch_target_IBUF[1]));
  IBUF \branch_target_IBUF[20]_inst 
       (.I(branch_target[20]),
        .O(branch_target_IBUF[20]));
  IBUF \branch_target_IBUF[21]_inst 
       (.I(branch_target[21]),
        .O(branch_target_IBUF[21]));
  IBUF \branch_target_IBUF[22]_inst 
       (.I(branch_target[22]),
        .O(branch_target_IBUF[22]));
  IBUF \branch_target_IBUF[23]_inst 
       (.I(branch_target[23]),
        .O(branch_target_IBUF[23]));
  IBUF \branch_target_IBUF[24]_inst 
       (.I(branch_target[24]),
        .O(branch_target_IBUF[24]));
  IBUF \branch_target_IBUF[25]_inst 
       (.I(branch_target[25]),
        .O(branch_target_IBUF[25]));
  IBUF \branch_target_IBUF[26]_inst 
       (.I(branch_target[26]),
        .O(branch_target_IBUF[26]));
  IBUF \branch_target_IBUF[27]_inst 
       (.I(branch_target[27]),
        .O(branch_target_IBUF[27]));
  IBUF \branch_target_IBUF[28]_inst 
       (.I(branch_target[28]),
        .O(branch_target_IBUF[28]));
  IBUF \branch_target_IBUF[29]_inst 
       (.I(branch_target[29]),
        .O(branch_target_IBUF[29]));
  IBUF \branch_target_IBUF[2]_inst 
       (.I(branch_target[2]),
        .O(branch_target_IBUF[2]));
  IBUF \branch_target_IBUF[30]_inst 
       (.I(branch_target[30]),
        .O(branch_target_IBUF[30]));
  IBUF \branch_target_IBUF[31]_inst 
       (.I(branch_target[31]),
        .O(branch_target_IBUF[31]));
  IBUF \branch_target_IBUF[3]_inst 
       (.I(branch_target[3]),
        .O(branch_target_IBUF[3]));
  IBUF \branch_target_IBUF[4]_inst 
       (.I(branch_target[4]),
        .O(branch_target_IBUF[4]));
  IBUF \branch_target_IBUF[5]_inst 
       (.I(branch_target[5]),
        .O(branch_target_IBUF[5]));
  IBUF \branch_target_IBUF[6]_inst 
       (.I(branch_target[6]),
        .O(branch_target_IBUF[6]));
  IBUF \branch_target_IBUF[7]_inst 
       (.I(branch_target[7]),
        .O(branch_target_IBUF[7]));
  IBUF \branch_target_IBUF[8]_inst 
       (.I(branch_target[8]),
        .O(branch_target_IBUF[8]));
  IBUF \branch_target_IBUF[9]_inst 
       (.I(branch_target[9]),
        .O(branch_target_IBUF[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  incrementer incrementer_inst
       (.D(npc[31:1]),
        .pc(pc_current),
        .pc_reg(pc_reg));
  OBUF \instr_out_OBUF[0]_inst 
       (.I(instr_out_OBUF[0]),
        .O(instr_out[0]));
  OBUF \instr_out_OBUF[10]_inst 
       (.I(1'b0),
        .O(instr_out[10]));
  OBUF \instr_out_OBUF[11]_inst 
       (.I(1'b0),
        .O(instr_out[11]));
  OBUF \instr_out_OBUF[12]_inst 
       (.I(1'b0),
        .O(instr_out[12]));
  OBUF \instr_out_OBUF[13]_inst 
       (.I(1'b0),
        .O(instr_out[13]));
  OBUF \instr_out_OBUF[14]_inst 
       (.I(1'b0),
        .O(instr_out[14]));
  OBUF \instr_out_OBUF[15]_inst 
       (.I(1'b0),
        .O(instr_out[15]));
  OBUF \instr_out_OBUF[16]_inst 
       (.I(1'b0),
        .O(instr_out[16]));
  OBUF \instr_out_OBUF[17]_inst 
       (.I(1'b0),
        .O(instr_out[17]));
  OBUF \instr_out_OBUF[18]_inst 
       (.I(1'b0),
        .O(instr_out[18]));
  OBUF \instr_out_OBUF[19]_inst 
       (.I(1'b0),
        .O(instr_out[19]));
  OBUF \instr_out_OBUF[1]_inst 
       (.I(instr_out_OBUF[1]),
        .O(instr_out[1]));
  OBUF \instr_out_OBUF[20]_inst 
       (.I(1'b0),
        .O(instr_out[20]));
  OBUF \instr_out_OBUF[21]_inst 
       (.I(1'b0),
        .O(instr_out[21]));
  OBUF \instr_out_OBUF[22]_inst 
       (.I(1'b0),
        .O(instr_out[22]));
  OBUF \instr_out_OBUF[23]_inst 
       (.I(1'b0),
        .O(instr_out[23]));
  OBUF \instr_out_OBUF[24]_inst 
       (.I(1'b0),
        .O(instr_out[24]));
  OBUF \instr_out_OBUF[25]_inst 
       (.I(1'b0),
        .O(instr_out[25]));
  OBUF \instr_out_OBUF[26]_inst 
       (.I(1'b0),
        .O(instr_out[26]));
  OBUF \instr_out_OBUF[27]_inst 
       (.I(1'b0),
        .O(instr_out[27]));
  OBUF \instr_out_OBUF[28]_inst 
       (.I(instr_out_OBUF[0]),
        .O(instr_out[28]));
  OBUF \instr_out_OBUF[29]_inst 
       (.I(instr_out_OBUF[1]),
        .O(instr_out[29]));
  OBUF \instr_out_OBUF[2]_inst 
       (.I(instr_out_OBUF[2]),
        .O(instr_out[2]));
  OBUF \instr_out_OBUF[30]_inst 
       (.I(instr_out_OBUF[2]),
        .O(instr_out[30]));
  OBUF \instr_out_OBUF[31]_inst 
       (.I(instr_out_OBUF[3]),
        .O(instr_out[31]));
  OBUF \instr_out_OBUF[3]_inst 
       (.I(instr_out_OBUF[3]),
        .O(instr_out[3]));
  OBUF \instr_out_OBUF[4]_inst 
       (.I(instr_out_OBUF[0]),
        .O(instr_out[4]));
  OBUF \instr_out_OBUF[5]_inst 
       (.I(instr_out_OBUF[1]),
        .O(instr_out[5]));
  OBUF \instr_out_OBUF[6]_inst 
       (.I(instr_out_OBUF[2]),
        .O(instr_out[6]));
  OBUF \instr_out_OBUF[7]_inst 
       (.I(instr_out_OBUF[3]),
        .O(instr_out[7]));
  OBUF \instr_out_OBUF[8]_inst 
       (.I(1'b0),
        .O(instr_out[8]));
  OBUF \instr_out_OBUF[9]_inst 
       (.I(1'b0),
        .O(instr_out[9]));
  Latch latch_inst
       (.CLK(clk_IBUF_BUFG),
        .D(npc),
        .Q(instr_out_OBUF),
        .\instrout_reg[31]_0 (data),
        .\npcout_reg[31]_0 (pc_plus_4_out_OBUF));
  memory memory_inst
       (.D({pc_counter_inst_n_0,pc_counter_inst_n_1,pc_counter_inst_n_2,pc_current[0]}),
        .Q(data),
        .clk(clk_IBUF_BUFG));
  pc_counter pc_counter_inst
       (.D({pc_counter_inst_n_0,pc_counter_inst_n_1,pc_counter_inst_n_2,pc_current[0]}),
        .branch_taken_IBUF(branch_taken_IBUF),
        .branch_target_IBUF(branch_target_IBUF),
        .clk(clk_IBUF_BUFG),
        .pc(pc_current[3:1]),
        .pc_reg(pc_reg),
        .\pc_reg[0]_0 (npc[0]));
  OBUF \pc_plus_4_out_OBUF[0]_inst 
       (.I(pc_plus_4_out_OBUF[0]),
        .O(pc_plus_4_out[0]));
  OBUF \pc_plus_4_out_OBUF[10]_inst 
       (.I(pc_plus_4_out_OBUF[10]),
        .O(pc_plus_4_out[10]));
  OBUF \pc_plus_4_out_OBUF[11]_inst 
       (.I(pc_plus_4_out_OBUF[11]),
        .O(pc_plus_4_out[11]));
  OBUF \pc_plus_4_out_OBUF[12]_inst 
       (.I(pc_plus_4_out_OBUF[12]),
        .O(pc_plus_4_out[12]));
  OBUF \pc_plus_4_out_OBUF[13]_inst 
       (.I(pc_plus_4_out_OBUF[13]),
        .O(pc_plus_4_out[13]));
  OBUF \pc_plus_4_out_OBUF[14]_inst 
       (.I(pc_plus_4_out_OBUF[14]),
        .O(pc_plus_4_out[14]));
  OBUF \pc_plus_4_out_OBUF[15]_inst 
       (.I(pc_plus_4_out_OBUF[15]),
        .O(pc_plus_4_out[15]));
  OBUF \pc_plus_4_out_OBUF[16]_inst 
       (.I(pc_plus_4_out_OBUF[16]),
        .O(pc_plus_4_out[16]));
  OBUF \pc_plus_4_out_OBUF[17]_inst 
       (.I(pc_plus_4_out_OBUF[17]),
        .O(pc_plus_4_out[17]));
  OBUF \pc_plus_4_out_OBUF[18]_inst 
       (.I(pc_plus_4_out_OBUF[18]),
        .O(pc_plus_4_out[18]));
  OBUF \pc_plus_4_out_OBUF[19]_inst 
       (.I(pc_plus_4_out_OBUF[19]),
        .O(pc_plus_4_out[19]));
  OBUF \pc_plus_4_out_OBUF[1]_inst 
       (.I(pc_plus_4_out_OBUF[1]),
        .O(pc_plus_4_out[1]));
  OBUF \pc_plus_4_out_OBUF[20]_inst 
       (.I(pc_plus_4_out_OBUF[20]),
        .O(pc_plus_4_out[20]));
  OBUF \pc_plus_4_out_OBUF[21]_inst 
       (.I(pc_plus_4_out_OBUF[21]),
        .O(pc_plus_4_out[21]));
  OBUF \pc_plus_4_out_OBUF[22]_inst 
       (.I(pc_plus_4_out_OBUF[22]),
        .O(pc_plus_4_out[22]));
  OBUF \pc_plus_4_out_OBUF[23]_inst 
       (.I(pc_plus_4_out_OBUF[23]),
        .O(pc_plus_4_out[23]));
  OBUF \pc_plus_4_out_OBUF[24]_inst 
       (.I(pc_plus_4_out_OBUF[24]),
        .O(pc_plus_4_out[24]));
  OBUF \pc_plus_4_out_OBUF[25]_inst 
       (.I(pc_plus_4_out_OBUF[25]),
        .O(pc_plus_4_out[25]));
  OBUF \pc_plus_4_out_OBUF[26]_inst 
       (.I(pc_plus_4_out_OBUF[26]),
        .O(pc_plus_4_out[26]));
  OBUF \pc_plus_4_out_OBUF[27]_inst 
       (.I(pc_plus_4_out_OBUF[27]),
        .O(pc_plus_4_out[27]));
  OBUF \pc_plus_4_out_OBUF[28]_inst 
       (.I(pc_plus_4_out_OBUF[28]),
        .O(pc_plus_4_out[28]));
  OBUF \pc_plus_4_out_OBUF[29]_inst 
       (.I(pc_plus_4_out_OBUF[29]),
        .O(pc_plus_4_out[29]));
  OBUF \pc_plus_4_out_OBUF[2]_inst 
       (.I(pc_plus_4_out_OBUF[2]),
        .O(pc_plus_4_out[2]));
  OBUF \pc_plus_4_out_OBUF[30]_inst 
       (.I(pc_plus_4_out_OBUF[30]),
        .O(pc_plus_4_out[30]));
  OBUF \pc_plus_4_out_OBUF[31]_inst 
       (.I(pc_plus_4_out_OBUF[31]),
        .O(pc_plus_4_out[31]));
  OBUF \pc_plus_4_out_OBUF[3]_inst 
       (.I(pc_plus_4_out_OBUF[3]),
        .O(pc_plus_4_out[3]));
  OBUF \pc_plus_4_out_OBUF[4]_inst 
       (.I(pc_plus_4_out_OBUF[4]),
        .O(pc_plus_4_out[4]));
  OBUF \pc_plus_4_out_OBUF[5]_inst 
       (.I(pc_plus_4_out_OBUF[5]),
        .O(pc_plus_4_out[5]));
  OBUF \pc_plus_4_out_OBUF[6]_inst 
       (.I(pc_plus_4_out_OBUF[6]),
        .O(pc_plus_4_out[6]));
  OBUF \pc_plus_4_out_OBUF[7]_inst 
       (.I(pc_plus_4_out_OBUF[7]),
        .O(pc_plus_4_out[7]));
  OBUF \pc_plus_4_out_OBUF[8]_inst 
       (.I(pc_plus_4_out_OBUF[8]),
        .O(pc_plus_4_out[8]));
  OBUF \pc_plus_4_out_OBUF[9]_inst 
       (.I(pc_plus_4_out_OBUF[9]),
        .O(pc_plus_4_out[9]));
endmodule

module Latch
   (Q,
    \npcout_reg[31]_0 ,
    \instrout_reg[31]_0 ,
    CLK,
    D);
  output [3:0]Q;
  output [31:0]\npcout_reg[31]_0 ;
  input [3:0]\instrout_reg[31]_0 ;
  input CLK;
  input [31:0]D;

  wire CLK;
  wire [31:0]D;
  wire [3:0]Q;
  wire [3:0]\instrout_reg[31]_0 ;
  wire [31:0]\npcout_reg[31]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \instrout_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\instrout_reg[31]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instrout_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\instrout_reg[31]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instrout_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\instrout_reg[31]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \instrout_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\instrout_reg[31]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\npcout_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(\npcout_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[11]),
        .Q(\npcout_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[12]),
        .Q(\npcout_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[13]),
        .Q(\npcout_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[14]),
        .Q(\npcout_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[15]),
        .Q(\npcout_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[16]),
        .Q(\npcout_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[17]),
        .Q(\npcout_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[18]),
        .Q(\npcout_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[19]),
        .Q(\npcout_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\npcout_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[20]),
        .Q(\npcout_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[21]),
        .Q(\npcout_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[22]),
        .Q(\npcout_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[23]),
        .Q(\npcout_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[24]),
        .Q(\npcout_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[25]),
        .Q(\npcout_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[26]),
        .Q(\npcout_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[27]),
        .Q(\npcout_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[28]),
        .Q(\npcout_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[29]),
        .Q(\npcout_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(\npcout_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[30]),
        .Q(\npcout_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[31]),
        .Q(\npcout_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(\npcout_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(\npcout_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(\npcout_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(\npcout_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(\npcout_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(\npcout_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \npcout_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(\npcout_reg[31]_0 [9]),
        .R(1'b0));
endmodule

module incrementer
   (D,
    pc,
    pc_reg);
  output [30:0]D;
  input [3:0]pc;
  input [27:0]pc_reg;

  wire [30:0]D;
  wire next_PC_carry__0_n_0;
  wire next_PC_carry__0_n_1;
  wire next_PC_carry__0_n_2;
  wire next_PC_carry__0_n_3;
  wire next_PC_carry__1_n_0;
  wire next_PC_carry__1_n_1;
  wire next_PC_carry__1_n_2;
  wire next_PC_carry__1_n_3;
  wire next_PC_carry__2_n_0;
  wire next_PC_carry__2_n_1;
  wire next_PC_carry__2_n_2;
  wire next_PC_carry__2_n_3;
  wire next_PC_carry__3_n_0;
  wire next_PC_carry__3_n_1;
  wire next_PC_carry__3_n_2;
  wire next_PC_carry__3_n_3;
  wire next_PC_carry__4_n_0;
  wire next_PC_carry__4_n_1;
  wire next_PC_carry__4_n_2;
  wire next_PC_carry__4_n_3;
  wire next_PC_carry__5_n_0;
  wire next_PC_carry__5_n_1;
  wire next_PC_carry__5_n_2;
  wire next_PC_carry__5_n_3;
  wire next_PC_carry__6_n_2;
  wire next_PC_carry__6_n_3;
  wire next_PC_carry_n_0;
  wire next_PC_carry_n_1;
  wire next_PC_carry_n_2;
  wire next_PC_carry_n_3;
  wire [3:0]pc;
  wire [27:0]pc_reg;
  wire [3:2]NLW_next_PC_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_next_PC_carry__6_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_PC_carry
       (.CI(1'b0),
        .CO({next_PC_carry_n_0,next_PC_carry_n_1,next_PC_carry_n_2,next_PC_carry_n_3}),
        .CYINIT(pc[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[3:0]),
        .S({pc_reg[0],pc[3:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_PC_carry__0
       (.CI(next_PC_carry_n_0),
        .CO({next_PC_carry__0_n_0,next_PC_carry__0_n_1,next_PC_carry__0_n_2,next_PC_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[7:4]),
        .S(pc_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_PC_carry__1
       (.CI(next_PC_carry__0_n_0),
        .CO({next_PC_carry__1_n_0,next_PC_carry__1_n_1,next_PC_carry__1_n_2,next_PC_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[11:8]),
        .S(pc_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_PC_carry__2
       (.CI(next_PC_carry__1_n_0),
        .CO({next_PC_carry__2_n_0,next_PC_carry__2_n_1,next_PC_carry__2_n_2,next_PC_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[15:12]),
        .S(pc_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_PC_carry__3
       (.CI(next_PC_carry__2_n_0),
        .CO({next_PC_carry__3_n_0,next_PC_carry__3_n_1,next_PC_carry__3_n_2,next_PC_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[19:16]),
        .S(pc_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_PC_carry__4
       (.CI(next_PC_carry__3_n_0),
        .CO({next_PC_carry__4_n_0,next_PC_carry__4_n_1,next_PC_carry__4_n_2,next_PC_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[23:20]),
        .S(pc_reg[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_PC_carry__5
       (.CI(next_PC_carry__4_n_0),
        .CO({next_PC_carry__5_n_0,next_PC_carry__5_n_1,next_PC_carry__5_n_2,next_PC_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[27:24]),
        .S(pc_reg[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_PC_carry__6
       (.CI(next_PC_carry__5_n_0),
        .CO({NLW_next_PC_carry__6_CO_UNCONNECTED[3:2],next_PC_carry__6_n_2,next_PC_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_next_PC_carry__6_O_UNCONNECTED[3],D[30:28]}),
        .S({1'b0,pc_reg[27:25]}));
endmodule

module memory
   (Q,
    D,
    clk);
  output [3:0]Q;
  input [3:0]D;
  input clk;

  wire [3:0]D;
  wire [3:0]Q;
  wire clk;

  FDRE #(
    .INIT(1'b0)) 
    \data_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

module pc_counter
   (D,
    pc,
    pc_reg,
    \pc_reg[0]_0 ,
    clk,
    branch_taken_IBUF,
    branch_target_IBUF);
  output [3:0]D;
  output [2:0]pc;
  output [27:0]pc_reg;
  output [0:0]\pc_reg[0]_0 ;
  input clk;
  input branch_taken_IBUF;
  input [31:0]branch_target_IBUF;

  wire [3:0]D;
  wire branch_taken_IBUF;
  wire [31:0]branch_target_IBUF;
  wire clk;
  wire [2:0]pc;
  wire \pc[0]_i_2_n_0 ;
  wire \pc[0]_i_3_n_0 ;
  wire \pc[0]_i_4_n_0 ;
  wire \pc[0]_i_5_n_0 ;
  wire \pc[12]_i_2_n_0 ;
  wire \pc[12]_i_3_n_0 ;
  wire \pc[12]_i_4_n_0 ;
  wire \pc[12]_i_5_n_0 ;
  wire \pc[16]_i_2_n_0 ;
  wire \pc[16]_i_3_n_0 ;
  wire \pc[16]_i_4_n_0 ;
  wire \pc[16]_i_5_n_0 ;
  wire \pc[20]_i_2_n_0 ;
  wire \pc[20]_i_3_n_0 ;
  wire \pc[20]_i_4_n_0 ;
  wire \pc[20]_i_5_n_0 ;
  wire \pc[24]_i_2_n_0 ;
  wire \pc[24]_i_3_n_0 ;
  wire \pc[24]_i_4_n_0 ;
  wire \pc[24]_i_5_n_0 ;
  wire \pc[28]_i_2_n_0 ;
  wire \pc[28]_i_3_n_0 ;
  wire \pc[28]_i_4_n_0 ;
  wire \pc[28]_i_5_n_0 ;
  wire \pc[4]_i_2_n_0 ;
  wire \pc[4]_i_3_n_0 ;
  wire \pc[4]_i_4_n_0 ;
  wire \pc[4]_i_5_n_0 ;
  wire \pc[8]_i_2_n_0 ;
  wire \pc[8]_i_3_n_0 ;
  wire \pc[8]_i_4_n_0 ;
  wire \pc[8]_i_5_n_0 ;
  wire [27:0]pc_reg;
  wire [0:0]\pc_reg[0]_0 ;
  wire \pc_reg[0]_i_1_n_0 ;
  wire \pc_reg[0]_i_1_n_1 ;
  wire \pc_reg[0]_i_1_n_2 ;
  wire \pc_reg[0]_i_1_n_3 ;
  wire \pc_reg[0]_i_1_n_4 ;
  wire \pc_reg[0]_i_1_n_5 ;
  wire \pc_reg[0]_i_1_n_6 ;
  wire \pc_reg[0]_i_1_n_7 ;
  wire \pc_reg[12]_i_1_n_0 ;
  wire \pc_reg[12]_i_1_n_1 ;
  wire \pc_reg[12]_i_1_n_2 ;
  wire \pc_reg[12]_i_1_n_3 ;
  wire \pc_reg[12]_i_1_n_4 ;
  wire \pc_reg[12]_i_1_n_5 ;
  wire \pc_reg[12]_i_1_n_6 ;
  wire \pc_reg[12]_i_1_n_7 ;
  wire \pc_reg[16]_i_1_n_0 ;
  wire \pc_reg[16]_i_1_n_1 ;
  wire \pc_reg[16]_i_1_n_2 ;
  wire \pc_reg[16]_i_1_n_3 ;
  wire \pc_reg[16]_i_1_n_4 ;
  wire \pc_reg[16]_i_1_n_5 ;
  wire \pc_reg[16]_i_1_n_6 ;
  wire \pc_reg[16]_i_1_n_7 ;
  wire \pc_reg[20]_i_1_n_0 ;
  wire \pc_reg[20]_i_1_n_1 ;
  wire \pc_reg[20]_i_1_n_2 ;
  wire \pc_reg[20]_i_1_n_3 ;
  wire \pc_reg[20]_i_1_n_4 ;
  wire \pc_reg[20]_i_1_n_5 ;
  wire \pc_reg[20]_i_1_n_6 ;
  wire \pc_reg[20]_i_1_n_7 ;
  wire \pc_reg[24]_i_1_n_0 ;
  wire \pc_reg[24]_i_1_n_1 ;
  wire \pc_reg[24]_i_1_n_2 ;
  wire \pc_reg[24]_i_1_n_3 ;
  wire \pc_reg[24]_i_1_n_4 ;
  wire \pc_reg[24]_i_1_n_5 ;
  wire \pc_reg[24]_i_1_n_6 ;
  wire \pc_reg[24]_i_1_n_7 ;
  wire \pc_reg[28]_i_1_n_1 ;
  wire \pc_reg[28]_i_1_n_2 ;
  wire \pc_reg[28]_i_1_n_3 ;
  wire \pc_reg[28]_i_1_n_4 ;
  wire \pc_reg[28]_i_1_n_5 ;
  wire \pc_reg[28]_i_1_n_6 ;
  wire \pc_reg[28]_i_1_n_7 ;
  wire \pc_reg[4]_i_1_n_0 ;
  wire \pc_reg[4]_i_1_n_1 ;
  wire \pc_reg[4]_i_1_n_2 ;
  wire \pc_reg[4]_i_1_n_3 ;
  wire \pc_reg[4]_i_1_n_4 ;
  wire \pc_reg[4]_i_1_n_5 ;
  wire \pc_reg[4]_i_1_n_6 ;
  wire \pc_reg[4]_i_1_n_7 ;
  wire \pc_reg[8]_i_1_n_0 ;
  wire \pc_reg[8]_i_1_n_1 ;
  wire \pc_reg[8]_i_1_n_2 ;
  wire \pc_reg[8]_i_1_n_3 ;
  wire \pc_reg[8]_i_1_n_4 ;
  wire \pc_reg[8]_i_1_n_5 ;
  wire \pc_reg[8]_i_1_n_6 ;
  wire \pc_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_pc_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00AB)) 
    \data[29]_i_1 
       (.I0(pc[0]),
        .I1(pc[1]),
        .I2(D[0]),
        .I3(pc[2]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \data[30]_i_1 
       (.I0(pc[1]),
        .I1(pc[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hCCCD)) 
    \data[31]_i_1 
       (.I0(D[0]),
        .I1(pc[2]),
        .I2(pc[1]),
        .I3(pc[0]),
        .O(D[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \npcout[0]_i_1 
       (.I0(D[0]),
        .O(\pc_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[0]_i_2 
       (.I0(pc[2]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[3]),
        .O(\pc[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[0]_i_3 
       (.I0(pc[1]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[2]),
        .O(\pc[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[0]_i_4 
       (.I0(pc[0]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[1]),
        .O(\pc[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \pc[0]_i_5 
       (.I0(branch_target_IBUF[0]),
        .I1(D[0]),
        .I2(branch_taken_IBUF),
        .O(\pc[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[12]_i_2 
       (.I0(pc_reg[11]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[15]),
        .O(\pc[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[12]_i_3 
       (.I0(pc_reg[10]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[14]),
        .O(\pc[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[12]_i_4 
       (.I0(pc_reg[9]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[13]),
        .O(\pc[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[12]_i_5 
       (.I0(pc_reg[8]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[12]),
        .O(\pc[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[16]_i_2 
       (.I0(pc_reg[15]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[19]),
        .O(\pc[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[16]_i_3 
       (.I0(pc_reg[14]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[18]),
        .O(\pc[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[16]_i_4 
       (.I0(pc_reg[13]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[17]),
        .O(\pc[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[16]_i_5 
       (.I0(pc_reg[12]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[16]),
        .O(\pc[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[20]_i_2 
       (.I0(pc_reg[19]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[23]),
        .O(\pc[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[20]_i_3 
       (.I0(pc_reg[18]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[22]),
        .O(\pc[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[20]_i_4 
       (.I0(pc_reg[17]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[21]),
        .O(\pc[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[20]_i_5 
       (.I0(pc_reg[16]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[20]),
        .O(\pc[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[24]_i_2 
       (.I0(pc_reg[23]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[27]),
        .O(\pc[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[24]_i_3 
       (.I0(pc_reg[22]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[26]),
        .O(\pc[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[24]_i_4 
       (.I0(pc_reg[21]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[25]),
        .O(\pc[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[24]_i_5 
       (.I0(pc_reg[20]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[24]),
        .O(\pc[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[28]_i_2 
       (.I0(pc_reg[27]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[31]),
        .O(\pc[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[28]_i_3 
       (.I0(pc_reg[26]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[30]),
        .O(\pc[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[28]_i_4 
       (.I0(pc_reg[25]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[29]),
        .O(\pc[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[28]_i_5 
       (.I0(pc_reg[24]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[28]),
        .O(\pc[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[4]_i_2 
       (.I0(pc_reg[3]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[7]),
        .O(\pc[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[4]_i_3 
       (.I0(pc_reg[2]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[6]),
        .O(\pc[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[4]_i_4 
       (.I0(pc_reg[1]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[5]),
        .O(\pc[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[4]_i_5 
       (.I0(pc_reg[0]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[4]),
        .O(\pc[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[8]_i_2 
       (.I0(pc_reg[7]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[11]),
        .O(\pc[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[8]_i_3 
       (.I0(pc_reg[6]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[10]),
        .O(\pc[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[8]_i_4 
       (.I0(pc_reg[5]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[9]),
        .O(\pc[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pc[8]_i_5 
       (.I0(pc_reg[4]),
        .I1(branch_taken_IBUF),
        .I2(branch_target_IBUF[8]),
        .O(\pc[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[0]_i_1_n_7 ),
        .Q(D[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pc_reg[0]_i_1_n_0 ,\pc_reg[0]_i_1_n_1 ,\pc_reg[0]_i_1_n_2 ,\pc_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,branch_taken_IBUF}),
        .O({\pc_reg[0]_i_1_n_4 ,\pc_reg[0]_i_1_n_5 ,\pc_reg[0]_i_1_n_6 ,\pc_reg[0]_i_1_n_7 }),
        .S({\pc[0]_i_2_n_0 ,\pc[0]_i_3_n_0 ,\pc[0]_i_4_n_0 ,\pc[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[8]_i_1_n_5 ),
        .Q(pc_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[8]_i_1_n_4 ),
        .Q(pc_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[12]_i_1_n_7 ),
        .Q(pc_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[12]_i_1 
       (.CI(\pc_reg[8]_i_1_n_0 ),
        .CO({\pc_reg[12]_i_1_n_0 ,\pc_reg[12]_i_1_n_1 ,\pc_reg[12]_i_1_n_2 ,\pc_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[12]_i_1_n_4 ,\pc_reg[12]_i_1_n_5 ,\pc_reg[12]_i_1_n_6 ,\pc_reg[12]_i_1_n_7 }),
        .S({\pc[12]_i_2_n_0 ,\pc[12]_i_3_n_0 ,\pc[12]_i_4_n_0 ,\pc[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[12]_i_1_n_6 ),
        .Q(pc_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[12]_i_1_n_5 ),
        .Q(pc_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[12]_i_1_n_4 ),
        .Q(pc_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[16]_i_1_n_7 ),
        .Q(pc_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[16]_i_1 
       (.CI(\pc_reg[12]_i_1_n_0 ),
        .CO({\pc_reg[16]_i_1_n_0 ,\pc_reg[16]_i_1_n_1 ,\pc_reg[16]_i_1_n_2 ,\pc_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[16]_i_1_n_4 ,\pc_reg[16]_i_1_n_5 ,\pc_reg[16]_i_1_n_6 ,\pc_reg[16]_i_1_n_7 }),
        .S({\pc[16]_i_2_n_0 ,\pc[16]_i_3_n_0 ,\pc[16]_i_4_n_0 ,\pc[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[16]_i_1_n_6 ),
        .Q(pc_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[16]_i_1_n_5 ),
        .Q(pc_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[16]_i_1_n_4 ),
        .Q(pc_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[0]_i_1_n_6 ),
        .Q(pc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[20]_i_1_n_7 ),
        .Q(pc_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[20]_i_1 
       (.CI(\pc_reg[16]_i_1_n_0 ),
        .CO({\pc_reg[20]_i_1_n_0 ,\pc_reg[20]_i_1_n_1 ,\pc_reg[20]_i_1_n_2 ,\pc_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[20]_i_1_n_4 ,\pc_reg[20]_i_1_n_5 ,\pc_reg[20]_i_1_n_6 ,\pc_reg[20]_i_1_n_7 }),
        .S({\pc[20]_i_2_n_0 ,\pc[20]_i_3_n_0 ,\pc[20]_i_4_n_0 ,\pc[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[20]_i_1_n_6 ),
        .Q(pc_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[20]_i_1_n_5 ),
        .Q(pc_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[20]_i_1_n_4 ),
        .Q(pc_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[24]_i_1_n_7 ),
        .Q(pc_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[24]_i_1 
       (.CI(\pc_reg[20]_i_1_n_0 ),
        .CO({\pc_reg[24]_i_1_n_0 ,\pc_reg[24]_i_1_n_1 ,\pc_reg[24]_i_1_n_2 ,\pc_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[24]_i_1_n_4 ,\pc_reg[24]_i_1_n_5 ,\pc_reg[24]_i_1_n_6 ,\pc_reg[24]_i_1_n_7 }),
        .S({\pc[24]_i_2_n_0 ,\pc[24]_i_3_n_0 ,\pc[24]_i_4_n_0 ,\pc[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[24]_i_1_n_6 ),
        .Q(pc_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[24]_i_1_n_5 ),
        .Q(pc_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[24]_i_1_n_4 ),
        .Q(pc_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[28]_i_1_n_7 ),
        .Q(pc_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[28]_i_1 
       (.CI(\pc_reg[24]_i_1_n_0 ),
        .CO({\NLW_pc_reg[28]_i_1_CO_UNCONNECTED [3],\pc_reg[28]_i_1_n_1 ,\pc_reg[28]_i_1_n_2 ,\pc_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[28]_i_1_n_4 ,\pc_reg[28]_i_1_n_5 ,\pc_reg[28]_i_1_n_6 ,\pc_reg[28]_i_1_n_7 }),
        .S({\pc[28]_i_2_n_0 ,\pc[28]_i_3_n_0 ,\pc[28]_i_4_n_0 ,\pc[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[28]_i_1_n_6 ),
        .Q(pc_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[0]_i_1_n_5 ),
        .Q(pc[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[28]_i_1_n_5 ),
        .Q(pc_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[28]_i_1_n_4 ),
        .Q(pc_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[0]_i_1_n_4 ),
        .Q(pc[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[4]_i_1_n_7 ),
        .Q(pc_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[4]_i_1 
       (.CI(\pc_reg[0]_i_1_n_0 ),
        .CO({\pc_reg[4]_i_1_n_0 ,\pc_reg[4]_i_1_n_1 ,\pc_reg[4]_i_1_n_2 ,\pc_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[4]_i_1_n_4 ,\pc_reg[4]_i_1_n_5 ,\pc_reg[4]_i_1_n_6 ,\pc_reg[4]_i_1_n_7 }),
        .S({\pc[4]_i_2_n_0 ,\pc[4]_i_3_n_0 ,\pc[4]_i_4_n_0 ,\pc[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[4]_i_1_n_6 ),
        .Q(pc_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[4]_i_1_n_5 ),
        .Q(pc_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[4]_i_1_n_4 ),
        .Q(pc_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[8]_i_1_n_7 ),
        .Q(pc_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[8]_i_1 
       (.CI(\pc_reg[4]_i_1_n_0 ),
        .CO({\pc_reg[8]_i_1_n_0 ,\pc_reg[8]_i_1_n_1 ,\pc_reg[8]_i_1_n_2 ,\pc_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[8]_i_1_n_4 ,\pc_reg[8]_i_1_n_5 ,\pc_reg[8]_i_1_n_6 ,\pc_reg[8]_i_1_n_7 }),
        .S({\pc[8]_i_2_n_0 ,\pc[8]_i_3_n_0 ,\pc[8]_i_4_n_0 ,\pc[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[8]_i_1_n_6 ),
        .Q(pc_reg[5]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
