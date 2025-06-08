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


// IP VLNV: xilinx.com:module_ref:LVDS_Tx:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_LVDS_Tx_0_0 (
  Clk,
  rstn,
  i_Start,
  i_Stop,
  i_Set_InterferenceMode,
  i_Set_Frame_Period,
  i_Set_Pulse_Period,
  i_Set_Frame_Num,
  i_Set_Tx_PolaMode,
  i_Set_Rx_PolaMode,
  i_Set_ControlMode,
  o_DAC_Trigger,
  o_LVDS_Clk_1_p,
  o_LVDS_Clk_1_n,
  o_LVDS_Data0_p,
  o_LVDS_Data0_n,
  o_LVDS_Data1_p,
  o_LVDS_Data1_n,
  o_LVDS_Data2_p,
  o_LVDS_Data2_n,
  o_LVDS_Data3_p,
  o_LVDS_Data3_n
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET rstn, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *)
input wire [0 : 0] Clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire [0 : 0] rstn;
input wire [0 : 0] i_Start;
input wire [0 : 0] i_Stop;
input wire [1 : 0] i_Set_InterferenceMode;
input wire [31 : 0] i_Set_Frame_Period;
input wire [31 : 0] i_Set_Pulse_Period;
input wire [23 : 0] i_Set_Frame_Num;
input wire [1 : 0] i_Set_Tx_PolaMode;
input wire [1 : 0] i_Set_Rx_PolaMode;
input wire [1 : 0] i_Set_ControlMode;
output wire [0 : 0] o_DAC_Trigger;
output wire [0 : 0] o_LVDS_Clk_1_p;
output wire [0 : 0] o_LVDS_Clk_1_n;
output wire [0 : 0] o_LVDS_Data0_p;
output wire [0 : 0] o_LVDS_Data0_n;
output wire [0 : 0] o_LVDS_Data1_p;
output wire [0 : 0] o_LVDS_Data1_n;
output wire [0 : 0] o_LVDS_Data2_p;
output wire [0 : 0] o_LVDS_Data2_n;
output wire [0 : 0] o_LVDS_Data3_p;
output wire [0 : 0] o_LVDS_Data3_n;

  LVDS_Tx #(
    .DAC_TRIGGER_WIDTH_DEBUG("0xC8"),
    .Frame_Period_DEBUG("0x00000159"),
    .LVDS_Clk_Div("20"),
    .Pulse_Period_DEBUG("0x00000159")
  ) inst (
    .Clk(Clk),
    .rstn(rstn),
    .i_Start(i_Start),
    .i_Stop(i_Stop),
    .i_Set_InterferenceMode(i_Set_InterferenceMode),
    .i_Set_Frame_Period(i_Set_Frame_Period),
    .i_Set_Pulse_Period(i_Set_Pulse_Period),
    .i_Set_Frame_Num(i_Set_Frame_Num),
    .i_Set_Tx_PolaMode(i_Set_Tx_PolaMode),
    .i_Set_Rx_PolaMode(i_Set_Rx_PolaMode),
    .i_Set_ControlMode(i_Set_ControlMode),
    .o_DAC_Trigger(o_DAC_Trigger),
    .o_LVDS_Clk_1_p(o_LVDS_Clk_1_p),
    .o_LVDS_Clk_1_n(o_LVDS_Clk_1_n),
    .o_LVDS_Data0_p(o_LVDS_Data0_p),
    .o_LVDS_Data0_n(o_LVDS_Data0_n),
    .o_LVDS_Data1_p(o_LVDS_Data1_p),
    .o_LVDS_Data1_n(o_LVDS_Data1_n),
    .o_LVDS_Data2_p(o_LVDS_Data2_p),
    .o_LVDS_Data2_n(o_LVDS_Data2_n),
    .o_LVDS_Data3_p(o_LVDS_Data3_p),
    .o_LVDS_Data3_n(o_LVDS_Data3_n)
  );
endmodule
