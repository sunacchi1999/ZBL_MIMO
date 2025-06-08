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


// IP VLNV: xilinx.com:module_ref:CPF_Check:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_CPF_Check_0_0 (
  Clk,
  rstn,
  i_Trig,
  i_Start,
  i_Stop,
  i_Channel_Cnt,
  i_Pulse_Cnt,
  i_Frame_Cnt,
  i_Tx_PolaMode,
  i_Rx_PolaMode,
  i_Set_ControlMode,
  i_Set_FrameNum,
  i_Set_Tx_PolaMode,
  i_Set_Rx_PolaMode,
  i_Set_InterferenceMode,
  o_Work_State,
  o_Task_Over,
  o_Pulse_Cnt_Real,
  o_Frame_Cnt_Real,
  Error_Code
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET rstn, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *)
input wire [0 : 0] Clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire [0 : 0] rstn;
input wire [0 : 0] i_Trig;
input wire [0 : 0] i_Start;
input wire [0 : 0] i_Stop;
input wire [3 : 0] i_Channel_Cnt;
input wire [27 : 0] i_Pulse_Cnt;
input wire [23 : 0] i_Frame_Cnt;
input wire [0 : 0] i_Tx_PolaMode;
input wire [0 : 0] i_Rx_PolaMode;
input wire [1 : 0] i_Set_ControlMode;
input wire [23 : 0] i_Set_FrameNum;
input wire [1 : 0] i_Set_Tx_PolaMode;
input wire [1 : 0] i_Set_Rx_PolaMode;
input wire [1 : 0] i_Set_InterferenceMode;
output wire [0 : 0] o_Work_State;
output wire [0 : 0] o_Task_Over;
output wire [27 : 0] o_Pulse_Cnt_Real;
output wire [23 : 0] o_Frame_Cnt_Real;
output wire [7 : 0] Error_Code;

  CPF_Check inst (
    .Clk(Clk),
    .rstn(rstn),
    .i_Trig(i_Trig),
    .i_Start(i_Start),
    .i_Stop(i_Stop),
    .i_Channel_Cnt(i_Channel_Cnt),
    .i_Pulse_Cnt(i_Pulse_Cnt),
    .i_Frame_Cnt(i_Frame_Cnt),
    .i_Tx_PolaMode(i_Tx_PolaMode),
    .i_Rx_PolaMode(i_Rx_PolaMode),
    .i_Set_ControlMode(i_Set_ControlMode),
    .i_Set_FrameNum(i_Set_FrameNum),
    .i_Set_Tx_PolaMode(i_Set_Tx_PolaMode),
    .i_Set_Rx_PolaMode(i_Set_Rx_PolaMode),
    .i_Set_InterferenceMode(i_Set_InterferenceMode),
    .o_Work_State(o_Work_State),
    .o_Task_Over(o_Task_Over),
    .o_Pulse_Cnt_Real(o_Pulse_Cnt_Real),
    .o_Frame_Cnt_Real(o_Frame_Cnt_Real),
    .Error_Code(Error_Code)
  );
endmodule
