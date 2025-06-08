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


// IP VLNV: xilinx.com:module_ref:AXI_Stream_MUX:1.0
// IP Revision: 1

(* X_CORE_INFO = "AXI_Stream_MUX,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "design_1_AXI_Stream_MUX_0_5,AXI_Stream_MUX,{}" *)
(* CORE_GENERATION_INFO = "design_1_AXI_Stream_MUX_0_5,AXI_Stream_MUX,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=AXI_Stream_MUX,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_AXI_Stream_MUX_0_5 (
  Clk,
  rstn,
  Control,
  s_Data_ADC00_0,
  s_Valid_ADC00_0,
  s_Ready_ADC00_0,
  s_Data_ADC00_1,
  s_Valid_ADC00_1,
  s_Ready_ADC00_1,
  m_Data_ADC00,
  m_Valid_ADC00,
  m_Ready_ADC00,
  s_Data_ADC01_0,
  s_Valid_ADC01_0,
  s_Ready_ADC01_0,
  s_Data_ADC01_1,
  s_Valid_ADC01_1,
  s_Ready_ADC01_1,
  m_Data_ADC01,
  m_Valid_ADC01,
  m_Ready_ADC01,
  s_Data_ADC02_0,
  s_Valid_ADC02_0,
  s_Ready_ADC02_0,
  s_Data_ADC02_1,
  s_Valid_ADC02_1,
  s_Ready_ADC02_1,
  m_Data_ADC02,
  m_Valid_ADC02,
  m_Ready_ADC02,
  s_Data_ADC03_0,
  s_Valid_ADC03_0,
  s_Ready_ADC03_0,
  s_Data_ADC03_1,
  s_Valid_ADC03_1,
  s_Ready_ADC03_1,
  m_Data_ADC03,
  m_Valid_ADC03,
  m_Ready_ADC03,
  s_Data_ADC10_0,
  s_Valid_ADC10_0,
  s_Ready_ADC10_0,
  s_Data_ADC10_1,
  s_Valid_ADC10_1,
  s_Ready_ADC10_1,
  m_Data_ADC10,
  m_Valid_ADC10,
  m_Ready_ADC10,
  s_Data_ADC11_0,
  s_Valid_ADC11_0,
  s_Ready_ADC11_0,
  s_Data_ADC11_1,
  s_Valid_ADC11_1,
  s_Ready_ADC11_1,
  m_Data_ADC11,
  m_Valid_ADC11,
  m_Ready_ADC11,
  s_Data_ADC12_0,
  s_Valid_ADC12_0,
  s_Ready_ADC12_0,
  s_Data_ADC12_1,
  s_Valid_ADC12_1,
  s_Ready_ADC12_1,
  m_Data_ADC12,
  m_Valid_ADC12,
  m_Ready_ADC12,
  s_Data_ADC13_0,
  s_Valid_ADC13_0,
  s_Ready_ADC13_0,
  s_Data_ADC13_1,
  s_Valid_ADC13_1,
  s_Ready_ADC13_1,
  m_Data_ADC13,
  m_Valid_ADC13,
  m_Ready_ADC13,
  s_Data_ADC20_0,
  s_Valid_ADC20_0,
  s_Ready_ADC20_0,
  s_Data_ADC20_1,
  s_Valid_ADC20_1,
  s_Ready_ADC20_1,
  m_Data_ADC20,
  m_Valid_ADC20,
  m_Ready_ADC20,
  s_Data_ADC21_0,
  s_Valid_ADC21_0,
  s_Ready_ADC21_0,
  s_Data_ADC21_1,
  s_Valid_ADC21_1,
  s_Ready_ADC21_1,
  m_Data_ADC21,
  m_Valid_ADC21,
  m_Ready_ADC21,
  s_Data_ADC22_0,
  s_Valid_ADC22_0,
  s_Ready_ADC22_0,
  s_Data_ADC22_1,
  s_Valid_ADC22_1,
  s_Ready_ADC22_1,
  m_Data_ADC22,
  m_Valid_ADC22,
  m_Ready_ADC22,
  s_Data_ADC23_0,
  s_Valid_ADC23_0,
  s_Ready_ADC23_0,
  s_Data_ADC23_1,
  s_Valid_ADC23_1,
  s_Ready_ADC23_1,
  m_Data_ADC23,
  m_Valid_ADC23,
  m_Ready_ADC23,
  s_Data_ADC30_0,
  s_Valid_ADC30_0,
  s_Ready_ADC30_0,
  s_Data_ADC30_1,
  s_Valid_ADC30_1,
  s_Ready_ADC30_1,
  m_Data_ADC30,
  m_Valid_ADC30,
  m_Ready_ADC30,
  s_Data_ADC31_0,
  s_Valid_ADC31_0,
  s_Ready_ADC31_0,
  s_Data_ADC31_1,
  s_Valid_ADC31_1,
  s_Ready_ADC31_1,
  m_Data_ADC31,
  m_Valid_ADC31,
  m_Ready_ADC31,
  s_Data_ADC32_0,
  s_Valid_ADC32_0,
  s_Ready_ADC32_0,
  s_Data_ADC32_1,
  s_Valid_ADC32_1,
  s_Ready_ADC32_1,
  m_Data_ADC32,
  m_Valid_ADC32,
  m_Ready_ADC32,
  s_Data_ADC33_0,
  s_Valid_ADC33_0,
  s_Ready_ADC33_0,
  s_Data_ADC33_1,
  s_Valid_ADC33_1,
  s_Ready_ADC33_1,
  m_Data_ADC33,
  m_Valid_ADC33,
  m_Ready_ADC33
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET rstn, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *)
input wire [0 : 0] Clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire [0 : 0] rstn;
input wire [0 : 0] Control;
input wire [79 : 0] s_Data_ADC00_0;
input wire [0 : 0] s_Valid_ADC00_0;
output wire [0 : 0] s_Ready_ADC00_0;
input wire [79 : 0] s_Data_ADC00_1;
input wire [0 : 0] s_Valid_ADC00_1;
output wire [0 : 0] s_Ready_ADC00_1;
output wire [79 : 0] m_Data_ADC00;
output wire [0 : 0] m_Valid_ADC00;
input wire [0 : 0] m_Ready_ADC00;
input wire [79 : 0] s_Data_ADC01_0;
input wire [0 : 0] s_Valid_ADC01_0;
output wire [0 : 0] s_Ready_ADC01_0;
input wire [79 : 0] s_Data_ADC01_1;
input wire [0 : 0] s_Valid_ADC01_1;
output wire [0 : 0] s_Ready_ADC01_1;
output wire [79 : 0] m_Data_ADC01;
output wire [0 : 0] m_Valid_ADC01;
input wire [0 : 0] m_Ready_ADC01;
input wire [79 : 0] s_Data_ADC02_0;
input wire [0 : 0] s_Valid_ADC02_0;
output wire [0 : 0] s_Ready_ADC02_0;
input wire [79 : 0] s_Data_ADC02_1;
input wire [0 : 0] s_Valid_ADC02_1;
output wire [0 : 0] s_Ready_ADC02_1;
output wire [79 : 0] m_Data_ADC02;
output wire [0 : 0] m_Valid_ADC02;
input wire [0 : 0] m_Ready_ADC02;
input wire [79 : 0] s_Data_ADC03_0;
input wire [0 : 0] s_Valid_ADC03_0;
output wire [0 : 0] s_Ready_ADC03_0;
input wire [79 : 0] s_Data_ADC03_1;
input wire [0 : 0] s_Valid_ADC03_1;
output wire [0 : 0] s_Ready_ADC03_1;
output wire [79 : 0] m_Data_ADC03;
output wire [0 : 0] m_Valid_ADC03;
input wire [0 : 0] m_Ready_ADC03;
input wire [79 : 0] s_Data_ADC10_0;
input wire [0 : 0] s_Valid_ADC10_0;
output wire [0 : 0] s_Ready_ADC10_0;
input wire [79 : 0] s_Data_ADC10_1;
input wire [0 : 0] s_Valid_ADC10_1;
output wire [0 : 0] s_Ready_ADC10_1;
output wire [79 : 0] m_Data_ADC10;
output wire [0 : 0] m_Valid_ADC10;
input wire [0 : 0] m_Ready_ADC10;
input wire [79 : 0] s_Data_ADC11_0;
input wire [0 : 0] s_Valid_ADC11_0;
output wire [0 : 0] s_Ready_ADC11_0;
input wire [79 : 0] s_Data_ADC11_1;
input wire [0 : 0] s_Valid_ADC11_1;
output wire [0 : 0] s_Ready_ADC11_1;
output wire [79 : 0] m_Data_ADC11;
output wire [0 : 0] m_Valid_ADC11;
input wire [0 : 0] m_Ready_ADC11;
input wire [79 : 0] s_Data_ADC12_0;
input wire [0 : 0] s_Valid_ADC12_0;
output wire [0 : 0] s_Ready_ADC12_0;
input wire [79 : 0] s_Data_ADC12_1;
input wire [0 : 0] s_Valid_ADC12_1;
output wire [0 : 0] s_Ready_ADC12_1;
output wire [79 : 0] m_Data_ADC12;
output wire [0 : 0] m_Valid_ADC12;
input wire [0 : 0] m_Ready_ADC12;
input wire [79 : 0] s_Data_ADC13_0;
input wire [0 : 0] s_Valid_ADC13_0;
output wire [0 : 0] s_Ready_ADC13_0;
input wire [79 : 0] s_Data_ADC13_1;
input wire [0 : 0] s_Valid_ADC13_1;
output wire [0 : 0] s_Ready_ADC13_1;
output wire [79 : 0] m_Data_ADC13;
output wire [0 : 0] m_Valid_ADC13;
input wire [0 : 0] m_Ready_ADC13;
input wire [79 : 0] s_Data_ADC20_0;
input wire [0 : 0] s_Valid_ADC20_0;
output wire [0 : 0] s_Ready_ADC20_0;
input wire [79 : 0] s_Data_ADC20_1;
input wire [0 : 0] s_Valid_ADC20_1;
output wire [0 : 0] s_Ready_ADC20_1;
output wire [79 : 0] m_Data_ADC20;
output wire [0 : 0] m_Valid_ADC20;
input wire [0 : 0] m_Ready_ADC20;
input wire [79 : 0] s_Data_ADC21_0;
input wire [0 : 0] s_Valid_ADC21_0;
output wire [0 : 0] s_Ready_ADC21_0;
input wire [79 : 0] s_Data_ADC21_1;
input wire [0 : 0] s_Valid_ADC21_1;
output wire [0 : 0] s_Ready_ADC21_1;
output wire [79 : 0] m_Data_ADC21;
output wire [0 : 0] m_Valid_ADC21;
input wire [0 : 0] m_Ready_ADC21;
input wire [79 : 0] s_Data_ADC22_0;
input wire [0 : 0] s_Valid_ADC22_0;
output wire [0 : 0] s_Ready_ADC22_0;
input wire [79 : 0] s_Data_ADC22_1;
input wire [0 : 0] s_Valid_ADC22_1;
output wire [0 : 0] s_Ready_ADC22_1;
output wire [79 : 0] m_Data_ADC22;
output wire [0 : 0] m_Valid_ADC22;
input wire [0 : 0] m_Ready_ADC22;
input wire [79 : 0] s_Data_ADC23_0;
input wire [0 : 0] s_Valid_ADC23_0;
output wire [0 : 0] s_Ready_ADC23_0;
input wire [79 : 0] s_Data_ADC23_1;
input wire [0 : 0] s_Valid_ADC23_1;
output wire [0 : 0] s_Ready_ADC23_1;
output wire [79 : 0] m_Data_ADC23;
output wire [0 : 0] m_Valid_ADC23;
input wire [0 : 0] m_Ready_ADC23;
input wire [79 : 0] s_Data_ADC30_0;
input wire [0 : 0] s_Valid_ADC30_0;
output wire [0 : 0] s_Ready_ADC30_0;
input wire [79 : 0] s_Data_ADC30_1;
input wire [0 : 0] s_Valid_ADC30_1;
output wire [0 : 0] s_Ready_ADC30_1;
output wire [79 : 0] m_Data_ADC30;
output wire [0 : 0] m_Valid_ADC30;
input wire [0 : 0] m_Ready_ADC30;
input wire [79 : 0] s_Data_ADC31_0;
input wire [0 : 0] s_Valid_ADC31_0;
output wire [0 : 0] s_Ready_ADC31_0;
input wire [79 : 0] s_Data_ADC31_1;
input wire [0 : 0] s_Valid_ADC31_1;
output wire [0 : 0] s_Ready_ADC31_1;
output wire [79 : 0] m_Data_ADC31;
output wire [0 : 0] m_Valid_ADC31;
input wire [0 : 0] m_Ready_ADC31;
input wire [79 : 0] s_Data_ADC32_0;
input wire [0 : 0] s_Valid_ADC32_0;
output wire [0 : 0] s_Ready_ADC32_0;
input wire [79 : 0] s_Data_ADC32_1;
input wire [0 : 0] s_Valid_ADC32_1;
output wire [0 : 0] s_Ready_ADC32_1;
output wire [79 : 0] m_Data_ADC32;
output wire [0 : 0] m_Valid_ADC32;
input wire [0 : 0] m_Ready_ADC32;
input wire [79 : 0] s_Data_ADC33_0;
input wire [0 : 0] s_Valid_ADC33_0;
output wire [0 : 0] s_Ready_ADC33_0;
input wire [79 : 0] s_Data_ADC33_1;
input wire [0 : 0] s_Valid_ADC33_1;
output wire [0 : 0] s_Ready_ADC33_1;
output wire [79 : 0] m_Data_ADC33;
output wire [0 : 0] m_Valid_ADC33;
input wire [0 : 0] m_Ready_ADC33;

  AXI_Stream_MUX inst (
    .Clk(Clk),
    .rstn(rstn),
    .Control(Control),
    .s_Data_ADC00_0(s_Data_ADC00_0),
    .s_Valid_ADC00_0(s_Valid_ADC00_0),
    .s_Ready_ADC00_0(s_Ready_ADC00_0),
    .s_Data_ADC00_1(s_Data_ADC00_1),
    .s_Valid_ADC00_1(s_Valid_ADC00_1),
    .s_Ready_ADC00_1(s_Ready_ADC00_1),
    .m_Data_ADC00(m_Data_ADC00),
    .m_Valid_ADC00(m_Valid_ADC00),
    .m_Ready_ADC00(m_Ready_ADC00),
    .s_Data_ADC01_0(s_Data_ADC01_0),
    .s_Valid_ADC01_0(s_Valid_ADC01_0),
    .s_Ready_ADC01_0(s_Ready_ADC01_0),
    .s_Data_ADC01_1(s_Data_ADC01_1),
    .s_Valid_ADC01_1(s_Valid_ADC01_1),
    .s_Ready_ADC01_1(s_Ready_ADC01_1),
    .m_Data_ADC01(m_Data_ADC01),
    .m_Valid_ADC01(m_Valid_ADC01),
    .m_Ready_ADC01(m_Ready_ADC01),
    .s_Data_ADC02_0(s_Data_ADC02_0),
    .s_Valid_ADC02_0(s_Valid_ADC02_0),
    .s_Ready_ADC02_0(s_Ready_ADC02_0),
    .s_Data_ADC02_1(s_Data_ADC02_1),
    .s_Valid_ADC02_1(s_Valid_ADC02_1),
    .s_Ready_ADC02_1(s_Ready_ADC02_1),
    .m_Data_ADC02(m_Data_ADC02),
    .m_Valid_ADC02(m_Valid_ADC02),
    .m_Ready_ADC02(m_Ready_ADC02),
    .s_Data_ADC03_0(s_Data_ADC03_0),
    .s_Valid_ADC03_0(s_Valid_ADC03_0),
    .s_Ready_ADC03_0(s_Ready_ADC03_0),
    .s_Data_ADC03_1(s_Data_ADC03_1),
    .s_Valid_ADC03_1(s_Valid_ADC03_1),
    .s_Ready_ADC03_1(s_Ready_ADC03_1),
    .m_Data_ADC03(m_Data_ADC03),
    .m_Valid_ADC03(m_Valid_ADC03),
    .m_Ready_ADC03(m_Ready_ADC03),
    .s_Data_ADC10_0(s_Data_ADC10_0),
    .s_Valid_ADC10_0(s_Valid_ADC10_0),
    .s_Ready_ADC10_0(s_Ready_ADC10_0),
    .s_Data_ADC10_1(s_Data_ADC10_1),
    .s_Valid_ADC10_1(s_Valid_ADC10_1),
    .s_Ready_ADC10_1(s_Ready_ADC10_1),
    .m_Data_ADC10(m_Data_ADC10),
    .m_Valid_ADC10(m_Valid_ADC10),
    .m_Ready_ADC10(m_Ready_ADC10),
    .s_Data_ADC11_0(s_Data_ADC11_0),
    .s_Valid_ADC11_0(s_Valid_ADC11_0),
    .s_Ready_ADC11_0(s_Ready_ADC11_0),
    .s_Data_ADC11_1(s_Data_ADC11_1),
    .s_Valid_ADC11_1(s_Valid_ADC11_1),
    .s_Ready_ADC11_1(s_Ready_ADC11_1),
    .m_Data_ADC11(m_Data_ADC11),
    .m_Valid_ADC11(m_Valid_ADC11),
    .m_Ready_ADC11(m_Ready_ADC11),
    .s_Data_ADC12_0(s_Data_ADC12_0),
    .s_Valid_ADC12_0(s_Valid_ADC12_0),
    .s_Ready_ADC12_0(s_Ready_ADC12_0),
    .s_Data_ADC12_1(s_Data_ADC12_1),
    .s_Valid_ADC12_1(s_Valid_ADC12_1),
    .s_Ready_ADC12_1(s_Ready_ADC12_1),
    .m_Data_ADC12(m_Data_ADC12),
    .m_Valid_ADC12(m_Valid_ADC12),
    .m_Ready_ADC12(m_Ready_ADC12),
    .s_Data_ADC13_0(s_Data_ADC13_0),
    .s_Valid_ADC13_0(s_Valid_ADC13_0),
    .s_Ready_ADC13_0(s_Ready_ADC13_0),
    .s_Data_ADC13_1(s_Data_ADC13_1),
    .s_Valid_ADC13_1(s_Valid_ADC13_1),
    .s_Ready_ADC13_1(s_Ready_ADC13_1),
    .m_Data_ADC13(m_Data_ADC13),
    .m_Valid_ADC13(m_Valid_ADC13),
    .m_Ready_ADC13(m_Ready_ADC13),
    .s_Data_ADC20_0(s_Data_ADC20_0),
    .s_Valid_ADC20_0(s_Valid_ADC20_0),
    .s_Ready_ADC20_0(s_Ready_ADC20_0),
    .s_Data_ADC20_1(s_Data_ADC20_1),
    .s_Valid_ADC20_1(s_Valid_ADC20_1),
    .s_Ready_ADC20_1(s_Ready_ADC20_1),
    .m_Data_ADC20(m_Data_ADC20),
    .m_Valid_ADC20(m_Valid_ADC20),
    .m_Ready_ADC20(m_Ready_ADC20),
    .s_Data_ADC21_0(s_Data_ADC21_0),
    .s_Valid_ADC21_0(s_Valid_ADC21_0),
    .s_Ready_ADC21_0(s_Ready_ADC21_0),
    .s_Data_ADC21_1(s_Data_ADC21_1),
    .s_Valid_ADC21_1(s_Valid_ADC21_1),
    .s_Ready_ADC21_1(s_Ready_ADC21_1),
    .m_Data_ADC21(m_Data_ADC21),
    .m_Valid_ADC21(m_Valid_ADC21),
    .m_Ready_ADC21(m_Ready_ADC21),
    .s_Data_ADC22_0(s_Data_ADC22_0),
    .s_Valid_ADC22_0(s_Valid_ADC22_0),
    .s_Ready_ADC22_0(s_Ready_ADC22_0),
    .s_Data_ADC22_1(s_Data_ADC22_1),
    .s_Valid_ADC22_1(s_Valid_ADC22_1),
    .s_Ready_ADC22_1(s_Ready_ADC22_1),
    .m_Data_ADC22(m_Data_ADC22),
    .m_Valid_ADC22(m_Valid_ADC22),
    .m_Ready_ADC22(m_Ready_ADC22),
    .s_Data_ADC23_0(s_Data_ADC23_0),
    .s_Valid_ADC23_0(s_Valid_ADC23_0),
    .s_Ready_ADC23_0(s_Ready_ADC23_0),
    .s_Data_ADC23_1(s_Data_ADC23_1),
    .s_Valid_ADC23_1(s_Valid_ADC23_1),
    .s_Ready_ADC23_1(s_Ready_ADC23_1),
    .m_Data_ADC23(m_Data_ADC23),
    .m_Valid_ADC23(m_Valid_ADC23),
    .m_Ready_ADC23(m_Ready_ADC23),
    .s_Data_ADC30_0(s_Data_ADC30_0),
    .s_Valid_ADC30_0(s_Valid_ADC30_0),
    .s_Ready_ADC30_0(s_Ready_ADC30_0),
    .s_Data_ADC30_1(s_Data_ADC30_1),
    .s_Valid_ADC30_1(s_Valid_ADC30_1),
    .s_Ready_ADC30_1(s_Ready_ADC30_1),
    .m_Data_ADC30(m_Data_ADC30),
    .m_Valid_ADC30(m_Valid_ADC30),
    .m_Ready_ADC30(m_Ready_ADC30),
    .s_Data_ADC31_0(s_Data_ADC31_0),
    .s_Valid_ADC31_0(s_Valid_ADC31_0),
    .s_Ready_ADC31_0(s_Ready_ADC31_0),
    .s_Data_ADC31_1(s_Data_ADC31_1),
    .s_Valid_ADC31_1(s_Valid_ADC31_1),
    .s_Ready_ADC31_1(s_Ready_ADC31_1),
    .m_Data_ADC31(m_Data_ADC31),
    .m_Valid_ADC31(m_Valid_ADC31),
    .m_Ready_ADC31(m_Ready_ADC31),
    .s_Data_ADC32_0(s_Data_ADC32_0),
    .s_Valid_ADC32_0(s_Valid_ADC32_0),
    .s_Ready_ADC32_0(s_Ready_ADC32_0),
    .s_Data_ADC32_1(s_Data_ADC32_1),
    .s_Valid_ADC32_1(s_Valid_ADC32_1),
    .s_Ready_ADC32_1(s_Ready_ADC32_1),
    .m_Data_ADC32(m_Data_ADC32),
    .m_Valid_ADC32(m_Valid_ADC32),
    .m_Ready_ADC32(m_Ready_ADC32),
    .s_Data_ADC33_0(s_Data_ADC33_0),
    .s_Valid_ADC33_0(s_Valid_ADC33_0),
    .s_Ready_ADC33_0(s_Ready_ADC33_0),
    .s_Data_ADC33_1(s_Data_ADC33_1),
    .s_Valid_ADC33_1(s_Valid_ADC33_1),
    .s_Ready_ADC33_1(s_Ready_ADC33_1),
    .m_Data_ADC33(m_Data_ADC33),
    .m_Valid_ADC33(m_Valid_ADC33),
    .m_Ready_ADC33(m_Ready_ADC33)
  );
endmodule
