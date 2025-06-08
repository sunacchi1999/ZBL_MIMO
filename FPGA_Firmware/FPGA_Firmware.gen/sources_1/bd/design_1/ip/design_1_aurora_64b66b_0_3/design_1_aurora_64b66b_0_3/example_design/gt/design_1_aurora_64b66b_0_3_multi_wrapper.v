 ///////////////////////////////////////////////////////////////////////////////
 //
 // Project:  Aurora 64B/66B
 // Company:  Xilinx
 //
 //
 //
 // (c) Copyright 2008 - 2014 Xilinx, Inc. All rights reserved.
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
 //
 ////////////////////////////////////////////////////////////////////////////////
 // Design Name: design_1_aurora_64b66b_0_3_MULTI_GT
 //

 // Multi GT wrapper for ultrascale series

`timescale 1 ps / 1 ps
 `define DLY #1

   (* core_generation_info = "design_1_aurora_64b66b_0_3,aurora_64b66b_v12_0_3,{c_aurora_lanes=4,c_column_used=left,c_gt_clock_1=GTYQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=2,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=3,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=4,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=25.0,c_gt_type=GTYE4,c_qpll=true,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=156.25,c_simplex=true,c_simplex_mode=TX,c_stream=false,c_ufc=false,c_user_k=false,flow_mode=None,interface_mode=Framing,dataflow_config=TX-only_Simplex}" *)
