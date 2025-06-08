//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Jun  8 21:41:01 2025
//Host        : ZBL_Thinkbook running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GT_DIFF_REFCLK1_clk_n,
    GT_DIFF_REFCLK1_clk_p,
    GT_SERIAL_TX_txn,
    GT_SERIAL_TX_txp,
    LMK_Control,
    Mech_Switch_TTL,
    PA_Status_TTL,
    PA_Switch_TTL,
    PL_Clk_n,
    PL_Clk_p,
    PL_SysRef_n,
    PL_SysRef_p,
    adc1_clk_clk_n,
    adc1_clk_clk_p,
    dac1_clk_clk_n,
    dac1_clk_clk_p,
    i_LVDS_Clk_n,
    i_LVDS_Clk_p,
    i_LVDS_Data0_n,
    i_LVDS_Data0_p,
    i_LVDS_Data1_n,
    i_LVDS_Data1_p,
    i_LVDS_Data2_n,
    i_LVDS_Data2_p,
    i_LVDS_Data3_n,
    i_LVDS_Data3_p,
    iic_rtl_0_scl_io,
    iic_rtl_0_sda_io,
    iic_rtl_1_scl_io,
    iic_rtl_1_sda_io,
    o_LVDS_Clk_1_n,
    o_LVDS_Clk_1_p,
    o_LVDS_Data0_n,
    o_LVDS_Data0_p,
    o_LVDS_Data1_n,
    o_LVDS_Data1_p,
    o_LVDS_Data2_n,
    o_LVDS_Data2_p,
    o_LVDS_Data3_n,
    o_LVDS_Data3_p,
    o_Work_State,
    spi_rtl_0_io0_io,
    spi_rtl_0_io1_io,
    spi_rtl_0_sck_io,
    spi_rtl_0_ss_io,
    sysref_in_diff_n,
    sysref_in_diff_p,
    uart_rtl_0_rxd,
    uart_rtl_0_txd,
    uart_rtl_1_rxd,
    uart_rtl_1_txd,
    uart_rtl_2_rxd,
    uart_rtl_2_txd,
    uart_rtl_3_rxd,
    uart_rtl_3_txd,
    vin00_v_n,
    vin00_v_p,
    vin01_v_n,
    vin01_v_p,
    vin02_v_n,
    vin02_v_p,
    vin03_v_n,
    vin03_v_p,
    vin10_v_n,
    vin10_v_p,
    vin11_v_n,
    vin11_v_p,
    vin12_v_n,
    vin12_v_p,
    vin13_v_n,
    vin13_v_p,
    vin20_v_n,
    vin20_v_p,
    vin21_v_n,
    vin21_v_p,
    vin22_v_n,
    vin22_v_p,
    vin23_v_n,
    vin23_v_p,
    vin30_v_n,
    vin30_v_p,
    vin31_v_n,
    vin31_v_p,
    vin32_v_n,
    vin32_v_p,
    vin33_v_n,
    vin33_v_p,
    vout00_v_n,
    vout00_v_p,
    vout01_v_n,
    vout01_v_p,
    vout02_v_n,
    vout02_v_p,
    vout03_v_n,
    vout03_v_p,
    vout10_v_n,
    vout10_v_p,
    vout11_v_n,
    vout11_v_p,
    vout12_v_n,
    vout12_v_p,
    vout13_v_n,
    vout13_v_p,
    vout20_v_n,
    vout20_v_p,
    vout21_v_n,
    vout21_v_p,
    vout22_v_n,
    vout22_v_p,
    vout23_v_n,
    vout23_v_p,
    vout30_v_n,
    vout30_v_p,
    vout31_v_n,
    vout31_v_p,
    vout32_v_n,
    vout32_v_p,
    vout33_v_n,
    vout33_v_p);
  input GT_DIFF_REFCLK1_clk_n;
  input GT_DIFF_REFCLK1_clk_p;
  output [0:3]GT_SERIAL_TX_txn;
  output [0:3]GT_SERIAL_TX_txp;
  output [3:0]LMK_Control;
  output [1:0]Mech_Switch_TTL;
  input [19:0]PA_Status_TTL;
  output [7:0]PA_Switch_TTL;
  input PL_Clk_n;
  input PL_Clk_p;
  input PL_SysRef_n;
  input PL_SysRef_p;
  input adc1_clk_clk_n;
  input adc1_clk_clk_p;
  input dac1_clk_clk_n;
  input dac1_clk_clk_p;
  input [0:0]i_LVDS_Clk_n;
  input [0:0]i_LVDS_Clk_p;
  input [0:0]i_LVDS_Data0_n;
  input [0:0]i_LVDS_Data0_p;
  input [0:0]i_LVDS_Data1_n;
  input [0:0]i_LVDS_Data1_p;
  input [0:0]i_LVDS_Data2_n;
  input [0:0]i_LVDS_Data2_p;
  input [0:0]i_LVDS_Data3_n;
  input [0:0]i_LVDS_Data3_p;
  inout iic_rtl_0_scl_io;
  inout iic_rtl_0_sda_io;
  inout iic_rtl_1_scl_io;
  inout iic_rtl_1_sda_io;
  output [0:0]o_LVDS_Clk_1_n;
  output [0:0]o_LVDS_Clk_1_p;
  output [0:0]o_LVDS_Data0_n;
  output [0:0]o_LVDS_Data0_p;
  output [0:0]o_LVDS_Data1_n;
  output [0:0]o_LVDS_Data1_p;
  output [0:0]o_LVDS_Data2_n;
  output [0:0]o_LVDS_Data2_p;
  output [0:0]o_LVDS_Data3_n;
  output [0:0]o_LVDS_Data3_p;
  output [0:0]o_Work_State;
  inout spi_rtl_0_io0_io;
  inout spi_rtl_0_io1_io;
  inout spi_rtl_0_sck_io;
  inout [0:0]spi_rtl_0_ss_io;
  input sysref_in_diff_n;
  input sysref_in_diff_p;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;
  input uart_rtl_1_rxd;
  output uart_rtl_1_txd;
  input uart_rtl_2_rxd;
  output uart_rtl_2_txd;
  input uart_rtl_3_rxd;
  output uart_rtl_3_txd;
  input vin00_v_n;
  input vin00_v_p;
  input vin01_v_n;
  input vin01_v_p;
  input vin02_v_n;
  input vin02_v_p;
  input vin03_v_n;
  input vin03_v_p;
  input vin10_v_n;
  input vin10_v_p;
  input vin11_v_n;
  input vin11_v_p;
  input vin12_v_n;
  input vin12_v_p;
  input vin13_v_n;
  input vin13_v_p;
  input vin20_v_n;
  input vin20_v_p;
  input vin21_v_n;
  input vin21_v_p;
  input vin22_v_n;
  input vin22_v_p;
  input vin23_v_n;
  input vin23_v_p;
  input vin30_v_n;
  input vin30_v_p;
  input vin31_v_n;
  input vin31_v_p;
  input vin32_v_n;
  input vin32_v_p;
  input vin33_v_n;
  input vin33_v_p;
  output vout00_v_n;
  output vout00_v_p;
  output vout01_v_n;
  output vout01_v_p;
  output vout02_v_n;
  output vout02_v_p;
  output vout03_v_n;
  output vout03_v_p;
  output vout10_v_n;
  output vout10_v_p;
  output vout11_v_n;
  output vout11_v_p;
  output vout12_v_n;
  output vout12_v_p;
  output vout13_v_n;
  output vout13_v_p;
  output vout20_v_n;
  output vout20_v_p;
  output vout21_v_n;
  output vout21_v_p;
  output vout22_v_n;
  output vout22_v_p;
  output vout23_v_n;
  output vout23_v_p;
  output vout30_v_n;
  output vout30_v_p;
  output vout31_v_n;
  output vout31_v_p;
  output vout32_v_n;
  output vout32_v_p;
  output vout33_v_n;
  output vout33_v_p;

  wire GT_DIFF_REFCLK1_clk_n;
  wire GT_DIFF_REFCLK1_clk_p;
  wire [0:3]GT_SERIAL_TX_txn;
  wire [0:3]GT_SERIAL_TX_txp;
  wire [3:0]LMK_Control;
  wire [1:0]Mech_Switch_TTL;
  wire [19:0]PA_Status_TTL;
  wire [7:0]PA_Switch_TTL;
  wire PL_Clk_n;
  wire PL_Clk_p;
  wire PL_SysRef_n;
  wire PL_SysRef_p;
  wire adc1_clk_clk_n;
  wire adc1_clk_clk_p;
  wire dac1_clk_clk_n;
  wire dac1_clk_clk_p;
  wire [0:0]i_LVDS_Clk_n;
  wire [0:0]i_LVDS_Clk_p;
  wire [0:0]i_LVDS_Data0_n;
  wire [0:0]i_LVDS_Data0_p;
  wire [0:0]i_LVDS_Data1_n;
  wire [0:0]i_LVDS_Data1_p;
  wire [0:0]i_LVDS_Data2_n;
  wire [0:0]i_LVDS_Data2_p;
  wire [0:0]i_LVDS_Data3_n;
  wire [0:0]i_LVDS_Data3_p;
  wire iic_rtl_0_scl_i;
  wire iic_rtl_0_scl_io;
  wire iic_rtl_0_scl_o;
  wire iic_rtl_0_scl_t;
  wire iic_rtl_0_sda_i;
  wire iic_rtl_0_sda_io;
  wire iic_rtl_0_sda_o;
  wire iic_rtl_0_sda_t;
  wire iic_rtl_1_scl_i;
  wire iic_rtl_1_scl_io;
  wire iic_rtl_1_scl_o;
  wire iic_rtl_1_scl_t;
  wire iic_rtl_1_sda_i;
  wire iic_rtl_1_sda_io;
  wire iic_rtl_1_sda_o;
  wire iic_rtl_1_sda_t;
  wire [0:0]o_LVDS_Clk_1_n;
  wire [0:0]o_LVDS_Clk_1_p;
  wire [0:0]o_LVDS_Data0_n;
  wire [0:0]o_LVDS_Data0_p;
  wire [0:0]o_LVDS_Data1_n;
  wire [0:0]o_LVDS_Data1_p;
  wire [0:0]o_LVDS_Data2_n;
  wire [0:0]o_LVDS_Data2_p;
  wire [0:0]o_LVDS_Data3_n;
  wire [0:0]o_LVDS_Data3_p;
  wire [0:0]o_Work_State;
  wire spi_rtl_0_io0_i;
  wire spi_rtl_0_io0_io;
  wire spi_rtl_0_io0_o;
  wire spi_rtl_0_io0_t;
  wire spi_rtl_0_io1_i;
  wire spi_rtl_0_io1_io;
  wire spi_rtl_0_io1_o;
  wire spi_rtl_0_io1_t;
  wire spi_rtl_0_sck_i;
  wire spi_rtl_0_sck_io;
  wire spi_rtl_0_sck_o;
  wire spi_rtl_0_sck_t;
  wire [0:0]spi_rtl_0_ss_i_0;
  wire [0:0]spi_rtl_0_ss_io_0;
  wire [0:0]spi_rtl_0_ss_o_0;
  wire spi_rtl_0_ss_t;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;
  wire uart_rtl_1_rxd;
  wire uart_rtl_1_txd;
  wire uart_rtl_2_rxd;
  wire uart_rtl_2_txd;
  wire uart_rtl_3_rxd;
  wire uart_rtl_3_txd;
  wire vin00_v_n;
  wire vin00_v_p;
  wire vin01_v_n;
  wire vin01_v_p;
  wire vin02_v_n;
  wire vin02_v_p;
  wire vin03_v_n;
  wire vin03_v_p;
  wire vin10_v_n;
  wire vin10_v_p;
  wire vin11_v_n;
  wire vin11_v_p;
  wire vin12_v_n;
  wire vin12_v_p;
  wire vin13_v_n;
  wire vin13_v_p;
  wire vin20_v_n;
  wire vin20_v_p;
  wire vin21_v_n;
  wire vin21_v_p;
  wire vin22_v_n;
  wire vin22_v_p;
  wire vin23_v_n;
  wire vin23_v_p;
  wire vin30_v_n;
  wire vin30_v_p;
  wire vin31_v_n;
  wire vin31_v_p;
  wire vin32_v_n;
  wire vin32_v_p;
  wire vin33_v_n;
  wire vin33_v_p;
  wire vout00_v_n;
  wire vout00_v_p;
  wire vout01_v_n;
  wire vout01_v_p;
  wire vout02_v_n;
  wire vout02_v_p;
  wire vout03_v_n;
  wire vout03_v_p;
  wire vout10_v_n;
  wire vout10_v_p;
  wire vout11_v_n;
  wire vout11_v_p;
  wire vout12_v_n;
  wire vout12_v_p;
  wire vout13_v_n;
  wire vout13_v_p;
  wire vout20_v_n;
  wire vout20_v_p;
  wire vout21_v_n;
  wire vout21_v_p;
  wire vout22_v_n;
  wire vout22_v_p;
  wire vout23_v_n;
  wire vout23_v_p;
  wire vout30_v_n;
  wire vout30_v_p;
  wire vout31_v_n;
  wire vout31_v_p;
  wire vout32_v_n;
  wire vout32_v_p;
  wire vout33_v_n;
  wire vout33_v_p;

  design_1 design_1_i
       (.GT_DIFF_REFCLK1_clk_n(GT_DIFF_REFCLK1_clk_n),
        .GT_DIFF_REFCLK1_clk_p(GT_DIFF_REFCLK1_clk_p),
        .GT_SERIAL_TX_txn(GT_SERIAL_TX_txn),
        .GT_SERIAL_TX_txp(GT_SERIAL_TX_txp),
        .LMK_Control(LMK_Control),
        .Mech_Switch_TTL(Mech_Switch_TTL),
        .PA_Status_TTL(PA_Status_TTL),
        .PA_Switch_TTL(PA_Switch_TTL),
        .PL_Clk_n(PL_Clk_n),
        .PL_Clk_p(PL_Clk_p),
        .PL_SysRef_n(PL_SysRef_n),
        .PL_SysRef_p(PL_SysRef_p),
        .adc1_clk_clk_n(adc1_clk_clk_n),
        .adc1_clk_clk_p(adc1_clk_clk_p),
        .dac1_clk_clk_n(dac1_clk_clk_n),
        .dac1_clk_clk_p(dac1_clk_clk_p),
        .i_LVDS_Clk_n(i_LVDS_Clk_n),
        .i_LVDS_Clk_p(i_LVDS_Clk_p),
        .i_LVDS_Data0_n(i_LVDS_Data0_n),
        .i_LVDS_Data0_p(i_LVDS_Data0_p),
        .i_LVDS_Data1_n(i_LVDS_Data1_n),
        .i_LVDS_Data1_p(i_LVDS_Data1_p),
        .i_LVDS_Data2_n(i_LVDS_Data2_n),
        .i_LVDS_Data2_p(i_LVDS_Data2_p),
        .i_LVDS_Data3_n(i_LVDS_Data3_n),
        .i_LVDS_Data3_p(i_LVDS_Data3_p),
        .iic_rtl_0_scl_i(iic_rtl_0_scl_i),
        .iic_rtl_0_scl_o(iic_rtl_0_scl_o),
        .iic_rtl_0_scl_t(iic_rtl_0_scl_t),
        .iic_rtl_0_sda_i(iic_rtl_0_sda_i),
        .iic_rtl_0_sda_o(iic_rtl_0_sda_o),
        .iic_rtl_0_sda_t(iic_rtl_0_sda_t),
        .iic_rtl_1_scl_i(iic_rtl_1_scl_i),
        .iic_rtl_1_scl_o(iic_rtl_1_scl_o),
        .iic_rtl_1_scl_t(iic_rtl_1_scl_t),
        .iic_rtl_1_sda_i(iic_rtl_1_sda_i),
        .iic_rtl_1_sda_o(iic_rtl_1_sda_o),
        .iic_rtl_1_sda_t(iic_rtl_1_sda_t),
        .o_LVDS_Clk_1_n(o_LVDS_Clk_1_n),
        .o_LVDS_Clk_1_p(o_LVDS_Clk_1_p),
        .o_LVDS_Data0_n(o_LVDS_Data0_n),
        .o_LVDS_Data0_p(o_LVDS_Data0_p),
        .o_LVDS_Data1_n(o_LVDS_Data1_n),
        .o_LVDS_Data1_p(o_LVDS_Data1_p),
        .o_LVDS_Data2_n(o_LVDS_Data2_n),
        .o_LVDS_Data2_p(o_LVDS_Data2_p),
        .o_LVDS_Data3_n(o_LVDS_Data3_n),
        .o_LVDS_Data3_p(o_LVDS_Data3_p),
        .o_Work_State(o_Work_State),
        .spi_rtl_0_io0_i(spi_rtl_0_io0_i),
        .spi_rtl_0_io0_o(spi_rtl_0_io0_o),
        .spi_rtl_0_io0_t(spi_rtl_0_io0_t),
        .spi_rtl_0_io1_i(spi_rtl_0_io1_i),
        .spi_rtl_0_io1_o(spi_rtl_0_io1_o),
        .spi_rtl_0_io1_t(spi_rtl_0_io1_t),
        .spi_rtl_0_sck_i(spi_rtl_0_sck_i),
        .spi_rtl_0_sck_o(spi_rtl_0_sck_o),
        .spi_rtl_0_sck_t(spi_rtl_0_sck_t),
        .spi_rtl_0_ss_i(spi_rtl_0_ss_i_0),
        .spi_rtl_0_ss_o(spi_rtl_0_ss_o_0),
        .spi_rtl_0_ss_t(spi_rtl_0_ss_t),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .uart_rtl_1_rxd(uart_rtl_1_rxd),
        .uart_rtl_1_txd(uart_rtl_1_txd),
        .uart_rtl_2_rxd(uart_rtl_2_rxd),
        .uart_rtl_2_txd(uart_rtl_2_txd),
        .uart_rtl_3_rxd(uart_rtl_3_rxd),
        .uart_rtl_3_txd(uart_rtl_3_txd),
        .vin00_v_n(vin00_v_n),
        .vin00_v_p(vin00_v_p),
        .vin01_v_n(vin01_v_n),
        .vin01_v_p(vin01_v_p),
        .vin02_v_n(vin02_v_n),
        .vin02_v_p(vin02_v_p),
        .vin03_v_n(vin03_v_n),
        .vin03_v_p(vin03_v_p),
        .vin10_v_n(vin10_v_n),
        .vin10_v_p(vin10_v_p),
        .vin11_v_n(vin11_v_n),
        .vin11_v_p(vin11_v_p),
        .vin12_v_n(vin12_v_n),
        .vin12_v_p(vin12_v_p),
        .vin13_v_n(vin13_v_n),
        .vin13_v_p(vin13_v_p),
        .vin20_v_n(vin20_v_n),
        .vin20_v_p(vin20_v_p),
        .vin21_v_n(vin21_v_n),
        .vin21_v_p(vin21_v_p),
        .vin22_v_n(vin22_v_n),
        .vin22_v_p(vin22_v_p),
        .vin23_v_n(vin23_v_n),
        .vin23_v_p(vin23_v_p),
        .vin30_v_n(vin30_v_n),
        .vin30_v_p(vin30_v_p),
        .vin31_v_n(vin31_v_n),
        .vin31_v_p(vin31_v_p),
        .vin32_v_n(vin32_v_n),
        .vin32_v_p(vin32_v_p),
        .vin33_v_n(vin33_v_n),
        .vin33_v_p(vin33_v_p),
        .vout00_v_n(vout00_v_n),
        .vout00_v_p(vout00_v_p),
        .vout01_v_n(vout01_v_n),
        .vout01_v_p(vout01_v_p),
        .vout02_v_n(vout02_v_n),
        .vout02_v_p(vout02_v_p),
        .vout03_v_n(vout03_v_n),
        .vout03_v_p(vout03_v_p),
        .vout10_v_n(vout10_v_n),
        .vout10_v_p(vout10_v_p),
        .vout11_v_n(vout11_v_n),
        .vout11_v_p(vout11_v_p),
        .vout12_v_n(vout12_v_n),
        .vout12_v_p(vout12_v_p),
        .vout13_v_n(vout13_v_n),
        .vout13_v_p(vout13_v_p),
        .vout20_v_n(vout20_v_n),
        .vout20_v_p(vout20_v_p),
        .vout21_v_n(vout21_v_n),
        .vout21_v_p(vout21_v_p),
        .vout22_v_n(vout22_v_n),
        .vout22_v_p(vout22_v_p),
        .vout23_v_n(vout23_v_n),
        .vout23_v_p(vout23_v_p),
        .vout30_v_n(vout30_v_n),
        .vout30_v_p(vout30_v_p),
        .vout31_v_n(vout31_v_n),
        .vout31_v_p(vout31_v_p),
        .vout32_v_n(vout32_v_n),
        .vout32_v_p(vout32_v_p),
        .vout33_v_n(vout33_v_n),
        .vout33_v_p(vout33_v_p));
  IOBUF iic_rtl_0_scl_iobuf
       (.I(iic_rtl_0_scl_o),
        .IO(iic_rtl_0_scl_io),
        .O(iic_rtl_0_scl_i),
        .T(iic_rtl_0_scl_t));
  IOBUF iic_rtl_0_sda_iobuf
       (.I(iic_rtl_0_sda_o),
        .IO(iic_rtl_0_sda_io),
        .O(iic_rtl_0_sda_i),
        .T(iic_rtl_0_sda_t));
  IOBUF iic_rtl_1_scl_iobuf
       (.I(iic_rtl_1_scl_o),
        .IO(iic_rtl_1_scl_io),
        .O(iic_rtl_1_scl_i),
        .T(iic_rtl_1_scl_t));
  IOBUF iic_rtl_1_sda_iobuf
       (.I(iic_rtl_1_sda_o),
        .IO(iic_rtl_1_sda_io),
        .O(iic_rtl_1_sda_i),
        .T(iic_rtl_1_sda_t));
  IOBUF spi_rtl_0_io0_iobuf
       (.I(spi_rtl_0_io0_o),
        .IO(spi_rtl_0_io0_io),
        .O(spi_rtl_0_io0_i),
        .T(spi_rtl_0_io0_t));
  IOBUF spi_rtl_0_io1_iobuf
       (.I(spi_rtl_0_io1_o),
        .IO(spi_rtl_0_io1_io),
        .O(spi_rtl_0_io1_i),
        .T(spi_rtl_0_io1_t));
  IOBUF spi_rtl_0_sck_iobuf
       (.I(spi_rtl_0_sck_o),
        .IO(spi_rtl_0_sck_io),
        .O(spi_rtl_0_sck_i),
        .T(spi_rtl_0_sck_t));
  IOBUF spi_rtl_0_ss_iobuf_0
       (.I(spi_rtl_0_ss_o_0),
        .IO(spi_rtl_0_ss_io[0]),
        .O(spi_rtl_0_ss_i_0),
        .T(spi_rtl_0_ss_t));
endmodule
