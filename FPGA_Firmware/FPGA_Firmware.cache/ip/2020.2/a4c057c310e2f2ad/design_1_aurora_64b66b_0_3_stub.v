// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  6 15:49:22 2025
// Host        : ZBL_Thinkbook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_aurora_64b66b_0_3_stub.v
// Design      : design_1_aurora_64b66b_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu49dr-ffvf1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "aurora_64b66b_v12_0_3, Coregen v14.3_ip3, Number of lanes = 4, Line rate is double25.0Gbps, Reference Clock is double156.25MHz, Interface is Framing, Flow Control is None and is operating in DUPLEX configuration" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_tx_tdata, s_axi_tx_tlast, 
  s_axi_tx_tkeep, s_axi_tx_tvalid, s_axi_tx_tready, txp, txn, gt_refclk1_p, gt_refclk1_n, 
  gt_refclk1_out, tx_hard_err, tx_soft_err, tx_channel_up, tx_lane_up, user_clk_out, 
  mmcm_not_locked_out, reset2fg, sync_clk_out, reset_pb, gt_rxcdrovrden_in, power_down, 
  pma_init, gt_pll_lock, init_clk, link_reset_out, gt_powergood, gt_qpllclk_quad1_out, 
  gt_qpllrefclk_quad1_out, gt_qplllock_quad1_out, gt_qpllrefclklost_quad1_out, 
  sys_reset_out, gt_reset_out, tx_out_clk)
/* synthesis syn_black_box black_box_pad_pin="s_axi_tx_tdata[255:0],s_axi_tx_tlast,s_axi_tx_tkeep[31:0],s_axi_tx_tvalid,s_axi_tx_tready,txp[0:3],txn[0:3],gt_refclk1_p,gt_refclk1_n,gt_refclk1_out,tx_hard_err,tx_soft_err,tx_channel_up,tx_lane_up[0:3],user_clk_out,mmcm_not_locked_out,reset2fg,sync_clk_out,reset_pb,gt_rxcdrovrden_in,power_down,pma_init,gt_pll_lock,init_clk,link_reset_out,gt_powergood[3:0],gt_qpllclk_quad1_out,gt_qpllrefclk_quad1_out,gt_qplllock_quad1_out,gt_qpllrefclklost_quad1_out,sys_reset_out,gt_reset_out,tx_out_clk" */;
  input [255:0]s_axi_tx_tdata;
  input s_axi_tx_tlast;
  input [31:0]s_axi_tx_tkeep;
  input s_axi_tx_tvalid;
  output s_axi_tx_tready;
  output [0:3]txp;
  output [0:3]txn;
  input gt_refclk1_p;
  input gt_refclk1_n;
  output gt_refclk1_out;
  output tx_hard_err;
  output tx_soft_err;
  output tx_channel_up;
  output [0:3]tx_lane_up;
  output user_clk_out;
  output mmcm_not_locked_out;
  output reset2fg;
  output sync_clk_out;
  input reset_pb;
  input gt_rxcdrovrden_in;
  input power_down;
  input pma_init;
  output gt_pll_lock;
  input init_clk;
  output link_reset_out;
  output [3:0]gt_powergood;
  output gt_qpllclk_quad1_out;
  output gt_qpllrefclk_quad1_out;
  output gt_qplllock_quad1_out;
  output gt_qpllrefclklost_quad1_out;
  output sys_reset_out;
  output gt_reset_out;
  output tx_out_clk;
endmodule