(* DowngradeIPIdentifiedWarnings="yes" *)
 module design_1_aurora_64b66b_0_3_MULTI_GT
 (
    // GT reset module interface ports starts
    input           gtwiz_reset_all_in                ,
    input           gtwiz_reset_clk_freerun_in        ,
    input           gtwiz_reset_tx_pll_and_datapath_in,
    input           gtwiz_reset_tx_datapath_in        ,
    input           gtwiz_reset_rx_pll_and_datapath_in,
    input           gtwiz_reset_rx_datapath_in        ,
    input           gtwiz_reset_rx_data_good_in       ,

    output          gtwiz_reset_rx_cdr_stable_out     ,
    output          gtwiz_reset_tx_done_out           ,
    output          gtwiz_reset_rx_done_out           ,

    output          gtwiz_reset_qpll0reset_output     ,
    // GT reset module interface ports ends
    output          fabric_pcs_reset                  ,
    output          bufg_gt_clr_out             ,
    input           gtwiz_userclk_tx_active_out       ,

    output          userclk_rx_active_out             ,

    input           gt0_gtwiz_reset_qpll0lock_in      ,
    //--------------------------------------------------------------------------
    input           gt0_qpll0clk_in             ,
    input           gt0_qpll0refclk_in          ,
    input           gt1_qpll0clk_in             ,
    input           gt1_qpll0refclk_in          ,
    input           gt2_qpll0clk_in             ,
    input           gt2_qpll0refclk_in          ,
    input           gt3_qpll0clk_in             ,
    input           gt3_qpll0refclk_in          ,




    //--------------------------------------------------------------------------
    //____________________________CHANNEL PORTS________________________________
    //------------------------------- CPLL Ports -------------------------------
    input           gt0_gtrefclk0_in,
    //-------------------------- Channel - DRP Ports  --------------------------
 
    input  [9:0]    gt0_drpaddr,
    input           gt0_drp_clk_in,
    input  [15:0]   gt0_drpdi,
    output [15:0]   gt0_drpdo,
    input           gt0_drpen,
    output          gt0_drprdy,
    input           gt0_drpwe,
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
    output          gt0_rxusrclk_out,
    output          gt0_rxusrclk2_out,
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
    input           gt0_txusrclk_in,
    input           gt0_txusrclk2_in,
    //----------------------------- Loopback Ports -----------------------------
    input  [11:0]       gt_loopback,
    //------------------- RX Initialization and Reset Ports --------------------
    input  [3:0]         gt_eyescanreset,
    input  [3:0]         gt_rxpolarity,
    //------------------------ RX Margin Analysis Ports ------------------------
    output [3:0]         gt_eyescandataerror,
    input  [3:0]         gt_eyescantrigger,
    //----------------------- Receive Ports - CDR Ports ------------------------
    input                                           gt0_rxcdrovrden_in,
    input  [3:0]         gt_rxcdrhold,
    //---------------- Receive Ports - FPGA RX interface Ports -----------------
    output  [63:0]                                  gt0_rxdata_out,
    //---------------------- Receive Ports - RX AFE Ports ----------------------
    input                                           gt0_gthrxn_in,
    input                                           gt0_gthrxp_in,
    //----------------- Receive Ports - RX Buffer Bypass Ports -----------------
    output  [11:0]      gt_rxbufstatus,
    //------------------ Receive Ports - RX Equailizer Ports -------------------
    input   [3:0]        gt_rxdfelpmreset,
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
    output                                          gt0_rxoutclk_out,
    //-------------------- Receive Ports - RX Gearbox Ports --------------------
    output                                          gt0_rxdatavalid_out,
    output [1:0]                                    gt0_rxheader_out,
    output                                          gt0_rxheadervalid_out,
    //------------------- Receive Ports - RX Gearbox Ports  --------------------
    input                                           gt0_rxgearboxslip_in,
    //---------------- Receive Ports - RX Margin Analysis ports ----------------
    input  [3:0]         gt_rxlpmen,
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
    input  [3:0]         gt_gtrxreset,
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
    output [3:0]         gt_rxresetdone,
    //---------------------- TX Configurable Driver Ports ----------------------
    input  [19:0]       gt_txpostcursor,
    //------------------- TX Initialization and Reset Ports --------------------
    input  [3:0]         gt_gttxreset,

    //------------ Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
    input  [1:0]    gt0_txheader_in,
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
 
    input   [19:0]      gt_txdiffctrl,
    output [63:0]      gt_dmonitorout,
    //---------------- Transmit Ports - TX Data Path interface -----------------
    input  [63:0]                                    gt0_txdata_in,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    output                                           gt0_gthtxn_out,
    output                                           gt0_gthtxp_out,
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    output                                           gt0_txoutclk_out,
    output                                           gt0_txoutclkfabric_out,
    output                                           gt0_txoutclkpcs_out,
    //---------------  ---- Transmit Ports - TX Gearbox Ports --------------------
    input  [6:0]                                     gt0_txsequence_in,
    input           gt1_gtrefclk0_in,
    //-------------------------- Channel - DRP Ports  --------------------------
 
    input  [9:0]    gt1_drpaddr,
    input           gt1_drp_clk_in,
    input  [15:0]   gt1_drpdi,
    output [15:0]   gt1_drpdo,
    input           gt1_drpen,
    output          gt1_drprdy,
    input           gt1_drpwe,
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
    output          gt1_rxusrclk_out,
    output          gt1_rxusrclk2_out,
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
    input           gt1_txusrclk_in,
    input           gt1_txusrclk2_in,
    //----------------------------- Loopback Ports -----------------------------
    //----------------------- Receive Ports - CDR Ports ------------------------
    input                                           gt1_rxcdrovrden_in,
    //---------------- Receive Ports - FPGA RX interface Ports -----------------
    output  [63:0]                                  gt1_rxdata_out,
    //---------------------- Receive Ports - RX AFE Ports ----------------------
    input                                           gt1_gthrxn_in,
    input                                           gt1_gthrxp_in,
    //----------------- Receive Ports - RX Buffer Bypass Ports -----------------
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
    output                                          gt1_rxoutclk_out,
    //-------------------- Receive Ports - RX Gearbox Ports --------------------
    output                                          gt1_rxdatavalid_out,
    output [1:0]                                    gt1_rxheader_out,
    output                                          gt1_rxheadervalid_out,
    //------------------- Receive Ports - RX Gearbox Ports  --------------------
    input                                           gt1_rxgearboxslip_in,
    //---------------- Receive Ports - RX Margin Analysis ports ----------------
    //------------ Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
    input  [1:0]    gt1_txheader_in,
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
    //---------------- Transmit Ports - TX Data Path interface -----------------
    input  [63:0]                                    gt1_txdata_in,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    output                                           gt1_gthtxn_out,
    output                                           gt1_gthtxp_out,
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    output                                           gt1_txoutclk_out,
    output                                           gt1_txoutclkfabric_out,
    output                                           gt1_txoutclkpcs_out,
    //---------------  ---- Transmit Ports - TX Gearbox Ports --------------------
    input  [6:0]                                     gt1_txsequence_in,
    input           gt2_gtrefclk0_in,
    //-------------------------- Channel - DRP Ports  --------------------------
 
    input  [9:0]    gt2_drpaddr,
    input           gt2_drp_clk_in,
    input  [15:0]   gt2_drpdi,
    output [15:0]   gt2_drpdo,
    input           gt2_drpen,
    output          gt2_drprdy,
    input           gt2_drpwe,
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
    output          gt2_rxusrclk_out,
    output          gt2_rxusrclk2_out,
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
    input           gt2_txusrclk_in,
    input           gt2_txusrclk2_in,
    //----------------------------- Loopback Ports -----------------------------
    //----------------------- Receive Ports - CDR Ports ------------------------
    input                                           gt2_rxcdrovrden_in,
    //---------------- Receive Ports - FPGA RX interface Ports -----------------
    output  [63:0]                                  gt2_rxdata_out,
    //---------------------- Receive Ports - RX AFE Ports ----------------------
    input                                           gt2_gthrxn_in,
    input                                           gt2_gthrxp_in,
    //----------------- Receive Ports - RX Buffer Bypass Ports -----------------
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
    output                                          gt2_rxoutclk_out,
    //-------------------- Receive Ports - RX Gearbox Ports --------------------
    output                                          gt2_rxdatavalid_out,
    output [1:0]                                    gt2_rxheader_out,
    output                                          gt2_rxheadervalid_out,
    //------------------- Receive Ports - RX Gearbox Ports  --------------------
    input                                           gt2_rxgearboxslip_in,
    //---------------- Receive Ports - RX Margin Analysis ports ----------------
    //------------ Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
    input  [1:0]    gt2_txheader_in,
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
    //---------------- Transmit Ports - TX Data Path interface -----------------
    input  [63:0]                                    gt2_txdata_in,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    output                                           gt2_gthtxn_out,
    output                                           gt2_gthtxp_out,
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    output                                           gt2_txoutclk_out,
    output                                           gt2_txoutclkfabric_out,
    output                                           gt2_txoutclkpcs_out,
    //---------------  ---- Transmit Ports - TX Gearbox Ports --------------------
    input  [6:0]                                     gt2_txsequence_in,
    input           gt3_gtrefclk0_in,
    //-------------------------- Channel - DRP Ports  --------------------------
 
    input  [9:0]    gt3_drpaddr,
    input           gt3_drp_clk_in,
    input  [15:0]   gt3_drpdi,
    output [15:0]   gt3_drpdo,
    input           gt3_drpen,
    output          gt3_drprdy,
    input           gt3_drpwe,
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
    output          gt3_rxusrclk_out,
    output          gt3_rxusrclk2_out,
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
    input           gt3_txusrclk_in,
    input           gt3_txusrclk2_in,
    //----------------------------- Loopback Ports -----------------------------
    //----------------------- Receive Ports - CDR Ports ------------------------
    input                                           gt3_rxcdrovrden_in,
    //---------------- Receive Ports - FPGA RX interface Ports -----------------
    output  [63:0]                                  gt3_rxdata_out,
    //---------------------- Receive Ports - RX AFE Ports ----------------------
    input                                           gt3_gthrxn_in,
    input                                           gt3_gthrxp_in,
    //----------------- Receive Ports - RX Buffer Bypass Ports -----------------
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
    output                                          gt3_rxoutclk_out,
    //-------------------- Receive Ports - RX Gearbox Ports --------------------
    output                                          gt3_rxdatavalid_out,
    output [1:0]                                    gt3_rxheader_out,
    output                                          gt3_rxheadervalid_out,
    //------------------- Receive Ports - RX Gearbox Ports  --------------------
    input                                           gt3_rxgearboxslip_in,
    //---------------- Receive Ports - RX Margin Analysis ports ----------------
    //------------ Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
    input  [1:0]    gt3_txheader_in,
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
    //---------------- Transmit Ports - TX Data Path interface -----------------
    input  [63:0]                                    gt3_txdata_in,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    output                                           gt3_gthtxn_out,
    output                                           gt3_gthtxp_out,
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    output                                           gt3_txoutclk_out,
    output                                           gt3_txoutclkfabric_out,
    output                                           gt3_txoutclkpcs_out,
    //---------------  ---- Transmit Ports - TX Gearbox Ports --------------------
    input  [6:0]                                     gt3_txsequence_in,
    //--------------- Transmit Ports - TX Polarity Control Ports ---------------
    input  [3:0]         gt_txpolarity,
    input  [3:0]         gt_txinhibit,
    input  [63:0]  gt_pcsrsvdin,
    input  [3:0]         gt_txpmareset,
    input  [3:0]         gt_txpcsreset,
    input  [3:0]         gt_rxpcsreset,
    input  [3:0]         gt_rxbufreset,
    output [3:0]         gt_rxpmaresetdone,
    input  [19:0]       gt_txprecursor,
    input  [15:0]       gt_txprbssel,
    input  [15:0]       gt_rxprbssel,
    input  [3:0]         gt_txprbsforceerr,
    output [3:0]         gt_rxprbserr,
    input  [3:0]         gt_rxprbscntreset,
    output [7:0]       gt_txbufstatus,
    input  [3:0]         gt_rxpmareset,
    input  [11:0]       gt_rxrate,
    //----------- GT POWERGOOD STATUS Port -----------
    output [3:0]         gt_powergood,
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
    output [3:0]         gt_txresetdone

 );

 //***************************** Wire Declarations *****************************
     // Ground and VCC signals
     wire                    tied_to_ground_i;
     wire    [280:0]         tied_to_ground_vec_i;
     wire                    tied_to_vcc_i;
 //********************************* Main Body of Code**************************
     //-------------------------  Static signal Assigments ---------------------
     assign tied_to_ground_i          = 1'b0;
     assign tied_to_ground_vec_i      = 281'd0;
     assign tied_to_vcc_i             = 1'b1;

