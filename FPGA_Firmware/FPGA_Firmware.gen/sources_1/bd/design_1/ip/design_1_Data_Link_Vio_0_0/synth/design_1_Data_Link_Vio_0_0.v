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


// IP VLNV: xilinx.com:module_ref:Data_Link_Vio:1.0
// IP Revision: 1

(* X_CORE_INFO = "Data_Link_Vio,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "design_1_Data_Link_Vio_0_0,Data_Link_Vio,{}" *)
(* CORE_GENERATION_INFO = "design_1_Data_Link_Vio_0_0,Data_Link_Vio,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Data_Link_Vio,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,Trig_DELA_DEBUG=0x0002}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_Data_Link_Vio_0_0 (
  Clk,
  rstn,
  i_Trig,
  i_Trig_DELA_ADC00,
  i_Pulse_Width_ADC00,
  i_Phase_Start_ADC00,
  m_axis_tdata_ADC00,
  m_axis_tready_ADC00,
  m_axis_tvalid_ADC00,
  i_Trig_DELA_ADC01,
  i_Pulse_Width_ADC01,
  i_Phase_Start_ADC01,
  m_axis_tdata_ADC01,
  m_axis_tready_ADC01,
  m_axis_tvalid_ADC01,
  i_Trig_DELA_ADC02,
  i_Pulse_Width_ADC02,
  i_Phase_Start_ADC02,
  m_axis_tdata_ADC02,
  m_axis_tready_ADC02,
  m_axis_tvalid_ADC02,
  i_Trig_DELA_ADC03,
  i_Pulse_Width_ADC03,
  i_Phase_Start_ADC03,
  m_axis_tdata_ADC03,
  m_axis_tready_ADC03,
  m_axis_tvalid_ADC03,
  i_Trig_DELA_ADC10,
  i_Pulse_Width_ADC10,
  i_Phase_Start_ADC10,
  m_axis_tdata_ADC10,
  m_axis_tready_ADC10,
  m_axis_tvalid_ADC10,
  i_Trig_DELA_ADC11,
  i_Pulse_Width_ADC11,
  i_Phase_Start_ADC11,
  m_axis_tdata_ADC11,
  m_axis_tready_ADC11,
  m_axis_tvalid_ADC11,
  i_Trig_DELA_ADC12,
  i_Pulse_Width_ADC12,
  i_Phase_Start_ADC12,
  m_axis_tdata_ADC12,
  m_axis_tready_ADC12,
  m_axis_tvalid_ADC12,
  i_Trig_DELA_ADC13,
  i_Pulse_Width_ADC13,
  i_Phase_Start_ADC13,
  m_axis_tdata_ADC13,
  m_axis_tready_ADC13,
  m_axis_tvalid_ADC13,
  i_Trig_DELA_ADC20,
  i_Pulse_Width_ADC20,
  i_Phase_Start_ADC20,
  m_axis_tdata_ADC20,
  m_axis_tready_ADC20,
  m_axis_tvalid_ADC20,
  i_Trig_DELA_ADC21,
  i_Pulse_Width_ADC21,
  i_Phase_Start_ADC21,
  m_axis_tdata_ADC21,
  m_axis_tready_ADC21,
  m_axis_tvalid_ADC21,
  i_Trig_DELA_ADC22,
  i_Pulse_Width_ADC22,
  i_Phase_Start_ADC22,
  m_axis_tdata_ADC22,
  m_axis_tready_ADC22,
  m_axis_tvalid_ADC22,
  i_Trig_DELA_ADC23,
  i_Pulse_Width_ADC23,
  i_Phase_Start_ADC23,
  m_axis_tdata_ADC23,
  m_axis_tready_ADC23,
  m_axis_tvalid_ADC23,
  i_Trig_DELA_ADC30,
  i_Pulse_Width_ADC30,
  i_Phase_Start_ADC30,
  m_axis_tdata_ADC30,
  m_axis_tready_ADC30,
  m_axis_tvalid_ADC30,
  i_Trig_DELA_ADC31,
  i_Pulse_Width_ADC31,
  i_Phase_Start_ADC31,
  m_axis_tdata_ADC31,
  m_axis_tready_ADC31,
  m_axis_tvalid_ADC31,
  i_Trig_DELA_ADC32,
  i_Pulse_Width_ADC32,
  i_Phase_Start_ADC32,
  m_axis_tdata_ADC32,
  m_axis_tready_ADC32,
  m_axis_tvalid_ADC32,
  i_Trig_DELA_ADC33,
  i_Pulse_Width_ADC33,
  i_Phase_Start_ADC33,
  m_axis_tdata_ADC33,
  m_axis_tready_ADC33,
  m_axis_tvalid_ADC33
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_BUSIF m_axis_ADC00:m_axis_ADC01:m_axis_ADC02:m_axis_ADC03:m_axis_ADC10:m_axis_ADC11:m_axis_ADC12:m_axis_ADC13:m_axis_ADC20:m_axis_ADC21:m_axis_ADC22:m_axis_ADC23:m_axis_ADC30:m_axis_ADC31:m_axis_ADC32:m_axis_ADC33, ASSOCIATED_RESET rstn, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *)
input wire [0 : 0] Clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire [0 : 0] rstn;
input wire [0 : 0] i_Trig;
input wire [15 : 0] i_Trig_DELA_ADC00;
input wire [15 : 0] i_Pulse_Width_ADC00;
input wire [15 : 0] i_Phase_Start_ADC00;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC00 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC00;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC00 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC00, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC00 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC00;
input wire [15 : 0] i_Trig_DELA_ADC01;
input wire [15 : 0] i_Pulse_Width_ADC01;
input wire [15 : 0] i_Phase_Start_ADC01;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC01 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC01;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC01 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC01;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC01, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC01 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC01;
input wire [15 : 0] i_Trig_DELA_ADC02;
input wire [15 : 0] i_Pulse_Width_ADC02;
input wire [15 : 0] i_Phase_Start_ADC02;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC02 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC02;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC02 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC02;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC02, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC02 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC02;
input wire [15 : 0] i_Trig_DELA_ADC03;
input wire [15 : 0] i_Pulse_Width_ADC03;
input wire [15 : 0] i_Phase_Start_ADC03;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC03 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC03;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC03 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC03;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC03, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC03 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC03;
input wire [15 : 0] i_Trig_DELA_ADC10;
input wire [15 : 0] i_Pulse_Width_ADC10;
input wire [15 : 0] i_Phase_Start_ADC10;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC10 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC10;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC10 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC10;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC10, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC10 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC10;
input wire [15 : 0] i_Trig_DELA_ADC11;
input wire [15 : 0] i_Pulse_Width_ADC11;
input wire [15 : 0] i_Phase_Start_ADC11;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC11 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC11;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC11 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC11;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC11, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC11 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC11;
input wire [15 : 0] i_Trig_DELA_ADC12;
input wire [15 : 0] i_Pulse_Width_ADC12;
input wire [15 : 0] i_Phase_Start_ADC12;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC12 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC12;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC12 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC12;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC12, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC12 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC12;
input wire [15 : 0] i_Trig_DELA_ADC13;
input wire [15 : 0] i_Pulse_Width_ADC13;
input wire [15 : 0] i_Phase_Start_ADC13;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC13 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC13;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC13 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC13;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC13, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC13 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC13;
input wire [15 : 0] i_Trig_DELA_ADC20;
input wire [15 : 0] i_Pulse_Width_ADC20;
input wire [15 : 0] i_Phase_Start_ADC20;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC20 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC20;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC20 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC20;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC20, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC20 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC20;
input wire [15 : 0] i_Trig_DELA_ADC21;
input wire [15 : 0] i_Pulse_Width_ADC21;
input wire [15 : 0] i_Phase_Start_ADC21;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC21 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC21;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC21 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC21;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC21, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC21 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC21;
input wire [15 : 0] i_Trig_DELA_ADC22;
input wire [15 : 0] i_Pulse_Width_ADC22;
input wire [15 : 0] i_Phase_Start_ADC22;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC22 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC22;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC22 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC22;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC22, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC22 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC22;
input wire [15 : 0] i_Trig_DELA_ADC23;
input wire [15 : 0] i_Pulse_Width_ADC23;
input wire [15 : 0] i_Phase_Start_ADC23;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC23 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC23;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC23 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC23;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC23, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC23 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC23;
input wire [15 : 0] i_Trig_DELA_ADC30;
input wire [15 : 0] i_Pulse_Width_ADC30;
input wire [15 : 0] i_Phase_Start_ADC30;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC30 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC30;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC30 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC30;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC30, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC30 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC30;
input wire [15 : 0] i_Trig_DELA_ADC31;
input wire [15 : 0] i_Pulse_Width_ADC31;
input wire [15 : 0] i_Phase_Start_ADC31;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC31 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC31;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC31 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC31;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC31, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC31 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC31;
input wire [15 : 0] i_Trig_DELA_ADC32;
input wire [15 : 0] i_Pulse_Width_ADC32;
input wire [15 : 0] i_Phase_Start_ADC32;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC32 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC32;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC32 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC32;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC32, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC32 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC32;
input wire [15 : 0] i_Trig_DELA_ADC33;
input wire [15 : 0] i_Pulse_Width_ADC33;
input wire [15 : 0] i_Phase_Start_ADC33;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC33 TDATA" *)
output wire [79 : 0] m_axis_tdata_ADC33;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC33 TREADY" *)
input wire [0 : 0] m_axis_tready_ADC33;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_ADC33, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_ADC33 TVALID" *)
output wire [0 : 0] m_axis_tvalid_ADC33;

  Data_Link_Vio #(
    .Trig_DELA_DEBUG("0x0002")
  ) inst (
    .Clk(Clk),
    .rstn(rstn),
    .i_Trig(i_Trig),
    .i_Trig_DELA_ADC00(i_Trig_DELA_ADC00),
    .i_Pulse_Width_ADC00(i_Pulse_Width_ADC00),
    .i_Phase_Start_ADC00(i_Phase_Start_ADC00),
    .m_axis_tdata_ADC00(m_axis_tdata_ADC00),
    .m_axis_tready_ADC00(m_axis_tready_ADC00),
    .m_axis_tvalid_ADC00(m_axis_tvalid_ADC00),
    .i_Trig_DELA_ADC01(i_Trig_DELA_ADC01),
    .i_Pulse_Width_ADC01(i_Pulse_Width_ADC01),
    .i_Phase_Start_ADC01(i_Phase_Start_ADC01),
    .m_axis_tdata_ADC01(m_axis_tdata_ADC01),
    .m_axis_tready_ADC01(m_axis_tready_ADC01),
    .m_axis_tvalid_ADC01(m_axis_tvalid_ADC01),
    .i_Trig_DELA_ADC02(i_Trig_DELA_ADC02),
    .i_Pulse_Width_ADC02(i_Pulse_Width_ADC02),
    .i_Phase_Start_ADC02(i_Phase_Start_ADC02),
    .m_axis_tdata_ADC02(m_axis_tdata_ADC02),
    .m_axis_tready_ADC02(m_axis_tready_ADC02),
    .m_axis_tvalid_ADC02(m_axis_tvalid_ADC02),
    .i_Trig_DELA_ADC03(i_Trig_DELA_ADC03),
    .i_Pulse_Width_ADC03(i_Pulse_Width_ADC03),
    .i_Phase_Start_ADC03(i_Phase_Start_ADC03),
    .m_axis_tdata_ADC03(m_axis_tdata_ADC03),
    .m_axis_tready_ADC03(m_axis_tready_ADC03),
    .m_axis_tvalid_ADC03(m_axis_tvalid_ADC03),
    .i_Trig_DELA_ADC10(i_Trig_DELA_ADC10),
    .i_Pulse_Width_ADC10(i_Pulse_Width_ADC10),
    .i_Phase_Start_ADC10(i_Phase_Start_ADC10),
    .m_axis_tdata_ADC10(m_axis_tdata_ADC10),
    .m_axis_tready_ADC10(m_axis_tready_ADC10),
    .m_axis_tvalid_ADC10(m_axis_tvalid_ADC10),
    .i_Trig_DELA_ADC11(i_Trig_DELA_ADC11),
    .i_Pulse_Width_ADC11(i_Pulse_Width_ADC11),
    .i_Phase_Start_ADC11(i_Phase_Start_ADC11),
    .m_axis_tdata_ADC11(m_axis_tdata_ADC11),
    .m_axis_tready_ADC11(m_axis_tready_ADC11),
    .m_axis_tvalid_ADC11(m_axis_tvalid_ADC11),
    .i_Trig_DELA_ADC12(i_Trig_DELA_ADC12),
    .i_Pulse_Width_ADC12(i_Pulse_Width_ADC12),
    .i_Phase_Start_ADC12(i_Phase_Start_ADC12),
    .m_axis_tdata_ADC12(m_axis_tdata_ADC12),
    .m_axis_tready_ADC12(m_axis_tready_ADC12),
    .m_axis_tvalid_ADC12(m_axis_tvalid_ADC12),
    .i_Trig_DELA_ADC13(i_Trig_DELA_ADC13),
    .i_Pulse_Width_ADC13(i_Pulse_Width_ADC13),
    .i_Phase_Start_ADC13(i_Phase_Start_ADC13),
    .m_axis_tdata_ADC13(m_axis_tdata_ADC13),
    .m_axis_tready_ADC13(m_axis_tready_ADC13),
    .m_axis_tvalid_ADC13(m_axis_tvalid_ADC13),
    .i_Trig_DELA_ADC20(i_Trig_DELA_ADC20),
    .i_Pulse_Width_ADC20(i_Pulse_Width_ADC20),
    .i_Phase_Start_ADC20(i_Phase_Start_ADC20),
    .m_axis_tdata_ADC20(m_axis_tdata_ADC20),
    .m_axis_tready_ADC20(m_axis_tready_ADC20),
    .m_axis_tvalid_ADC20(m_axis_tvalid_ADC20),
    .i_Trig_DELA_ADC21(i_Trig_DELA_ADC21),
    .i_Pulse_Width_ADC21(i_Pulse_Width_ADC21),
    .i_Phase_Start_ADC21(i_Phase_Start_ADC21),
    .m_axis_tdata_ADC21(m_axis_tdata_ADC21),
    .m_axis_tready_ADC21(m_axis_tready_ADC21),
    .m_axis_tvalid_ADC21(m_axis_tvalid_ADC21),
    .i_Trig_DELA_ADC22(i_Trig_DELA_ADC22),
    .i_Pulse_Width_ADC22(i_Pulse_Width_ADC22),
    .i_Phase_Start_ADC22(i_Phase_Start_ADC22),
    .m_axis_tdata_ADC22(m_axis_tdata_ADC22),
    .m_axis_tready_ADC22(m_axis_tready_ADC22),
    .m_axis_tvalid_ADC22(m_axis_tvalid_ADC22),
    .i_Trig_DELA_ADC23(i_Trig_DELA_ADC23),
    .i_Pulse_Width_ADC23(i_Pulse_Width_ADC23),
    .i_Phase_Start_ADC23(i_Phase_Start_ADC23),
    .m_axis_tdata_ADC23(m_axis_tdata_ADC23),
    .m_axis_tready_ADC23(m_axis_tready_ADC23),
    .m_axis_tvalid_ADC23(m_axis_tvalid_ADC23),
    .i_Trig_DELA_ADC30(i_Trig_DELA_ADC30),
    .i_Pulse_Width_ADC30(i_Pulse_Width_ADC30),
    .i_Phase_Start_ADC30(i_Phase_Start_ADC30),
    .m_axis_tdata_ADC30(m_axis_tdata_ADC30),
    .m_axis_tready_ADC30(m_axis_tready_ADC30),
    .m_axis_tvalid_ADC30(m_axis_tvalid_ADC30),
    .i_Trig_DELA_ADC31(i_Trig_DELA_ADC31),
    .i_Pulse_Width_ADC31(i_Pulse_Width_ADC31),
    .i_Phase_Start_ADC31(i_Phase_Start_ADC31),
    .m_axis_tdata_ADC31(m_axis_tdata_ADC31),
    .m_axis_tready_ADC31(m_axis_tready_ADC31),
    .m_axis_tvalid_ADC31(m_axis_tvalid_ADC31),
    .i_Trig_DELA_ADC32(i_Trig_DELA_ADC32),
    .i_Pulse_Width_ADC32(i_Pulse_Width_ADC32),
    .i_Phase_Start_ADC32(i_Phase_Start_ADC32),
    .m_axis_tdata_ADC32(m_axis_tdata_ADC32),
    .m_axis_tready_ADC32(m_axis_tready_ADC32),
    .m_axis_tvalid_ADC32(m_axis_tvalid_ADC32),
    .i_Trig_DELA_ADC33(i_Trig_DELA_ADC33),
    .i_Pulse_Width_ADC33(i_Pulse_Width_ADC33),
    .i_Phase_Start_ADC33(i_Phase_Start_ADC33),
    .m_axis_tdata_ADC33(m_axis_tdata_ADC33),
    .m_axis_tready_ADC33(m_axis_tready_ADC33),
    .m_axis_tvalid_ADC33(m_axis_tvalid_ADC33)
  );
endmodule
