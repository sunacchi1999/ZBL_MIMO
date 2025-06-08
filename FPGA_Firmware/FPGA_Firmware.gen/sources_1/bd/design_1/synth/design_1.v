//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Jun  8 21:41:01 2025
//Host        : ZBL_Thinkbook running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=98,numReposBlks=87,numNonXlnxBlks=0,numHierBlks=11,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=10,da_board_cnt=8,da_clkrst_cnt=3,da_rf_converter_usp_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
    iic_rtl_0_scl_i,
    iic_rtl_0_scl_o,
    iic_rtl_0_scl_t,
    iic_rtl_0_sda_i,
    iic_rtl_0_sda_o,
    iic_rtl_0_sda_t,
    iic_rtl_1_scl_i,
    iic_rtl_1_scl_o,
    iic_rtl_1_scl_t,
    iic_rtl_1_sda_i,
    iic_rtl_1_sda_o,
    iic_rtl_1_sda_t,
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
    spi_rtl_0_io0_i,
    spi_rtl_0_io0_o,
    spi_rtl_0_io0_t,
    spi_rtl_0_io1_i,
    spi_rtl_0_io1_o,
    spi_rtl_0_io1_t,
    spi_rtl_0_sck_i,
    spi_rtl_0_sck_o,
    spi_rtl_0_sck_t,
    spi_rtl_0_ss_i,
    spi_rtl_0_ss_o,
    spi_rtl_0_ss_t,
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 GT_DIFF_REFCLK1 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GT_DIFF_REFCLK1, CAN_DEBUG false, FREQ_HZ 156250000" *) input GT_DIFF_REFCLK1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 GT_DIFF_REFCLK1 CLK_P" *) input GT_DIFF_REFCLK1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX:1.0 GT_SERIAL_TX TXN" *) output [0:3]GT_SERIAL_TX_txn;
  (* X_INTERFACE_INFO = "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX:1.0 GT_SERIAL_TX TXP" *) output [0:3]GT_SERIAL_TX_txp;
  output [3:0]LMK_Control;
  output [1:0]Mech_Switch_TTL;
  input [19:0]PA_Status_TTL;
  output [7:0]PA_Switch_TTL;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_CLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_CLK_N, CLK_DOMAIN design_1_PL_Clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input PL_Clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_CLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_CLK_P, CLK_DOMAIN design_1_PL_Clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input PL_Clk_p;
  input PL_SysRef_n;
  input PL_SysRef_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc1_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc1_clk, CAN_DEBUG false, FREQ_HZ 200000000" *) input adc1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc1_clk CLK_P" *) input adc1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dac1_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac1_clk, CAN_DEBUG false, FREQ_HZ 200000000" *) input dac1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dac1_clk CLK_P" *) input dac1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_LVDS_CLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_LVDS_CLK_N, CLK_DOMAIN design_1_LVDS_Tx_0_0_o_LVDS_Clk_n, FREQ_HZ 20000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input [0:0]i_LVDS_Clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_LVDS_CLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_LVDS_CLK_P, CLK_DOMAIN design_1_LVDS_Tx_0_0_o_LVDS_Clk_p, FREQ_HZ 20000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input [0:0]i_LVDS_Clk_p;
  input [0:0]i_LVDS_Data0_n;
  input [0:0]i_LVDS_Data0_p;
  input [0:0]i_LVDS_Data1_n;
  input [0:0]i_LVDS_Data1_p;
  input [0:0]i_LVDS_Data2_n;
  input [0:0]i_LVDS_Data2_p;
  input [0:0]i_LVDS_Data3_n;
  input [0:0]i_LVDS_Data3_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SCL_I" *) input iic_rtl_0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SCL_O" *) output iic_rtl_0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SCL_T" *) output iic_rtl_0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SDA_I" *) input iic_rtl_0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SDA_O" *) output iic_rtl_0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SDA_T" *) output iic_rtl_0_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1 SCL_I" *) input iic_rtl_1_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1 SCL_O" *) output iic_rtl_1_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1 SCL_T" *) output iic_rtl_1_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1 SDA_I" *) input iic_rtl_1_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1 SDA_O" *) output iic_rtl_1_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1 SDA_T" *) output iic_rtl_1_sda_t;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 IO0_I" *) input spi_rtl_0_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 IO0_O" *) output spi_rtl_0_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 IO0_T" *) output spi_rtl_0_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 IO1_I" *) input spi_rtl_0_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 IO1_O" *) output spi_rtl_0_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 IO1_T" *) output spi_rtl_0_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 SCK_I" *) input spi_rtl_0_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 SCK_O" *) output spi_rtl_0_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 SCK_T" *) output spi_rtl_0_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 SS_I" *) input [0:0]spi_rtl_0_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 SS_O" *) output [0:0]spi_rtl_0_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0 SS_T" *) output spi_rtl_0_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_n" *) input sysref_in_diff_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_p" *) input sysref_in_diff_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0 RxD" *) input uart_rtl_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0 TxD" *) output uart_rtl_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_1 RxD" *) input uart_rtl_1_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_1 TxD" *) output uart_rtl_1_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_2 RxD" *) input uart_rtl_2_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_2 TxD" *) output uart_rtl_2_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_3 RxD" *) input uart_rtl_3_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_3 TxD" *) output uart_rtl_3_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin00 V_N" *) input vin00_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin00 V_P" *) input vin00_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin01 V_N" *) input vin01_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin01 V_P" *) input vin01_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin02 V_N" *) input vin02_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin02 V_P" *) input vin02_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin03 V_N" *) input vin03_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin03 V_P" *) input vin03_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin10 V_N" *) input vin10_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin10 V_P" *) input vin10_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin11 V_N" *) input vin11_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin11 V_P" *) input vin11_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin12 V_N" *) input vin12_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin12 V_P" *) input vin12_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin13 V_N" *) input vin13_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin13 V_P" *) input vin13_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin20 V_N" *) input vin20_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin20 V_P" *) input vin20_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin21 V_N" *) input vin21_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin21 V_P" *) input vin21_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin22 V_N" *) input vin22_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin22 V_P" *) input vin22_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin23 V_N" *) input vin23_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin23 V_P" *) input vin23_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin30 V_N" *) input vin30_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin30 V_P" *) input vin30_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin31 V_N" *) input vin31_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin31 V_P" *) input vin31_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin32 V_N" *) input vin32_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin32 V_P" *) input vin32_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin33 V_N" *) input vin33_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin33 V_P" *) input vin33_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout00 V_N" *) output vout00_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout00 V_P" *) output vout00_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout01 V_N" *) output vout01_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout01 V_P" *) output vout01_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout02 V_N" *) output vout02_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout02 V_P" *) output vout02_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout03 V_N" *) output vout03_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout03 V_P" *) output vout03_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout10 V_N" *) output vout10_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout10 V_P" *) output vout10_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout11 V_N" *) output vout11_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout11 V_P" *) output vout11_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout12 V_N" *) output vout12_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout12 V_P" *) output vout12_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout13 V_N" *) output vout13_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout13 V_P" *) output vout13_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout20 V_N" *) output vout20_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout20 V_P" *) output vout20_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout21 V_N" *) output vout21_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout21 V_P" *) output vout21_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout22 V_N" *) output vout22_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout22 V_P" *) output vout22_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout23 V_N" *) output vout23_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout23 V_P" *) output vout23_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout30 V_N" *) output vout30_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout30 V_P" *) output vout30_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout31 V_N" *) output vout31_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout31 V_P" *) output vout31_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout32 V_N" *) output vout32_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout32 V_P" *) output vout32_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout33 V_N" *) output vout33_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout33 V_P" *) output vout33_v_p;

  wire [31:0]AXI_Lite_0_Data_Out_0;
  wire [31:0]AXI_Lite_0_Data_Out_19;
  wire [31:0]AXI_Lite_0_Data_Out_2;
  wire [31:0]AXI_Lite_0_Data_Out_20;
  wire [31:0]AXI_Lite_0_Data_Out_21;
  wire [31:0]AXI_Lite_0_Data_Out_22;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC00;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC01;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC02;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC03;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC10;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC11;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC12;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC13;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC20;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC21;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC22;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC23;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC30;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC31;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC32;
  wire [79:0]AXI_Stream_MUX_0_m_Data_ADC33;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC00;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC01;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC02;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC03;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC10;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC11;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC12;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC13;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC20;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC21;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC22;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC23;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC30;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC31;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC32;
  wire [0:0]AXI_Stream_MUX_0_m_Valid_ADC33;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC00_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC00_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC01_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC01_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC02_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC02_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC03_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC03_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC10_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC10_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC11_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC11_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC12_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC12_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC13_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC13_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC20_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC20_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC21_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC21_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC22_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC22_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC23_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC23_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC30_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC30_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC31_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC31_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC32_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC32_1;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC33_0;
  wire [0:0]AXI_Stream_MUX_0_s_Ready_ADC33_1;
  wire [0:0]Aurora_Init_Rstn_0_Aurora_PMA_Init;
  wire [0:0]Aurora_Init_Rstn_0_Aurora_RST_PB;
  wire [7:0]CPF_Check_0_Error_Code;
  wire [23:0]CPF_Check_0_o_Frame_Cnt_Real;
  wire [27:0]CPF_Check_0_o_Pulse_Cnt_Real;
  wire [0:0]CPF_Check_0_o_Task_Over;
  wire [0:0]CPF_Check_0_o_Work_State;
  wire DAC_Data_Gen_0_m_axis_DAC00_TREADY;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC01_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC01_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC01_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC02_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC02_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC02_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC03_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC03_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC03_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC10_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC10_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC10_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC11_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC11_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC11_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC12_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC12_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC12_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC13_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC13_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC13_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC20_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC20_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC20_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC21_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC21_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC21_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC22_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC22_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC22_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC23_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC23_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC23_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC30_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC30_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC30_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC31_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC31_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC31_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC32_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC32_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC32_TVALID;
  wire [255:0]DAC_Data_Gen_0_m_axis_DAC33_TDATA;
  wire DAC_Data_Gen_0_m_axis_DAC33_TREADY;
  wire [0:0]DAC_Data_Gen_0_m_axis_DAC33_TVALID;
  (* CONN_BUS_INFO = "DAC_Data_Gen_0_m_axis_DAC00 xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [255:0]DAC_Data_Gen_0_m_axis_tdata_DAC00;
  (* CONN_BUS_INFO = "DAC_Data_Gen_0_m_axis_DAC00 xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire [0:0]DAC_Data_Gen_0_m_axis_tvalid_DAC00;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC00;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC01;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC02;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC03;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC10;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC11;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC12;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC13;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC20;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC21;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC22;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC23;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC30;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC31;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC32;
  wire [79:0]Data_Link_Vio_0_m_axis_tdata_ADC33;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC00;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC01;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC02;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC03;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC10;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC11;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC12;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC13;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC20;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC21;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC22;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC23;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC30;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC31;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC32;
  wire [0:0]Data_Link_Vio_0_m_axis_tvalid_ADC33;
  wire [255:0]Down_Sampling_0_m_axi_tx_tdata;
  wire [31:0]Down_Sampling_0_m_axi_tx_tkeep;
  wire Down_Sampling_0_m_axi_tx_tlast;
  wire Down_Sampling_0_m_axi_tx_tvalid;
  wire Down_Sampling_0_s_axis_tready_ADC00;
  wire Down_Sampling_0_s_axis_tready_ADC01;
  wire Down_Sampling_0_s_axis_tready_ADC02;
  wire Down_Sampling_0_s_axis_tready_ADC03;
  wire Down_Sampling_0_s_axis_tready_ADC10;
  wire Down_Sampling_0_s_axis_tready_ADC11;
  wire Down_Sampling_0_s_axis_tready_ADC12;
  wire Down_Sampling_0_s_axis_tready_ADC13;
  wire Down_Sampling_0_s_axis_tready_ADC20;
  wire Down_Sampling_0_s_axis_tready_ADC21;
  wire Down_Sampling_0_s_axis_tready_ADC22;
  wire Down_Sampling_0_s_axis_tready_ADC23;
  wire Down_Sampling_0_s_axis_tready_ADC30;
  wire Down_Sampling_0_s_axis_tready_ADC31;
  wire Down_Sampling_0_s_axis_tready_ADC32;
  wire Down_Sampling_0_s_axis_tready_ADC33;
  wire GT_DIFF_REFCLK1_1_CLK_N;
  wire GT_DIFF_REFCLK1_1_CLK_P;
  wire [0:0]LVDS_Rx_0_o_ADC_Trigger;
  wire [3:0]LVDS_Rx_0_o_Channel_Cnt;
  wire [23:0]LVDS_Rx_0_o_Frame_Cnt;
  wire [27:0]LVDS_Rx_0_o_Pulse_Cnt;
  wire [0:0]LVDS_Rx_0_o_Rx_PolaMode;
  wire [0:0]LVDS_Rx_0_o_Tx_PolaMode;
  wire [0:0]LVDS_Tx_0_o_DAC_Trigger;
  wire [0:0]LVDS_Tx_0_o_LVDS_Clk_1_n;
  wire [0:0]LVDS_Tx_0_o_LVDS_Clk_1_p;
  wire [0:0]LVDS_Tx_0_o_LVDS_Data0_n;
  wire [0:0]LVDS_Tx_0_o_LVDS_Data0_p;
  wire [0:0]LVDS_Tx_0_o_LVDS_Data1_n;
  wire [0:0]LVDS_Tx_0_o_LVDS_Data1_p;
  wire [0:0]LVDS_Tx_0_o_LVDS_Data2_n;
  wire [0:0]LVDS_Tx_0_o_LVDS_Data2_p;
  wire [0:0]LVDS_Tx_0_o_LVDS_Data3_n;
  wire [0:0]LVDS_Tx_0_o_LVDS_Data3_p;
  wire MTS_Clk_0_PL_Clk;
  wire MTS_Clk_0_User_SysRef;
  wire [13:0]Net;
  wire [31:0]Net1;
  wire [31:0]Net10;
  wire [31:0]Net11;
  wire [31:0]Net12;
  wire [31:0]Net13;
  wire [31:0]Net14;
  wire [31:0]Net15;
  wire [31:0]Net16;
  wire [31:0]Net18;
  wire [31:0]Net19;
  wire [31:0]Net2;
  wire [31:0]Net20;
  wire [31:0]Net3;
  wire [31:0]Net4;
  wire [31:0]Net5;
  wire [15:0]Net6;
  wire [15:0]Net7;
  wire [31:0]Net8;
  wire [31:0]Net9;
  wire [19:0]PA_Status_TTL_1;
  wire PL_Clk_n_1;
  wire PL_Clk_p_1;
  wire PL_SysRef_n_1;
  wire PL_SysRef_p_1;
  wire adc1_clk_1_CLK_N;
  wire adc1_clk_1_CLK_P;
  wire [0:3]aurora_64b66b_0_GT_SERIAL_TX_TXN;
  wire [0:3]aurora_64b66b_0_GT_SERIAL_TX_TXP;
  wire aurora_64b66b_0_s_axi_tx_tready;
  wire aurora_64b66b_0_tx_channel_up;
  wire aurora_64b66b_0_user_clk_out;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire axi_iic_0_iic2intc_irpt;
  wire axi_iic_1_IIC_SCL_I;
  wire axi_iic_1_IIC_SCL_O;
  wire axi_iic_1_IIC_SCL_T;
  wire axi_iic_1_IIC_SDA_I;
  wire axi_iic_1_IIC_SDA_O;
  wire axi_iic_1_IIC_SDA_T;
  wire axi_iic_1_iic2intc_irpt;
  wire axi_quad_spi_0_SPI_0_IO0_I;
  wire axi_quad_spi_0_SPI_0_IO0_O;
  wire axi_quad_spi_0_SPI_0_IO0_T;
  wire axi_quad_spi_0_SPI_0_IO1_I;
  wire axi_quad_spi_0_SPI_0_IO1_O;
  wire axi_quad_spi_0_SPI_0_IO1_T;
  wire axi_quad_spi_0_SPI_0_SCK_I;
  wire axi_quad_spi_0_SPI_0_SCK_O;
  wire axi_quad_spi_0_SPI_0_SCK_T;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_O;
  wire axi_quad_spi_0_SPI_0_SS_T;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_interrupt;
  wire axi_uartlite_1_UART_RxD;
  wire axi_uartlite_1_UART_TxD;
  wire axi_uartlite_1_interrupt;
  wire axi_uartlite_2_UART_RxD;
  wire axi_uartlite_2_UART_TxD;
  wire axi_uartlite_2_interrupt;
  wire axi_uartlite_3_UART_RxD;
  wire axi_uartlite_3_UART_TxD;
  wire axi_uartlite_3_interrupt;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_clk_out3;
  wire clk_wiz_0_locked;
  wire dac1_clk_1_CLK_N;
  wire dac1_clk_1_CLK_P;
  wire [0:0]i_LVDS_Clk_n_1;
  wire [0:0]i_LVDS_Clk_p_1;
  wire [0:0]i_LVDS_Data0_n_1;
  wire [0:0]i_LVDS_Data0_p_1;
  wire [0:0]i_LVDS_Data1_n_1;
  wire [0:0]i_LVDS_Data1_p_1;
  wire [0:0]i_LVDS_Data2_n_1;
  wire [0:0]i_LVDS_Data2_p_1;
  wire [0:0]i_LVDS_Data3_n_1;
  wire [0:0]i_LVDS_Data3_p_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [39:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M00_AXI_ARPROT;
  wire ps8_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M00_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M00_AXI_AWPROT;
  wire ps8_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  wire ps8_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  wire ps8_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  wire ps8_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M00_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M00_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_ARADDR;
  wire ps8_0_axi_periph_M01_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_AWADDR;
  wire ps8_0_axi_periph_M01_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M01_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_BRESP;
  wire ps8_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_RRESP;
  wire ps8_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_WDATA;
  wire ps8_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M01_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M01_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_ARADDR;
  wire ps8_0_axi_periph_M03_AXI_ARREADY;
  wire [0:0]ps8_0_axi_periph_M03_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_AWADDR;
  wire ps8_0_axi_periph_M03_AXI_AWREADY;
  wire [0:0]ps8_0_axi_periph_M03_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_BRESP;
  wire ps8_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_RDATA;
  wire [0:0]ps8_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_RRESP;
  wire ps8_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_WDATA;
  wire ps8_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M03_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M03_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_ARADDR;
  wire ps8_0_axi_periph_M04_AXI_ARREADY;
  wire ps8_0_axi_periph_M04_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_AWADDR;
  wire ps8_0_axi_periph_M04_AXI_AWREADY;
  wire ps8_0_axi_periph_M04_AXI_AWVALID;
  wire ps8_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_BRESP;
  wire ps8_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_RDATA;
  wire ps8_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_RRESP;
  wire ps8_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_WDATA;
  wire ps8_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M04_AXI_WSTRB;
  wire ps8_0_axi_periph_M04_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M05_AXI_ARADDR;
  wire ps8_0_axi_periph_M05_AXI_ARREADY;
  wire ps8_0_axi_periph_M05_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M05_AXI_AWADDR;
  wire ps8_0_axi_periph_M05_AXI_AWREADY;
  wire ps8_0_axi_periph_M05_AXI_AWVALID;
  wire ps8_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M05_AXI_BRESP;
  wire ps8_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M05_AXI_RDATA;
  wire ps8_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M05_AXI_RRESP;
  wire ps8_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M05_AXI_WDATA;
  wire ps8_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M05_AXI_WSTRB;
  wire ps8_0_axi_periph_M05_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M06_AXI_ARADDR;
  wire ps8_0_axi_periph_M06_AXI_ARREADY;
  wire ps8_0_axi_periph_M06_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M06_AXI_AWADDR;
  wire ps8_0_axi_periph_M06_AXI_AWREADY;
  wire ps8_0_axi_periph_M06_AXI_AWVALID;
  wire ps8_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M06_AXI_BRESP;
  wire ps8_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M06_AXI_RDATA;
  wire ps8_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M06_AXI_RRESP;
  wire ps8_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M06_AXI_WDATA;
  wire ps8_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M06_AXI_WSTRB;
  wire ps8_0_axi_periph_M06_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M07_AXI_ARADDR;
  wire ps8_0_axi_periph_M07_AXI_ARREADY;
  wire ps8_0_axi_periph_M07_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M07_AXI_AWADDR;
  wire ps8_0_axi_periph_M07_AXI_AWREADY;
  wire ps8_0_axi_periph_M07_AXI_AWVALID;
  wire ps8_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M07_AXI_BRESP;
  wire ps8_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M07_AXI_RDATA;
  wire ps8_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M07_AXI_RRESP;
  wire ps8_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M07_AXI_WDATA;
  wire ps8_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M07_AXI_WSTRB;
  wire ps8_0_axi_periph_M07_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M08_AXI_ARADDR;
  wire ps8_0_axi_periph_M08_AXI_ARREADY;
  wire ps8_0_axi_periph_M08_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M08_AXI_AWADDR;
  wire ps8_0_axi_periph_M08_AXI_AWREADY;
  wire ps8_0_axi_periph_M08_AXI_AWVALID;
  wire ps8_0_axi_periph_M08_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M08_AXI_BRESP;
  wire ps8_0_axi_periph_M08_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M08_AXI_RDATA;
  wire ps8_0_axi_periph_M08_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M08_AXI_RRESP;
  wire ps8_0_axi_periph_M08_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M08_AXI_WDATA;
  wire ps8_0_axi_periph_M08_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M08_AXI_WSTRB;
  wire ps8_0_axi_periph_M08_AXI_WVALID;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire sysref_in_1_diff_n;
  wire sysref_in_1_diff_p;
  wire usp_rf_data_converter_0_irq;
  wire [79:0]usp_rf_data_converter_0_m00_axis_tdata;
  wire usp_rf_data_converter_0_m00_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m01_axis_tdata;
  wire usp_rf_data_converter_0_m01_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m02_axis_tdata;
  wire usp_rf_data_converter_0_m02_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m03_axis_tdata;
  wire usp_rf_data_converter_0_m03_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m10_axis_tdata;
  wire usp_rf_data_converter_0_m10_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m11_axis_tdata;
  wire usp_rf_data_converter_0_m11_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m12_axis_tdata;
  wire usp_rf_data_converter_0_m12_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m13_axis_tdata;
  wire usp_rf_data_converter_0_m13_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m20_axis_tdata;
  wire usp_rf_data_converter_0_m20_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m21_axis_tdata;
  wire usp_rf_data_converter_0_m21_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m22_axis_tdata;
  wire usp_rf_data_converter_0_m22_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m23_axis_tdata;
  wire usp_rf_data_converter_0_m23_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m30_axis_tdata;
  wire usp_rf_data_converter_0_m30_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m31_axis_tdata;
  wire usp_rf_data_converter_0_m31_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m32_axis_tdata;
  wire usp_rf_data_converter_0_m32_axis_tvalid;
  wire [79:0]usp_rf_data_converter_0_m33_axis_tdata;
  wire usp_rf_data_converter_0_m33_axis_tvalid;
  wire usp_rf_data_converter_0_vout00_V_N;
  wire usp_rf_data_converter_0_vout00_V_P;
  wire usp_rf_data_converter_0_vout01_V_N;
  wire usp_rf_data_converter_0_vout01_V_P;
  wire usp_rf_data_converter_0_vout02_V_N;
  wire usp_rf_data_converter_0_vout02_V_P;
  wire usp_rf_data_converter_0_vout03_V_N;
  wire usp_rf_data_converter_0_vout03_V_P;
  wire usp_rf_data_converter_0_vout10_V_N;
  wire usp_rf_data_converter_0_vout10_V_P;
  wire usp_rf_data_converter_0_vout11_V_N;
  wire usp_rf_data_converter_0_vout11_V_P;
  wire usp_rf_data_converter_0_vout12_V_N;
  wire usp_rf_data_converter_0_vout12_V_P;
  wire usp_rf_data_converter_0_vout13_V_N;
  wire usp_rf_data_converter_0_vout13_V_P;
  wire usp_rf_data_converter_0_vout20_V_N;
  wire usp_rf_data_converter_0_vout20_V_P;
  wire usp_rf_data_converter_0_vout21_V_N;
  wire usp_rf_data_converter_0_vout21_V_P;
  wire usp_rf_data_converter_0_vout22_V_N;
  wire usp_rf_data_converter_0_vout22_V_P;
  wire usp_rf_data_converter_0_vout23_V_N;
  wire usp_rf_data_converter_0_vout23_V_P;
  wire usp_rf_data_converter_0_vout30_V_N;
  wire usp_rf_data_converter_0_vout30_V_P;
  wire usp_rf_data_converter_0_vout31_V_N;
  wire usp_rf_data_converter_0_vout31_V_P;
  wire usp_rf_data_converter_0_vout32_V_N;
  wire usp_rf_data_converter_0_vout32_V_P;
  wire usp_rf_data_converter_0_vout33_V_N;
  wire usp_rf_data_converter_0_vout33_V_P;
  wire vin00_1_V_N;
  wire vin00_1_V_P;
  wire vin01_1_V_N;
  wire vin01_1_V_P;
  wire vin02_1_V_N;
  wire vin02_1_V_P;
  wire vin03_1_V_N;
  wire vin03_1_V_P;
  wire vin10_1_V_N;
  wire vin10_1_V_P;
  wire vin11_1_V_N;
  wire vin11_1_V_P;
  wire vin12_1_V_N;
  wire vin12_1_V_P;
  wire vin13_1_V_N;
  wire vin13_1_V_P;
  wire vin20_1_V_N;
  wire vin20_1_V_P;
  wire vin21_1_V_N;
  wire vin21_1_V_P;
  wire vin22_1_V_N;
  wire vin22_1_V_P;
  wire vin23_1_V_N;
  wire vin23_1_V_P;
  wire vin30_1_V_N;
  wire vin30_1_V_P;
  wire vin31_1_V_N;
  wire vin31_1_V_P;
  wire vin32_1_V_N;
  wire vin32_1_V_P;
  wire vin33_1_V_N;
  wire vin33_1_V_P;
  wire [31:0]xlconcat_2_dout;
  wire [31:0]xlconcat_3_dout;
  wire [8:0]xlconcat_4_dout;
  wire [31:0]xlconcat_5_dout;
  wire [7:0]xlconcat_6_dout;
  wire [2:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;
  wire [11:0]xlconstant_2_dout;
  wire [15:0]xlslice_0_Dout;
  wire [15:0]xlslice_10_Dout;
  wire [15:0]xlslice_11_Dout;
  wire [0:0]xlslice_12_Dout;
  wire [15:0]xlslice_15_Dout;
  wire [15:0]xlslice_16_Dout;
  wire [15:0]xlslice_17_Dout;
  wire [15:0]xlslice_18_Dout;
  wire [15:0]xlslice_19_Dout;
  wire [15:0]xlslice_1_Dout;
  wire [15:0]xlslice_20_Dout;
  wire [15:0]xlslice_21_Dout;
  wire [15:0]xlslice_22_Dout;
  wire [15:0]xlslice_23_Dout;
  wire [15:0]xlslice_24_Dout;
  wire [15:0]xlslice_25_Dout;
  wire [15:0]xlslice_26_Dout;
  wire [15:0]xlslice_27_Dout;
  wire [15:0]xlslice_28_Dout;
  wire [15:0]xlslice_29_Dout;
  wire [15:0]xlslice_30_Dout;
  wire [0:0]xlslice_31_Dout;
  wire [7:0]xlslice_32_Dout;
  wire [1:0]xlslice_33_Dout;
  wire [3:0]xlslice_34_Dout;
  wire [25:0]xlslice_35_Dout;
  wire [1:0]xlslice_36_Dout;
  wire [1:0]xlslice_37_Dout;
  wire [1:0]xlslice_38_Dout;
  wire [11:0]xlslice_39_Dout;
  wire [20:0]xlslice_40_Dout;
  wire [4:0]xlslice_41_Dout;
  wire [25:0]xlslice_42_Dout;
  wire [1:0]xlslice_43_Dout;
  wire [3:0]xlslice_44_Dout;
  wire [23:0]xlslice_45_Dout;
  wire [0:0]xlslice_46_Dout;
  wire [0:0]xlslice_47_Dout;
  wire [15:0]xlslice_48_Dout;
  wire [1:0]xlslice_49_Dout;
  wire [1:0]xlslice_50_Dout;
  wire [7:0]xlslice_6_Dout;
  wire [3:0]xlslice_7_Dout;
  wire [19:0]xlslice_8_Dout;
  wire [15:0]xlslice_9_Dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign GT_DIFF_REFCLK1_1_CLK_N = GT_DIFF_REFCLK1_clk_n;
  assign GT_DIFF_REFCLK1_1_CLK_P = GT_DIFF_REFCLK1_clk_p;
  assign GT_SERIAL_TX_txn[0:3] = aurora_64b66b_0_GT_SERIAL_TX_TXN;
  assign GT_SERIAL_TX_txp[0:3] = aurora_64b66b_0_GT_SERIAL_TX_TXP;
  assign LMK_Control[3:0] = xlslice_34_Dout;
  assign Mech_Switch_TTL[1:0] = xlslice_33_Dout;
  assign PA_Status_TTL_1 = PA_Status_TTL[19:0];
  assign PA_Switch_TTL[7:0] = xlslice_32_Dout;
  assign PL_Clk_n_1 = PL_Clk_n;
  assign PL_Clk_p_1 = PL_Clk_p;
  assign PL_SysRef_n_1 = PL_SysRef_n;
  assign PL_SysRef_p_1 = PL_SysRef_p;
  assign adc1_clk_1_CLK_N = adc1_clk_clk_n;
  assign adc1_clk_1_CLK_P = adc1_clk_clk_p;
  assign axi_iic_0_IIC_SCL_I = iic_rtl_0_scl_i;
  assign axi_iic_0_IIC_SDA_I = iic_rtl_0_sda_i;
  assign axi_iic_1_IIC_SCL_I = iic_rtl_1_scl_i;
  assign axi_iic_1_IIC_SDA_I = iic_rtl_1_sda_i;
  assign axi_quad_spi_0_SPI_0_IO0_I = spi_rtl_0_io0_i;
  assign axi_quad_spi_0_SPI_0_IO1_I = spi_rtl_0_io1_i;
  assign axi_quad_spi_0_SPI_0_SCK_I = spi_rtl_0_sck_i;
  assign axi_quad_spi_0_SPI_0_SS_I = spi_rtl_0_ss_i[0];
  assign axi_uartlite_0_UART_RxD = uart_rtl_0_rxd;
  assign axi_uartlite_1_UART_RxD = uart_rtl_1_rxd;
  assign axi_uartlite_2_UART_RxD = uart_rtl_2_rxd;
  assign axi_uartlite_3_UART_RxD = uart_rtl_3_rxd;
  assign dac1_clk_1_CLK_N = dac1_clk_clk_n;
  assign dac1_clk_1_CLK_P = dac1_clk_clk_p;
  assign i_LVDS_Clk_n_1 = i_LVDS_Clk_n[0];
  assign i_LVDS_Clk_p_1 = i_LVDS_Clk_p[0];
  assign i_LVDS_Data0_n_1 = i_LVDS_Data0_n[0];
  assign i_LVDS_Data0_p_1 = i_LVDS_Data0_p[0];
  assign i_LVDS_Data1_n_1 = i_LVDS_Data1_n[0];
  assign i_LVDS_Data1_p_1 = i_LVDS_Data1_p[0];
  assign i_LVDS_Data2_n_1 = i_LVDS_Data2_n[0];
  assign i_LVDS_Data2_p_1 = i_LVDS_Data2_p[0];
  assign i_LVDS_Data3_n_1 = i_LVDS_Data3_n[0];
  assign i_LVDS_Data3_p_1 = i_LVDS_Data3_p[0];
  assign iic_rtl_0_scl_o = axi_iic_0_IIC_SCL_O;
  assign iic_rtl_0_scl_t = axi_iic_0_IIC_SCL_T;
  assign iic_rtl_0_sda_o = axi_iic_0_IIC_SDA_O;
  assign iic_rtl_0_sda_t = axi_iic_0_IIC_SDA_T;
  assign iic_rtl_1_scl_o = axi_iic_1_IIC_SCL_O;
  assign iic_rtl_1_scl_t = axi_iic_1_IIC_SCL_T;
  assign iic_rtl_1_sda_o = axi_iic_1_IIC_SDA_O;
  assign iic_rtl_1_sda_t = axi_iic_1_IIC_SDA_T;
  assign o_LVDS_Clk_1_n[0] = LVDS_Tx_0_o_LVDS_Clk_1_n;
  assign o_LVDS_Clk_1_p[0] = LVDS_Tx_0_o_LVDS_Clk_1_p;
  assign o_LVDS_Data0_n[0] = LVDS_Tx_0_o_LVDS_Data0_n;
  assign o_LVDS_Data0_p[0] = LVDS_Tx_0_o_LVDS_Data0_p;
  assign o_LVDS_Data1_n[0] = LVDS_Tx_0_o_LVDS_Data1_n;
  assign o_LVDS_Data1_p[0] = LVDS_Tx_0_o_LVDS_Data1_p;
  assign o_LVDS_Data2_n[0] = LVDS_Tx_0_o_LVDS_Data2_n;
  assign o_LVDS_Data2_p[0] = LVDS_Tx_0_o_LVDS_Data2_p;
  assign o_LVDS_Data3_n[0] = LVDS_Tx_0_o_LVDS_Data3_n;
  assign o_LVDS_Data3_p[0] = LVDS_Tx_0_o_LVDS_Data3_p;
  assign o_Work_State[0] = CPF_Check_0_o_Work_State;
  assign spi_rtl_0_io0_o = axi_quad_spi_0_SPI_0_IO0_O;
  assign spi_rtl_0_io0_t = axi_quad_spi_0_SPI_0_IO0_T;
  assign spi_rtl_0_io1_o = axi_quad_spi_0_SPI_0_IO1_O;
  assign spi_rtl_0_io1_t = axi_quad_spi_0_SPI_0_IO1_T;
  assign spi_rtl_0_sck_o = axi_quad_spi_0_SPI_0_SCK_O;
  assign spi_rtl_0_sck_t = axi_quad_spi_0_SPI_0_SCK_T;
  assign spi_rtl_0_ss_o[0] = axi_quad_spi_0_SPI_0_SS_O;
  assign spi_rtl_0_ss_t = axi_quad_spi_0_SPI_0_SS_T;
  assign sysref_in_1_diff_n = sysref_in_diff_n;
  assign sysref_in_1_diff_p = sysref_in_diff_p;
  assign uart_rtl_0_txd = axi_uartlite_0_UART_TxD;
  assign uart_rtl_1_txd = axi_uartlite_1_UART_TxD;
  assign uart_rtl_2_txd = axi_uartlite_2_UART_TxD;
  assign uart_rtl_3_txd = axi_uartlite_3_UART_TxD;
  assign vin00_1_V_N = vin00_v_n;
  assign vin00_1_V_P = vin00_v_p;
  assign vin01_1_V_N = vin01_v_n;
  assign vin01_1_V_P = vin01_v_p;
  assign vin02_1_V_N = vin02_v_n;
  assign vin02_1_V_P = vin02_v_p;
  assign vin03_1_V_N = vin03_v_n;
  assign vin03_1_V_P = vin03_v_p;
  assign vin10_1_V_N = vin10_v_n;
  assign vin10_1_V_P = vin10_v_p;
  assign vin11_1_V_N = vin11_v_n;
  assign vin11_1_V_P = vin11_v_p;
  assign vin12_1_V_N = vin12_v_n;
  assign vin12_1_V_P = vin12_v_p;
  assign vin13_1_V_N = vin13_v_n;
  assign vin13_1_V_P = vin13_v_p;
  assign vin20_1_V_N = vin20_v_n;
  assign vin20_1_V_P = vin20_v_p;
  assign vin21_1_V_N = vin21_v_n;
  assign vin21_1_V_P = vin21_v_p;
  assign vin22_1_V_N = vin22_v_n;
  assign vin22_1_V_P = vin22_v_p;
  assign vin23_1_V_N = vin23_v_n;
  assign vin23_1_V_P = vin23_v_p;
  assign vin30_1_V_N = vin30_v_n;
  assign vin30_1_V_P = vin30_v_p;
  assign vin31_1_V_N = vin31_v_n;
  assign vin31_1_V_P = vin31_v_p;
  assign vin32_1_V_N = vin32_v_n;
  assign vin32_1_V_P = vin32_v_p;
  assign vin33_1_V_N = vin33_v_n;
  assign vin33_1_V_P = vin33_v_p;
  assign vout00_v_n = usp_rf_data_converter_0_vout00_V_N;
  assign vout00_v_p = usp_rf_data_converter_0_vout00_V_P;
  assign vout01_v_n = usp_rf_data_converter_0_vout01_V_N;
  assign vout01_v_p = usp_rf_data_converter_0_vout01_V_P;
  assign vout02_v_n = usp_rf_data_converter_0_vout02_V_N;
  assign vout02_v_p = usp_rf_data_converter_0_vout02_V_P;
  assign vout03_v_n = usp_rf_data_converter_0_vout03_V_N;
  assign vout03_v_p = usp_rf_data_converter_0_vout03_V_P;
  assign vout10_v_n = usp_rf_data_converter_0_vout10_V_N;
  assign vout10_v_p = usp_rf_data_converter_0_vout10_V_P;
  assign vout11_v_n = usp_rf_data_converter_0_vout11_V_N;
  assign vout11_v_p = usp_rf_data_converter_0_vout11_V_P;
  assign vout12_v_n = usp_rf_data_converter_0_vout12_V_N;
  assign vout12_v_p = usp_rf_data_converter_0_vout12_V_P;
  assign vout13_v_n = usp_rf_data_converter_0_vout13_V_N;
  assign vout13_v_p = usp_rf_data_converter_0_vout13_V_P;
  assign vout20_v_n = usp_rf_data_converter_0_vout20_V_N;
  assign vout20_v_p = usp_rf_data_converter_0_vout20_V_P;
  assign vout21_v_n = usp_rf_data_converter_0_vout21_V_N;
  assign vout21_v_p = usp_rf_data_converter_0_vout21_V_P;
  assign vout22_v_n = usp_rf_data_converter_0_vout22_V_N;
  assign vout22_v_p = usp_rf_data_converter_0_vout22_V_P;
  assign vout23_v_n = usp_rf_data_converter_0_vout23_V_N;
  assign vout23_v_p = usp_rf_data_converter_0_vout23_V_P;
  assign vout30_v_n = usp_rf_data_converter_0_vout30_V_N;
  assign vout30_v_p = usp_rf_data_converter_0_vout30_V_P;
  assign vout31_v_n = usp_rf_data_converter_0_vout31_V_N;
  assign vout31_v_p = usp_rf_data_converter_0_vout31_V_P;
  assign vout32_v_n = usp_rf_data_converter_0_vout32_V_N;
  assign vout32_v_p = usp_rf_data_converter_0_vout32_V_P;
  assign vout33_v_n = usp_rf_data_converter_0_vout33_V_N;
  assign vout33_v_p = usp_rf_data_converter_0_vout33_V_P;
  design_1_AXI_Lite_0_0 AXI_Lite_0
       (.Data_In_0(xlconcat_3_dout),
        .Data_In_1(xlconcat_5_dout),
        .Data_In_10(xlconstant_1_dout),
        .Data_In_11(xlconstant_1_dout),
        .Data_In_12(xlconstant_1_dout),
        .Data_In_13(xlconstant_1_dout),
        .Data_In_14(xlconstant_1_dout),
        .Data_In_15(xlconstant_1_dout),
        .Data_In_16(xlconstant_1_dout),
        .Data_In_17(xlconstant_1_dout),
        .Data_In_18(xlconstant_1_dout),
        .Data_In_19(xlconstant_1_dout),
        .Data_In_2(xlconcat_2_dout),
        .Data_In_20(xlconstant_1_dout),
        .Data_In_21(xlconstant_1_dout),
        .Data_In_22(xlconstant_1_dout),
        .Data_In_23(xlconstant_1_dout),
        .Data_In_24(xlconstant_1_dout),
        .Data_In_25(xlconstant_1_dout),
        .Data_In_26(xlconstant_1_dout),
        .Data_In_27(xlconstant_1_dout),
        .Data_In_28(xlconstant_1_dout),
        .Data_In_29(xlconstant_1_dout),
        .Data_In_3(xlconstant_1_dout),
        .Data_In_30(xlconstant_1_dout),
        .Data_In_31(xlconstant_1_dout),
        .Data_In_32(xlconstant_1_dout),
        .Data_In_33(xlconstant_1_dout),
        .Data_In_34(xlconstant_1_dout),
        .Data_In_35(xlconstant_1_dout),
        .Data_In_36(xlconstant_1_dout),
        .Data_In_37(xlconstant_1_dout),
        .Data_In_38(xlconstant_1_dout),
        .Data_In_39(xlconstant_1_dout),
        .Data_In_4(xlconstant_1_dout),
        .Data_In_40(xlconstant_1_dout),
        .Data_In_41(xlconstant_1_dout),
        .Data_In_42(xlconstant_1_dout),
        .Data_In_43(xlconstant_1_dout),
        .Data_In_44(xlconstant_1_dout),
        .Data_In_45(xlconstant_1_dout),
        .Data_In_46(xlconstant_1_dout),
        .Data_In_47(xlconstant_1_dout),
        .Data_In_48(xlconstant_1_dout),
        .Data_In_49(xlconstant_1_dout),
        .Data_In_5(xlconstant_1_dout),
        .Data_In_50(xlconstant_1_dout),
        .Data_In_51(xlconstant_1_dout),
        .Data_In_52(xlconstant_1_dout),
        .Data_In_53(xlconstant_1_dout),
        .Data_In_54(xlconstant_1_dout),
        .Data_In_55(xlconstant_1_dout),
        .Data_In_56(xlconstant_1_dout),
        .Data_In_57(xlconstant_1_dout),
        .Data_In_58(xlconstant_1_dout),
        .Data_In_59(xlconstant_1_dout),
        .Data_In_6(xlconstant_1_dout),
        .Data_In_60(xlconstant_1_dout),
        .Data_In_61(xlconstant_1_dout),
        .Data_In_62(xlconstant_1_dout),
        .Data_In_63(xlconstant_1_dout),
        .Data_In_7(xlconstant_1_dout),
        .Data_In_8(xlconstant_1_dout),
        .Data_In_9(xlconstant_1_dout),
        .Data_Out_0(AXI_Lite_0_Data_Out_0),
        .Data_Out_1(Net1),
        .Data_Out_10(Net9),
        .Data_Out_11(Net10),
        .Data_Out_12(Net11),
        .Data_Out_13(Net12),
        .Data_Out_14(Net13),
        .Data_Out_15(Net14),
        .Data_Out_16(Net15),
        .Data_Out_17(Net16),
        .Data_Out_18(Net20),
        .Data_Out_19(AXI_Lite_0_Data_Out_19),
        .Data_Out_2(AXI_Lite_0_Data_Out_2),
        .Data_Out_20(AXI_Lite_0_Data_Out_20),
        .Data_Out_21(AXI_Lite_0_Data_Out_21),
        .Data_Out_22(AXI_Lite_0_Data_Out_22),
        .Data_Out_3(Net2),
        .Data_Out_4(Net18),
        .Data_Out_5(Net19),
        .Data_Out_6(Net3),
        .Data_Out_7(Net4),
        .Data_Out_8(Net5),
        .Data_Out_9(Net8),
        .S_AXI_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S_AXI_ARADDR(ps8_0_axi_periph_M00_AXI_ARADDR[15:0]),
        .S_AXI_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .S_AXI_ARPROT(ps8_0_axi_periph_M00_AXI_ARPROT),
        .S_AXI_ARREADY(ps8_0_axi_periph_M00_AXI_ARREADY),
        .S_AXI_ARVALID(ps8_0_axi_periph_M00_AXI_ARVALID),
        .S_AXI_AWADDR(ps8_0_axi_periph_M00_AXI_AWADDR[15:0]),
        .S_AXI_AWPROT(ps8_0_axi_periph_M00_AXI_AWPROT),
        .S_AXI_AWREADY(ps8_0_axi_periph_M00_AXI_AWREADY),
        .S_AXI_AWVALID(ps8_0_axi_periph_M00_AXI_AWVALID),
        .S_AXI_BREADY(ps8_0_axi_periph_M00_AXI_BREADY),
        .S_AXI_BRESP(ps8_0_axi_periph_M00_AXI_BRESP),
        .S_AXI_BVALID(ps8_0_axi_periph_M00_AXI_BVALID),
        .S_AXI_RDATA(ps8_0_axi_periph_M00_AXI_RDATA),
        .S_AXI_RREADY(ps8_0_axi_periph_M00_AXI_RREADY),
        .S_AXI_RRESP(ps8_0_axi_periph_M00_AXI_RRESP),
        .S_AXI_RVALID(ps8_0_axi_periph_M00_AXI_RVALID),
        .S_AXI_WDATA(ps8_0_axi_periph_M00_AXI_WDATA),
        .S_AXI_WREADY(ps8_0_axi_periph_M00_AXI_WREADY),
        .S_AXI_WSTRB(ps8_0_axi_periph_M00_AXI_WSTRB),
        .S_AXI_WVALID(ps8_0_axi_periph_M00_AXI_WVALID));
  design_1_AXI_Stream_MUX_0_5 AXI_Stream_MUX_0
       (.Clk(clk_wiz_0_clk_out1),
        .Control(xlslice_31_Dout),
        .m_Data_ADC00(AXI_Stream_MUX_0_m_Data_ADC00),
        .m_Data_ADC01(AXI_Stream_MUX_0_m_Data_ADC01),
        .m_Data_ADC02(AXI_Stream_MUX_0_m_Data_ADC02),
        .m_Data_ADC03(AXI_Stream_MUX_0_m_Data_ADC03),
        .m_Data_ADC10(AXI_Stream_MUX_0_m_Data_ADC10),
        .m_Data_ADC11(AXI_Stream_MUX_0_m_Data_ADC11),
        .m_Data_ADC12(AXI_Stream_MUX_0_m_Data_ADC12),
        .m_Data_ADC13(AXI_Stream_MUX_0_m_Data_ADC13),
        .m_Data_ADC20(AXI_Stream_MUX_0_m_Data_ADC20),
        .m_Data_ADC21(AXI_Stream_MUX_0_m_Data_ADC21),
        .m_Data_ADC22(AXI_Stream_MUX_0_m_Data_ADC22),
        .m_Data_ADC23(AXI_Stream_MUX_0_m_Data_ADC23),
        .m_Data_ADC30(AXI_Stream_MUX_0_m_Data_ADC30),
        .m_Data_ADC31(AXI_Stream_MUX_0_m_Data_ADC31),
        .m_Data_ADC32(AXI_Stream_MUX_0_m_Data_ADC32),
        .m_Data_ADC33(AXI_Stream_MUX_0_m_Data_ADC33),
        .m_Ready_ADC00(Down_Sampling_0_s_axis_tready_ADC00),
        .m_Ready_ADC01(Down_Sampling_0_s_axis_tready_ADC01),
        .m_Ready_ADC02(Down_Sampling_0_s_axis_tready_ADC02),
        .m_Ready_ADC03(Down_Sampling_0_s_axis_tready_ADC03),
        .m_Ready_ADC10(Down_Sampling_0_s_axis_tready_ADC10),
        .m_Ready_ADC11(Down_Sampling_0_s_axis_tready_ADC11),
        .m_Ready_ADC12(Down_Sampling_0_s_axis_tready_ADC12),
        .m_Ready_ADC13(Down_Sampling_0_s_axis_tready_ADC13),
        .m_Ready_ADC20(Down_Sampling_0_s_axis_tready_ADC20),
        .m_Ready_ADC21(Down_Sampling_0_s_axis_tready_ADC21),
        .m_Ready_ADC22(Down_Sampling_0_s_axis_tready_ADC22),
        .m_Ready_ADC23(Down_Sampling_0_s_axis_tready_ADC23),
        .m_Ready_ADC30(Down_Sampling_0_s_axis_tready_ADC30),
        .m_Ready_ADC31(Down_Sampling_0_s_axis_tready_ADC31),
        .m_Ready_ADC32(Down_Sampling_0_s_axis_tready_ADC32),
        .m_Ready_ADC33(Down_Sampling_0_s_axis_tready_ADC33),
        .m_Valid_ADC00(AXI_Stream_MUX_0_m_Valid_ADC00),
        .m_Valid_ADC01(AXI_Stream_MUX_0_m_Valid_ADC01),
        .m_Valid_ADC02(AXI_Stream_MUX_0_m_Valid_ADC02),
        .m_Valid_ADC03(AXI_Stream_MUX_0_m_Valid_ADC03),
        .m_Valid_ADC10(AXI_Stream_MUX_0_m_Valid_ADC10),
        .m_Valid_ADC11(AXI_Stream_MUX_0_m_Valid_ADC11),
        .m_Valid_ADC12(AXI_Stream_MUX_0_m_Valid_ADC12),
        .m_Valid_ADC13(AXI_Stream_MUX_0_m_Valid_ADC13),
        .m_Valid_ADC20(AXI_Stream_MUX_0_m_Valid_ADC20),
        .m_Valid_ADC21(AXI_Stream_MUX_0_m_Valid_ADC21),
        .m_Valid_ADC22(AXI_Stream_MUX_0_m_Valid_ADC22),
        .m_Valid_ADC23(AXI_Stream_MUX_0_m_Valid_ADC23),
        .m_Valid_ADC30(AXI_Stream_MUX_0_m_Valid_ADC30),
        .m_Valid_ADC31(AXI_Stream_MUX_0_m_Valid_ADC31),
        .m_Valid_ADC32(AXI_Stream_MUX_0_m_Valid_ADC32),
        .m_Valid_ADC33(AXI_Stream_MUX_0_m_Valid_ADC33),
        .rstn(proc_sys_reset_0_peripheral_aresetn),
        .s_Data_ADC00_0(usp_rf_data_converter_0_m00_axis_tdata),
        .s_Data_ADC00_1(Data_Link_Vio_0_m_axis_tdata_ADC00),
        .s_Data_ADC01_0(usp_rf_data_converter_0_m01_axis_tdata),
        .s_Data_ADC01_1(Data_Link_Vio_0_m_axis_tdata_ADC01),
        .s_Data_ADC02_0(usp_rf_data_converter_0_m02_axis_tdata),
        .s_Data_ADC02_1(Data_Link_Vio_0_m_axis_tdata_ADC02),
        .s_Data_ADC03_0(usp_rf_data_converter_0_m03_axis_tdata),
        .s_Data_ADC03_1(Data_Link_Vio_0_m_axis_tdata_ADC03),
        .s_Data_ADC10_0(usp_rf_data_converter_0_m10_axis_tdata),
        .s_Data_ADC10_1(Data_Link_Vio_0_m_axis_tdata_ADC10),
        .s_Data_ADC11_0(usp_rf_data_converter_0_m11_axis_tdata),
        .s_Data_ADC11_1(Data_Link_Vio_0_m_axis_tdata_ADC11),
        .s_Data_ADC12_0(usp_rf_data_converter_0_m12_axis_tdata),
        .s_Data_ADC12_1(Data_Link_Vio_0_m_axis_tdata_ADC12),
        .s_Data_ADC13_0(usp_rf_data_converter_0_m13_axis_tdata),
        .s_Data_ADC13_1(Data_Link_Vio_0_m_axis_tdata_ADC13),
        .s_Data_ADC20_0(usp_rf_data_converter_0_m20_axis_tdata),
        .s_Data_ADC20_1(Data_Link_Vio_0_m_axis_tdata_ADC20),
        .s_Data_ADC21_0(usp_rf_data_converter_0_m21_axis_tdata),
        .s_Data_ADC21_1(Data_Link_Vio_0_m_axis_tdata_ADC21),
        .s_Data_ADC22_0(usp_rf_data_converter_0_m22_axis_tdata),
        .s_Data_ADC22_1(Data_Link_Vio_0_m_axis_tdata_ADC22),
        .s_Data_ADC23_0(usp_rf_data_converter_0_m23_axis_tdata),
        .s_Data_ADC23_1(Data_Link_Vio_0_m_axis_tdata_ADC23),
        .s_Data_ADC30_0(usp_rf_data_converter_0_m30_axis_tdata),
        .s_Data_ADC30_1(Data_Link_Vio_0_m_axis_tdata_ADC30),
        .s_Data_ADC31_0(usp_rf_data_converter_0_m31_axis_tdata),
        .s_Data_ADC31_1(Data_Link_Vio_0_m_axis_tdata_ADC31),
        .s_Data_ADC32_0(usp_rf_data_converter_0_m32_axis_tdata),
        .s_Data_ADC32_1(Data_Link_Vio_0_m_axis_tdata_ADC32),
        .s_Data_ADC33_0(usp_rf_data_converter_0_m33_axis_tdata),
        .s_Data_ADC33_1(Data_Link_Vio_0_m_axis_tdata_ADC33),
        .s_Ready_ADC00_0(AXI_Stream_MUX_0_s_Ready_ADC00_0),
        .s_Ready_ADC00_1(AXI_Stream_MUX_0_s_Ready_ADC00_1),
        .s_Ready_ADC01_0(AXI_Stream_MUX_0_s_Ready_ADC01_0),
        .s_Ready_ADC01_1(AXI_Stream_MUX_0_s_Ready_ADC01_1),
        .s_Ready_ADC02_0(AXI_Stream_MUX_0_s_Ready_ADC02_0),
        .s_Ready_ADC02_1(AXI_Stream_MUX_0_s_Ready_ADC02_1),
        .s_Ready_ADC03_0(AXI_Stream_MUX_0_s_Ready_ADC03_0),
        .s_Ready_ADC03_1(AXI_Stream_MUX_0_s_Ready_ADC03_1),
        .s_Ready_ADC10_0(AXI_Stream_MUX_0_s_Ready_ADC10_0),
        .s_Ready_ADC10_1(AXI_Stream_MUX_0_s_Ready_ADC10_1),
        .s_Ready_ADC11_0(AXI_Stream_MUX_0_s_Ready_ADC11_0),
        .s_Ready_ADC11_1(AXI_Stream_MUX_0_s_Ready_ADC11_1),
        .s_Ready_ADC12_0(AXI_Stream_MUX_0_s_Ready_ADC12_0),
        .s_Ready_ADC12_1(AXI_Stream_MUX_0_s_Ready_ADC12_1),
        .s_Ready_ADC13_0(AXI_Stream_MUX_0_s_Ready_ADC13_0),
        .s_Ready_ADC13_1(AXI_Stream_MUX_0_s_Ready_ADC13_1),
        .s_Ready_ADC20_0(AXI_Stream_MUX_0_s_Ready_ADC20_0),
        .s_Ready_ADC20_1(AXI_Stream_MUX_0_s_Ready_ADC20_1),
        .s_Ready_ADC21_0(AXI_Stream_MUX_0_s_Ready_ADC21_0),
        .s_Ready_ADC21_1(AXI_Stream_MUX_0_s_Ready_ADC21_1),
        .s_Ready_ADC22_0(AXI_Stream_MUX_0_s_Ready_ADC22_0),
        .s_Ready_ADC22_1(AXI_Stream_MUX_0_s_Ready_ADC22_1),
        .s_Ready_ADC23_0(AXI_Stream_MUX_0_s_Ready_ADC23_0),
        .s_Ready_ADC23_1(AXI_Stream_MUX_0_s_Ready_ADC23_1),
        .s_Ready_ADC30_0(AXI_Stream_MUX_0_s_Ready_ADC30_0),
        .s_Ready_ADC30_1(AXI_Stream_MUX_0_s_Ready_ADC30_1),
        .s_Ready_ADC31_0(AXI_Stream_MUX_0_s_Ready_ADC31_0),
        .s_Ready_ADC31_1(AXI_Stream_MUX_0_s_Ready_ADC31_1),
        .s_Ready_ADC32_0(AXI_Stream_MUX_0_s_Ready_ADC32_0),
        .s_Ready_ADC32_1(AXI_Stream_MUX_0_s_Ready_ADC32_1),
        .s_Ready_ADC33_0(AXI_Stream_MUX_0_s_Ready_ADC33_0),
        .s_Ready_ADC33_1(AXI_Stream_MUX_0_s_Ready_ADC33_1),
        .s_Valid_ADC00_0(usp_rf_data_converter_0_m00_axis_tvalid),
        .s_Valid_ADC00_1(Data_Link_Vio_0_m_axis_tvalid_ADC00),
        .s_Valid_ADC01_0(usp_rf_data_converter_0_m01_axis_tvalid),
        .s_Valid_ADC01_1(Data_Link_Vio_0_m_axis_tvalid_ADC01),
        .s_Valid_ADC02_0(usp_rf_data_converter_0_m02_axis_tvalid),
        .s_Valid_ADC02_1(Data_Link_Vio_0_m_axis_tvalid_ADC02),
        .s_Valid_ADC03_0(usp_rf_data_converter_0_m03_axis_tvalid),
        .s_Valid_ADC03_1(Data_Link_Vio_0_m_axis_tvalid_ADC03),
        .s_Valid_ADC10_0(usp_rf_data_converter_0_m10_axis_tvalid),
        .s_Valid_ADC10_1(Data_Link_Vio_0_m_axis_tvalid_ADC10),
        .s_Valid_ADC11_0(usp_rf_data_converter_0_m11_axis_tvalid),
        .s_Valid_ADC11_1(Data_Link_Vio_0_m_axis_tvalid_ADC11),
        .s_Valid_ADC12_0(usp_rf_data_converter_0_m12_axis_tvalid),
        .s_Valid_ADC12_1(Data_Link_Vio_0_m_axis_tvalid_ADC12),
        .s_Valid_ADC13_0(usp_rf_data_converter_0_m13_axis_tvalid),
        .s_Valid_ADC13_1(Data_Link_Vio_0_m_axis_tvalid_ADC13),
        .s_Valid_ADC20_0(usp_rf_data_converter_0_m20_axis_tvalid),
        .s_Valid_ADC20_1(Data_Link_Vio_0_m_axis_tvalid_ADC20),
        .s_Valid_ADC21_0(usp_rf_data_converter_0_m21_axis_tvalid),
        .s_Valid_ADC21_1(Data_Link_Vio_0_m_axis_tvalid_ADC21),
        .s_Valid_ADC22_0(usp_rf_data_converter_0_m22_axis_tvalid),
        .s_Valid_ADC22_1(Data_Link_Vio_0_m_axis_tvalid_ADC22),
        .s_Valid_ADC23_0(usp_rf_data_converter_0_m23_axis_tvalid),
        .s_Valid_ADC23_1(Data_Link_Vio_0_m_axis_tvalid_ADC23),
        .s_Valid_ADC30_0(usp_rf_data_converter_0_m30_axis_tvalid),
        .s_Valid_ADC30_1(Data_Link_Vio_0_m_axis_tvalid_ADC30),
        .s_Valid_ADC31_0(usp_rf_data_converter_0_m31_axis_tvalid),
        .s_Valid_ADC31_1(Data_Link_Vio_0_m_axis_tvalid_ADC31),
        .s_Valid_ADC32_0(usp_rf_data_converter_0_m32_axis_tvalid),
        .s_Valid_ADC32_1(Data_Link_Vio_0_m_axis_tvalid_ADC32),
        .s_Valid_ADC33_0(usp_rf_data_converter_0_m33_axis_tvalid),
        .s_Valid_ADC33_1(Data_Link_Vio_0_m_axis_tvalid_ADC33));
  design_1_Aurora_Init_Rstn_0_1 Aurora_Init_Rstn_0
       (.Aurora_PMA_Init(Aurora_Init_Rstn_0_Aurora_PMA_Init),
        .Aurora_RST_PB(Aurora_Init_Rstn_0_Aurora_RST_PB),
        .Init_Flag(xlslice_12_Dout),
        .Usr_Clk(aurora_64b66b_0_user_clk_out),
        .rstn(proc_sys_reset_1_peripheral_aresetn));
  design_1_BUFG_MMCM_OUT_0_0 BUFG_MMCM_OUT_0
       (.CLK_1_IN(clk_wiz_0_clk_out3),
        .CLK_1_OUT(clk_wiz_0_clk_out1));
  design_1_CPF_Check_0_0 CPF_Check_0
       (.Clk(clk_wiz_0_clk_out1),
        .Error_Code(CPF_Check_0_Error_Code),
        .i_Channel_Cnt(LVDS_Rx_0_o_Channel_Cnt),
        .i_Frame_Cnt(LVDS_Rx_0_o_Frame_Cnt),
        .i_Pulse_Cnt(LVDS_Rx_0_o_Pulse_Cnt),
        .i_Rx_PolaMode(LVDS_Rx_0_o_Rx_PolaMode),
        .i_Set_ControlMode(xlslice_43_Dout),
        .i_Set_FrameNum(xlslice_45_Dout),
        .i_Set_InterferenceMode(xlslice_38_Dout),
        .i_Set_Rx_PolaMode(xlslice_37_Dout),
        .i_Set_Tx_PolaMode(xlslice_36_Dout),
        .i_Start(xlslice_46_Dout),
        .i_Stop(xlslice_47_Dout),
        .i_Trig(LVDS_Rx_0_o_ADC_Trigger),
        .i_Tx_PolaMode(LVDS_Rx_0_o_Tx_PolaMode),
        .o_Frame_Cnt_Real(CPF_Check_0_o_Frame_Cnt_Real),
        .o_Pulse_Cnt_Real(CPF_Check_0_o_Pulse_Cnt_Real),
        .o_Task_Over(CPF_Check_0_o_Task_Over),
        .o_Work_State(CPF_Check_0_o_Work_State),
        .rstn(proc_sys_reset_0_peripheral_aresetn));
  design_1_DAC_Data_Gen_0_0 DAC_Data_Gen_0
       (.Clk(clk_wiz_0_clk_out1),
        .i_Phase_Start_DAC00(Net),
        .i_Phase_Start_DAC01(Net),
        .i_Phase_Start_DAC02(Net),
        .i_Phase_Start_DAC03(Net),
        .i_Phase_Start_DAC10(Net),
        .i_Phase_Start_DAC11(Net),
        .i_Phase_Start_DAC12(Net),
        .i_Phase_Start_DAC13(Net),
        .i_Phase_Start_DAC20(Net),
        .i_Phase_Start_DAC21(Net),
        .i_Phase_Start_DAC22(Net),
        .i_Phase_Start_DAC23(Net),
        .i_Phase_Start_DAC30(Net),
        .i_Phase_Start_DAC31(Net),
        .i_Phase_Start_DAC32(Net),
        .i_Phase_Start_DAC33(Net),
        .i_Pulse_Freq_DAC00(Net1),
        .i_Pulse_Freq_DAC01(Net1),
        .i_Pulse_Freq_DAC02(Net1),
        .i_Pulse_Freq_DAC03(Net1),
        .i_Pulse_Freq_DAC10(Net1),
        .i_Pulse_Freq_DAC11(Net1),
        .i_Pulse_Freq_DAC12(Net1),
        .i_Pulse_Freq_DAC13(Net1),
        .i_Pulse_Freq_DAC20(Net1),
        .i_Pulse_Freq_DAC21(Net1),
        .i_Pulse_Freq_DAC22(Net1),
        .i_Pulse_Freq_DAC23(Net1),
        .i_Pulse_Freq_DAC30(Net1),
        .i_Pulse_Freq_DAC31(Net1),
        .i_Pulse_Freq_DAC32(Net1),
        .i_Pulse_Freq_DAC33(Net1),
        .i_Pulse_Width_DAC00(xlslice_1_Dout),
        .i_Pulse_Width_DAC01(xlslice_1_Dout),
        .i_Pulse_Width_DAC02(xlslice_1_Dout),
        .i_Pulse_Width_DAC03(xlslice_1_Dout),
        .i_Pulse_Width_DAC10(xlslice_1_Dout),
        .i_Pulse_Width_DAC11(xlslice_1_Dout),
        .i_Pulse_Width_DAC12(xlslice_1_Dout),
        .i_Pulse_Width_DAC13(xlslice_1_Dout),
        .i_Pulse_Width_DAC20(xlslice_1_Dout),
        .i_Pulse_Width_DAC21(xlslice_1_Dout),
        .i_Pulse_Width_DAC22(xlslice_1_Dout),
        .i_Pulse_Width_DAC23(xlslice_1_Dout),
        .i_Pulse_Width_DAC30(xlslice_1_Dout),
        .i_Pulse_Width_DAC31(xlslice_1_Dout),
        .i_Pulse_Width_DAC32(xlslice_1_Dout),
        .i_Pulse_Width_DAC33(xlslice_1_Dout),
        .i_Trig(LVDS_Tx_0_o_DAC_Trigger),
        .i_Trig_DELA_DAC00(xlslice_0_Dout),
        .i_Trig_DELA_DAC01(xlslice_0_Dout),
        .i_Trig_DELA_DAC02(xlslice_0_Dout),
        .i_Trig_DELA_DAC03(xlslice_0_Dout),
        .i_Trig_DELA_DAC10(xlslice_0_Dout),
        .i_Trig_DELA_DAC11(xlslice_0_Dout),
        .i_Trig_DELA_DAC12(xlslice_0_Dout),
        .i_Trig_DELA_DAC13(xlslice_0_Dout),
        .i_Trig_DELA_DAC20(xlslice_0_Dout),
        .i_Trig_DELA_DAC21(xlslice_0_Dout),
        .i_Trig_DELA_DAC22(xlslice_0_Dout),
        .i_Trig_DELA_DAC23(xlslice_0_Dout),
        .i_Trig_DELA_DAC30(xlslice_0_Dout),
        .i_Trig_DELA_DAC31(xlslice_0_Dout),
        .i_Trig_DELA_DAC32(xlslice_0_Dout),
        .i_Trig_DELA_DAC33(xlslice_0_Dout),
        .m_axis_tdata_DAC00(DAC_Data_Gen_0_m_axis_tdata_DAC00),
        .m_axis_tdata_DAC01(DAC_Data_Gen_0_m_axis_DAC01_TDATA),
        .m_axis_tdata_DAC02(DAC_Data_Gen_0_m_axis_DAC02_TDATA),
        .m_axis_tdata_DAC03(DAC_Data_Gen_0_m_axis_DAC03_TDATA),
        .m_axis_tdata_DAC10(DAC_Data_Gen_0_m_axis_DAC10_TDATA),
        .m_axis_tdata_DAC11(DAC_Data_Gen_0_m_axis_DAC11_TDATA),
        .m_axis_tdata_DAC12(DAC_Data_Gen_0_m_axis_DAC12_TDATA),
        .m_axis_tdata_DAC13(DAC_Data_Gen_0_m_axis_DAC13_TDATA),
        .m_axis_tdata_DAC20(DAC_Data_Gen_0_m_axis_DAC20_TDATA),
        .m_axis_tdata_DAC21(DAC_Data_Gen_0_m_axis_DAC21_TDATA),
        .m_axis_tdata_DAC22(DAC_Data_Gen_0_m_axis_DAC22_TDATA),
        .m_axis_tdata_DAC23(DAC_Data_Gen_0_m_axis_DAC23_TDATA),
        .m_axis_tdata_DAC30(DAC_Data_Gen_0_m_axis_DAC30_TDATA),
        .m_axis_tdata_DAC31(DAC_Data_Gen_0_m_axis_DAC31_TDATA),
        .m_axis_tdata_DAC32(DAC_Data_Gen_0_m_axis_DAC32_TDATA),
        .m_axis_tdata_DAC33(DAC_Data_Gen_0_m_axis_DAC33_TDATA),
        .m_axis_tready_DAC00(DAC_Data_Gen_0_m_axis_DAC00_TREADY),
        .m_axis_tready_DAC01(DAC_Data_Gen_0_m_axis_DAC01_TREADY),
        .m_axis_tready_DAC02(DAC_Data_Gen_0_m_axis_DAC02_TREADY),
        .m_axis_tready_DAC03(DAC_Data_Gen_0_m_axis_DAC03_TREADY),
        .m_axis_tready_DAC10(DAC_Data_Gen_0_m_axis_DAC10_TREADY),
        .m_axis_tready_DAC11(DAC_Data_Gen_0_m_axis_DAC11_TREADY),
        .m_axis_tready_DAC12(DAC_Data_Gen_0_m_axis_DAC12_TREADY),
        .m_axis_tready_DAC13(DAC_Data_Gen_0_m_axis_DAC13_TREADY),
        .m_axis_tready_DAC20(DAC_Data_Gen_0_m_axis_DAC20_TREADY),
        .m_axis_tready_DAC21(DAC_Data_Gen_0_m_axis_DAC21_TREADY),
        .m_axis_tready_DAC22(DAC_Data_Gen_0_m_axis_DAC22_TREADY),
        .m_axis_tready_DAC23(DAC_Data_Gen_0_m_axis_DAC23_TREADY),
        .m_axis_tready_DAC30(DAC_Data_Gen_0_m_axis_DAC30_TREADY),
        .m_axis_tready_DAC31(DAC_Data_Gen_0_m_axis_DAC31_TREADY),
        .m_axis_tready_DAC32(DAC_Data_Gen_0_m_axis_DAC32_TREADY),
        .m_axis_tready_DAC33(DAC_Data_Gen_0_m_axis_DAC33_TREADY),
        .m_axis_tvalid_DAC00(DAC_Data_Gen_0_m_axis_tvalid_DAC00),
        .m_axis_tvalid_DAC01(DAC_Data_Gen_0_m_axis_DAC01_TVALID),
        .m_axis_tvalid_DAC02(DAC_Data_Gen_0_m_axis_DAC02_TVALID),
        .m_axis_tvalid_DAC03(DAC_Data_Gen_0_m_axis_DAC03_TVALID),
        .m_axis_tvalid_DAC10(DAC_Data_Gen_0_m_axis_DAC10_TVALID),
        .m_axis_tvalid_DAC11(DAC_Data_Gen_0_m_axis_DAC11_TVALID),
        .m_axis_tvalid_DAC12(DAC_Data_Gen_0_m_axis_DAC12_TVALID),
        .m_axis_tvalid_DAC13(DAC_Data_Gen_0_m_axis_DAC13_TVALID),
        .m_axis_tvalid_DAC20(DAC_Data_Gen_0_m_axis_DAC20_TVALID),
        .m_axis_tvalid_DAC21(DAC_Data_Gen_0_m_axis_DAC21_TVALID),
        .m_axis_tvalid_DAC22(DAC_Data_Gen_0_m_axis_DAC22_TVALID),
        .m_axis_tvalid_DAC23(DAC_Data_Gen_0_m_axis_DAC23_TVALID),
        .m_axis_tvalid_DAC30(DAC_Data_Gen_0_m_axis_DAC30_TVALID),
        .m_axis_tvalid_DAC31(DAC_Data_Gen_0_m_axis_DAC31_TVALID),
        .m_axis_tvalid_DAC32(DAC_Data_Gen_0_m_axis_DAC32_TVALID),
        .m_axis_tvalid_DAC33(DAC_Data_Gen_0_m_axis_DAC33_TVALID),
        .rstn(proc_sys_reset_0_peripheral_aresetn));
  design_1_Data_Link_Vio_0_0 Data_Link_Vio_0
       (.Clk(clk_wiz_0_clk_out1),
        .i_Phase_Start_ADC00(xlslice_16_Dout),
        .i_Phase_Start_ADC01(xlslice_15_Dout),
        .i_Phase_Start_ADC02(xlslice_18_Dout),
        .i_Phase_Start_ADC03(xlslice_17_Dout),
        .i_Phase_Start_ADC10(xlslice_20_Dout),
        .i_Phase_Start_ADC11(xlslice_19_Dout),
        .i_Phase_Start_ADC12(xlslice_22_Dout),
        .i_Phase_Start_ADC13(xlslice_21_Dout),
        .i_Phase_Start_ADC20(xlslice_24_Dout),
        .i_Phase_Start_ADC21(xlslice_23_Dout),
        .i_Phase_Start_ADC22(xlslice_26_Dout),
        .i_Phase_Start_ADC23(xlslice_25_Dout),
        .i_Phase_Start_ADC30(xlslice_30_Dout),
        .i_Phase_Start_ADC31(xlslice_27_Dout),
        .i_Phase_Start_ADC32(xlslice_28_Dout),
        .i_Phase_Start_ADC33(xlslice_29_Dout),
        .i_Pulse_Width_ADC00(Net7),
        .i_Pulse_Width_ADC01(Net7),
        .i_Pulse_Width_ADC02(Net7),
        .i_Pulse_Width_ADC03(Net7),
        .i_Pulse_Width_ADC10(Net7),
        .i_Pulse_Width_ADC11(Net7),
        .i_Pulse_Width_ADC12(Net7),
        .i_Pulse_Width_ADC13(Net7),
        .i_Pulse_Width_ADC20(Net7),
        .i_Pulse_Width_ADC21(Net7),
        .i_Pulse_Width_ADC22(Net7),
        .i_Pulse_Width_ADC23(Net7),
        .i_Pulse_Width_ADC30(Net7),
        .i_Pulse_Width_ADC31(Net7),
        .i_Pulse_Width_ADC32(Net7),
        .i_Pulse_Width_ADC33(Net7),
        .i_Trig(LVDS_Tx_0_o_DAC_Trigger),
        .i_Trig_DELA_ADC00(Net6),
        .i_Trig_DELA_ADC01(Net6),
        .i_Trig_DELA_ADC02(Net6),
        .i_Trig_DELA_ADC03(Net6),
        .i_Trig_DELA_ADC10(Net6),
        .i_Trig_DELA_ADC11(Net6),
        .i_Trig_DELA_ADC12(Net6),
        .i_Trig_DELA_ADC13(Net6),
        .i_Trig_DELA_ADC20(Net6),
        .i_Trig_DELA_ADC21(Net6),
        .i_Trig_DELA_ADC22(Net6),
        .i_Trig_DELA_ADC23(Net6),
        .i_Trig_DELA_ADC30(Net6),
        .i_Trig_DELA_ADC31(Net6),
        .i_Trig_DELA_ADC32(Net6),
        .i_Trig_DELA_ADC33(Net6),
        .m_axis_tdata_ADC00(Data_Link_Vio_0_m_axis_tdata_ADC00),
        .m_axis_tdata_ADC01(Data_Link_Vio_0_m_axis_tdata_ADC01),
        .m_axis_tdata_ADC02(Data_Link_Vio_0_m_axis_tdata_ADC02),
        .m_axis_tdata_ADC03(Data_Link_Vio_0_m_axis_tdata_ADC03),
        .m_axis_tdata_ADC10(Data_Link_Vio_0_m_axis_tdata_ADC10),
        .m_axis_tdata_ADC11(Data_Link_Vio_0_m_axis_tdata_ADC11),
        .m_axis_tdata_ADC12(Data_Link_Vio_0_m_axis_tdata_ADC12),
        .m_axis_tdata_ADC13(Data_Link_Vio_0_m_axis_tdata_ADC13),
        .m_axis_tdata_ADC20(Data_Link_Vio_0_m_axis_tdata_ADC20),
        .m_axis_tdata_ADC21(Data_Link_Vio_0_m_axis_tdata_ADC21),
        .m_axis_tdata_ADC22(Data_Link_Vio_0_m_axis_tdata_ADC22),
        .m_axis_tdata_ADC23(Data_Link_Vio_0_m_axis_tdata_ADC23),
        .m_axis_tdata_ADC30(Data_Link_Vio_0_m_axis_tdata_ADC30),
        .m_axis_tdata_ADC31(Data_Link_Vio_0_m_axis_tdata_ADC31),
        .m_axis_tdata_ADC32(Data_Link_Vio_0_m_axis_tdata_ADC32),
        .m_axis_tdata_ADC33(Data_Link_Vio_0_m_axis_tdata_ADC33),
        .m_axis_tready_ADC00(AXI_Stream_MUX_0_s_Ready_ADC00_1),
        .m_axis_tready_ADC01(AXI_Stream_MUX_0_s_Ready_ADC01_1),
        .m_axis_tready_ADC02(AXI_Stream_MUX_0_s_Ready_ADC02_1),
        .m_axis_tready_ADC03(AXI_Stream_MUX_0_s_Ready_ADC03_1),
        .m_axis_tready_ADC10(AXI_Stream_MUX_0_s_Ready_ADC10_1),
        .m_axis_tready_ADC11(AXI_Stream_MUX_0_s_Ready_ADC11_1),
        .m_axis_tready_ADC12(AXI_Stream_MUX_0_s_Ready_ADC12_1),
        .m_axis_tready_ADC13(AXI_Stream_MUX_0_s_Ready_ADC13_1),
        .m_axis_tready_ADC20(AXI_Stream_MUX_0_s_Ready_ADC20_1),
        .m_axis_tready_ADC21(AXI_Stream_MUX_0_s_Ready_ADC21_1),
        .m_axis_tready_ADC22(AXI_Stream_MUX_0_s_Ready_ADC22_1),
        .m_axis_tready_ADC23(AXI_Stream_MUX_0_s_Ready_ADC23_1),
        .m_axis_tready_ADC30(AXI_Stream_MUX_0_s_Ready_ADC30_1),
        .m_axis_tready_ADC31(AXI_Stream_MUX_0_s_Ready_ADC31_1),
        .m_axis_tready_ADC32(AXI_Stream_MUX_0_s_Ready_ADC32_1),
        .m_axis_tready_ADC33(AXI_Stream_MUX_0_s_Ready_ADC33_1),
        .m_axis_tvalid_ADC00(Data_Link_Vio_0_m_axis_tvalid_ADC00),
        .m_axis_tvalid_ADC01(Data_Link_Vio_0_m_axis_tvalid_ADC01),
        .m_axis_tvalid_ADC02(Data_Link_Vio_0_m_axis_tvalid_ADC02),
        .m_axis_tvalid_ADC03(Data_Link_Vio_0_m_axis_tvalid_ADC03),
        .m_axis_tvalid_ADC10(Data_Link_Vio_0_m_axis_tvalid_ADC10),
        .m_axis_tvalid_ADC11(Data_Link_Vio_0_m_axis_tvalid_ADC11),
        .m_axis_tvalid_ADC12(Data_Link_Vio_0_m_axis_tvalid_ADC12),
        .m_axis_tvalid_ADC13(Data_Link_Vio_0_m_axis_tvalid_ADC13),
        .m_axis_tvalid_ADC20(Data_Link_Vio_0_m_axis_tvalid_ADC20),
        .m_axis_tvalid_ADC21(Data_Link_Vio_0_m_axis_tvalid_ADC21),
        .m_axis_tvalid_ADC22(Data_Link_Vio_0_m_axis_tvalid_ADC22),
        .m_axis_tvalid_ADC23(Data_Link_Vio_0_m_axis_tvalid_ADC23),
        .m_axis_tvalid_ADC30(Data_Link_Vio_0_m_axis_tvalid_ADC30),
        .m_axis_tvalid_ADC31(Data_Link_Vio_0_m_axis_tvalid_ADC31),
        .m_axis_tvalid_ADC32(Data_Link_Vio_0_m_axis_tvalid_ADC32),
        .m_axis_tvalid_ADC33(Data_Link_Vio_0_m_axis_tvalid_ADC33),
        .rstn(proc_sys_reset_0_peripheral_aresetn));
  design_1_Down_Sampling_0_0 Down_Sampling_0
       (.Clk(clk_wiz_0_clk_out1),
        .Clk_Aurora_User(aurora_64b66b_0_user_clk_out),
        .i_Aurora_Channel_UP(aurora_64b66b_0_tx_channel_up),
        .i_Channel_Cnt(LVDS_Rx_0_o_Channel_Cnt),
        .i_Frame_Cnt(LVDS_Rx_0_o_Frame_Cnt),
        .i_Pulse_Cnt(LVDS_Rx_0_o_Pulse_Cnt),
        .i_Rx_PolaMode(LVDS_Rx_0_o_Rx_PolaMode),
        .i_Sample_Interval(xlslice_6_Dout),
        .i_Sample_Num(xlslice_8_Dout),
        .i_Sample_Start(xlslice_9_Dout),
        .i_Sample_Start01234(xlslice_7_Dout),
        .i_Set_ControlMode(xlslice_43_Dout),
        .i_Set_FrameNum(xlslice_45_Dout),
        .i_Set_InterferenceMode(xlslice_38_Dout),
        .i_Set_LFMW_BandWidth(xlslice_40_Dout),
        .i_Set_LFMW_CenterFrequency(xlslice_35_Dout),
        .i_Set_LFMW_FramePeriod(xlslice_48_Dout),
        .i_Set_LFMW_PulsePeriod(xlslice_39_Dout),
        .i_Set_LFMW_Slope(xlslice_42_Dout),
        .i_Set_Rx_PolaMode(xlslice_37_Dout),
        .i_Set_SignalDelay(xlconcat_4_dout),
        .i_Set_Tx_PolaMode(xlslice_36_Dout),
        .i_Trig(LVDS_Rx_0_o_ADC_Trigger),
        .i_Trig_DELA(xlslice_10_Dout),
        .i_Trig_DELA_RD(xlslice_11_Dout),
        .i_Tx_PolaMode(LVDS_Rx_0_o_Tx_PolaMode),
        .m_axi_tx_ready(aurora_64b66b_0_s_axi_tx_tready),
        .m_axi_tx_tdata(Down_Sampling_0_m_axi_tx_tdata),
        .m_axi_tx_tkeep(Down_Sampling_0_m_axi_tx_tkeep),
        .m_axi_tx_tlast(Down_Sampling_0_m_axi_tx_tlast),
        .m_axi_tx_tvalid(Down_Sampling_0_m_axi_tx_tvalid),
        .rstn(proc_sys_reset_0_peripheral_aresetn),
        .s_axis_tdata_ADC00(AXI_Stream_MUX_0_m_Data_ADC00),
        .s_axis_tdata_ADC01(AXI_Stream_MUX_0_m_Data_ADC01),
        .s_axis_tdata_ADC02(AXI_Stream_MUX_0_m_Data_ADC02),
        .s_axis_tdata_ADC03(AXI_Stream_MUX_0_m_Data_ADC03),
        .s_axis_tdata_ADC10(AXI_Stream_MUX_0_m_Data_ADC10),
        .s_axis_tdata_ADC11(AXI_Stream_MUX_0_m_Data_ADC11),
        .s_axis_tdata_ADC12(AXI_Stream_MUX_0_m_Data_ADC12),
        .s_axis_tdata_ADC13(AXI_Stream_MUX_0_m_Data_ADC13),
        .s_axis_tdata_ADC20(AXI_Stream_MUX_0_m_Data_ADC20),
        .s_axis_tdata_ADC21(AXI_Stream_MUX_0_m_Data_ADC21),
        .s_axis_tdata_ADC22(AXI_Stream_MUX_0_m_Data_ADC22),
        .s_axis_tdata_ADC23(AXI_Stream_MUX_0_m_Data_ADC23),
        .s_axis_tdata_ADC30(AXI_Stream_MUX_0_m_Data_ADC30),
        .s_axis_tdata_ADC31(AXI_Stream_MUX_0_m_Data_ADC31),
        .s_axis_tdata_ADC32(AXI_Stream_MUX_0_m_Data_ADC32),
        .s_axis_tdata_ADC33(AXI_Stream_MUX_0_m_Data_ADC33),
        .s_axis_tready_ADC00(Down_Sampling_0_s_axis_tready_ADC00),
        .s_axis_tready_ADC01(Down_Sampling_0_s_axis_tready_ADC01),
        .s_axis_tready_ADC02(Down_Sampling_0_s_axis_tready_ADC02),
        .s_axis_tready_ADC03(Down_Sampling_0_s_axis_tready_ADC03),
        .s_axis_tready_ADC10(Down_Sampling_0_s_axis_tready_ADC10),
        .s_axis_tready_ADC11(Down_Sampling_0_s_axis_tready_ADC11),
        .s_axis_tready_ADC12(Down_Sampling_0_s_axis_tready_ADC12),
        .s_axis_tready_ADC13(Down_Sampling_0_s_axis_tready_ADC13),
        .s_axis_tready_ADC20(Down_Sampling_0_s_axis_tready_ADC20),
        .s_axis_tready_ADC21(Down_Sampling_0_s_axis_tready_ADC21),
        .s_axis_tready_ADC22(Down_Sampling_0_s_axis_tready_ADC22),
        .s_axis_tready_ADC23(Down_Sampling_0_s_axis_tready_ADC23),
        .s_axis_tready_ADC30(Down_Sampling_0_s_axis_tready_ADC30),
        .s_axis_tready_ADC31(Down_Sampling_0_s_axis_tready_ADC31),
        .s_axis_tready_ADC32(Down_Sampling_0_s_axis_tready_ADC32),
        .s_axis_tready_ADC33(Down_Sampling_0_s_axis_tready_ADC33),
        .s_axis_tvalid_ADC00(AXI_Stream_MUX_0_m_Valid_ADC00),
        .s_axis_tvalid_ADC01(AXI_Stream_MUX_0_m_Valid_ADC01),
        .s_axis_tvalid_ADC02(AXI_Stream_MUX_0_m_Valid_ADC02),
        .s_axis_tvalid_ADC03(AXI_Stream_MUX_0_m_Valid_ADC03),
        .s_axis_tvalid_ADC10(AXI_Stream_MUX_0_m_Valid_ADC10),
        .s_axis_tvalid_ADC11(AXI_Stream_MUX_0_m_Valid_ADC11),
        .s_axis_tvalid_ADC12(AXI_Stream_MUX_0_m_Valid_ADC12),
        .s_axis_tvalid_ADC13(AXI_Stream_MUX_0_m_Valid_ADC13),
        .s_axis_tvalid_ADC20(AXI_Stream_MUX_0_m_Valid_ADC20),
        .s_axis_tvalid_ADC21(AXI_Stream_MUX_0_m_Valid_ADC21),
        .s_axis_tvalid_ADC22(AXI_Stream_MUX_0_m_Valid_ADC22),
        .s_axis_tvalid_ADC23(AXI_Stream_MUX_0_m_Valid_ADC23),
        .s_axis_tvalid_ADC30(AXI_Stream_MUX_0_m_Valid_ADC30),
        .s_axis_tvalid_ADC31(AXI_Stream_MUX_0_m_Valid_ADC31),
        .s_axis_tvalid_ADC32(AXI_Stream_MUX_0_m_Valid_ADC32),
        .s_axis_tvalid_ADC33(AXI_Stream_MUX_0_m_Valid_ADC33));
  design_1_LVDS_Rx_0_0 LVDS_Rx_0
       (.Clk(clk_wiz_0_clk_out1),
        .i_LVDS_Clk_n(i_LVDS_Clk_n_1),
        .i_LVDS_Clk_p(i_LVDS_Clk_p_1),
        .i_LVDS_Data0_n(i_LVDS_Data0_n_1),
        .i_LVDS_Data0_p(i_LVDS_Data0_p_1),
        .i_LVDS_Data1_n(i_LVDS_Data1_n_1),
        .i_LVDS_Data1_p(i_LVDS_Data1_p_1),
        .i_LVDS_Data2_n(i_LVDS_Data2_n_1),
        .i_LVDS_Data2_p(i_LVDS_Data2_p_1),
        .i_LVDS_Data3_n(i_LVDS_Data3_n_1),
        .i_LVDS_Data3_p(i_LVDS_Data3_p_1),
        .o_ADC_Trigger(LVDS_Rx_0_o_ADC_Trigger),
        .o_Channel_Cnt(LVDS_Rx_0_o_Channel_Cnt),
        .o_Frame_Cnt(LVDS_Rx_0_o_Frame_Cnt),
        .o_Pulse_Cnt(LVDS_Rx_0_o_Pulse_Cnt),
        .o_Rx_PolaMode(LVDS_Rx_0_o_Rx_PolaMode),
        .o_Tx_PolaMode(LVDS_Rx_0_o_Tx_PolaMode),
        .rstn(proc_sys_reset_0_peripheral_aresetn));
  design_1_LVDS_Tx_0_0 LVDS_Tx_0
       (.Clk(clk_wiz_0_clk_out1),
        .i_Set_ControlMode(xlslice_43_Dout),
        .i_Set_Frame_Num(xlslice_45_Dout),
        .i_Set_Frame_Period(AXI_Lite_0_Data_Out_20),
        .i_Set_InterferenceMode(xlslice_38_Dout),
        .i_Set_Pulse_Period(AXI_Lite_0_Data_Out_19),
        .i_Set_Rx_PolaMode(xlslice_37_Dout),
        .i_Set_Tx_PolaMode(xlslice_36_Dout),
        .i_Start(xlslice_46_Dout),
        .i_Stop(xlslice_47_Dout),
        .o_DAC_Trigger(LVDS_Tx_0_o_DAC_Trigger),
        .o_LVDS_Clk_1_n(LVDS_Tx_0_o_LVDS_Clk_1_n),
        .o_LVDS_Clk_1_p(LVDS_Tx_0_o_LVDS_Clk_1_p),
        .o_LVDS_Data0_n(LVDS_Tx_0_o_LVDS_Data0_n),
        .o_LVDS_Data0_p(LVDS_Tx_0_o_LVDS_Data0_p),
        .o_LVDS_Data1_n(LVDS_Tx_0_o_LVDS_Data1_n),
        .o_LVDS_Data1_p(LVDS_Tx_0_o_LVDS_Data1_p),
        .o_LVDS_Data2_n(LVDS_Tx_0_o_LVDS_Data2_n),
        .o_LVDS_Data2_p(LVDS_Tx_0_o_LVDS_Data2_p),
        .o_LVDS_Data3_n(LVDS_Tx_0_o_LVDS_Data3_n),
        .o_LVDS_Data3_p(LVDS_Tx_0_o_LVDS_Data3_p),
        .rstn(proc_sys_reset_0_peripheral_aresetn));
  design_1_MTS_Clk_0_0 MTS_Clk_0
       (.PL_Clk_1(MTS_Clk_0_PL_Clk),
        .PL_Clk_n(PL_Clk_n_1),
        .PL_Clk_p(PL_Clk_p_1),
        .PL_SysRef_n(PL_SysRef_n_1),
        .PL_SysRef_p(PL_SysRef_p_1),
        .User_SysRef(MTS_Clk_0_User_SysRef));
  design_1_aurora_64b66b_0_3 aurora_64b66b_0
       (.gt_refclk1_n(GT_DIFF_REFCLK1_1_CLK_N),
        .gt_refclk1_p(GT_DIFF_REFCLK1_1_CLK_P),
        .gt_rxcdrovrden_in(1'b0),
        .init_clk(clk_wiz_0_clk_out2),
        .pma_init(Aurora_Init_Rstn_0_Aurora_PMA_Init),
        .power_down(1'b0),
        .reset_pb(Aurora_Init_Rstn_0_Aurora_RST_PB),
        .s_axi_tx_tdata(Down_Sampling_0_m_axi_tx_tdata),
        .s_axi_tx_tkeep(Down_Sampling_0_m_axi_tx_tkeep),
        .s_axi_tx_tlast(Down_Sampling_0_m_axi_tx_tlast),
        .s_axi_tx_tready(aurora_64b66b_0_s_axi_tx_tready),
        .s_axi_tx_tvalid(Down_Sampling_0_m_axi_tx_tvalid),
        .tx_channel_up(aurora_64b66b_0_tx_channel_up),
        .txn(aurora_64b66b_0_GT_SERIAL_TX_TXN),
        .txp(aurora_64b66b_0_GT_SERIAL_TX_TXP),
        .user_clk_out(aurora_64b66b_0_user_clk_out));
  design_1_axi_iic_0_0 axi_iic_0
       (.iic2intc_irpt(axi_iic_0_iic2intc_irpt),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .scl_i(axi_iic_0_IIC_SCL_I),
        .scl_o(axi_iic_0_IIC_SCL_O),
        .scl_t(axi_iic_0_IIC_SCL_T),
        .sda_i(axi_iic_0_IIC_SDA_I),
        .sda_o(axi_iic_0_IIC_SDA_O),
        .sda_t(axi_iic_0_IIC_SDA_T));
  design_1_axi_iic_1_0 axi_iic_1
       (.iic2intc_irpt(axi_iic_1_iic2intc_irpt),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M06_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M06_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M06_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M06_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M06_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M06_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M06_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M06_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M06_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M06_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M06_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M06_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M06_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M06_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M06_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M06_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M06_AXI_WVALID),
        .scl_i(axi_iic_1_IIC_SCL_I),
        .scl_o(axi_iic_1_IIC_SCL_O),
        .scl_t(axi_iic_1_IIC_SCL_T),
        .sda_i(axi_iic_1_IIC_SDA_I),
        .sda_o(axi_iic_1_IIC_SDA_O),
        .sda_t(axi_iic_1_IIC_SDA_T));
  design_1_axi_quad_spi_0_0 axi_quad_spi_0
       (.ext_spi_clk(clk_wiz_0_clk_out1),
        .io0_i(axi_quad_spi_0_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_0_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_0_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_0_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_0_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_0_SPI_0_IO1_T),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M01_AXI_ARADDR[6:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR[6:0]),
        .s_axi_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .sck_i(axi_quad_spi_0_SPI_0_SCK_I),
        .sck_o(axi_quad_spi_0_SPI_0_SCK_O),
        .sck_t(axi_quad_spi_0_SPI_0_SCK_T),
        .ss_i(axi_quad_spi_0_SPI_0_SS_I),
        .ss_o(axi_quad_spi_0_SPI_0_SS_O),
        .ss_t(axi_quad_spi_0_SPI_0_SS_T));
  design_1_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[3:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[3:0]),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  design_1_axi_uartlite_0_1 axi_uartlite_1
       (.interrupt(axi_uartlite_1_interrupt),
        .rx(axi_uartlite_1_UART_RxD),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M05_AXI_ARADDR[3:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M05_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M05_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M05_AXI_AWADDR[3:0]),
        .s_axi_awready(ps8_0_axi_periph_M05_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M05_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M05_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M05_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M05_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M05_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M05_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M05_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M05_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M05_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M05_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M05_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M05_AXI_WVALID),
        .tx(axi_uartlite_1_UART_TxD));
  design_1_axi_uartlite_2_0 axi_uartlite_2
       (.interrupt(axi_uartlite_2_interrupt),
        .rx(axi_uartlite_2_UART_RxD),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M07_AXI_ARADDR[3:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M07_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M07_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M07_AXI_AWADDR[3:0]),
        .s_axi_awready(ps8_0_axi_periph_M07_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M07_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M07_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M07_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M07_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M07_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M07_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M07_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M07_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M07_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M07_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M07_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M07_AXI_WVALID),
        .tx(axi_uartlite_2_UART_TxD));
  design_1_axi_uartlite_3_0 axi_uartlite_3
       (.interrupt(axi_uartlite_3_interrupt),
        .rx(axi_uartlite_3_UART_RxD),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M08_AXI_ARADDR[3:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M08_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M08_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M08_AXI_AWADDR[3:0]),
        .s_axi_awready(ps8_0_axi_periph_M08_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M08_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M08_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M08_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M08_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M08_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M08_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M08_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M08_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M08_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M08_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M08_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M08_AXI_WVALID),
        .tx(axi_uartlite_3_UART_TxD));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(MTS_Clk_0_PL_Clk),
        .clk_out1(clk_wiz_0_clk_out3),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(clk_wiz_0_locked));
  design_1_proc_sys_reset_0_1 proc_sys_reset_0
       (.aux_reset_in(xlslice_49_Dout[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(clk_wiz_0_locked),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  design_1_proc_sys_reset_0_3 proc_sys_reset_1
       (.aux_reset_in(xlslice_50_Dout[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(clk_wiz_0_locked),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(aurora_64b66b_0_user_clk_out));
  design_1_ps8_0_axi_periph_0 ps8_0_axi_periph
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arprot(ps8_0_axi_periph_M00_AXI_ARPROT),
        .M00_AXI_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awprot(ps8_0_axi_periph_M00_AXI_AWPROT),
        .M00_AXI_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M01_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M01_AXI_araddr(ps8_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M02_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M02_AXI_araddr(ps8_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(ps8_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M03_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M03_AXI_araddr(ps8_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(ps8_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(ps8_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(ps8_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(ps8_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(ps8_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(ps8_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(ps8_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(ps8_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(ps8_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(ps8_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(ps8_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(ps8_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(ps8_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(ps8_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(ps8_0_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M04_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M04_AXI_araddr(ps8_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M05_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M05_AXI_araddr(ps8_0_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arready(ps8_0_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(ps8_0_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(ps8_0_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awready(ps8_0_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(ps8_0_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(ps8_0_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(ps8_0_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(ps8_0_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(ps8_0_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(ps8_0_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(ps8_0_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(ps8_0_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(ps8_0_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(ps8_0_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(ps8_0_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(ps8_0_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M06_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M06_AXI_araddr(ps8_0_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arready(ps8_0_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(ps8_0_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(ps8_0_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awready(ps8_0_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(ps8_0_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(ps8_0_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(ps8_0_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(ps8_0_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(ps8_0_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(ps8_0_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(ps8_0_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(ps8_0_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(ps8_0_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(ps8_0_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(ps8_0_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(ps8_0_axi_periph_M06_AXI_WVALID),
        .M07_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M07_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M07_AXI_araddr(ps8_0_axi_periph_M07_AXI_ARADDR),
        .M07_AXI_arready(ps8_0_axi_periph_M07_AXI_ARREADY),
        .M07_AXI_arvalid(ps8_0_axi_periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(ps8_0_axi_periph_M07_AXI_AWADDR),
        .M07_AXI_awready(ps8_0_axi_periph_M07_AXI_AWREADY),
        .M07_AXI_awvalid(ps8_0_axi_periph_M07_AXI_AWVALID),
        .M07_AXI_bready(ps8_0_axi_periph_M07_AXI_BREADY),
        .M07_AXI_bresp(ps8_0_axi_periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(ps8_0_axi_periph_M07_AXI_BVALID),
        .M07_AXI_rdata(ps8_0_axi_periph_M07_AXI_RDATA),
        .M07_AXI_rready(ps8_0_axi_periph_M07_AXI_RREADY),
        .M07_AXI_rresp(ps8_0_axi_periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(ps8_0_axi_periph_M07_AXI_RVALID),
        .M07_AXI_wdata(ps8_0_axi_periph_M07_AXI_WDATA),
        .M07_AXI_wready(ps8_0_axi_periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(ps8_0_axi_periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(ps8_0_axi_periph_M07_AXI_WVALID),
        .M08_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M08_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M08_AXI_araddr(ps8_0_axi_periph_M08_AXI_ARADDR),
        .M08_AXI_arready(ps8_0_axi_periph_M08_AXI_ARREADY),
        .M08_AXI_arvalid(ps8_0_axi_periph_M08_AXI_ARVALID),
        .M08_AXI_awaddr(ps8_0_axi_periph_M08_AXI_AWADDR),
        .M08_AXI_awready(ps8_0_axi_periph_M08_AXI_AWREADY),
        .M08_AXI_awvalid(ps8_0_axi_periph_M08_AXI_AWVALID),
        .M08_AXI_bready(ps8_0_axi_periph_M08_AXI_BREADY),
        .M08_AXI_bresp(ps8_0_axi_periph_M08_AXI_BRESP),
        .M08_AXI_bvalid(ps8_0_axi_periph_M08_AXI_BVALID),
        .M08_AXI_rdata(ps8_0_axi_periph_M08_AXI_RDATA),
        .M08_AXI_rready(ps8_0_axi_periph_M08_AXI_RREADY),
        .M08_AXI_rresp(ps8_0_axi_periph_M08_AXI_RRESP),
        .M08_AXI_rvalid(ps8_0_axi_periph_M08_AXI_RVALID),
        .M08_AXI_wdata(ps8_0_axi_periph_M08_AXI_WDATA),
        .M08_AXI_wready(ps8_0_axi_periph_M08_AXI_WREADY),
        .M08_AXI_wstrb(ps8_0_axi_periph_M08_AXI_WSTRB),
        .M08_AXI_wvalid(ps8_0_axi_periph_M08_AXI_WVALID),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID));
  design_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_system_ila_0_0 system_ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(LVDS_Tx_0_o_DAC_Trigger),
        .probe1(LVDS_Tx_0_o_LVDS_Clk_1_p),
        .probe10(LVDS_Tx_0_o_LVDS_Data3_n),
        .probe2(LVDS_Tx_0_o_LVDS_Clk_1_n),
        .probe3(LVDS_Tx_0_o_LVDS_Data0_p),
        .probe4(LVDS_Tx_0_o_LVDS_Data0_n),
        .probe5(LVDS_Tx_0_o_LVDS_Data1_p),
        .probe6(LVDS_Tx_0_o_LVDS_Data1_n),
        .probe7(LVDS_Tx_0_o_LVDS_Data2_p),
        .probe8(LVDS_Tx_0_o_LVDS_Data2_n),
        .probe9(LVDS_Tx_0_o_LVDS_Data3_p));
  design_1_system_ila_1_0 system_ila_1
       (.clk(clk_wiz_0_clk_out1),
        .probe0(LVDS_Rx_0_o_ADC_Trigger),
        .probe1(LVDS_Rx_0_o_Channel_Cnt),
        .probe2(LVDS_Rx_0_o_Pulse_Cnt),
        .probe3(LVDS_Rx_0_o_Frame_Cnt),
        .probe4(LVDS_Rx_0_o_Tx_PolaMode),
        .probe5(LVDS_Rx_0_o_Rx_PolaMode));
  design_1_system_ila_2_0 system_ila_2
       (.clk(clk_wiz_0_clk_out1),
        .probe0(CPF_Check_0_o_Work_State),
        .probe1(CPF_Check_0_o_Task_Over),
        .probe2(CPF_Check_0_o_Pulse_Cnt_Real),
        .probe3(CPF_Check_0_o_Frame_Cnt_Real),
        .probe4(CPF_Check_0_Error_Code));
  design_1_system_ila_3_0 system_ila_3
       (.clk(clk_wiz_0_clk_out1),
        .probe0(usp_rf_data_converter_0_m00_axis_tdata),
        .probe1(AXI_Stream_MUX_0_s_Ready_ADC00_0),
        .probe10(1'b0),
        .probe2(usp_rf_data_converter_0_m00_axis_tvalid),
        .probe3(Down_Sampling_0_m_axi_tx_tdata),
        .probe4(Down_Sampling_0_m_axi_tx_tkeep),
        .probe5(Down_Sampling_0_m_axi_tx_tlast),
        .probe6(Down_Sampling_0_m_axi_tx_tvalid),
        .probe7(aurora_64b66b_0_tx_channel_up),
        .probe8(DAC_Data_Gen_0_m_axis_tdata_DAC00),
        .probe9(DAC_Data_Gen_0_m_axis_tvalid_DAC00));
  design_1_usp_rf_data_converter_0_0 usp_rf_data_converter_0
       (.adc1_clk_n(adc1_clk_1_CLK_N),
        .adc1_clk_p(adc1_clk_1_CLK_P),
        .dac1_clk_n(dac1_clk_1_CLK_N),
        .dac1_clk_p(dac1_clk_1_CLK_P),
        .irq(usp_rf_data_converter_0_irq),
        .m00_axis_tdata(usp_rf_data_converter_0_m00_axis_tdata),
        .m00_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC00_0),
        .m00_axis_tvalid(usp_rf_data_converter_0_m00_axis_tvalid),
        .m01_axis_tdata(usp_rf_data_converter_0_m01_axis_tdata),
        .m01_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC01_0),
        .m01_axis_tvalid(usp_rf_data_converter_0_m01_axis_tvalid),
        .m02_axis_tdata(usp_rf_data_converter_0_m02_axis_tdata),
        .m02_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC02_0),
        .m02_axis_tvalid(usp_rf_data_converter_0_m02_axis_tvalid),
        .m03_axis_tdata(usp_rf_data_converter_0_m03_axis_tdata),
        .m03_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC03_0),
        .m03_axis_tvalid(usp_rf_data_converter_0_m03_axis_tvalid),
        .m0_axis_aclk(clk_wiz_0_clk_out1),
        .m0_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m10_axis_tdata(usp_rf_data_converter_0_m10_axis_tdata),
        .m10_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC10_0),
        .m10_axis_tvalid(usp_rf_data_converter_0_m10_axis_tvalid),
        .m11_axis_tdata(usp_rf_data_converter_0_m11_axis_tdata),
        .m11_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC11_0),
        .m11_axis_tvalid(usp_rf_data_converter_0_m11_axis_tvalid),
        .m12_axis_tdata(usp_rf_data_converter_0_m12_axis_tdata),
        .m12_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC12_0),
        .m12_axis_tvalid(usp_rf_data_converter_0_m12_axis_tvalid),
        .m13_axis_tdata(usp_rf_data_converter_0_m13_axis_tdata),
        .m13_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC13_0),
        .m13_axis_tvalid(usp_rf_data_converter_0_m13_axis_tvalid),
        .m1_axis_aclk(clk_wiz_0_clk_out1),
        .m1_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m20_axis_tdata(usp_rf_data_converter_0_m20_axis_tdata),
        .m20_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC20_0),
        .m20_axis_tvalid(usp_rf_data_converter_0_m20_axis_tvalid),
        .m21_axis_tdata(usp_rf_data_converter_0_m21_axis_tdata),
        .m21_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC21_0),
        .m21_axis_tvalid(usp_rf_data_converter_0_m21_axis_tvalid),
        .m22_axis_tdata(usp_rf_data_converter_0_m22_axis_tdata),
        .m22_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC22_0),
        .m22_axis_tvalid(usp_rf_data_converter_0_m22_axis_tvalid),
        .m23_axis_tdata(usp_rf_data_converter_0_m23_axis_tdata),
        .m23_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC23_0),
        .m23_axis_tvalid(usp_rf_data_converter_0_m23_axis_tvalid),
        .m2_axis_aclk(clk_wiz_0_clk_out1),
        .m2_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m30_axis_tdata(usp_rf_data_converter_0_m30_axis_tdata),
        .m30_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC30_0),
        .m30_axis_tvalid(usp_rf_data_converter_0_m30_axis_tvalid),
        .m31_axis_tdata(usp_rf_data_converter_0_m31_axis_tdata),
        .m31_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC31_0),
        .m31_axis_tvalid(usp_rf_data_converter_0_m31_axis_tvalid),
        .m32_axis_tdata(usp_rf_data_converter_0_m32_axis_tdata),
        .m32_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC32_0),
        .m32_axis_tvalid(usp_rf_data_converter_0_m32_axis_tvalid),
        .m33_axis_tdata(usp_rf_data_converter_0_m33_axis_tdata),
        .m33_axis_tready(AXI_Stream_MUX_0_s_Ready_ADC33_0),
        .m33_axis_tvalid(usp_rf_data_converter_0_m33_axis_tvalid),
        .m3_axis_aclk(clk_wiz_0_clk_out1),
        .m3_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s00_axis_tready(DAC_Data_Gen_0_m_axis_DAC00_TREADY),
        .s00_axis_tvalid(1'b0),
        .s01_axis_tdata(DAC_Data_Gen_0_m_axis_DAC01_TDATA),
        .s01_axis_tready(DAC_Data_Gen_0_m_axis_DAC01_TREADY),
        .s01_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC01_TVALID),
        .s02_axis_tdata(DAC_Data_Gen_0_m_axis_DAC02_TDATA),
        .s02_axis_tready(DAC_Data_Gen_0_m_axis_DAC02_TREADY),
        .s02_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC02_TVALID),
        .s03_axis_tdata(DAC_Data_Gen_0_m_axis_DAC03_TDATA),
        .s03_axis_tready(DAC_Data_Gen_0_m_axis_DAC03_TREADY),
        .s03_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC03_TVALID),
        .s0_axis_aclk(clk_wiz_0_clk_out1),
        .s0_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s10_axis_tdata(DAC_Data_Gen_0_m_axis_DAC10_TDATA),
        .s10_axis_tready(DAC_Data_Gen_0_m_axis_DAC10_TREADY),
        .s10_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC10_TVALID),
        .s11_axis_tdata(DAC_Data_Gen_0_m_axis_DAC11_TDATA),
        .s11_axis_tready(DAC_Data_Gen_0_m_axis_DAC11_TREADY),
        .s11_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC11_TVALID),
        .s12_axis_tdata(DAC_Data_Gen_0_m_axis_DAC12_TDATA),
        .s12_axis_tready(DAC_Data_Gen_0_m_axis_DAC12_TREADY),
        .s12_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC12_TVALID),
        .s13_axis_tdata(DAC_Data_Gen_0_m_axis_DAC13_TDATA),
        .s13_axis_tready(DAC_Data_Gen_0_m_axis_DAC13_TREADY),
        .s13_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC13_TVALID),
        .s1_axis_aclk(clk_wiz_0_clk_out1),
        .s1_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s20_axis_tdata(DAC_Data_Gen_0_m_axis_DAC20_TDATA),
        .s20_axis_tready(DAC_Data_Gen_0_m_axis_DAC20_TREADY),
        .s20_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC20_TVALID),
        .s21_axis_tdata(DAC_Data_Gen_0_m_axis_DAC21_TDATA),
        .s21_axis_tready(DAC_Data_Gen_0_m_axis_DAC21_TREADY),
        .s21_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC21_TVALID),
        .s22_axis_tdata(DAC_Data_Gen_0_m_axis_DAC22_TDATA),
        .s22_axis_tready(DAC_Data_Gen_0_m_axis_DAC22_TREADY),
        .s22_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC22_TVALID),
        .s23_axis_tdata(DAC_Data_Gen_0_m_axis_DAC23_TDATA),
        .s23_axis_tready(DAC_Data_Gen_0_m_axis_DAC23_TREADY),
        .s23_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC23_TVALID),
        .s2_axis_aclk(clk_wiz_0_clk_out1),
        .s2_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s30_axis_tdata(DAC_Data_Gen_0_m_axis_DAC30_TDATA),
        .s30_axis_tready(DAC_Data_Gen_0_m_axis_DAC30_TREADY),
        .s30_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC30_TVALID),
        .s31_axis_tdata(DAC_Data_Gen_0_m_axis_DAC31_TDATA),
        .s31_axis_tready(DAC_Data_Gen_0_m_axis_DAC31_TREADY),
        .s31_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC31_TVALID),
        .s32_axis_tdata(DAC_Data_Gen_0_m_axis_DAC32_TDATA),
        .s32_axis_tready(DAC_Data_Gen_0_m_axis_DAC32_TREADY),
        .s32_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC32_TVALID),
        .s33_axis_tdata(DAC_Data_Gen_0_m_axis_DAC33_TDATA),
        .s33_axis_tready(DAC_Data_Gen_0_m_axis_DAC33_TREADY),
        .s33_axis_tvalid(DAC_Data_Gen_0_m_axis_DAC33_TVALID),
        .s3_axis_aclk(clk_wiz_0_clk_out1),
        .s3_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M03_AXI_ARADDR[17:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M03_AXI_AWADDR[17:0]),
        .s_axi_awready(ps8_0_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M03_AXI_WVALID),
        .sysref_in_n(sysref_in_1_diff_n),
        .sysref_in_p(sysref_in_1_diff_p),
        .user_sysref_adc(MTS_Clk_0_User_SysRef),
        .user_sysref_dac(MTS_Clk_0_User_SysRef),
        .vin00_n(vin00_1_V_N),
        .vin00_p(vin00_1_V_P),
        .vin01_n(vin01_1_V_N),
        .vin01_p(vin01_1_V_P),
        .vin02_n(vin02_1_V_N),
        .vin02_p(vin02_1_V_P),
        .vin03_n(vin03_1_V_N),
        .vin03_p(vin03_1_V_P),
        .vin10_n(vin10_1_V_N),
        .vin10_p(vin10_1_V_P),
        .vin11_n(vin11_1_V_N),
        .vin11_p(vin11_1_V_P),
        .vin12_n(vin12_1_V_N),
        .vin12_p(vin12_1_V_P),
        .vin13_n(vin13_1_V_N),
        .vin13_p(vin13_1_V_P),
        .vin20_n(vin20_1_V_N),
        .vin20_p(vin20_1_V_P),
        .vin21_n(vin21_1_V_N),
        .vin21_p(vin21_1_V_P),
        .vin22_n(vin22_1_V_N),
        .vin22_p(vin22_1_V_P),
        .vin23_n(vin23_1_V_N),
        .vin23_p(vin23_1_V_P),
        .vin30_n(vin30_1_V_N),
        .vin30_p(vin30_1_V_P),
        .vin31_n(vin31_1_V_N),
        .vin31_p(vin31_1_V_P),
        .vin32_n(vin32_1_V_N),
        .vin32_p(vin32_1_V_P),
        .vin33_n(vin33_1_V_N),
        .vin33_p(vin33_1_V_P),
        .vout00_n(usp_rf_data_converter_0_vout00_V_N),
        .vout00_p(usp_rf_data_converter_0_vout00_V_P),
        .vout01_n(usp_rf_data_converter_0_vout01_V_N),
        .vout01_p(usp_rf_data_converter_0_vout01_V_P),
        .vout02_n(usp_rf_data_converter_0_vout02_V_N),
        .vout02_p(usp_rf_data_converter_0_vout02_V_P),
        .vout03_n(usp_rf_data_converter_0_vout03_V_N),
        .vout03_p(usp_rf_data_converter_0_vout03_V_P),
        .vout10_n(usp_rf_data_converter_0_vout10_V_N),
        .vout10_p(usp_rf_data_converter_0_vout10_V_P),
        .vout11_n(usp_rf_data_converter_0_vout11_V_N),
        .vout11_p(usp_rf_data_converter_0_vout11_V_P),
        .vout12_n(usp_rf_data_converter_0_vout12_V_N),
        .vout12_p(usp_rf_data_converter_0_vout12_V_P),
        .vout13_n(usp_rf_data_converter_0_vout13_V_N),
        .vout13_p(usp_rf_data_converter_0_vout13_V_P),
        .vout20_n(usp_rf_data_converter_0_vout20_V_N),
        .vout20_p(usp_rf_data_converter_0_vout20_V_P),
        .vout21_n(usp_rf_data_converter_0_vout21_V_N),
        .vout21_p(usp_rf_data_converter_0_vout21_V_P),
        .vout22_n(usp_rf_data_converter_0_vout22_V_N),
        .vout22_p(usp_rf_data_converter_0_vout22_V_P),
        .vout23_n(usp_rf_data_converter_0_vout23_V_N),
        .vout23_p(usp_rf_data_converter_0_vout23_V_P),
        .vout30_n(usp_rf_data_converter_0_vout30_V_N),
        .vout30_p(usp_rf_data_converter_0_vout30_V_P),
        .vout31_n(usp_rf_data_converter_0_vout31_V_N),
        .vout31_p(usp_rf_data_converter_0_vout31_V_P),
        .vout32_n(usp_rf_data_converter_0_vout32_V_N),
        .vout32_p(usp_rf_data_converter_0_vout32_V_P),
        .vout33_n(usp_rf_data_converter_0_vout33_V_N),
        .vout33_p(usp_rf_data_converter_0_vout33_V_P));
  design_1_xlconcat_1_0 xlconcat_2
       (.In0(xlconstant_2_dout),
        .In1(PA_Status_TTL_1),
        .dout(xlconcat_2_dout));
  design_1_xlconcat_2_0 xlconcat_3
       (.In0(aurora_64b66b_0_tx_channel_up),
        .In1(CPF_Check_0_o_Pulse_Cnt_Real),
        .In2(xlconstant_0_dout),
        .dout(xlconcat_3_dout));
  design_1_xlconcat_3_0 xlconcat_4
       (.In0(xlslice_44_Dout),
        .In1(xlslice_41_Dout),
        .dout(xlconcat_4_dout));
  design_1_xlconcat_3_1 xlconcat_5
       (.In0(CPF_Check_0_o_Frame_Cnt_Real),
        .In1(CPF_Check_0_Error_Code),
        .dout(xlconcat_5_dout));
  design_1_xlconcat_2_1 xlconcat_6
       (.In0(axi_uartlite_0_interrupt),
        .In1(axi_uartlite_1_interrupt),
        .In2(axi_uartlite_2_interrupt),
        .In3(axi_uartlite_3_interrupt),
        .In4(axi_quad_spi_0_ip2intc_irpt),
        .In5(axi_iic_1_iic2intc_irpt),
        .In6(axi_iic_0_iic2intc_irpt),
        .In7(usp_rf_data_converter_0_irq),
        .dout(xlconcat_6_dout));
  design_1_xlconstant_0_3 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_0_5 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_0_2 xlconstant_2
       (.dout(xlconstant_2_dout));
  design_1_xlslice_0_0 xlslice_0
       (.Din(AXI_Lite_0_Data_Out_0),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_0_1 xlslice_1
       (.Din(AXI_Lite_0_Data_Out_0),
        .Dout(xlslice_1_Dout));
  design_1_xlslice_8_1 xlslice_10
       (.Din(Net4),
        .Dout(xlslice_10_Dout));
  design_1_xlslice_10_0 xlslice_11
       (.Din(Net5),
        .Dout(xlslice_11_Dout));
  design_1_xlslice_11_0 xlslice_12
       (.Din(Net5),
        .Dout(xlslice_12_Dout));
  design_1_xlslice_6_1 xlslice_13
       (.Din(Net8),
        .Dout(Net6));
  design_1_xlslice_13_0 xlslice_14
       (.Din(Net8),
        .Dout(Net7));
  design_1_xlslice_13_1 xlslice_15
       (.Din(Net9),
        .Dout(xlslice_15_Dout));
  design_1_xlslice_14_0 xlslice_16
       (.Din(Net9),
        .Dout(xlslice_16_Dout));
  design_1_xlslice_15_0 xlslice_17
       (.Din(Net10),
        .Dout(xlslice_17_Dout));
  design_1_xlslice_16_0 xlslice_18
       (.Din(Net10),
        .Dout(xlslice_18_Dout));
  design_1_xlslice_17_0 xlslice_19
       (.Din(Net11),
        .Dout(xlslice_19_Dout));
  design_1_xlslice_0_2 xlslice_2
       (.Din(AXI_Lite_0_Data_Out_2),
        .Dout(Net));
  design_1_xlslice_18_0 xlslice_20
       (.Din(Net11),
        .Dout(xlslice_20_Dout));
  design_1_xlslice_19_0 xlslice_21
       (.Din(Net12),
        .Dout(xlslice_21_Dout));
  design_1_xlslice_20_0 xlslice_22
       (.Din(Net12),
        .Dout(xlslice_22_Dout));
  design_1_xlslice_15_1 xlslice_23
       (.Din(Net13),
        .Dout(xlslice_23_Dout));
  design_1_xlslice_16_1 xlslice_24
       (.Din(Net13),
        .Dout(xlslice_24_Dout));
  design_1_xlslice_17_1 xlslice_25
       (.Din(Net14),
        .Dout(xlslice_25_Dout));
  design_1_xlslice_18_1 xlslice_26
       (.Din(Net14),
        .Dout(xlslice_26_Dout));
  design_1_xlslice_19_1 xlslice_27
       (.Din(Net15),
        .Dout(xlslice_27_Dout));
  design_1_xlslice_20_1 xlslice_28
       (.Din(Net16),
        .Dout(xlslice_28_Dout));
  design_1_xlslice_21_0 xlslice_29
       (.Din(Net16),
        .Dout(xlslice_29_Dout));
  design_1_xlslice_22_0 xlslice_30
       (.Din(Net15),
        .Dout(xlslice_30_Dout));
  design_1_xlslice_12_1 xlslice_31
       (.Din(Net5),
        .Dout(xlslice_31_Dout));
  design_1_xlslice_6_2 xlslice_32
       (.Din(AXI_Lite_0_Data_Out_2),
        .Dout(xlslice_32_Dout));
  design_1_xlslice_32_0 xlslice_33
       (.Din(AXI_Lite_0_Data_Out_2),
        .Dout(xlslice_33_Dout));
  design_1_xlslice_33_0 xlslice_34
       (.Din(AXI_Lite_0_Data_Out_2),
        .Dout(xlslice_34_Dout));
  design_1_xlslice_23_0 xlslice_35
       (.Din(Net2),
        .Dout(xlslice_35_Dout));
  design_1_xlslice_23_1 xlslice_36
       (.Din(Net2),
        .Dout(xlslice_36_Dout));
  design_1_xlslice_23_2 xlslice_37
       (.Din(Net2),
        .Dout(xlslice_37_Dout));
  design_1_xlslice_23_3 xlslice_38
       (.Din(Net2),
        .Dout(xlslice_38_Dout));
  design_1_xlslice_38_2 xlslice_39
       (.Din(Net18),
        .Dout(xlslice_39_Dout));
  design_1_xlslice_33_2 xlslice_40
       (.Din(AXI_Lite_0_Data_Out_22),
        .Dout(xlslice_40_Dout));
  design_1_xlslice_35_0 xlslice_41
       (.Din(Net19),
        .Dout(xlslice_41_Dout));
  design_1_xlslice_41_0 xlslice_42
       (.Din(Net19),
        .Dout(xlslice_42_Dout));
  design_1_xlslice_41_1 xlslice_43
       (.Din(Net20),
        .Dout(xlslice_43_Dout));
  design_1_xlslice_41_2 xlslice_44
       (.Din(Net20),
        .Dout(xlslice_44_Dout));
  design_1_xlslice_41_3 xlslice_45
       (.Din(Net20),
        .Dout(xlslice_45_Dout));
  design_1_xlslice_32_1 xlslice_46
       (.Din(AXI_Lite_0_Data_Out_2),
        .Dout(xlslice_46_Dout));
  design_1_xlslice_32_2 xlslice_47
       (.Din(AXI_Lite_0_Data_Out_2),
        .Dout(xlslice_47_Dout));
  design_1_xlslice_40_0 xlslice_48
       (.Din(AXI_Lite_0_Data_Out_21),
        .Dout(xlslice_48_Dout));
  design_1_xlslice_33_1 xlslice_49
       (.Din(AXI_Lite_0_Data_Out_2),
        .Dout(xlslice_49_Dout));
  design_1_xlslice_49_0 xlslice_50
       (.Din(AXI_Lite_0_Data_Out_2),
        .Dout(xlslice_50_Dout));
  design_1_xlslice_4_1 xlslice_6
       (.Din(Net3),
        .Dout(xlslice_6_Dout));
  design_1_xlslice_6_0 xlslice_7
       (.Din(Net3),
        .Dout(xlslice_7_Dout));
  design_1_xlslice_7_0 xlslice_8
       (.Din(Net3),
        .Dout(xlslice_8_Dout));
  design_1_xlslice_8_0 xlslice_9
       (.Din(Net4),
        .Dout(xlslice_9_Dout));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_gpio_i(CPF_Check_0_o_Task_Over),
        .maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(xlconcat_6_dout),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule

module design_1_ps8_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [39:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [39:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [39:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [39:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [39:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [39:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [39:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [39:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [39:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [39:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [39:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [39:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire [39:0]m00_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m00_couplers_to_ps8_0_axi_periph_ARPROT;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m00_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m00_couplers_to_ps8_0_axi_periph_AWPROT;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m01_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m02_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_AWVALID;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_BRESP;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_RDATA;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_RRESP;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_WDATA;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_ps8_0_axi_periph_WSTRB;
  wire [0:0]m03_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m04_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m04_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m04_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m04_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m04_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_BRESP;
  wire m04_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_RDATA;
  wire m04_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_RRESP;
  wire m04_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_WDATA;
  wire m04_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m04_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m05_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m05_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m05_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m05_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m05_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m05_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m05_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_ps8_0_axi_periph_BRESP;
  wire m05_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_ps8_0_axi_periph_RDATA;
  wire m05_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_ps8_0_axi_periph_RRESP;
  wire m05_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_ps8_0_axi_periph_WDATA;
  wire m05_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m05_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m06_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m06_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m06_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m06_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m06_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m06_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m06_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_ps8_0_axi_periph_BRESP;
  wire m06_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_ps8_0_axi_periph_RDATA;
  wire m06_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_ps8_0_axi_periph_RRESP;
  wire m06_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_ps8_0_axi_periph_WDATA;
  wire m06_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m06_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m07_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m07_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m07_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m07_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m07_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m07_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m07_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_ps8_0_axi_periph_BRESP;
  wire m07_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_ps8_0_axi_periph_RDATA;
  wire m07_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_ps8_0_axi_periph_RRESP;
  wire m07_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_ps8_0_axi_periph_WDATA;
  wire m07_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m07_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m08_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m08_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m08_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m08_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m08_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m08_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m08_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_ps8_0_axi_periph_BRESP;
  wire m08_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_ps8_0_axi_periph_RDATA;
  wire m08_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_ps8_0_axi_periph_RRESP;
  wire m08_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_ps8_0_axi_periph_WDATA;
  wire m08_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m08_couplers_to_ps8_0_axi_periph_WVALID;
  wire ps8_0_axi_periph_ACLK_net;
  wire ps8_0_axi_periph_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_BID;
  wire ps8_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_RID;
  wire ps8_0_axi_periph_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [239:200]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [239:200]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [279:240]xbar_to_m06_couplers_ARADDR;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [279:240]xbar_to_m06_couplers_AWADDR;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [319:280]xbar_to_m07_couplers_ARADDR;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [319:280]xbar_to_m07_couplers_AWADDR;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [359:320]xbar_to_m08_couplers_ARADDR;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [359:320]xbar_to_m08_couplers_AWADDR;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;

  assign M00_AXI_araddr[39:0] = m00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M00_AXI_arvalid[0] = m00_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M00_AXI_awvalid[0] = m00_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_ps8_0_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_ps8_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_ps8_0_axi_periph_WVALID;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_ps8_0_axi_periph_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_ps8_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps8_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_ps8_0_axi_periph_WVALID;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_ps8_0_axi_periph_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_ps8_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps8_0_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_ps8_0_axi_periph_WVALID;
  assign M03_AXI_araddr[39:0] = m03_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[39:0] = m03_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_ps8_0_axi_periph_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_ps8_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps8_0_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_ps8_0_axi_periph_WVALID;
  assign M04_AXI_araddr[39:0] = m04_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[39:0] = m04_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_ps8_0_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_ps8_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps8_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_ps8_0_axi_periph_WVALID;
  assign M05_AXI_araddr[39:0] = m05_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M05_AXI_awaddr[39:0] = m05_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_ps8_0_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_ps8_0_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_ps8_0_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_ps8_0_axi_periph_WVALID;
  assign M06_AXI_araddr[39:0] = m06_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M06_AXI_awaddr[39:0] = m06_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_ps8_0_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_ps8_0_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_ps8_0_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_ps8_0_axi_periph_WVALID;
  assign M07_AXI_araddr[39:0] = m07_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M07_AXI_awaddr[39:0] = m07_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_ps8_0_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_ps8_0_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_ps8_0_axi_periph_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_ps8_0_axi_periph_WVALID;
  assign M08_AXI_araddr[39:0] = m08_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M08_AXI_awaddr[39:0] = m08_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_ps8_0_axi_periph_BREADY;
  assign M08_AXI_rready = m08_couplers_to_ps8_0_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_ps8_0_axi_periph_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_ps8_0_axi_periph_WVALID;
  assign S00_AXI_arready = ps8_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps8_0_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_ps8_0_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_ps8_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps8_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_ps8_0_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_ps8_0_axi_periph_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_ps8_0_axi_periph_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_ps8_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_ps8_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps8_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_ps8_0_axi_periph_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_ps8_0_axi_periph_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_ps8_0_axi_periph_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_ps8_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_ps8_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps8_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_ps8_0_axi_periph_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_ps8_0_axi_periph_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_ps8_0_axi_periph_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_ps8_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_ps8_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps8_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_ps8_0_axi_periph_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_ps8_0_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_ps8_0_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_ps8_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_ps8_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps8_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_ps8_0_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_ps8_0_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_ps8_0_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_ps8_0_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_ps8_0_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_ps8_0_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_ps8_0_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_ps8_0_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_ps8_0_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_ps8_0_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_ps8_0_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_ps8_0_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_ps8_0_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_ps8_0_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_ps8_0_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_ps8_0_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_ps8_0_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_ps8_0_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_ps8_0_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_ps8_0_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_ps8_0_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_ps8_0_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_ps8_0_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_ps8_0_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_ps8_0_axi_periph_WREADY = M07_AXI_wready;
  assign m08_couplers_to_ps8_0_axi_periph_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_ps8_0_axi_periph_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_ps8_0_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_ps8_0_axi_periph_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_ps8_0_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_ps8_0_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_ps8_0_axi_periph_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_ps8_0_axi_periph_WREADY = M08_AXI_wready;
  assign ps8_0_axi_periph_ACLK_net = ACLK;
  assign ps8_0_axi_periph_ARESETN_net = ARESETN;
  assign ps8_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps8_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_QJIMLI m00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m00_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m00_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m00_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m00_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1D3SAH3 m01_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_P3UMW5 m02_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1E9R4HW m03_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_NB1YAO m04_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1FZ4A9T m05_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m05_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m05_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_MPDFMR m06_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_1GV49DU m07_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m07_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m07_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_K8X5UY m08_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m08_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m08_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m08_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m08_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m08_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  s00_couplers_imp_1A7ZMW4 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(ps8_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps8_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps8_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_to_s00_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(ps8_0_axi_periph_ACLK_net),
        .aresetn(ps8_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arready({xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awready({xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_QJIMLI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1D3SAH3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [39:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_P3UMW5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_1E9R4HW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [39:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_NB1YAO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [39:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_1FZ4A9T
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [39:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_MPDFMR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [39:0]m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_1GV49DU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m07_couplers_to_m07_couplers_ARADDR;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire [39:0]m07_couplers_to_m07_couplers_AWADDR;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module m08_couplers_imp_K8X5UY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m08_couplers_to_m08_couplers_ARADDR;
  wire m08_couplers_to_m08_couplers_ARREADY;
  wire m08_couplers_to_m08_couplers_ARVALID;
  wire [39:0]m08_couplers_to_m08_couplers_AWADDR;
  wire m08_couplers_to_m08_couplers_AWREADY;
  wire m08_couplers_to_m08_couplers_AWVALID;
  wire m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire m08_couplers_to_m08_couplers_BVALID;
  wire [31:0]m08_couplers_to_m08_couplers_RDATA;
  wire m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire m08_couplers_to_m08_couplers_RVALID;
  wire [31:0]m08_couplers_to_m08_couplers_WDATA;
  wire m08_couplers_to_m08_couplers_WREADY;
  wire [3:0]m08_couplers_to_m08_couplers_WSTRB;
  wire m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready;
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready;
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready;
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready;
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1A7ZMW4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [15:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [15:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
