// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:DAC_Data_Gen:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_DAC_Data_Gen_0_0 (
  Clk,
  rstn,
  i_Trig,
  i_Trig_DELA_DAC00,
  i_Pulse_Freq_DAC00,
  i_Pulse_Width_DAC00,
  i_Phase_Start_DAC00,
  m_axis_tdata_DAC00,
  m_axis_tready_DAC00,
  m_axis_tvalid_DAC00,
  i_Trig_DELA_DAC01,
  i_Pulse_Freq_DAC01,
  i_Pulse_Width_DAC01,
  i_Phase_Start_DAC01,
  m_axis_tdata_DAC01,
  m_axis_tready_DAC01,
  m_axis_tvalid_DAC01,
  i_Trig_DELA_DAC02,
  i_Pulse_Freq_DAC02,
  i_Pulse_Width_DAC02,
  i_Phase_Start_DAC02,
  m_axis_tdata_DAC02,
  m_axis_tready_DAC02,
  m_axis_tvalid_DAC02,
  i_Trig_DELA_DAC03,
  i_Pulse_Freq_DAC03,
  i_Pulse_Width_DAC03,
  i_Phase_Start_DAC03,
  m_axis_tdata_DAC03,
  m_axis_tready_DAC03,
  m_axis_tvalid_DAC03,
  i_Trig_DELA_DAC10,
  i_Pulse_Freq_DAC10,
  i_Pulse_Width_DAC10,
  i_Phase_Start_DAC10,
  m_axis_tdata_DAC10,
  m_axis_tready_DAC10,
  m_axis_tvalid_DAC10,
  i_Trig_DELA_DAC11,
  i_Pulse_Freq_DAC11,
  i_Pulse_Width_DAC11,
  i_Phase_Start_DAC11,
  m_axis_tdata_DAC11,
  m_axis_tready_DAC11,
  m_axis_tvalid_DAC11,
  i_Trig_DELA_DAC12,
  i_Pulse_Freq_DAC12,
  i_Pulse_Width_DAC12,
  i_Phase_Start_DAC12,
  m_axis_tdata_DAC12,
  m_axis_tready_DAC12,
  m_axis_tvalid_DAC12,
  i_Trig_DELA_DAC13,
  i_Pulse_Freq_DAC13,
  i_Pulse_Width_DAC13,
  i_Phase_Start_DAC13,
  m_axis_tdata_DAC13,
  m_axis_tready_DAC13,
  m_axis_tvalid_DAC13,
  i_Trig_DELA_DAC20,
  i_Pulse_Freq_DAC20,
  i_Pulse_Width_DAC20,
  i_Phase_Start_DAC20,
  m_axis_tdata_DAC20,
  m_axis_tready_DAC20,
  m_axis_tvalid_DAC20,
  i_Trig_DELA_DAC21,
  i_Pulse_Freq_DAC21,
  i_Pulse_Width_DAC21,
  i_Phase_Start_DAC21,
  m_axis_tdata_DAC21,
  m_axis_tready_DAC21,
  m_axis_tvalid_DAC21,
  i_Trig_DELA_DAC22,
  i_Pulse_Freq_DAC22,
  i_Pulse_Width_DAC22,
  i_Phase_Start_DAC22,
  m_axis_tdata_DAC22,
  m_axis_tready_DAC22,
  m_axis_tvalid_DAC22,
  i_Trig_DELA_DAC23,
  i_Pulse_Freq_DAC23,
  i_Pulse_Width_DAC23,
  i_Phase_Start_DAC23,
  m_axis_tdata_DAC23,
  m_axis_tready_DAC23,
  m_axis_tvalid_DAC23,
  i_Trig_DELA_DAC30,
  i_Pulse_Freq_DAC30,
  i_Pulse_Width_DAC30,
  i_Phase_Start_DAC30,
  m_axis_tdata_DAC30,
  m_axis_tready_DAC30,
  m_axis_tvalid_DAC30,
  i_Trig_DELA_DAC31,
  i_Pulse_Freq_DAC31,
  i_Pulse_Width_DAC31,
  i_Phase_Start_DAC31,
  m_axis_tdata_DAC31,
  m_axis_tready_DAC31,
  m_axis_tvalid_DAC31,
  i_Trig_DELA_DAC32,
  i_Pulse_Freq_DAC32,
  i_Pulse_Width_DAC32,
  i_Phase_Start_DAC32,
  m_axis_tdata_DAC32,
  m_axis_tready_DAC32,
  m_axis_tvalid_DAC32,
  i_Trig_DELA_DAC33,
  i_Pulse_Freq_DAC33,
  i_Pulse_Width_DAC33,
  i_Phase_Start_DAC33,
  m_axis_tdata_DAC33,
  m_axis_tready_DAC33,
  m_axis_tvalid_DAC33,
  o_Pulse_Width_Cnt_DAC00,
  o_Pulse_Width_Cnt_DAC01,
  o_Pulse_Width_Cnt_DAC02,
  o_Pulse_Width_Cnt_DAC03,
  o_Pulse_Width_Cnt_DAC10,
  o_Pulse_Width_Cnt_DAC11,
  o_Pulse_Width_Cnt_DAC12,
  o_Pulse_Width_Cnt_DAC13,
  o_Pulse_Width_Cnt_DAC20,
  o_Pulse_Width_Cnt_DAC21,
  o_Pulse_Width_Cnt_DAC22,
  o_Pulse_Width_Cnt_DAC23,
  o_Pulse_Width_Cnt_DAC30,
  o_Pulse_Width_Cnt_DAC31,
  o_Pulse_Width_Cnt_DAC32,
  o_Pulse_Width_Cnt_DAC33
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_BUSIF m_axis_DAC00:m_axis_DAC01:m_axis_DAC02:m_axis_DAC03:m_axis_DAC10:m_axis_DAC11:m_axis_DAC12:m_axis_DAC13:m_axis_DAC20:m_axis_DAC21:m_axis_DAC22:m_axis_DAC23:m_axis_DAC30:m_axis_DAC31:m_axis_DAC32:m_axis_DAC33, ASSOCIATED_RESET rstn, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *)
input wire [0 : 0] Clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire [0 : 0] rstn;
input wire [0 : 0] i_Trig;
input wire [15 : 0] i_Trig_DELA_DAC00;
input wire [31 : 0] i_Pulse_Freq_DAC00;
input wire [15 : 0] i_Pulse_Width_DAC00;
input wire [13 : 0] i_Phase_Start_DAC00;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC00 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC00;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC00 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC00, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC00 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC00;
input wire [15 : 0] i_Trig_DELA_DAC01;
input wire [31 : 0] i_Pulse_Freq_DAC01;
input wire [15 : 0] i_Pulse_Width_DAC01;
input wire [13 : 0] i_Phase_Start_DAC01;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC01 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC01;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC01 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC01;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC01, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC01 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC01;
input wire [15 : 0] i_Trig_DELA_DAC02;
input wire [31 : 0] i_Pulse_Freq_DAC02;
input wire [15 : 0] i_Pulse_Width_DAC02;
input wire [13 : 0] i_Phase_Start_DAC02;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC02 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC02;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC02 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC02;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC02, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC02 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC02;
input wire [15 : 0] i_Trig_DELA_DAC03;
input wire [31 : 0] i_Pulse_Freq_DAC03;
input wire [15 : 0] i_Pulse_Width_DAC03;
input wire [13 : 0] i_Phase_Start_DAC03;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC03 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC03;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC03 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC03;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC03, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC03 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC03;
input wire [15 : 0] i_Trig_DELA_DAC10;
input wire [31 : 0] i_Pulse_Freq_DAC10;
input wire [15 : 0] i_Pulse_Width_DAC10;
input wire [13 : 0] i_Phase_Start_DAC10;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC10 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC10;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC10 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC10;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC10, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC10 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC10;
input wire [15 : 0] i_Trig_DELA_DAC11;
input wire [31 : 0] i_Pulse_Freq_DAC11;
input wire [15 : 0] i_Pulse_Width_DAC11;
input wire [13 : 0] i_Phase_Start_DAC11;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC11 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC11;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC11 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC11;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC11, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC11 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC11;
input wire [15 : 0] i_Trig_DELA_DAC12;
input wire [31 : 0] i_Pulse_Freq_DAC12;
input wire [15 : 0] i_Pulse_Width_DAC12;
input wire [13 : 0] i_Phase_Start_DAC12;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC12 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC12;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC12 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC12;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC12, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC12 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC12;
input wire [15 : 0] i_Trig_DELA_DAC13;
input wire [31 : 0] i_Pulse_Freq_DAC13;
input wire [15 : 0] i_Pulse_Width_DAC13;
input wire [13 : 0] i_Phase_Start_DAC13;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC13 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC13;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC13 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC13;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC13, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC13 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC13;
input wire [15 : 0] i_Trig_DELA_DAC20;
input wire [31 : 0] i_Pulse_Freq_DAC20;
input wire [15 : 0] i_Pulse_Width_DAC20;
input wire [13 : 0] i_Phase_Start_DAC20;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC20 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC20;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC20 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC20;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC20, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC20 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC20;
input wire [15 : 0] i_Trig_DELA_DAC21;
input wire [31 : 0] i_Pulse_Freq_DAC21;
input wire [15 : 0] i_Pulse_Width_DAC21;
input wire [13 : 0] i_Phase_Start_DAC21;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC21 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC21;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC21 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC21;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC21, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC21 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC21;
input wire [15 : 0] i_Trig_DELA_DAC22;
input wire [31 : 0] i_Pulse_Freq_DAC22;
input wire [15 : 0] i_Pulse_Width_DAC22;
input wire [13 : 0] i_Phase_Start_DAC22;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC22 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC22;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC22 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC22;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC22, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC22 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC22;
input wire [15 : 0] i_Trig_DELA_DAC23;
input wire [31 : 0] i_Pulse_Freq_DAC23;
input wire [15 : 0] i_Pulse_Width_DAC23;
input wire [13 : 0] i_Phase_Start_DAC23;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC23 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC23;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC23 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC23;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC23, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC23 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC23;
input wire [15 : 0] i_Trig_DELA_DAC30;
input wire [31 : 0] i_Pulse_Freq_DAC30;
input wire [15 : 0] i_Pulse_Width_DAC30;
input wire [13 : 0] i_Phase_Start_DAC30;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC30 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC30;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC30 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC30;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC30, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC30 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC30;
input wire [15 : 0] i_Trig_DELA_DAC31;
input wire [31 : 0] i_Pulse_Freq_DAC31;
input wire [15 : 0] i_Pulse_Width_DAC31;
input wire [13 : 0] i_Phase_Start_DAC31;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC31 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC31;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC31 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC31;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC31, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC31 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC31;
input wire [15 : 0] i_Trig_DELA_DAC32;
input wire [31 : 0] i_Pulse_Freq_DAC32;
input wire [15 : 0] i_Pulse_Width_DAC32;
input wire [13 : 0] i_Phase_Start_DAC32;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC32 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC32;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC32 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC32;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC32, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC32 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC32;
input wire [15 : 0] i_Trig_DELA_DAC33;
input wire [31 : 0] i_Pulse_Freq_DAC33;
input wire [15 : 0] i_Pulse_Width_DAC33;
input wire [13 : 0] i_Phase_Start_DAC33;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC33 TDATA" *)
output wire [255 : 0] m_axis_tdata_DAC33;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC33 TREADY" *)
input wire [0 : 0] m_axis_tready_DAC33;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_DAC33, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_DAC33 TVALID" *)
output wire [0 : 0] m_axis_tvalid_DAC33;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC00;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC01;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC02;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC03;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC10;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC11;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC12;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC13;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC20;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC21;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC22;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC23;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC30;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC31;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC32;
output wire [15 : 0] o_Pulse_Width_Cnt_DAC33;

  DAC_Data_Gen #(
    .Trig_DELA_DEBUG("0x004B")
  ) inst (
    .Clk(Clk),
    .rstn(rstn),
    .i_Trig(i_Trig),
    .i_Trig_DELA_DAC00(i_Trig_DELA_DAC00),
    .i_Pulse_Freq_DAC00(i_Pulse_Freq_DAC00),
    .i_Pulse_Width_DAC00(i_Pulse_Width_DAC00),
    .i_Phase_Start_DAC00(i_Phase_Start_DAC00),
    .m_axis_tdata_DAC00(m_axis_tdata_DAC00),
    .m_axis_tready_DAC00(m_axis_tready_DAC00),
    .m_axis_tvalid_DAC00(m_axis_tvalid_DAC00),
    .i_Trig_DELA_DAC01(i_Trig_DELA_DAC01),
    .i_Pulse_Freq_DAC01(i_Pulse_Freq_DAC01),
    .i_Pulse_Width_DAC01(i_Pulse_Width_DAC01),
    .i_Phase_Start_DAC01(i_Phase_Start_DAC01),
    .m_axis_tdata_DAC01(m_axis_tdata_DAC01),
    .m_axis_tready_DAC01(m_axis_tready_DAC01),
    .m_axis_tvalid_DAC01(m_axis_tvalid_DAC01),
    .i_Trig_DELA_DAC02(i_Trig_DELA_DAC02),
    .i_Pulse_Freq_DAC02(i_Pulse_Freq_DAC02),
    .i_Pulse_Width_DAC02(i_Pulse_Width_DAC02),
    .i_Phase_Start_DAC02(i_Phase_Start_DAC02),
    .m_axis_tdata_DAC02(m_axis_tdata_DAC02),
    .m_axis_tready_DAC02(m_axis_tready_DAC02),
    .m_axis_tvalid_DAC02(m_axis_tvalid_DAC02),
    .i_Trig_DELA_DAC03(i_Trig_DELA_DAC03),
    .i_Pulse_Freq_DAC03(i_Pulse_Freq_DAC03),
    .i_Pulse_Width_DAC03(i_Pulse_Width_DAC03),
    .i_Phase_Start_DAC03(i_Phase_Start_DAC03),
    .m_axis_tdata_DAC03(m_axis_tdata_DAC03),
    .m_axis_tready_DAC03(m_axis_tready_DAC03),
    .m_axis_tvalid_DAC03(m_axis_tvalid_DAC03),
    .i_Trig_DELA_DAC10(i_Trig_DELA_DAC10),
    .i_Pulse_Freq_DAC10(i_Pulse_Freq_DAC10),
    .i_Pulse_Width_DAC10(i_Pulse_Width_DAC10),
    .i_Phase_Start_DAC10(i_Phase_Start_DAC10),
    .m_axis_tdata_DAC10(m_axis_tdata_DAC10),
    .m_axis_tready_DAC10(m_axis_tready_DAC10),
    .m_axis_tvalid_DAC10(m_axis_tvalid_DAC10),
    .i_Trig_DELA_DAC11(i_Trig_DELA_DAC11),
    .i_Pulse_Freq_DAC11(i_Pulse_Freq_DAC11),
    .i_Pulse_Width_DAC11(i_Pulse_Width_DAC11),
    .i_Phase_Start_DAC11(i_Phase_Start_DAC11),
    .m_axis_tdata_DAC11(m_axis_tdata_DAC11),
    .m_axis_tready_DAC11(m_axis_tready_DAC11),
    .m_axis_tvalid_DAC11(m_axis_tvalid_DAC11),
    .i_Trig_DELA_DAC12(i_Trig_DELA_DAC12),
    .i_Pulse_Freq_DAC12(i_Pulse_Freq_DAC12),
    .i_Pulse_Width_DAC12(i_Pulse_Width_DAC12),
    .i_Phase_Start_DAC12(i_Phase_Start_DAC12),
    .m_axis_tdata_DAC12(m_axis_tdata_DAC12),
    .m_axis_tready_DAC12(m_axis_tready_DAC12),
    .m_axis_tvalid_DAC12(m_axis_tvalid_DAC12),
    .i_Trig_DELA_DAC13(i_Trig_DELA_DAC13),
    .i_Pulse_Freq_DAC13(i_Pulse_Freq_DAC13),
    .i_Pulse_Width_DAC13(i_Pulse_Width_DAC13),
    .i_Phase_Start_DAC13(i_Phase_Start_DAC13),
    .m_axis_tdata_DAC13(m_axis_tdata_DAC13),
    .m_axis_tready_DAC13(m_axis_tready_DAC13),
    .m_axis_tvalid_DAC13(m_axis_tvalid_DAC13),
    .i_Trig_DELA_DAC20(i_Trig_DELA_DAC20),
    .i_Pulse_Freq_DAC20(i_Pulse_Freq_DAC20),
    .i_Pulse_Width_DAC20(i_Pulse_Width_DAC20),
    .i_Phase_Start_DAC20(i_Phase_Start_DAC20),
    .m_axis_tdata_DAC20(m_axis_tdata_DAC20),
    .m_axis_tready_DAC20(m_axis_tready_DAC20),
    .m_axis_tvalid_DAC20(m_axis_tvalid_DAC20),
    .i_Trig_DELA_DAC21(i_Trig_DELA_DAC21),
    .i_Pulse_Freq_DAC21(i_Pulse_Freq_DAC21),
    .i_Pulse_Width_DAC21(i_Pulse_Width_DAC21),
    .i_Phase_Start_DAC21(i_Phase_Start_DAC21),
    .m_axis_tdata_DAC21(m_axis_tdata_DAC21),
    .m_axis_tready_DAC21(m_axis_tready_DAC21),
    .m_axis_tvalid_DAC21(m_axis_tvalid_DAC21),
    .i_Trig_DELA_DAC22(i_Trig_DELA_DAC22),
    .i_Pulse_Freq_DAC22(i_Pulse_Freq_DAC22),
    .i_Pulse_Width_DAC22(i_Pulse_Width_DAC22),
    .i_Phase_Start_DAC22(i_Phase_Start_DAC22),
    .m_axis_tdata_DAC22(m_axis_tdata_DAC22),
    .m_axis_tready_DAC22(m_axis_tready_DAC22),
    .m_axis_tvalid_DAC22(m_axis_tvalid_DAC22),
    .i_Trig_DELA_DAC23(i_Trig_DELA_DAC23),
    .i_Pulse_Freq_DAC23(i_Pulse_Freq_DAC23),
    .i_Pulse_Width_DAC23(i_Pulse_Width_DAC23),
    .i_Phase_Start_DAC23(i_Phase_Start_DAC23),
    .m_axis_tdata_DAC23(m_axis_tdata_DAC23),
    .m_axis_tready_DAC23(m_axis_tready_DAC23),
    .m_axis_tvalid_DAC23(m_axis_tvalid_DAC23),
    .i_Trig_DELA_DAC30(i_Trig_DELA_DAC30),
    .i_Pulse_Freq_DAC30(i_Pulse_Freq_DAC30),
    .i_Pulse_Width_DAC30(i_Pulse_Width_DAC30),
    .i_Phase_Start_DAC30(i_Phase_Start_DAC30),
    .m_axis_tdata_DAC30(m_axis_tdata_DAC30),
    .m_axis_tready_DAC30(m_axis_tready_DAC30),
    .m_axis_tvalid_DAC30(m_axis_tvalid_DAC30),
    .i_Trig_DELA_DAC31(i_Trig_DELA_DAC31),
    .i_Pulse_Freq_DAC31(i_Pulse_Freq_DAC31),
    .i_Pulse_Width_DAC31(i_Pulse_Width_DAC31),
    .i_Phase_Start_DAC31(i_Phase_Start_DAC31),
    .m_axis_tdata_DAC31(m_axis_tdata_DAC31),
    .m_axis_tready_DAC31(m_axis_tready_DAC31),
    .m_axis_tvalid_DAC31(m_axis_tvalid_DAC31),
    .i_Trig_DELA_DAC32(i_Trig_DELA_DAC32),
    .i_Pulse_Freq_DAC32(i_Pulse_Freq_DAC32),
    .i_Pulse_Width_DAC32(i_Pulse_Width_DAC32),
    .i_Phase_Start_DAC32(i_Phase_Start_DAC32),
    .m_axis_tdata_DAC32(m_axis_tdata_DAC32),
    .m_axis_tready_DAC32(m_axis_tready_DAC32),
    .m_axis_tvalid_DAC32(m_axis_tvalid_DAC32),
    .i_Trig_DELA_DAC33(i_Trig_DELA_DAC33),
    .i_Pulse_Freq_DAC33(i_Pulse_Freq_DAC33),
    .i_Pulse_Width_DAC33(i_Pulse_Width_DAC33),
    .i_Phase_Start_DAC33(i_Phase_Start_DAC33),
    .m_axis_tdata_DAC33(m_axis_tdata_DAC33),
    .m_axis_tready_DAC33(m_axis_tready_DAC33),
    .m_axis_tvalid_DAC33(m_axis_tvalid_DAC33),
    .o_Pulse_Width_Cnt_DAC00(o_Pulse_Width_Cnt_DAC00),
    .o_Pulse_Width_Cnt_DAC01(o_Pulse_Width_Cnt_DAC01),
    .o_Pulse_Width_Cnt_DAC02(o_Pulse_Width_Cnt_DAC02),
    .o_Pulse_Width_Cnt_DAC03(o_Pulse_Width_Cnt_DAC03),
    .o_Pulse_Width_Cnt_DAC10(o_Pulse_Width_Cnt_DAC10),
    .o_Pulse_Width_Cnt_DAC11(o_Pulse_Width_Cnt_DAC11),
    .o_Pulse_Width_Cnt_DAC12(o_Pulse_Width_Cnt_DAC12),
    .o_Pulse_Width_Cnt_DAC13(o_Pulse_Width_Cnt_DAC13),
    .o_Pulse_Width_Cnt_DAC20(o_Pulse_Width_Cnt_DAC20),
    .o_Pulse_Width_Cnt_DAC21(o_Pulse_Width_Cnt_DAC21),
    .o_Pulse_Width_Cnt_DAC22(o_Pulse_Width_Cnt_DAC22),
    .o_Pulse_Width_Cnt_DAC23(o_Pulse_Width_Cnt_DAC23),
    .o_Pulse_Width_Cnt_DAC30(o_Pulse_Width_Cnt_DAC30),
    .o_Pulse_Width_Cnt_DAC31(o_Pulse_Width_Cnt_DAC31),
    .o_Pulse_Width_Cnt_DAC32(o_Pulse_Width_Cnt_DAC32),
    .o_Pulse_Width_Cnt_DAC33(o_Pulse_Width_Cnt_DAC33)
  );
endmodule
