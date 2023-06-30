// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Jun 28 21:00:05 2023
// Host        : ryan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pdi_0_0_sim_netlist.v
// Design      : design_1_pdi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay
   (ram_addr,
    pixel_addr_reg,
    clk,
    ram_we);
  output [14:0]ram_addr;
  input [14:0]pixel_addr_reg;
  input clk;
  input ram_we;

  wire clk;
  wire \int[0][14]_i_1_n_0 ;
  wire [14:0]pixel_addr_reg;
  wire [14:0]ram_addr;
  wire ram_we;

  LUT1 #(
    .INIT(2'h1)) 
    \int[0][14]_i_1 
       (.I0(ram_we),
        .O(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[0]),
        .Q(ram_addr[0]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][10] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[10]),
        .Q(ram_addr[10]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][11] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[11]),
        .Q(ram_addr[11]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][12] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[12]),
        .Q(ram_addr[12]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][13] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[13]),
        .Q(ram_addr[13]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][14] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[14]),
        .Q(ram_addr[14]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[1]),
        .Q(ram_addr[1]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][2] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[2]),
        .Q(ram_addr[2]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][3] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[3]),
        .Q(ram_addr[3]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][4] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[4]),
        .Q(ram_addr[4]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][5] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[5]),
        .Q(ram_addr[5]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][6] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[6]),
        .Q(ram_addr[6]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][7] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[7]),
        .Q(ram_addr[7]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][8] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[8]),
        .Q(ram_addr[8]),
        .R(\int[0][14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg[0][9] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_addr_reg[9]),
        .Q(ram_addr[9]),
        .R(\int[0][14]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_pdi_0_0,pdi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pdi,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    start,
    op,
    din,
    rom_addr,
    ram_we,
    dout,
    ram_addr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  input [3:0]op;
  input [23:0]din;
  output [14:0]rom_addr;
  output ram_we;
  output [23:0]dout;
  output [14:0]ram_addr;

  wire clk;
  wire [23:0]din;
  wire [23:0]dout;
  wire [3:0]op;
  wire [14:0]ram_addr;
  wire ram_we;
  wire [14:0]rom_addr;
  wire rst;
  wire start;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pdi U0
       (.clk(clk),
        .din(din),
        .dout(dout),
        .op(op),
        .ram_addr(ram_addr),
        .ram_we(ram_we),
        .rom_addr(rom_addr),
        .rst(rst),
        .start(start));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pdi
   (ram_we,
    ram_addr,
    dout,
    rom_addr,
    clk,
    rst,
    op,
    din,
    start);
  output ram_we;
  output [14:0]ram_addr;
  output [23:0]dout;
  output [14:0]rom_addr;
  input clk;
  input rst;
  input [3:0]op;
  input [23:0]din;
  input start;

  wire \FSM_sequential_current_s[0]_i_2_n_0 ;
  wire \FSM_sequential_current_s[1]_i_2_n_0 ;
  wire \FSM_sequential_current_s[1]_i_3_n_0 ;
  wire \FSM_sequential_current_s[1]_i_4_n_0 ;
  wire \FSM_sequential_current_s[1]_i_5_n_0 ;
  wire \FSM_sequential_current_s[1]_i_6_n_0 ;
  wire \FSM_sequential_current_s[1]_i_7_n_0 ;
  wire \FSM_sequential_current_s_reg_n_0_[1] ;
  wire clk;
  wire [0:0]current_s;
  wire [23:0]din;
  wire [23:0]dout;
  wire [1:0]next_s;
  wire [3:0]op;
  wire \pixel_addr[0]_i_2_n_0 ;
  wire \pixel_addr[0]_i_3_n_0 ;
  wire \pixel_addr[0]_i_4_n_0 ;
  wire \pixel_addr[0]_i_5_n_0 ;
  wire \pixel_addr[0]_i_6_n_0 ;
  wire \pixel_addr[12]_i_2_n_0 ;
  wire \pixel_addr[12]_i_3_n_0 ;
  wire \pixel_addr[12]_i_4_n_0 ;
  wire \pixel_addr[4]_i_2_n_0 ;
  wire \pixel_addr[4]_i_3_n_0 ;
  wire \pixel_addr[4]_i_4_n_0 ;
  wire \pixel_addr[4]_i_5_n_0 ;
  wire \pixel_addr[8]_i_2_n_0 ;
  wire \pixel_addr[8]_i_3_n_0 ;
  wire \pixel_addr[8]_i_4_n_0 ;
  wire \pixel_addr[8]_i_5_n_0 ;
  wire [14:0]pixel_addr_reg;
  wire \pixel_addr_reg[0]_i_1_n_0 ;
  wire \pixel_addr_reg[0]_i_1_n_1 ;
  wire \pixel_addr_reg[0]_i_1_n_2 ;
  wire \pixel_addr_reg[0]_i_1_n_3 ;
  wire \pixel_addr_reg[0]_i_1_n_4 ;
  wire \pixel_addr_reg[0]_i_1_n_5 ;
  wire \pixel_addr_reg[0]_i_1_n_6 ;
  wire \pixel_addr_reg[0]_i_1_n_7 ;
  wire \pixel_addr_reg[12]_i_1_n_2 ;
  wire \pixel_addr_reg[12]_i_1_n_3 ;
  wire \pixel_addr_reg[12]_i_1_n_5 ;
  wire \pixel_addr_reg[12]_i_1_n_6 ;
  wire \pixel_addr_reg[12]_i_1_n_7 ;
  wire \pixel_addr_reg[4]_i_1_n_0 ;
  wire \pixel_addr_reg[4]_i_1_n_1 ;
  wire \pixel_addr_reg[4]_i_1_n_2 ;
  wire \pixel_addr_reg[4]_i_1_n_3 ;
  wire \pixel_addr_reg[4]_i_1_n_4 ;
  wire \pixel_addr_reg[4]_i_1_n_5 ;
  wire \pixel_addr_reg[4]_i_1_n_6 ;
  wire \pixel_addr_reg[4]_i_1_n_7 ;
  wire \pixel_addr_reg[8]_i_1_n_0 ;
  wire \pixel_addr_reg[8]_i_1_n_1 ;
  wire \pixel_addr_reg[8]_i_1_n_2 ;
  wire \pixel_addr_reg[8]_i_1_n_3 ;
  wire \pixel_addr_reg[8]_i_1_n_4 ;
  wire \pixel_addr_reg[8]_i_1_n_5 ;
  wire \pixel_addr_reg[8]_i_1_n_6 ;
  wire \pixel_addr_reg[8]_i_1_n_7 ;
  wire [14:0]ram_addr;
  wire ram_we;
  wire ram_we_reg_i_1_n_0;
  wire [14:0]rom_addr;
  wire rst;
  wire start;
  wire [3:2]\NLW_pixel_addr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pixel_addr_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FFFFFFFB)) 
    \FSM_sequential_current_s[0]_i_1 
       (.I0(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .I1(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_6_n_0 ),
        .I5(\FSM_sequential_current_s[0]_i_2_n_0 ),
        .O(next_s[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \FSM_sequential_current_s[0]_i_2 
       (.I0(start),
        .I1(current_s),
        .I2(\FSM_sequential_current_s_reg_n_0_[1] ),
        .O(\FSM_sequential_current_s[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFB)) 
    \FSM_sequential_current_s[1]_i_1 
       (.I0(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .I1(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_6_n_0 ),
        .I5(\FSM_sequential_current_s[1]_i_7_n_0 ),
        .O(next_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_current_s[1]_i_2 
       (.I0(pixel_addr_reg[2]),
        .I1(pixel_addr_reg[0]),
        .I2(pixel_addr_reg[13]),
        .I3(pixel_addr_reg[10]),
        .O(\FSM_sequential_current_s[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_current_s[1]_i_3 
       (.I0(pixel_addr_reg[12]),
        .I1(pixel_addr_reg[1]),
        .I2(pixel_addr_reg[11]),
        .I3(pixel_addr_reg[7]),
        .O(\FSM_sequential_current_s[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_current_s[1]_i_4 
       (.I0(pixel_addr_reg[9]),
        .I1(pixel_addr_reg[6]),
        .I2(pixel_addr_reg[14]),
        .I3(pixel_addr_reg[8]),
        .O(\FSM_sequential_current_s[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_s[1]_i_5 
       (.I0(pixel_addr_reg[4]),
        .I1(pixel_addr_reg[5]),
        .I2(pixel_addr_reg[3]),
        .O(\FSM_sequential_current_s[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_s[1]_i_6 
       (.I0(ram_we),
        .I1(current_s),
        .I2(\FSM_sequential_current_s_reg_n_0_[1] ),
        .O(\FSM_sequential_current_s[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \FSM_sequential_current_s[1]_i_7 
       (.I0(\FSM_sequential_current_s_reg_n_0_[1] ),
        .I1(start),
        .I2(current_s),
        .O(\FSM_sequential_current_s[1]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "wait_1:01,wait_0:10,exec:11,init:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_s_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_s[0]),
        .Q(current_s));
  (* FSM_ENCODED_STATES = "wait_1:01,wait_0:10,exec:11,init:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_s_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_s[1]),
        .Q(\FSM_sequential_current_s_reg_n_0_[1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay addr_dly
       (.clk(clk),
        .pixel_addr_reg(pixel_addr_reg),
        .ram_addr(ram_addr),
        .ram_we(ram_we));
  LUT5 #(
    .INIT(32'hCCCCC88C)) 
    \dout[0]_INST_0 
       (.I0(op[3]),
        .I1(din[0]),
        .I2(op[0]),
        .I3(op[1]),
        .I4(op[2]),
        .O(dout[0]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[10]_INST_0 
       (.I0(op[3]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(din[10]),
        .I4(op[2]),
        .O(dout[10]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[11]_INST_0 
       (.I0(op[3]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(din[11]),
        .I4(op[2]),
        .O(dout[11]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[12]_INST_0 
       (.I0(op[3]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(din[12]),
        .I4(op[2]),
        .O(dout[12]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[13]_INST_0 
       (.I0(op[3]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(din[13]),
        .I4(op[2]),
        .O(dout[13]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[14]_INST_0 
       (.I0(op[3]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(din[14]),
        .I4(op[2]),
        .O(dout[14]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[15]_INST_0 
       (.I0(op[3]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(din[15]),
        .I4(op[2]),
        .O(dout[15]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[16]_INST_0 
       (.I0(op[3]),
        .I1(op[1]),
        .I2(op[0]),
        .I3(din[16]),
        .I4(op[2]),
        .O(dout[16]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[17]_INST_0 
       (.I0(op[3]),
        .I1(op[1]),
        .I2(op[0]),
        .I3(din[17]),
        .I4(op[2]),
        .O(dout[17]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[18]_INST_0 
       (.I0(op[3]),
        .I1(op[1]),
        .I2(op[0]),
        .I3(din[18]),
        .I4(op[2]),
        .O(dout[18]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[19]_INST_0 
       (.I0(op[3]),
        .I1(op[1]),
        .I2(op[0]),
        .I3(din[19]),
        .I4(op[2]),
        .O(dout[19]));
  LUT5 #(
    .INIT(32'hCCCCC88C)) 
    \dout[1]_INST_0 
       (.I0(op[3]),
        .I1(din[1]),
        .I2(op[0]),
        .I3(op[1]),
        .I4(op[2]),
        .O(dout[1]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[20]_INST_0 
       (.I0(op[3]),
        .I1(op[1]),
        .I2(op[0]),
        .I3(din[20]),
        .I4(op[2]),
        .O(dout[20]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[21]_INST_0 
       (.I0(op[3]),
        .I1(op[1]),
        .I2(op[0]),
        .I3(din[21]),
        .I4(op[2]),
        .O(dout[21]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[22]_INST_0 
       (.I0(op[3]),
        .I1(op[1]),
        .I2(op[0]),
        .I3(din[22]),
        .I4(op[2]),
        .O(dout[22]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[23]_INST_0 
       (.I0(op[3]),
        .I1(op[1]),
        .I2(op[0]),
        .I3(din[23]),
        .I4(op[2]),
        .O(dout[23]));
  LUT5 #(
    .INIT(32'hCCCCC88C)) 
    \dout[2]_INST_0 
       (.I0(op[3]),
        .I1(din[2]),
        .I2(op[0]),
        .I3(op[1]),
        .I4(op[2]),
        .O(dout[2]));
  LUT5 #(
    .INIT(32'hCCCCC88C)) 
    \dout[3]_INST_0 
       (.I0(op[3]),
        .I1(din[3]),
        .I2(op[0]),
        .I3(op[1]),
        .I4(op[2]),
        .O(dout[3]));
  LUT5 #(
    .INIT(32'hCCCCC88C)) 
    \dout[4]_INST_0 
       (.I0(op[3]),
        .I1(din[4]),
        .I2(op[0]),
        .I3(op[1]),
        .I4(op[2]),
        .O(dout[4]));
  LUT5 #(
    .INIT(32'hCCCCC88C)) 
    \dout[5]_INST_0 
       (.I0(op[3]),
        .I1(din[5]),
        .I2(op[0]),
        .I3(op[1]),
        .I4(op[2]),
        .O(dout[5]));
  LUT5 #(
    .INIT(32'hCCCCC88C)) 
    \dout[6]_INST_0 
       (.I0(op[3]),
        .I1(din[6]),
        .I2(op[0]),
        .I3(op[1]),
        .I4(op[2]),
        .O(dout[6]));
  LUT5 #(
    .INIT(32'hCCCCC88C)) 
    \dout[7]_INST_0 
       (.I0(op[3]),
        .I1(din[7]),
        .I2(op[0]),
        .I3(op[1]),
        .I4(op[2]),
        .O(dout[7]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[8]_INST_0 
       (.I0(op[3]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(din[8]),
        .I4(op[2]),
        .O(dout[8]));
  LUT5 #(
    .INIT(32'hFE00FB00)) 
    \dout[9]_INST_0 
       (.I0(op[3]),
        .I1(op[0]),
        .I2(op[1]),
        .I3(din[9]),
        .I4(op[2]),
        .O(dout[9]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[0]_i_2 
       (.I0(pixel_addr_reg[0]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA2AAAAA)) 
    \pixel_addr[0]_i_3 
       (.I0(pixel_addr_reg[3]),
        .I1(pixel_addr_reg[5]),
        .I2(pixel_addr_reg[4]),
        .I3(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I5(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[0]_i_4 
       (.I0(pixel_addr_reg[2]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[0]_i_5 
       (.I0(pixel_addr_reg[1]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55555455)) 
    \pixel_addr[0]_i_6 
       (.I0(pixel_addr_reg[0]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[12]_i_2 
       (.I0(pixel_addr_reg[14]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[12]_i_3 
       (.I0(pixel_addr_reg[13]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[12]_i_4 
       (.I0(pixel_addr_reg[12]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[4]_i_2 
       (.I0(pixel_addr_reg[7]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[4]_i_3 
       (.I0(pixel_addr_reg[6]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCC4CCCCC)) 
    \pixel_addr[4]_i_4 
       (.I0(pixel_addr_reg[3]),
        .I1(pixel_addr_reg[5]),
        .I2(pixel_addr_reg[4]),
        .I3(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I5(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F070F0F0)) 
    \pixel_addr[4]_i_5 
       (.I0(pixel_addr_reg[3]),
        .I1(pixel_addr_reg[5]),
        .I2(pixel_addr_reg[4]),
        .I3(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I5(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[8]_i_2 
       (.I0(pixel_addr_reg[11]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[8]_i_3 
       (.I0(pixel_addr_reg[10]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[8]_i_4 
       (.I0(pixel_addr_reg[9]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \pixel_addr[8]_i_5 
       (.I0(pixel_addr_reg[8]),
        .I1(\FSM_sequential_current_s[1]_i_5_n_0 ),
        .I2(\FSM_sequential_current_s[1]_i_4_n_0 ),
        .I3(\FSM_sequential_current_s[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_s[1]_i_2_n_0 ),
        .O(\pixel_addr[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[0] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[0]_i_1_n_7 ),
        .Q(pixel_addr_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pixel_addr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pixel_addr_reg[0]_i_1_n_0 ,\pixel_addr_reg[0]_i_1_n_1 ,\pixel_addr_reg[0]_i_1_n_2 ,\pixel_addr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pixel_addr[0]_i_2_n_0 }),
        .O({\pixel_addr_reg[0]_i_1_n_4 ,\pixel_addr_reg[0]_i_1_n_5 ,\pixel_addr_reg[0]_i_1_n_6 ,\pixel_addr_reg[0]_i_1_n_7 }),
        .S({\pixel_addr[0]_i_3_n_0 ,\pixel_addr[0]_i_4_n_0 ,\pixel_addr[0]_i_5_n_0 ,\pixel_addr[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[10] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[8]_i_1_n_5 ),
        .Q(pixel_addr_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[11] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[8]_i_1_n_4 ),
        .Q(pixel_addr_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[12] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[12]_i_1_n_7 ),
        .Q(pixel_addr_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pixel_addr_reg[12]_i_1 
       (.CI(\pixel_addr_reg[8]_i_1_n_0 ),
        .CO({\NLW_pixel_addr_reg[12]_i_1_CO_UNCONNECTED [3:2],\pixel_addr_reg[12]_i_1_n_2 ,\pixel_addr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pixel_addr_reg[12]_i_1_O_UNCONNECTED [3],\pixel_addr_reg[12]_i_1_n_5 ,\pixel_addr_reg[12]_i_1_n_6 ,\pixel_addr_reg[12]_i_1_n_7 }),
        .S({1'b0,\pixel_addr[12]_i_2_n_0 ,\pixel_addr[12]_i_3_n_0 ,\pixel_addr[12]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[13] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[12]_i_1_n_6 ),
        .Q(pixel_addr_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[14] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[12]_i_1_n_5 ),
        .Q(pixel_addr_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[1] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[0]_i_1_n_6 ),
        .Q(pixel_addr_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[2] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[0]_i_1_n_5 ),
        .Q(pixel_addr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[3] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[0]_i_1_n_4 ),
        .Q(pixel_addr_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[4] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[4]_i_1_n_7 ),
        .Q(pixel_addr_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pixel_addr_reg[4]_i_1 
       (.CI(\pixel_addr_reg[0]_i_1_n_0 ),
        .CO({\pixel_addr_reg[4]_i_1_n_0 ,\pixel_addr_reg[4]_i_1_n_1 ,\pixel_addr_reg[4]_i_1_n_2 ,\pixel_addr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_addr_reg[4]_i_1_n_4 ,\pixel_addr_reg[4]_i_1_n_5 ,\pixel_addr_reg[4]_i_1_n_6 ,\pixel_addr_reg[4]_i_1_n_7 }),
        .S({\pixel_addr[4]_i_2_n_0 ,\pixel_addr[4]_i_3_n_0 ,\pixel_addr[4]_i_4_n_0 ,\pixel_addr[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[5] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[4]_i_1_n_6 ),
        .Q(pixel_addr_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[6] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[4]_i_1_n_5 ),
        .Q(pixel_addr_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[7] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[4]_i_1_n_4 ),
        .Q(pixel_addr_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[8] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[8]_i_1_n_7 ),
        .Q(pixel_addr_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pixel_addr_reg[8]_i_1 
       (.CI(\pixel_addr_reg[4]_i_1_n_0 ),
        .CO({\pixel_addr_reg[8]_i_1_n_0 ,\pixel_addr_reg[8]_i_1_n_1 ,\pixel_addr_reg[8]_i_1_n_2 ,\pixel_addr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_addr_reg[8]_i_1_n_4 ,\pixel_addr_reg[8]_i_1_n_5 ,\pixel_addr_reg[8]_i_1_n_6 ,\pixel_addr_reg[8]_i_1_n_7 }),
        .S({\pixel_addr[8]_i_2_n_0 ,\pixel_addr[8]_i_3_n_0 ,\pixel_addr[8]_i_4_n_0 ,\pixel_addr[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[9] 
       (.C(clk),
        .CE(ram_we),
        .CLR(rst),
        .D(\pixel_addr_reg[8]_i_1_n_6 ),
        .Q(pixel_addr_reg[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ram_we_reg
       (.CLR(1'b0),
        .D(\FSM_sequential_current_s_reg_n_0_[1] ),
        .G(ram_we_reg_i_1_n_0),
        .GE(1'b1),
        .Q(ram_we));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    ram_we_reg_i_1
       (.I0(current_s),
        .I1(\FSM_sequential_current_s_reg_n_0_[1] ),
        .O(ram_we_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[0]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[0]),
        .O(rom_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[10]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[10]),
        .O(rom_addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[11]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[11]),
        .O(rom_addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[12]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[12]),
        .O(rom_addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[13]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[13]),
        .O(rom_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[14]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[14]),
        .O(rom_addr[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[1]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[1]),
        .O(rom_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[2]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[2]),
        .O(rom_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[3]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[3]),
        .O(rom_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[4]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[4]),
        .O(rom_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[5]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[5]),
        .O(rom_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[6]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[6]),
        .O(rom_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[7]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[7]),
        .O(rom_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[8]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[8]),
        .O(rom_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rom_addr[9]_INST_0 
       (.I0(ram_we),
        .I1(pixel_addr_reg[9]),
        .O(rom_addr[9]));
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
