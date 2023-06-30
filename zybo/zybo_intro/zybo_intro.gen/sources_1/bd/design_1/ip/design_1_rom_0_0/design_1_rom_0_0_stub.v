// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Jun 28 20:57:33 2023
// Host        : ryan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/leroy/OneDrive/Documentos/ufc/eng_comp/sistemas_digitais/zybo/zybo_intro/zybo_intro.gen/sources_1/bd/design_1/ip/design_1_rom_0_0/design_1_rom_0_0_stub.v
// Design      : design_1_rom_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "rom,Vivado 2022.2" *)
module design_1_rom_0_0(clk, address, dout)
/* synthesis syn_black_box black_box_pad_pin="clk,address[14:0],dout[23:0]" */;
  input clk;
  input [14:0]address;
  output [23:0]dout;
endmodule
