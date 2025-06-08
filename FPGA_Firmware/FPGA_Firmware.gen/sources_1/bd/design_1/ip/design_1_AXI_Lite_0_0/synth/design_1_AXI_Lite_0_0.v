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


// IP VLNV: xilinx.com:user:AXI_Lite:1.0
// IP Revision: 2

(* X_CORE_INFO = "AXI_Lite,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "design_1_AXI_Lite_0_0,AXI_Lite,{}" *)
(* CORE_GENERATION_INFO = "design_1_AXI_Lite_0_0,AXI_Lite,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=AXI_Lite,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ADDR_WIDTH=16}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_AXI_Lite_0_0 (
  S_AXI_ACLK,
  S_AXI_ARESETN,
  S_AXI_AWADDR,
  S_AXI_AWPROT,
  S_AXI_AWVALID,
  S_AXI_AWREADY,
  S_AXI_WDATA,
  S_AXI_WSTRB,
  S_AXI_WVALID,
  S_AXI_WREADY,
  S_AXI_BRESP,
  S_AXI_BVALID,
  S_AXI_BREADY,
  S_AXI_ARADDR,
  S_AXI_ARPROT,
  S_AXI_ARVALID,
  S_AXI_ARREADY,
  S_AXI_RDATA,
  S_AXI_RRESP,
  S_AXI_RVALID,
  S_AXI_RREADY,
  Data_In_0,
  Data_In_1,
  Data_In_2,
  Data_In_3,
  Data_In_4,
  Data_In_5,
  Data_In_6,
  Data_In_7,
  Data_In_8,
  Data_In_9,
  Data_In_10,
  Data_In_11,
  Data_In_12,
  Data_In_13,
  Data_In_14,
  Data_In_15,
  Data_In_16,
  Data_In_17,
  Data_In_18,
  Data_In_19,
  Data_In_20,
  Data_In_21,
  Data_In_22,
  Data_In_23,
  Data_In_24,
  Data_In_25,
  Data_In_26,
  Data_In_27,
  Data_In_28,
  Data_In_29,
  Data_In_30,
  Data_In_31,
  Data_In_32,
  Data_In_33,
  Data_In_34,
  Data_In_35,
  Data_In_36,
  Data_In_37,
  Data_In_38,
  Data_In_39,
  Data_In_40,
  Data_In_41,
  Data_In_42,
  Data_In_43,
  Data_In_44,
  Data_In_45,
  Data_In_46,
  Data_In_47,
  Data_In_48,
  Data_In_49,
  Data_In_50,
  Data_In_51,
  Data_In_52,
  Data_In_53,
  Data_In_54,
  Data_In_55,
  Data_In_56,
  Data_In_57,
  Data_In_58,
  Data_In_59,
  Data_In_60,
  Data_In_61,
  Data_In_62,
  Data_In_63,
  Data_Out_0,
  Data_Out_1,
  Data_Out_2,
  Data_Out_3,
  Data_Out_4,
  Data_Out_5,
  Data_Out_6,
  Data_Out_7,
  Data_Out_8,
  Data_Out_9,
  Data_Out_10,
  Data_Out_11,
  Data_Out_12,
  Data_Out_13,
  Data_Out_14,
  Data_Out_15,
  Data_Out_16,
  Data_Out_17,
  Data_Out_18,
  Data_Out_19,
  Data_Out_20,
  Data_Out_21,
  Data_Out_22,
  Data_Out_23,
  Data_Out_24,
  Data_Out_25,
  Data_Out_26,
  Data_Out_27,
  Data_Out_28,
  Data_Out_29,
  Data_Out_30,
  Data_Out_31,
  Data_Out_32,
  Data_Out_33,
  Data_Out_34,
  Data_Out_35,
  Data_Out_36,
  Data_Out_37,
  Data_Out_38,
  Data_Out_39,
  Data_Out_40,
  Data_Out_41,
  Data_Out_42,
  Data_Out_43,
  Data_Out_44,
  Data_Out_45,
  Data_Out_46,
  Data_Out_47,
  Data_Out_48,
  Data_Out_49,
  Data_Out_50,
  Data_Out_51,
  Data_Out_52,
  Data_Out_53,
  Data_Out_54,
  Data_Out_55,
  Data_Out_56,
  Data_Out_57,
  Data_Out_58,
  Data_Out_59,
  Data_Out_60,
  Data_Out_61,
  Data_Out_62,
  Data_Out_63
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *)
input wire S_AXI_ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *)
input wire S_AXI_ARESETN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [15 : 0] S_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
input wire [2 : 0] S_AXI_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire S_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire S_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] S_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] S_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire S_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire S_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] S_AXI_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire S_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire S_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [15 : 0] S_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
input wire [2 : 0] S_AXI_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire S_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire S_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] S_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] S_AXI_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire S_AXI_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96968727, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, N\
UM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire S_AXI_RREADY;
input wire [31 : 0] Data_In_0;
input wire [31 : 0] Data_In_1;
input wire [31 : 0] Data_In_2;
input wire [31 : 0] Data_In_3;
input wire [31 : 0] Data_In_4;
input wire [31 : 0] Data_In_5;
input wire [31 : 0] Data_In_6;
input wire [31 : 0] Data_In_7;
input wire [31 : 0] Data_In_8;
input wire [31 : 0] Data_In_9;
input wire [31 : 0] Data_In_10;
input wire [31 : 0] Data_In_11;
input wire [31 : 0] Data_In_12;
input wire [31 : 0] Data_In_13;
input wire [31 : 0] Data_In_14;
input wire [31 : 0] Data_In_15;
input wire [31 : 0] Data_In_16;
input wire [31 : 0] Data_In_17;
input wire [31 : 0] Data_In_18;
input wire [31 : 0] Data_In_19;
input wire [31 : 0] Data_In_20;
input wire [31 : 0] Data_In_21;
input wire [31 : 0] Data_In_22;
input wire [31 : 0] Data_In_23;
input wire [31 : 0] Data_In_24;
input wire [31 : 0] Data_In_25;
input wire [31 : 0] Data_In_26;
input wire [31 : 0] Data_In_27;
input wire [31 : 0] Data_In_28;
input wire [31 : 0] Data_In_29;
input wire [31 : 0] Data_In_30;
input wire [31 : 0] Data_In_31;
input wire [31 : 0] Data_In_32;
input wire [31 : 0] Data_In_33;
input wire [31 : 0] Data_In_34;
input wire [31 : 0] Data_In_35;
input wire [31 : 0] Data_In_36;
input wire [31 : 0] Data_In_37;
input wire [31 : 0] Data_In_38;
input wire [31 : 0] Data_In_39;
input wire [31 : 0] Data_In_40;
input wire [31 : 0] Data_In_41;
input wire [31 : 0] Data_In_42;
input wire [31 : 0] Data_In_43;
input wire [31 : 0] Data_In_44;
input wire [31 : 0] Data_In_45;
input wire [31 : 0] Data_In_46;
input wire [31 : 0] Data_In_47;
input wire [31 : 0] Data_In_48;
input wire [31 : 0] Data_In_49;
input wire [31 : 0] Data_In_50;
input wire [31 : 0] Data_In_51;
input wire [31 : 0] Data_In_52;
input wire [31 : 0] Data_In_53;
input wire [31 : 0] Data_In_54;
input wire [31 : 0] Data_In_55;
input wire [31 : 0] Data_In_56;
input wire [31 : 0] Data_In_57;
input wire [31 : 0] Data_In_58;
input wire [31 : 0] Data_In_59;
input wire [31 : 0] Data_In_60;
input wire [31 : 0] Data_In_61;
input wire [31 : 0] Data_In_62;
input wire [31 : 0] Data_In_63;
output wire [31 : 0] Data_Out_0;
output wire [31 : 0] Data_Out_1;
output wire [31 : 0] Data_Out_2;
output wire [31 : 0] Data_Out_3;
output wire [31 : 0] Data_Out_4;
output wire [31 : 0] Data_Out_5;
output wire [31 : 0] Data_Out_6;
output wire [31 : 0] Data_Out_7;
output wire [31 : 0] Data_Out_8;
output wire [31 : 0] Data_Out_9;
output wire [31 : 0] Data_Out_10;
output wire [31 : 0] Data_Out_11;
output wire [31 : 0] Data_Out_12;
output wire [31 : 0] Data_Out_13;
output wire [31 : 0] Data_Out_14;
output wire [31 : 0] Data_Out_15;
output wire [31 : 0] Data_Out_16;
output wire [31 : 0] Data_Out_17;
output wire [31 : 0] Data_Out_18;
output wire [31 : 0] Data_Out_19;
output wire [31 : 0] Data_Out_20;
output wire [31 : 0] Data_Out_21;
output wire [31 : 0] Data_Out_22;
output wire [31 : 0] Data_Out_23;
output wire [31 : 0] Data_Out_24;
output wire [31 : 0] Data_Out_25;
output wire [31 : 0] Data_Out_26;
output wire [31 : 0] Data_Out_27;
output wire [31 : 0] Data_Out_28;
output wire [31 : 0] Data_Out_29;
output wire [31 : 0] Data_Out_30;
output wire [31 : 0] Data_Out_31;
output wire [31 : 0] Data_Out_32;
output wire [31 : 0] Data_Out_33;
output wire [31 : 0] Data_Out_34;
output wire [31 : 0] Data_Out_35;
output wire [31 : 0] Data_Out_36;
output wire [31 : 0] Data_Out_37;
output wire [31 : 0] Data_Out_38;
output wire [31 : 0] Data_Out_39;
output wire [31 : 0] Data_Out_40;
output wire [31 : 0] Data_Out_41;
output wire [31 : 0] Data_Out_42;
output wire [31 : 0] Data_Out_43;
output wire [31 : 0] Data_Out_44;
output wire [31 : 0] Data_Out_45;
output wire [31 : 0] Data_Out_46;
output wire [31 : 0] Data_Out_47;
output wire [31 : 0] Data_Out_48;
output wire [31 : 0] Data_Out_49;
output wire [31 : 0] Data_Out_50;
output wire [31 : 0] Data_Out_51;
output wire [31 : 0] Data_Out_52;
output wire [31 : 0] Data_Out_53;
output wire [31 : 0] Data_Out_54;
output wire [31 : 0] Data_Out_55;
output wire [31 : 0] Data_Out_56;
output wire [31 : 0] Data_Out_57;
output wire [31 : 0] Data_Out_58;
output wire [31 : 0] Data_Out_59;
output wire [31 : 0] Data_Out_60;
output wire [31 : 0] Data_Out_61;
output wire [31 : 0] Data_Out_62;
output wire [31 : 0] Data_Out_63;

  AXI_Lite #(
    .C_S_AXI_DATA_WIDTH(32),
    .C_S_AXI_ADDR_WIDTH(16)
  ) inst (
    .S_AXI_ACLK(S_AXI_ACLK),
    .S_AXI_ARESETN(S_AXI_ARESETN),
    .S_AXI_AWADDR(S_AXI_AWADDR),
    .S_AXI_AWPROT(S_AXI_AWPROT),
    .S_AXI_AWVALID(S_AXI_AWVALID),
    .S_AXI_AWREADY(S_AXI_AWREADY),
    .S_AXI_WDATA(S_AXI_WDATA),
    .S_AXI_WSTRB(S_AXI_WSTRB),
    .S_AXI_WVALID(S_AXI_WVALID),
    .S_AXI_WREADY(S_AXI_WREADY),
    .S_AXI_BRESP(S_AXI_BRESP),
    .S_AXI_BVALID(S_AXI_BVALID),
    .S_AXI_BREADY(S_AXI_BREADY),
    .S_AXI_ARADDR(S_AXI_ARADDR),
    .S_AXI_ARPROT(S_AXI_ARPROT),
    .S_AXI_ARVALID(S_AXI_ARVALID),
    .S_AXI_ARREADY(S_AXI_ARREADY),
    .S_AXI_RDATA(S_AXI_RDATA),
    .S_AXI_RRESP(S_AXI_RRESP),
    .S_AXI_RVALID(S_AXI_RVALID),
    .S_AXI_RREADY(S_AXI_RREADY),
    .Data_In_0(Data_In_0),
    .Data_In_1(Data_In_1),
    .Data_In_2(Data_In_2),
    .Data_In_3(Data_In_3),
    .Data_In_4(Data_In_4),
    .Data_In_5(Data_In_5),
    .Data_In_6(Data_In_6),
    .Data_In_7(Data_In_7),
    .Data_In_8(Data_In_8),
    .Data_In_9(Data_In_9),
    .Data_In_10(Data_In_10),
    .Data_In_11(Data_In_11),
    .Data_In_12(Data_In_12),
    .Data_In_13(Data_In_13),
    .Data_In_14(Data_In_14),
    .Data_In_15(Data_In_15),
    .Data_In_16(Data_In_16),
    .Data_In_17(Data_In_17),
    .Data_In_18(Data_In_18),
    .Data_In_19(Data_In_19),
    .Data_In_20(Data_In_20),
    .Data_In_21(Data_In_21),
    .Data_In_22(Data_In_22),
    .Data_In_23(Data_In_23),
    .Data_In_24(Data_In_24),
    .Data_In_25(Data_In_25),
    .Data_In_26(Data_In_26),
    .Data_In_27(Data_In_27),
    .Data_In_28(Data_In_28),
    .Data_In_29(Data_In_29),
    .Data_In_30(Data_In_30),
    .Data_In_31(Data_In_31),
    .Data_In_32(Data_In_32),
    .Data_In_33(Data_In_33),
    .Data_In_34(Data_In_34),
    .Data_In_35(Data_In_35),
    .Data_In_36(Data_In_36),
    .Data_In_37(Data_In_37),
    .Data_In_38(Data_In_38),
    .Data_In_39(Data_In_39),
    .Data_In_40(Data_In_40),
    .Data_In_41(Data_In_41),
    .Data_In_42(Data_In_42),
    .Data_In_43(Data_In_43),
    .Data_In_44(Data_In_44),
    .Data_In_45(Data_In_45),
    .Data_In_46(Data_In_46),
    .Data_In_47(Data_In_47),
    .Data_In_48(Data_In_48),
    .Data_In_49(Data_In_49),
    .Data_In_50(Data_In_50),
    .Data_In_51(Data_In_51),
    .Data_In_52(Data_In_52),
    .Data_In_53(Data_In_53),
    .Data_In_54(Data_In_54),
    .Data_In_55(Data_In_55),
    .Data_In_56(Data_In_56),
    .Data_In_57(Data_In_57),
    .Data_In_58(Data_In_58),
    .Data_In_59(Data_In_59),
    .Data_In_60(Data_In_60),
    .Data_In_61(Data_In_61),
    .Data_In_62(Data_In_62),
    .Data_In_63(Data_In_63),
    .Data_Out_0(Data_Out_0),
    .Data_Out_1(Data_Out_1),
    .Data_Out_2(Data_Out_2),
    .Data_Out_3(Data_Out_3),
    .Data_Out_4(Data_Out_4),
    .Data_Out_5(Data_Out_5),
    .Data_Out_6(Data_Out_6),
    .Data_Out_7(Data_Out_7),
    .Data_Out_8(Data_Out_8),
    .Data_Out_9(Data_Out_9),
    .Data_Out_10(Data_Out_10),
    .Data_Out_11(Data_Out_11),
    .Data_Out_12(Data_Out_12),
    .Data_Out_13(Data_Out_13),
    .Data_Out_14(Data_Out_14),
    .Data_Out_15(Data_Out_15),
    .Data_Out_16(Data_Out_16),
    .Data_Out_17(Data_Out_17),
    .Data_Out_18(Data_Out_18),
    .Data_Out_19(Data_Out_19),
    .Data_Out_20(Data_Out_20),
    .Data_Out_21(Data_Out_21),
    .Data_Out_22(Data_Out_22),
    .Data_Out_23(Data_Out_23),
    .Data_Out_24(Data_Out_24),
    .Data_Out_25(Data_Out_25),
    .Data_Out_26(Data_Out_26),
    .Data_Out_27(Data_Out_27),
    .Data_Out_28(Data_Out_28),
    .Data_Out_29(Data_Out_29),
    .Data_Out_30(Data_Out_30),
    .Data_Out_31(Data_Out_31),
    .Data_Out_32(Data_Out_32),
    .Data_Out_33(Data_Out_33),
    .Data_Out_34(Data_Out_34),
    .Data_Out_35(Data_Out_35),
    .Data_Out_36(Data_Out_36),
    .Data_Out_37(Data_Out_37),
    .Data_Out_38(Data_Out_38),
    .Data_Out_39(Data_Out_39),
    .Data_Out_40(Data_Out_40),
    .Data_Out_41(Data_Out_41),
    .Data_Out_42(Data_Out_42),
    .Data_Out_43(Data_Out_43),
    .Data_Out_44(Data_Out_44),
    .Data_Out_45(Data_Out_45),
    .Data_Out_46(Data_Out_46),
    .Data_Out_47(Data_Out_47),
    .Data_Out_48(Data_Out_48),
    .Data_Out_49(Data_Out_49),
    .Data_Out_50(Data_Out_50),
    .Data_Out_51(Data_Out_51),
    .Data_Out_52(Data_Out_52),
    .Data_Out_53(Data_Out_53),
    .Data_Out_54(Data_Out_54),
    .Data_Out_55(Data_Out_55),
    .Data_Out_56(Data_Out_56),
    .Data_Out_57(Data_Out_57),
    .Data_Out_58(Data_Out_58),
    .Data_Out_59(Data_Out_59),
    .Data_Out_60(Data_Out_60),
    .Data_Out_61(Data_Out_61),
    .Data_Out_62(Data_Out_62),
    .Data_Out_63(Data_Out_63)
  );
endmodule
