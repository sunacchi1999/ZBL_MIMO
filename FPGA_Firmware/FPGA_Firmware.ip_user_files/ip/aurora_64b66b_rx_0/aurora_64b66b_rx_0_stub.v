// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  6 09:55:21 2025
// Host        : ZBL_Thinkbook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/ZBL_MIMO/FPGA_Firmware/FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0_stub.v
// Design      : aurora_64b66b_rx_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu49dr-ffvf1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "aurora_64b66b_v12_0_3, Coregen v14.3_ip3, Number of lanes = 4, Line rate is double25.0Gbps, Reference Clock is double156.25MHz, Interface is Framing, Flow Control is None and is operating in DUPLEX configuration" *)
module aurora_64b66b_rx_0(m_axi_rx_tdata, m_axi_rx_tlast, 
  m_axi_rx_tkeep, m_axi_rx_tvalid, rxp, rxn, gt_refclk1_p, gt_refclk1_n, gt_refclk1_out, 
  rx_hard_err, rx_soft_err, rx_channel_up, rx_lane_up, user_clk_out, mmcm_not_locked_out, 
  reset2fc, reset_pb, gt_rxcdrovrden_in, power_down, pma_init, gt_pll_lock, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_awaddr_lane1, s_axi_awvalid_lane1, 
  s_axi_awready_lane1, s_axi_awaddr_lane2, s_axi_awvalid_lane2, s_axi_awready_lane2, 
  s_axi_awaddr_lane3, s_axi_awvalid_lane3, s_axi_awready_lane3, s_axi_wdata, s_axi_wstrb, 
  s_axi_wvalid, s_axi_wready, s_axi_bvalid, s_axi_bresp, s_axi_bready, s_axi_wdata_lane1, 
  s_axi_wstrb_lane1, s_axi_wvalid_lane1, s_axi_wready_lane1, s_axi_bvalid_lane1, 
  s_axi_bresp_lane1, s_axi_bready_lane1, s_axi_wdata_lane2, s_axi_wstrb_lane2, 
  s_axi_wvalid_lane2, s_axi_wready_lane2, s_axi_bvalid_lane2, s_axi_bresp_lane2, 
  s_axi_bready_lane2, s_axi_wdata_lane3, s_axi_wstrb_lane3, s_axi_wvalid_lane3, 
  s_axi_wready_lane3, s_axi_bvalid_lane3, s_axi_bresp_lane3, s_axi_bready_lane3, 
  s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_araddr_lane1, s_axi_arvalid_lane1, 
  s_axi_arready_lane1, s_axi_araddr_lane2, s_axi_arvalid_lane2, s_axi_arready_lane2, 
  s_axi_araddr_lane3, s_axi_arvalid_lane3, s_axi_arready_lane3, s_axi_rdata, s_axi_rvalid, 
  s_axi_rresp, s_axi_rready, s_axi_rdata_lane1, s_axi_rvalid_lane1, s_axi_rresp_lane1, 
  s_axi_rready_lane1, s_axi_rdata_lane2, s_axi_rvalid_lane2, s_axi_rresp_lane2, 
  s_axi_rready_lane2, s_axi_rdata_lane3, s_axi_rvalid_lane3, s_axi_rresp_lane3, 
  s_axi_rready_lane3, init_clk, link_reset_out, gt_powergood, gt_qpllclk_quad1_out, 
  gt_qpllrefclk_quad1_out, gt_qplllock_quad1_out, gt_qpllrefclklost_quad1_out, 
  sys_reset_out, gt_reset_out, tx_out_clk)