// wire definition starts
    wire                                            gtwiz_userclk_tx_active_out_i;   

    wire  [3 : 0] gtrefclk0_in      ;

    wire  [3 : 0] qpll0clk_in       ;
    wire  [3 : 0] qpll0refclk_in    ;
    wire  [3 : 0] qpll1clk_in     ;
    wire  [3 : 0] qpll1refclk_in  ;
    wire  [0:0] gtwiz_reset_qpll0lock_in;// changed for qpll0 ;

    wire gtwiz_reset_qpll0reset_out;
    //--------------------------------------------------------------------------

 
    wire  [39 : 0 ] drpaddr_in;
    wire  [3 : 0 ] drpclk_in;
    wire  [63 : 0 ] drpdi_in  ;
    wire  [63 : 0 ] drpdo_out ;
    wire  [3 : 0 ] drpen_in  ;
    wire  [3 : 0 ] drprdy_out;
    wire  [3 : 0 ] drpwe_in  ;

    wire  [11 : 0 ] loopback_in;

    wire  [7 : 0 ] rxstartofseq_out;

    wire  [3 : 0 ] eyescanreset_in;
    wire  [3 : 0 ] rxpolarity_in  ;

    wire  [3 : 0 ] eyescandataerror_out;
    wire  [3 : 0 ] eyescantrigger_in   ;

    wire  [3 : 0 ] rxcdrovrden_in;
    wire  [3 : 0 ] rxcdrhold_in  ;
    wire  [255: 0 ] gtwiz_userdata_rx_out;
    wire  [3 : 0 ] gtyrxn_in     ;
    wire  [3 : 0 ] gtyrxp_in     ;
    wire  [11 : 0 ] rxbufstatus_out    ;//
    wire  [3 : 0 ] rxdfelpmreset_in   ;//
    wire  [3 : 0 ] rxoutclk_out       ;//
    wire  [7 : 0 ] rxdatavalid_out  ;//
    wire  [23 : 0 ] rxheader_out       ;//
    wire  [7 : 0 ] rxheadervalid_out  ;//
    wire  [3 : 0 ] rxgearboxslip_in   ;//
    wire  [3 : 0 ] rxlpmen_in         ;//
    wire  [3 : 0 ] gtrxreset_in       ;//
    wire  [3 : 0 ] rxresetdone_out    ;//
    wire  [19 : 0 ] txpostcursor_in    ;//
    wire  [3 : 0 ] gttxreset_in       ;//
    //wire  [3 : 0 ] txuserrdy_in     ;
    wire  [23 : 0 ] txheader_in        ;//
 
    wire  [19 : 0 ] txdiffctrl_in      ;//
    wire  [255 : 0 ] gtwiz_userdata_tx_in;//
 
    wire  [3 : 0 ] gtytxn_out         ;//
    wire  [3 : 0 ] gtytxp_out         ;//
 
    wire  [3 : 0 ] txoutclk_out       ;//
    wire  [3 : 0 ] txoutclkfabric_out ;//
    wire  [3 : 0 ] txoutclkpcs_out    ;//

    wire  [27 : 0 ] txsequence_in      ;//
    wire  [3 : 0 ] txpolarity_in      ;//
    wire  [3 : 0 ] txinhibit_in      ;//
    wire  [3 : 0 ] txpmareset_in      ;//
    wire  [3 : 0 ] txpcsreset_in      ;//
    wire  [3 : 0 ] rxpcsreset_in      ;//
    wire  [3 : 0 ] rxbufreset_in      ;//
    wire  [3 : 0 ] rxpmaresetdone_out ;//
    wire  [19 : 0 ] txprecursor_in     ;//
    wire  [15 : 0 ] txprbssel_in       ;//
    wire  [15 : 0 ] rxprbssel_in       ;//
    wire  [3 : 0 ] txprbsforceerr_in  ;//
    wire  [3 : 0 ] rxprbserr_out      ;//
    wire  [3 : 0 ] rxprbscntreset_in  ;//
    wire  [63 : 0 ] pcsrsvdin_in       ;//
 
    wire  [63 : 0 ] dmonitorout_out    ;//
 
    wire  [7 : 0 ] txbufstatus_out    ;//
    wire  [3 : 0 ] rxpmareset_in      ;//
    wire  [11 : 0 ] rxrate_in          ;//
    wire  [3 : 0 ] txresetdone_out    ;//
    wire  [3 : 0 ] txusrclk_in        ;
    wire  [3 : 0 ] txusrclk2_in       ;
    wire  [3 : 0 ] rxusrclk_in        ;
    wire  [3 : 0 ] rxusrclk2_in       ;

    reg   [9:0] fabric_pcs_rst_extend_cntr      = 10'b0; // 10 bit counter
    reg   [7:0] usrclk_rx_active_in_extend_cntr = 8'b0 ; // 8 bit counter
    reg   [7:0] usrclk_tx_active_in_extend_cntr = 8'b0 ; // 8 bit counter

    wire  [3 : 0 ] txpmaresetdone_out;

    wire  [3 : 0 ] txpmaresetdone_int;
    wire  [3 : 0 ] rxpmaresetdone_int;
    wire  [3 : 0 ] gtpowergood_out;

    reg   gtwiz_userclk_rx_reset_in_r=1'b0;

    // Clocking module is outside of GT.
    wire gtwiz_userclk_tx_active_in;
    wire gtwiz_userclk_rx_active_in;

    wire gtwiz_userclk_rx_usrclk2_out;// signals from Rx clocking module
    wire gtwiz_userclk_rx_usrclk_out; // signals from Rx clocking module

    wire gtwiz_userclk_tx_usrclk2_out;// signals from Tx clocking module
    //wire gtwiz_userclk_tx_usrclk_out; // signals from Tx clocking module

    wire gtwiz_userclk_tx_reset_in  ;
    wire gtwiz_userclk_rx_reset_in  ;

