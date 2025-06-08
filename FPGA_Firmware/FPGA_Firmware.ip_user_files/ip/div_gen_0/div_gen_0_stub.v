// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 10 10:05:19 2025
// Host        : ZBL_Thinkbook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/ZBL_MIMO/FPGA_Firmware/FPGA_Firmware.gen/sources_1/ip/div_gen_0/div_gen_0_stub.v
// Design      : div_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu49dr-ffvf1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "div_gen_v5_1_17,Vivado 2020.2" *)
module div_gen_0(aclk, s_axis_divisor_tvalid, 
  s_axis_divisor_tdata, s_axis_dividend_tvalid, s_axis_dividend_tdata, 
  m_axis_dout_tvalid, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_divisor_tvalid,s_axis_divisor_tdata[47:0],s_axis_dividend_tvalid,s_axis_dividend_tdata[47:0],m_axis_dout_tvalid,m_axis_dout_tdata[95:0]" */;
  input aclk;
  input s_axis_divisor_tvalid;
  input [47:0]s_axis_divisor_tdata;
  input s_axis_dividend_tvalid;
  input [47:0]s_axis_dividend_tdata;
  output m_axis_dout_tvalid;
  output [95:0]m_axis_dout_tdata;
endmodule
