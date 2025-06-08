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


// IP VLNV: xilinx.com:module_ref:Down_Sampling:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_Down_Sampling_0_0 (
  Clk,
  rstn,
  i_Trig,
  i_Sample_Interval,
  i_Trig_DELA,
  i_Sample_Start,
  i_Sample_Start01234,
  i_Sample_Num,
  s_axis_tdata_ADC00,
  s_axis_tready_ADC00,
  s_axis_tvalid_ADC00,
  s_axis_tdata_ADC01,
  s_axis_tready_ADC01,
  s_axis_tvalid_ADC01,
  s_axis_tdata_ADC02,
  s_axis_tready_ADC02,
  s_axis_tvalid_ADC02,
  s_axis_tdata_ADC03,
  s_axis_tready_ADC03,
  s_axis_tvalid_ADC03,
  s_axis_tdata_ADC10,
  s_axis_tready_ADC10,
  s_axis_tvalid_ADC10,
  s_axis_tdata_ADC11,
  s_axis_tready_ADC11,
  s_axis_tvalid_ADC11,
  s_axis_tdata_ADC12,
  s_axis_tready_ADC12,
  s_axis_tvalid_ADC12,
  s_axis_tdata_ADC13,
  s_axis_tready_ADC13,
  s_axis_tvalid_ADC13,
  s_axis_tdata_ADC20,
  s_axis_tready_ADC20,
  s_axis_tvalid_ADC20,
  s_axis_tdata_ADC21,
  s_axis_tready_ADC21,
  s_axis_tvalid_ADC21,
  s_axis_tdata_ADC22,
  s_axis_tready_ADC22,
  s_axis_tvalid_ADC22,
  s_axis_tdata_ADC23,
  s_axis_tready_ADC23,
  s_axis_tvalid_ADC23,
  s_axis_tdata_ADC30,
  s_axis_tready_ADC30,
  s_axis_tvalid_ADC30,
  s_axis_tdata_ADC31,
  s_axis_tready_ADC31,
  s_axis_tvalid_ADC31,
  s_axis_tdata_ADC32,
  s_axis_tready_ADC32,
  s_axis_tvalid_ADC32,
  s_axis_tdata_ADC33,
  s_axis_tready_ADC33,
  s_axis_tvalid_ADC33,
  Clk_Aurora_User,
  i_Trig_DELA_RD,
  i_Aurora_Channel_UP,
  i_Channel_Cnt,
  i_Pulse_Cnt,
  i_Frame_Cnt,
  i_Tx_PolaMode,
  i_Rx_PolaMode,
  i_Set_LFMW_CenterFrequency,
  i_Set_LFMW_BandWidth,
  i_Set_LFMW_Slope,
  i_Set_LFMW_PulsePeriod,
  i_Set_LFMW_FramePeriod,
  i_Set_ControlMode,
  i_Set_FrameNum,
  i_Set_SignalDelay,
  i_Set_Tx_PolaMode,
  i_Set_Rx_PolaMode,
  i_Set_InterferenceMode,
  m_axi_tx_tdata,
  m_axi_tx_ready,
  m_axi_tx_tvalid,
  m_axi_tx_tkeep,
  m_axi_tx_tlast
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_BUSIF m_axi_tx:s_axis_ADC00:s_axis_ADC01:s_axis_ADC02:s_axis_ADC03:s_axis_ADC10:s_axis_ADC11:s_axis_ADC12:s_axis_ADC13:s_axis_ADC20:s_axis_ADC21:s_axis_ADC22:s_axis_ADC23:s_axis_ADC30:s_axis_ADC31:s_axis_ADC32:s_axis_ADC33, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *)
input wire Clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
input wire i_Trig;
input wire [7 : 0] i_Sample_Interval;
input wire [15 : 0] i_Trig_DELA;
input wire [15 : 0] i_Sample_Start;
input wire [3 : 0] i_Sample_Start01234;
input wire [19 : 0] i_Sample_Num;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC00 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC00;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC00 TREADY" *)
output wire s_axis_tready_ADC00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC00, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC00 TVALID" *)
input wire s_axis_tvalid_ADC00;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC01 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC01;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC01 TREADY" *)
output wire s_axis_tready_ADC01;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC01, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC01 TVALID" *)
input wire s_axis_tvalid_ADC01;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC02 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC02;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC02 TREADY" *)
output wire s_axis_tready_ADC02;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC02, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC02 TVALID" *)
input wire s_axis_tvalid_ADC02;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC03 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC03;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC03 TREADY" *)
output wire s_axis_tready_ADC03;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC03, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC03 TVALID" *)
input wire s_axis_tvalid_ADC03;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC10 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC10;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC10 TREADY" *)
output wire s_axis_tready_ADC10;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC10, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC10 TVALID" *)
input wire s_axis_tvalid_ADC10;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC11 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC11;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC11 TREADY" *)
output wire s_axis_tready_ADC11;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC11, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC11 TVALID" *)
input wire s_axis_tvalid_ADC11;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC12 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC12;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC12 TREADY" *)
output wire s_axis_tready_ADC12;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC12, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC12 TVALID" *)
input wire s_axis_tvalid_ADC12;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC13 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC13;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC13 TREADY" *)
output wire s_axis_tready_ADC13;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC13, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC13 TVALID" *)
input wire s_axis_tvalid_ADC13;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC20 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC20;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC20 TREADY" *)
output wire s_axis_tready_ADC20;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC20, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC20 TVALID" *)
input wire s_axis_tvalid_ADC20;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC21 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC21;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC21 TREADY" *)
output wire s_axis_tready_ADC21;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC21, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC21 TVALID" *)
input wire s_axis_tvalid_ADC21;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC22 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC22;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC22 TREADY" *)
output wire s_axis_tready_ADC22;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC22, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC22 TVALID" *)
input wire s_axis_tvalid_ADC22;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC23 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC23;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC23 TREADY" *)
output wire s_axis_tready_ADC23;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC23, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC23 TVALID" *)
input wire s_axis_tvalid_ADC23;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC30 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC30;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC30 TREADY" *)
output wire s_axis_tready_ADC30;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC30, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC30 TVALID" *)
input wire s_axis_tvalid_ADC30;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC31 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC31;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC31 TREADY" *)
output wire s_axis_tready_ADC31;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC31, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC31 TVALID" *)
input wire s_axis_tvalid_ADC31;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC32 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC32;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC32 TREADY" *)
output wire s_axis_tready_ADC32;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC32, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC32 TVALID" *)
input wire s_axis_tvalid_ADC32;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC33 TDATA" *)
input wire [79 : 0] s_axis_tdata_ADC33;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC33 TREADY" *)
output wire s_axis_tready_ADC33;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ADC33, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_ADC33 TVALID" *)
input wire s_axis_tvalid_ADC33;
input wire Clk_Aurora_User;
input wire [15 : 0] i_Trig_DELA_RD;
input wire i_Aurora_Channel_UP;
input wire [3 : 0] i_Channel_Cnt;
input wire [27 : 0] i_Pulse_Cnt;
input wire [23 : 0] i_Frame_Cnt;
input wire i_Tx_PolaMode;
input wire i_Rx_PolaMode;
input wire [25 : 0] i_Set_LFMW_CenterFrequency;
input wire [20 : 0] i_Set_LFMW_BandWidth;
input wire [25 : 0] i_Set_LFMW_Slope;
input wire [11 : 0] i_Set_LFMW_PulsePeriod;
input wire [15 : 0] i_Set_LFMW_FramePeriod;
input wire [1 : 0] i_Set_ControlMode;
input wire [23 : 0] i_Set_FrameNum;
input wire [8 : 0] i_Set_SignalDelay;
input wire [1 : 0] i_Set_Tx_PolaMode;
input wire [1 : 0] i_Set_Rx_PolaMode;
input wire [1 : 0] i_Set_InterferenceMode;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axi_tx TDATA" *)
output wire [255 : 0] m_axi_tx_tdata;
input wire m_axi_tx_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axi_tx TVALID" *)
output wire m_axi_tx_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axi_tx TKEEP" *)
output wire [31 : 0] m_axi_tx_tkeep;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_tx, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axi_tx TLAST" *)
output wire m_axi_tx_tlast;

  Down_Sampling #(
    .Trig_DELA_DEBUG(16'H0001)
  ) inst (
    .Clk(Clk),
    .rstn(rstn),
    .i_Trig(i_Trig),
    .i_Sample_Interval(i_Sample_Interval),
    .i_Trig_DELA(i_Trig_DELA),
    .i_Sample_Start(i_Sample_Start),
    .i_Sample_Start01234(i_Sample_Start01234),
    .i_Sample_Num(i_Sample_Num),
    .s_axis_tdata_ADC00(s_axis_tdata_ADC00),
    .s_axis_tready_ADC00(s_axis_tready_ADC00),
    .s_axis_tvalid_ADC00(s_axis_tvalid_ADC00),
    .s_axis_tdata_ADC01(s_axis_tdata_ADC01),
    .s_axis_tready_ADC01(s_axis_tready_ADC01),
    .s_axis_tvalid_ADC01(s_axis_tvalid_ADC01),
    .s_axis_tdata_ADC02(s_axis_tdata_ADC02),
    .s_axis_tready_ADC02(s_axis_tready_ADC02),
    .s_axis_tvalid_ADC02(s_axis_tvalid_ADC02),
    .s_axis_tdata_ADC03(s_axis_tdata_ADC03),
    .s_axis_tready_ADC03(s_axis_tready_ADC03),
    .s_axis_tvalid_ADC03(s_axis_tvalid_ADC03),
    .s_axis_tdata_ADC10(s_axis_tdata_ADC10),
    .s_axis_tready_ADC10(s_axis_tready_ADC10),
    .s_axis_tvalid_ADC10(s_axis_tvalid_ADC10),
    .s_axis_tdata_ADC11(s_axis_tdata_ADC11),
    .s_axis_tready_ADC11(s_axis_tready_ADC11),
    .s_axis_tvalid_ADC11(s_axis_tvalid_ADC11),
    .s_axis_tdata_ADC12(s_axis_tdata_ADC12),
    .s_axis_tready_ADC12(s_axis_tready_ADC12),
    .s_axis_tvalid_ADC12(s_axis_tvalid_ADC12),
    .s_axis_tdata_ADC13(s_axis_tdata_ADC13),
    .s_axis_tready_ADC13(s_axis_tready_ADC13),
    .s_axis_tvalid_ADC13(s_axis_tvalid_ADC13),
    .s_axis_tdata_ADC20(s_axis_tdata_ADC20),
    .s_axis_tready_ADC20(s_axis_tready_ADC20),
    .s_axis_tvalid_ADC20(s_axis_tvalid_ADC20),
    .s_axis_tdata_ADC21(s_axis_tdata_ADC21),
    .s_axis_tready_ADC21(s_axis_tready_ADC21),
    .s_axis_tvalid_ADC21(s_axis_tvalid_ADC21),
    .s_axis_tdata_ADC22(s_axis_tdata_ADC22),
    .s_axis_tready_ADC22(s_axis_tready_ADC22),
    .s_axis_tvalid_ADC22(s_axis_tvalid_ADC22),
    .s_axis_tdata_ADC23(s_axis_tdata_ADC23),
    .s_axis_tready_ADC23(s_axis_tready_ADC23),
    .s_axis_tvalid_ADC23(s_axis_tvalid_ADC23),
    .s_axis_tdata_ADC30(s_axis_tdata_ADC30),
    .s_axis_tready_ADC30(s_axis_tready_ADC30),
    .s_axis_tvalid_ADC30(s_axis_tvalid_ADC30),
    .s_axis_tdata_ADC31(s_axis_tdata_ADC31),
    .s_axis_tready_ADC31(s_axis_tready_ADC31),
    .s_axis_tvalid_ADC31(s_axis_tvalid_ADC31),
    .s_axis_tdata_ADC32(s_axis_tdata_ADC32),
    .s_axis_tready_ADC32(s_axis_tready_ADC32),
    .s_axis_tvalid_ADC32(s_axis_tvalid_ADC32),
    .s_axis_tdata_ADC33(s_axis_tdata_ADC33),
    .s_axis_tready_ADC33(s_axis_tready_ADC33),
    .s_axis_tvalid_ADC33(s_axis_tvalid_ADC33),
    .Clk_Aurora_User(Clk_Aurora_User),
    .i_Trig_DELA_RD(i_Trig_DELA_RD),
    .i_Aurora_Channel_UP(i_Aurora_Channel_UP),
    .i_Channel_Cnt(i_Channel_Cnt),
    .i_Pulse_Cnt(i_Pulse_Cnt),
    .i_Frame_Cnt(i_Frame_Cnt),
    .i_Tx_PolaMode(i_Tx_PolaMode),
    .i_Rx_PolaMode(i_Rx_PolaMode),
    .i_Set_LFMW_CenterFrequency(i_Set_LFMW_CenterFrequency),
    .i_Set_LFMW_BandWidth(i_Set_LFMW_BandWidth),
    .i_Set_LFMW_Slope(i_Set_LFMW_Slope),
    .i_Set_LFMW_PulsePeriod(i_Set_LFMW_PulsePeriod),
    .i_Set_LFMW_FramePeriod(i_Set_LFMW_FramePeriod),
    .i_Set_ControlMode(i_Set_ControlMode),
    .i_Set_FrameNum(i_Set_FrameNum),
    .i_Set_SignalDelay(i_Set_SignalDelay),
    .i_Set_Tx_PolaMode(i_Set_Tx_PolaMode),
    .i_Set_Rx_PolaMode(i_Set_Rx_PolaMode),
    .i_Set_InterferenceMode(i_Set_InterferenceMode),
    .m_axi_tx_tdata(m_axi_tx_tdata),
    .m_axi_tx_ready(m_axi_tx_ready),
    .m_axi_tx_tvalid(m_axi_tx_tvalid),
    .m_axi_tx_tkeep(m_axi_tx_tkeep),
    .m_axi_tx_tlast(m_axi_tx_tlast)
  );
endmodule