/* synthesis syn_black_box black_box_pad_pin="m_axi_rx_tdata[255:0],m_axi_rx_tlast,m_axi_rx_tkeep[31:0],m_axi_rx_tvalid,rxp[0:3],rxn[0:3],gt_refclk1_p,gt_refclk1_n,gt_refclk1_out,rx_hard_err,rx_soft_err,rx_channel_up,rx_lane_up[0:3],user_clk_out,mmcm_not_locked_out,reset2fc,reset_pb,gt_rxcdrovrden_in,power_down,pma_init,gt_pll_lock,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_awready,s_axi_awaddr_lane1[31:0],s_axi_awvalid_lane1,s_axi_awready_lane1,s_axi_awaddr_lane2[31:0],s_axi_awvalid_lane2,s_axi_awready_lane2,s_axi_awaddr_lane3[31:0],s_axi_awvalid_lane3,s_axi_awready_lane3,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bvalid,s_axi_bresp[1:0],s_axi_bready,s_axi_wdata_lane1[31:0],s_axi_wstrb_lane1[3:0],s_axi_wvalid_lane1,s_axi_wready_lane1,s_axi_bvalid_lane1,s_axi_bresp_lane1[1:0],s_axi_bready_lane1,s_axi_wdata_lane2[31:0],s_axi_wstrb_lane2[3:0],s_axi_wvalid_lane2,s_axi_wready_lane2,s_axi_bvalid_lane2,s_axi_bresp_lane2[1:0],s_axi_bready_lane2,s_axi_wdata_lane3[31:0],s_axi_wstrb_lane3[3:0],s_axi_wvalid_lane3,s_axi_wready_lane3,s_axi_bvalid_lane3,s_axi_bresp_lane3[1:0],s_axi_bready_lane3,s_axi_araddr[31:0],s_axi_arvalid,s_axi_arready,s_axi_araddr_lane1[31:0],s_axi_arvalid_lane1,s_axi_arready_lane1,s_axi_araddr_lane2[31:0],s_axi_arvalid_lane2,s_axi_arready_lane2,s_axi_araddr_lane3[31:0],s_axi_arvalid_lane3,s_axi_arready_lane3,s_axi_rdata[31:0],s_axi_rvalid,s_axi_rresp[1:0],s_axi_rready,s_axi_rdata_lane1[31:0],s_axi_rvalid_lane1,s_axi_rresp_lane1[1:0],s_axi_rready_lane1,s_axi_rdata_lane2[31:0],s_axi_rvalid_lane2,s_axi_rresp_lane2[1:0],s_axi_rready_lane2,s_axi_rdata_lane3[31:0],s_axi_rvalid_lane3,s_axi_rresp_lane3[1:0],s_axi_rready_lane3,init_clk,link_reset_out,gt_powergood[3:0],gt_qpllclk_quad1_out,gt_qpllrefclk_quad1_out,gt_qplllock_quad1_out,gt_qpllrefclklost_quad1_out,sys_reset_out,gt_reset_out,tx_out_clk" */;
  output [255:0]m_axi_rx_tdata;
  output m_axi_rx_tlast;
  output [31:0]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  input [0:3]rxp;
  input [0:3]rxn;
  input gt_refclk1_p;
  input gt_refclk1_n;
  output gt_refclk1_out;
  output rx_hard_err;
  output rx_soft_err;
  output rx_channel_up;
  output [0:3]rx_lane_up;
  output user_clk_out;
  output mmcm_not_locked_out;
  output reset2fc;
  input reset_pb;
  input gt_rxcdrovrden_in;
  input power_down;
  input pma_init;
  output gt_pll_lock;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_awaddr_lane1;
  input s_axi_awvalid_lane1;
  output s_axi_awready_lane1;
  input [31:0]s_axi_awaddr_lane2;
  input s_axi_awvalid_lane2;
  output s_axi_awready_lane2;
  input [31:0]s_axi_awaddr_lane3;
  input s_axi_awvalid_lane3;
  output s_axi_awready_lane3;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  input [31:0]s_axi_wdata_lane1;
  input [3:0]s_axi_wstrb_lane1;
  input s_axi_wvalid_lane1;
  output s_axi_wready_lane1;
  output s_axi_bvalid_lane1;
  output [1:0]s_axi_bresp_lane1;
  input s_axi_bready_lane1;
  input [31:0]s_axi_wdata_lane2;
  input [3:0]s_axi_wstrb_lane2;
  input s_axi_wvalid_lane2;
  output s_axi_wready_lane2;
  output s_axi_bvalid_lane2;
  output [1:0]s_axi_bresp_lane2;
  input s_axi_bready_lane2;
  input [31:0]s_axi_wdata_lane3;
  input [3:0]s_axi_wstrb_lane3;
  input s_axi_wvalid_lane3;
  output s_axi_wready_lane3;
  output s_axi_bvalid_lane3;
  output [1:0]s_axi_bresp_lane3;
  input s_axi_bready_lane3;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  input [31:0]s_axi_araddr_lane1;
  input s_axi_arvalid_lane1;
  output s_axi_arready_lane1;
  input [31:0]s_axi_araddr_lane2;
  input s_axi_arvalid_lane2;
  output s_axi_arready_lane2;
  input [31:0]s_axi_araddr_lane3;
  input s_axi_arvalid_lane3;
  output s_axi_arready_lane3;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output [1:0]s_axi_rresp;
  input s_axi_rready;
  output [31:0]s_axi_rdata_lane1;
  output s_axi_rvalid_lane1;
  output [1:0]s_axi_rresp_lane1;
  input s_axi_rready_lane1;
  output [31:0]s_axi_rdata_lane2;
  output s_axi_rvalid_lane2;
  output [1:0]s_axi_rresp_lane2;
  input s_axi_rready_lane2;
  output [31:0]s_axi_rdata_lane3;
  output s_axi_rvalid_lane3;
  output [1:0]s_axi_rresp_lane3;
  input s_axi_rready_lane3;
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