// wire definition ends

// assignment starts
    //--------------------------------------------------------------------------
     
    // Power good assignment
    assign gt_powergood = gtpowergood_out;   
     
    // start of QPLL loop
    assign gtwiz_reset_qpll0lock_in = gt0_gtwiz_reset_qpll0lock_in;
    //--------------------------------------------------------------------------
    assign qpll0clk_in[0]               = gt0_qpll0clk_in            ;
    assign qpll0refclk_in[0]            = gt0_qpll0refclk_in         ;
    assign qpll0clk_in[1]               = gt1_qpll0clk_in            ;
    assign qpll0refclk_in[1]            = gt1_qpll0refclk_in         ;
    assign qpll0clk_in[2]               = gt2_qpll0clk_in            ;
    assign qpll0refclk_in[2]            = gt2_qpll0refclk_in         ;
    assign qpll0clk_in[3]               = gt3_qpll0clk_in            ;
    assign qpll0refclk_in[3]            = gt3_qpll0refclk_in         ;
    assign gtwiz_reset_qpll0reset_output = gtwiz_reset_qpll0reset_out;
    //--------------------------------------------------------------------------
    //--------------------------------------------------------------------------
    //--------------------------------------------------------------------------
    //--------------------------------------------------------------------------
    //--------------------------------------------------------------------------
    assign qpll1clk_in ='H0      ;
    assign qpll1refclk_in ='H0    ;
 

    // end of QPLL loop
    //--------------------------------------------------------------------------
    //--------- Port interface for the $lane for Aurora core and Ultrscale GT --
    assign gtrefclk0_in[0]        = gt0_gtrefclk0_in     ;



    // DRP interface for GT channel starts
    assign gt0_drpdo        = drpdo_out[15 : 0];
    assign gt0_drprdy       = drprdy_out[0];

 
    assign drpaddr_in[9 : 0] = gt0_drpaddr;
    assign drpclk_in[0]         = gt0_drp_clk_in;
    assign drpdi_in[15 : 0] = gt0_drpdi;
    assign drpen_in[0]          = gt0_drpen  ;
    assign drpwe_in[0]          = gt0_drpwe  ;
    // DRP interface for GT channel ends

    assign txsequence_in[6 : 0] = gt0_txsequence_in;

    assign gt0_rxdata_out       = gtwiz_userdata_rx_out[63 : 0];
    assign gt_rxbufstatus[2 : 0]  = rxbufstatus_out[2 : 0];
    assign gt0_rxheader_out     = rxheader_out[1 : 0];// connect only  the 2 bits of this signal (out of 6 bits)

    assign loopback_in[2 : 0]     = gt_loopback[2 : 0];
    assign txpostcursor_in[4 : 0] = gt_txpostcursor[4 : 0];
    assign txheader_in[5 : 0]     = {4'b0, gt0_txheader_in[1:0]};
 
    assign txdiffctrl_in[4 : 0]   = gt_txdiffctrl[4 : 0];
    assign gtwiz_userdata_tx_in[63 : 0] = gt0_txdata_in;
    assign txprecursor_in[4 : 0] = gt_txprecursor[4 : 0];
    assign txprbssel_in[3 : 0]   = gt_txprbssel[3 : 0];
    assign rxprbssel_in[3 : 0]   = gt_rxprbssel[3 : 0];


 
    assign gt_dmonitorout[15 : 0] = dmonitorout_out[15 : 0];
 
    assign gt_txbufstatus[1 : 0]   = txbufstatus_out[1 : 0];


    assign eyescanreset_in[0]           = gt_eyescanreset[0]  ;
    assign rxpolarity_in[0]             = gt_rxpolarity[0]   ;
    assign eyescantrigger_in[0]         = gt_eyescantrigger[0];
    assign rxcdrovrden_in[0]            = gt0_rxcdrovrden_in   ;
    assign rxcdrhold_in[0]              = gt_rxcdrhold[0]     ;
 
    assign gtyrxn_in[0]                 = gt0_gthrxn_in        ;
    assign gtyrxp_in[0]                 = gt0_gthrxp_in        ;
 
    assign rxdfelpmreset_in[0]          = gt_rxdfelpmreset[0] ;
    assign txpolarity_in[0]             = gt_txpolarity[0]    ;
    assign txinhibit_in[0]              = gt_txinhibit[0]    ;
    assign pcsrsvdin_in[15 : 0] = gt_pcsrsvdin[15 : 0];
    assign txpmareset_in[0]             = gt_txpmareset[0]    ;
    assign txpcsreset_in[0]             = gt_txpcsreset[0]    ;
    assign rxpcsreset_in[0]             = gt_rxpcsreset[0]    ;
    assign rxbufreset_in[0]             = gt_rxbufreset[0]    ;
    assign rxgearboxslip_in[0]          = gt0_rxgearboxslip_in ;
    assign rxlpmen_in[0]                = gt_rxlpmen[0]       ;
    assign gtrxreset_in[0]              = gt_gtrxreset[0]     ;
    assign gttxreset_in[0]              = gt_gttxreset[0]     ;
    assign txprbsforceerr_in[0]         = gt_txprbsforceerr[0];
    assign rxprbscntreset_in[0]         = gt_rxprbscntreset[0];

    assign gt_eyescandataerror[0]       = eyescandataerror_out[0];
    assign gt_rxprbserr[0]              = rxprbserr_out[0]     ;
    assign gt0_rxoutclk_out             = rxoutclk_out[0]      ;
    assign gt0_rxdatavalid_out          = rxdatavalid_out[0];

    assign gt0_rxheadervalid_out        = rxheadervalid_out[0] ;
    assign gt_rxresetdone[0]           = rxresetdone_out[0]   ;
 
    assign gt0_gthtxn_out               = gtytxn_out[0]        ;
    assign gt0_gthtxp_out               = gtytxp_out[0]        ;
 
    assign gt0_txoutclk_out             = txoutclk_out[0]      ;
    assign gt0_txoutclkfabric_out       = txoutclkfabric_out[0];
    assign gt0_txoutclkpcs_out          = txoutclkpcs_out[0]   ;
    assign gt_rxpmaresetdone[0]         = rxpmaresetdone_out[0];
    assign gt_txresetdone[0]           = txresetdone_out[0]   ;


    assign rxpmareset_in[0]             = gt_rxpmareset[0];
    assign rxrate_in[2 : 0] = gt_rxrate[2 : 0];

    // clock module output clocks assignment to GT clock input pins
    // for Tx path
    assign txusrclk2_in[0]              = gt0_txusrclk2_in;
    assign txusrclk_in[0]               = gt0_txusrclk_in;

    // for Rx path, this will be connected to GT Rx clock inputs again
    assign rxusrclk2_in[0]              = gtwiz_userclk_rx_usrclk2_out;
    assign rxusrclk_in[0]               = gtwiz_userclk_rx_usrclk_out ;

    // for Rx path, this will be connected outside of this module in WRAPPER logic
    assign gt0_rxusrclk2_out            = gtwiz_userclk_rx_usrclk2_out;
    assign gt0_rxusrclk_out             = gtwiz_userclk_rx_usrclk_out;

    //--------- Port interface for the $lane for Aurora core and Ultrscale GT --
    assign gtrefclk0_in[1]        = gt1_gtrefclk0_in     ;



    // DRP interface for GT channel starts
    assign gt1_drpdo        = drpdo_out[31 : 16];
    assign gt1_drprdy       = drprdy_out[1];

 
    assign drpaddr_in[19 : 10] = gt1_drpaddr;
    assign drpclk_in[1]         = gt1_drp_clk_in;
    assign drpdi_in[31 : 16] = gt1_drpdi;
    assign drpen_in[1]          = gt1_drpen  ;
    assign drpwe_in[1]          = gt1_drpwe  ;
    // DRP interface for GT channel ends

    assign txsequence_in[13 : 7] = gt1_txsequence_in;

    assign gt1_rxdata_out       = gtwiz_userdata_rx_out[127 : 64];
    assign gt_rxbufstatus[5 : 3]  = rxbufstatus_out[5 : 3];
    assign gt1_rxheader_out     = rxheader_out[7 : 6];// connect only  the 2 bits of this signal (out of 6 bits)

    assign loopback_in[5 : 3]     = gt_loopback[5 : 3];
    assign txpostcursor_in[9 : 5] = gt_txpostcursor[9 : 5];
    assign txheader_in[11 : 6]     = {4'b0, gt1_txheader_in[1:0]};
 
    assign txdiffctrl_in[9 : 4]   = gt_txdiffctrl[9 : 4];
    assign gtwiz_userdata_tx_in[127 : 64] = gt1_txdata_in;
    assign txprecursor_in[9 : 5] = gt_txprecursor[9 : 5];
    assign txprbssel_in[7 : 4]   = gt_txprbssel[7 : 4];
    assign rxprbssel_in[7 : 4]   = gt_rxprbssel[7 : 4];


 
    assign gt_dmonitorout[31 : 16] = dmonitorout_out[31 : 16];
 
    assign gt_txbufstatus[3 : 2]   = txbufstatus_out[3 : 2];


    assign eyescanreset_in[1]           = gt_eyescanreset[1]  ;
    assign rxpolarity_in[1]             = gt_rxpolarity[1]   ;
    assign eyescantrigger_in[1]         = gt_eyescantrigger[1];
    assign rxcdrovrden_in[1]            = gt1_rxcdrovrden_in   ;
    assign rxcdrhold_in[1]              = gt_rxcdrhold[1]     ;
 
    assign gtyrxn_in[1]                 = gt1_gthrxn_in        ;
    assign gtyrxp_in[1]                 = gt1_gthrxp_in        ;
 
    assign rxdfelpmreset_in[1]          = gt_rxdfelpmreset[1] ;
    assign txpolarity_in[1]             = gt_txpolarity[1]    ;
    assign txinhibit_in[1]              = gt_txinhibit[1]    ;
    assign pcsrsvdin_in[31 : 16] = gt_pcsrsvdin[31 : 16];
    assign txpmareset_in[1]             = gt_txpmareset[1]    ;
    assign txpcsreset_in[1]             = gt_txpcsreset[1]    ;
    assign rxpcsreset_in[1]             = gt_rxpcsreset[1]    ;
    assign rxbufreset_in[1]             = gt_rxbufreset[1]    ;
    assign rxgearboxslip_in[1]          = gt1_rxgearboxslip_in ;
    assign rxlpmen_in[1]                = gt_rxlpmen[1]       ;
    assign gtrxreset_in[1]              = gt_gtrxreset[1]     ;
    assign gttxreset_in[1]              = gt_gttxreset[1]     ;
    assign txprbsforceerr_in[1]         = gt_txprbsforceerr[1];
    assign rxprbscntreset_in[1]         = gt_rxprbscntreset[1];

    assign gt_eyescandataerror[1]       = eyescandataerror_out[1];
    assign gt_rxprbserr[1]              = rxprbserr_out[1]     ;
    assign gt1_rxoutclk_out             = rxoutclk_out[1]      ;
    assign gt1_rxdatavalid_out          = rxdatavalid_out[2];

    assign gt1_rxheadervalid_out        = rxheadervalid_out[2] ;
    assign gt_rxresetdone[1]           = rxresetdone_out[1]   ;
 
    assign gt1_gthtxn_out               = gtytxn_out[1]        ;
    assign gt1_gthtxp_out               = gtytxp_out[1]        ;
 
    assign gt1_txoutclk_out             = txoutclk_out[1]      ;
    assign gt1_txoutclkfabric_out       = txoutclkfabric_out[1];
    assign gt1_txoutclkpcs_out          = txoutclkpcs_out[1]   ;
    assign gt_rxpmaresetdone[1]         = rxpmaresetdone_out[1];
    assign gt_txresetdone[1]           = txresetdone_out[1]   ;


    assign rxpmareset_in[1]             = gt_rxpmareset[1];
    assign rxrate_in[5 : 3] = gt_rxrate[5 : 3];

    // clock module output clocks assignment to GT clock input pins
    // for Tx path
    assign txusrclk2_in[1]              = gt1_txusrclk2_in;
    assign txusrclk_in[1]               = gt1_txusrclk_in;

    // for Rx path, this will be connected to GT Rx clock inputs again
    assign rxusrclk2_in[1]              = gtwiz_userclk_rx_usrclk2_out;
    assign rxusrclk_in[1]               = gtwiz_userclk_rx_usrclk_out ;

    // for Rx path, this will be connected outside of this module in WRAPPER logic
    assign gt1_rxusrclk2_out            = gtwiz_userclk_rx_usrclk2_out;
    assign gt1_rxusrclk_out             = gtwiz_userclk_rx_usrclk_out;

    //--------- Port interface for the $lane for Aurora core and Ultrscale GT --
    assign gtrefclk0_in[2]        = gt2_gtrefclk0_in     ;



    // DRP interface for GT channel starts
    assign gt2_drpdo        = drpdo_out[47 : 32];
    assign gt2_drprdy       = drprdy_out[2];

 
    assign drpaddr_in[29 : 20] = gt2_drpaddr;
    assign drpclk_in[2]         = gt2_drp_clk_in;
    assign drpdi_in[47 : 32] = gt2_drpdi;
    assign drpen_in[2]          = gt2_drpen  ;
    assign drpwe_in[2]          = gt2_drpwe  ;
    // DRP interface for GT channel ends

    assign txsequence_in[20 : 14] = gt2_txsequence_in;

    assign gt2_rxdata_out       = gtwiz_userdata_rx_out[191 : 128];
    assign gt_rxbufstatus[8 : 6]  = rxbufstatus_out[8 : 6];
    assign gt2_rxheader_out     = rxheader_out[13 : 12];// connect only  the 2 bits of this signal (out of 6 bits)

    assign loopback_in[8 : 6]     = gt_loopback[8 : 6];
    assign txpostcursor_in[14 : 10] = gt_txpostcursor[14 : 10];
    assign txheader_in[17 : 12]     = {4'b0, gt2_txheader_in[1:0]};
 
    assign txdiffctrl_in[14 : 8]   = gt_txdiffctrl[14 : 8];
    assign gtwiz_userdata_tx_in[191 : 128] = gt2_txdata_in;
    assign txprecursor_in[14 : 10] = gt_txprecursor[14 : 10];
    assign txprbssel_in[11 : 8]   = gt_txprbssel[11 : 8];
    assign rxprbssel_in[11 : 8]   = gt_rxprbssel[11 : 8];


 
    assign gt_dmonitorout[47 : 32] = dmonitorout_out[47 : 32];
 
    assign gt_txbufstatus[5 : 4]   = txbufstatus_out[5 : 4];


    assign eyescanreset_in[2]           = gt_eyescanreset[2]  ;
    assign rxpolarity_in[2]             = gt_rxpolarity[2]   ;
    assign eyescantrigger_in[2]         = gt_eyescantrigger[2];
    assign rxcdrovrden_in[2]            = gt2_rxcdrovrden_in   ;
    assign rxcdrhold_in[2]              = gt_rxcdrhold[2]     ;
 
    assign gtyrxn_in[2]                 = gt2_gthrxn_in        ;
    assign gtyrxp_in[2]                 = gt2_gthrxp_in        ;
 
    assign rxdfelpmreset_in[2]          = gt_rxdfelpmreset[2] ;
    assign txpolarity_in[2]             = gt_txpolarity[2]    ;
    assign txinhibit_in[2]              = gt_txinhibit[2]    ;
    assign pcsrsvdin_in[47 : 32] = gt_pcsrsvdin[47 : 32];
    assign txpmareset_in[2]             = gt_txpmareset[2]    ;
    assign txpcsreset_in[2]             = gt_txpcsreset[2]    ;
    assign rxpcsreset_in[2]             = gt_rxpcsreset[2]    ;
    assign rxbufreset_in[2]             = gt_rxbufreset[2]    ;
    assign rxgearboxslip_in[2]          = gt2_rxgearboxslip_in ;
    assign rxlpmen_in[2]                = gt_rxlpmen[2]       ;
    assign gtrxreset_in[2]              = gt_gtrxreset[2]     ;
    assign gttxreset_in[2]              = gt_gttxreset[2]     ;
    assign txprbsforceerr_in[2]         = gt_txprbsforceerr[2];
    assign rxprbscntreset_in[2]         = gt_rxprbscntreset[2];

    assign gt_eyescandataerror[2]       = eyescandataerror_out[2];
    assign gt_rxprbserr[2]              = rxprbserr_out[2]     ;
    assign gt2_rxoutclk_out             = rxoutclk_out[2]      ;
    assign gt2_rxdatavalid_out          = rxdatavalid_out[4];

    assign gt2_rxheadervalid_out        = rxheadervalid_out[4] ;
    assign gt_rxresetdone[2]           = rxresetdone_out[2]   ;
 
    assign gt2_gthtxn_out               = gtytxn_out[2]        ;
    assign gt2_gthtxp_out               = gtytxp_out[2]        ;
 
    assign gt2_txoutclk_out             = txoutclk_out[2]      ;
    assign gt2_txoutclkfabric_out       = txoutclkfabric_out[2];
    assign gt2_txoutclkpcs_out          = txoutclkpcs_out[2]   ;
    assign gt_rxpmaresetdone[2]         = rxpmaresetdone_out[2];
    assign gt_txresetdone[2]           = txresetdone_out[2]   ;


    assign rxpmareset_in[2]             = gt_rxpmareset[2];
    assign rxrate_in[8 : 6] = gt_rxrate[8 : 6];

    // clock module output clocks assignment to GT clock input pins
    // for Tx path
    assign txusrclk2_in[2]              = gt2_txusrclk2_in;
    assign txusrclk_in[2]               = gt2_txusrclk_in;

    // for Rx path, this will be connected to GT Rx clock inputs again
    assign rxusrclk2_in[2]              = gtwiz_userclk_rx_usrclk2_out;
    assign rxusrclk_in[2]               = gtwiz_userclk_rx_usrclk_out ;

    // for Rx path, this will be connected outside of this module in WRAPPER logic
    assign gt2_rxusrclk2_out            = gtwiz_userclk_rx_usrclk2_out;
    assign gt2_rxusrclk_out             = gtwiz_userclk_rx_usrclk_out;

    //--------- Port interface for the $lane for Aurora core and Ultrscale GT --
    assign gtrefclk0_in[3]        = gt3_gtrefclk0_in     ;



    // DRP interface for GT channel starts
    assign gt3_drpdo        = drpdo_out[63 : 48];
    assign gt3_drprdy       = drprdy_out[3];

 
    assign drpaddr_in[39 : 30] = gt3_drpaddr;
    assign drpclk_in[3]         = gt3_drp_clk_in;
    assign drpdi_in[63 : 48] = gt3_drpdi;
    assign drpen_in[3]          = gt3_drpen  ;
    assign drpwe_in[3]          = gt3_drpwe  ;
    // DRP interface for GT channel ends

    assign txsequence_in[27 : 21] = gt3_txsequence_in;

    assign gt3_rxdata_out       = gtwiz_userdata_rx_out[255 : 192];
    assign gt_rxbufstatus[11 : 9]  = rxbufstatus_out[11 : 9];
    assign gt3_rxheader_out     = rxheader_out[19 : 18];// connect only  the 2 bits of this signal (out of 6 bits)

    assign loopback_in[11 : 9]     = gt_loopback[11 : 9];
    assign txpostcursor_in[19 : 15] = gt_txpostcursor[19 : 15];
    assign txheader_in[23 : 18]     = {4'b0, gt3_txheader_in[1:0]};
 
    assign txdiffctrl_in[19 : 12]   = gt_txdiffctrl[19 : 12];
    assign gtwiz_userdata_tx_in[255 : 192] = gt3_txdata_in;
    assign txprecursor_in[19 : 15] = gt_txprecursor[19 : 15];
    assign txprbssel_in[15 : 12]   = gt_txprbssel[15 : 12];
    assign rxprbssel_in[15 : 12]   = gt_rxprbssel[15 : 12];


 
    assign gt_dmonitorout[63 : 48] = dmonitorout_out[63 : 48];
 
    assign gt_txbufstatus[7 : 6]   = txbufstatus_out[7 : 6];


    assign eyescanreset_in[3]           = gt_eyescanreset[3]  ;
    assign rxpolarity_in[3]             = gt_rxpolarity[3]   ;
    assign eyescantrigger_in[3]         = gt_eyescantrigger[3];
    assign rxcdrovrden_in[3]            = gt3_rxcdrovrden_in   ;
    assign rxcdrhold_in[3]              = gt_rxcdrhold[3]     ;
 
    assign gtyrxn_in[3]                 = gt3_gthrxn_in        ;
    assign gtyrxp_in[3]                 = gt3_gthrxp_in        ;
 
    assign rxdfelpmreset_in[3]          = gt_rxdfelpmreset[3] ;
    assign txpolarity_in[3]             = gt_txpolarity[3]    ;
    assign txinhibit_in[3]              = gt_txinhibit[3]    ;
    assign pcsrsvdin_in[63 : 48] = gt_pcsrsvdin[63 : 48];
    assign txpmareset_in[3]             = gt_txpmareset[3]    ;
    assign txpcsreset_in[3]             = gt_txpcsreset[3]    ;
    assign rxpcsreset_in[3]             = gt_rxpcsreset[3]    ;
    assign rxbufreset_in[3]             = gt_rxbufreset[3]    ;
    assign rxgearboxslip_in[3]          = gt3_rxgearboxslip_in ;
    assign rxlpmen_in[3]                = gt_rxlpmen[3]       ;
    assign gtrxreset_in[3]              = gt_gtrxreset[3]     ;
    assign gttxreset_in[3]              = gt_gttxreset[3]     ;
    assign txprbsforceerr_in[3]         = gt_txprbsforceerr[3];
    assign rxprbscntreset_in[3]         = gt_rxprbscntreset[3];

    assign gt_eyescandataerror[3]       = eyescandataerror_out[3];
    assign gt_rxprbserr[3]              = rxprbserr_out[3]     ;
    assign gt3_rxoutclk_out             = rxoutclk_out[3]      ;
    assign gt3_rxdatavalid_out          = rxdatavalid_out[6];

    assign gt3_rxheadervalid_out        = rxheadervalid_out[6] ;
    assign gt_rxresetdone[3]           = rxresetdone_out[3]   ;
 
    assign gt3_gthtxn_out               = gtytxn_out[3]        ;
    assign gt3_gthtxp_out               = gtytxp_out[3]        ;
 
    assign gt3_txoutclk_out             = txoutclk_out[3]      ;
    assign gt3_txoutclkfabric_out       = txoutclkfabric_out[3];
    assign gt3_txoutclkpcs_out          = txoutclkpcs_out[3]   ;
    assign gt_rxpmaresetdone[3]         = rxpmaresetdone_out[3];
    assign gt_txresetdone[3]           = txresetdone_out[3]   ;


    assign rxpmareset_in[3]             = gt_rxpmareset[3];
    assign rxrate_in[11 : 9] = gt_rxrate[11 : 9];

    // clock module output clocks assignment to GT clock input pins
    // for Tx path
    assign txusrclk2_in[3]              = gt3_txusrclk2_in;
    assign txusrclk_in[3]               = gt3_txusrclk_in;

    // for Rx path, this will be connected to GT Rx clock inputs again
    assign rxusrclk2_in[3]              = gtwiz_userclk_rx_usrclk2_out;
    assign rxusrclk_in[3]               = gtwiz_userclk_rx_usrclk_out ;

    // for Rx path, this will be connected outside of this module in WRAPPER logic
    assign gt3_rxusrclk2_out            = gtwiz_userclk_rx_usrclk2_out;
    assign gt3_rxusrclk_out             = gtwiz_userclk_rx_usrclk_out;



//------------------------------------------------------------------------------
// Rx is needed in below conditions
// duplex, Rx only, RX/TX simplex
    // Ultrascale GT RX clocking module in outside of the GT
  //Tieing off with TX clocking for Simplex TX
    assign gtwiz_userclk_rx_usrclk2_out =  gt2_txusrclk_in ;
    assign gtwiz_userclk_rx_usrclk_out  =  gt2_txusrclk2_in;
//------------------------------------------------------------------------------

//--- fabric_pcs_reset reset extension counter based upon the stable clock
    //connect output of main clocking module (user clock) here
    assign gtwiz_userclk_tx_usrclk2_out = txusrclk2_in[0];

//--- synchronizing to usrclk2
//design_1_aurora_64b66b_0_3_rst_sync # 
//   ( 
//       .c_mtbf_stages (3) 
//   )u_rst_gtwiz_userclk_tx_active_out 
//   ( 
//       .prmry_in     (gtwiz_userclk_tx_active_out), 
//       .scndry_aclk  (gtwiz_userclk_tx_usrclk2_out), 
//       .scndry_out   (gtwiz_userclk_tx_active_out_i) 
//   ); 
assign  gtwiz_userclk_tx_active_out_i = gtwiz_userclk_tx_active_out;

    always @(posedge gtwiz_userclk_tx_usrclk2_out, negedge gtwiz_userclk_tx_active_out_i)
    begin
        if (!gtwiz_userclk_tx_active_out_i) // deactive counter when tx_active is not present
               fabric_pcs_rst_extend_cntr   <=   10'b0;
        else if (!fabric_pcs_rst_extend_cntr[9])  // when tx active is asserted, extend with 10 bit counter
                fabric_pcs_rst_extend_cntr  <=   fabric_pcs_rst_extend_cntr + 1'b1;
        end


  assign fabric_pcs_reset   = !fabric_pcs_rst_extend_cntr[9];
//--- fabric_pcs_reset reset extension counter ends

//------------------------------------------------------------------------------
//--- gtwiz_userclk_tx_active_in delay extension counter based upon the stable tx clock
// 8-bit counter

    always @(posedge gtwiz_userclk_tx_usrclk2_out, negedge gtwiz_userclk_tx_active_out_i)
    begin
        if (!gtwiz_userclk_tx_active_out_i) // deactive counter when tx_active is not present
                usrclk_tx_active_in_extend_cntr   <=   8'b0;
        else if (fabric_pcs_rst_extend_cntr[9] &&       // Extended tx active from clock module with 10 bit counter
                 (!usrclk_tx_active_in_extend_cntr[7]))
                usrclk_tx_active_in_extend_cntr   <=   usrclk_tx_active_in_extend_cntr + 1'b1;
        end

  assign userclk_tx_active_out   = usrclk_tx_active_in_extend_cntr[7];
//--- gtwiz_userclk_tx_active_in reset extension counter ends
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
   // assginment of delayed counters of Tx and Rx active signals to GT ports
   assign gtwiz_userclk_tx_active_in = userclk_tx_active_out;
   //--------------------------------------------------------
   // driving the gtwiz_userclk_rx_active_in different conditions
   // for Rx path, drive the default values when RX module is not included in the design
   assign gtwiz_userclk_rx_active_in = tied_to_ground_i;
   //--------------------------------------------------------
//------------------------------------------------------------------------------
//-- txpmaresetdone logic starts

   assign txpmaresetdone_int        = txpmaresetdone_out;

   assign gtwiz_userclk_tx_reset_in = ~(&txpmaresetdone_int);
   assign bufg_gt_clr_out     = ~(&txpmaresetdone_int);
//-- txpmaresetdone logic ends

//-- rxpmaresetdone logic starts
   
   // for Rx path, drive the default values when RX module is not included in the design
   assign gtwiz_userclk_rx_reset_in = tied_to_ground_i;
      always @(posedge gtwiz_reset_clk_freerun_in) 
          gtwiz_userclk_rx_reset_in_r <= `DLY gtwiz_userclk_rx_reset_in;
//-- rxpmaresetdone logic ends

    //-- GT Reference clock assignment

    // decision is made to use qpll0 only - note the 1 at the end of QPLL, so below changes are needed
    // to be incorporated
    assign qpll0outclk_out    = qpll0outclk_out;
    assign qpll0outrefclk_out = qpll0outrefclk_out;


 // dynamic GT instance call
   design_1_aurora_64b66b_0_3_gt design_1_aurora_64b66b_0_3_gt_i
  (
   .dmonitorout_out(dmonitorout_out),
   .drpaddr_in(drpaddr_in),
   .drpclk_in(drpclk_in),
   .drpdi_in(drpdi_in),
   .drpdo_out(drpdo_out),
   .drpen_in(drpen_in),
   .drprdy_out(drprdy_out),
   .drpwe_in(drpwe_in),
   .eyescandataerror_out(eyescandataerror_out),
   .eyescanreset_in(eyescanreset_in),
   .eyescantrigger_in(eyescantrigger_in),
   .gtpowergood_out(gtpowergood_out),
   .gtrefclk0_in(gtrefclk0_in),
   .gtwiz_reset_all_in(gtwiz_reset_all_in),
   .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
   .gtwiz_reset_qpll0lock_in(gtwiz_reset_qpll0lock_in),
   .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
   .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
   .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
   .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
   .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
   .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
   .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
   .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
   .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
   .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
   .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
   .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
   .gtyrxn_in(gtyrxn_in),
   .gtyrxp_in(gtyrxp_in),
   .gtytxn_out(gtytxn_out),
   .gtytxp_out(gtytxp_out),
   .loopback_in(loopback_in),
   .pcsrsvdin_in(pcsrsvdin_in),
   .qpll0clk_in(qpll0clk_in),
   .qpll0refclk_in(qpll0refclk_in),
   .qpll1clk_in(qpll1clk_in),
   .qpll1refclk_in(qpll1refclk_in),
   .rxbufreset_in(rxbufreset_in),
   .rxbufstatus_out(rxbufstatus_out),
   .rxcdrhold_in(rxcdrhold_in),
   .rxcdrovrden_in(rxcdrovrden_in),
   .rxdatavalid_out(rxdatavalid_out),
   .rxdfelpmreset_in(rxdfelpmreset_in),
   .rxgearboxslip_in(rxgearboxslip_in),
   .rxheader_out(rxheader_out),
   .rxheadervalid_out(rxheadervalid_out),
   .rxlpmen_in(rxlpmen_in),
   .rxoutclk_out(rxoutclk_out),
   .rxpcsreset_in(rxpcsreset_in),
   .rxpmareset_in(rxpmareset_in),
   .rxpmaresetdone_out(rxpmaresetdone_out),
   .rxpolarity_in(rxpolarity_in),
   .rxprbscntreset_in(rxprbscntreset_in),
   .rxprbserr_out(rxprbserr_out),
   .rxprbssel_in(rxprbssel_in),
   .rxresetdone_out(rxresetdone_out),
   .rxstartofseq_out(rxstartofseq_out),
   .rxusrclk2_in(rxusrclk2_in),
   .rxusrclk_in(rxusrclk_in),
   .txbufstatus_out(txbufstatus_out),
   .txdiffctrl_in(txdiffctrl_in),
   .txheader_in(txheader_in),
   .txinhibit_in(txinhibit_in),
   .txoutclk_out(txoutclk_out),
   .txoutclkfabric_out(txoutclkfabric_out),
   .txoutclkpcs_out(txoutclkpcs_out),
   .txpcsreset_in(txpcsreset_in),
   .txpmareset_in(txpmareset_in),
   .txpmaresetdone_out(txpmaresetdone_out),
   .txpolarity_in(txpolarity_in),
   .txpostcursor_in(txpostcursor_in),
   .txprbsforceerr_in(txprbsforceerr_in),
   .txprbssel_in(txprbssel_in),
   .txprecursor_in(txprecursor_in),
   .txresetdone_out(txresetdone_out),
   .txsequence_in(txsequence_in),
   .txusrclk2_in(txusrclk2_in),
   .txusrclk_in(txusrclk_in)
  );



endmodule
