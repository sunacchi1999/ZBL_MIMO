//------------------------------------------------------------------------------
//  (c) Copyright 2013-2014 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------


`timescale 1 ps / 1 ps

// *********************************************************************************************************************
// IMPORTANT
// This helper block was chosen for exclusion from the IP core, and is therefore delivered within the example design.
// However, it is still customized for the chosen core configuration. If you wish to modify its behavior, refer to this
// core's Product Guide for possible guidance and be careful to understand the existing behavior and the effects of any
// modifications you may choose to make.
// *********************************************************************************************************************

(* DowngradeIPIdentifiedWarnings="yes" *)

 module design_1_aurora_64b66b_0_3_ultrascale_tx_userclk #(

  parameter integer P_CONTENTS                     = 0,
  parameter integer P_FREQ_RATIO_SOURCE_TO_USRCLK  = 1,
  parameter integer P_FREQ_RATIO_USRCLK_TO_USRCLK2 = 1
)(

  input  wire gtwiz_userclk_tx_srcclk_in,
  input  wire gtwiz_userclk_tx_reset_in,
  output wire gtwiz_userclk_tx_usrclk_out,
  output wire gtwiz_userclk_tx_usrclk2_out,
 (* ASYNC_REG = "TRUE" *) output reg  gtwiz_userclk_tx_active_out = 1'b0

);


  // -------------------------------------------------------------------------------------------------------------------
  // Local parameters
  // -------------------------------------------------------------------------------------------------------------------

  // Convert integer parameters with known, limited legal range to a 3-bit local parameter values
  localparam integer P_USRCLK_INT_DIV  = P_FREQ_RATIO_SOURCE_TO_USRCLK - 1;
  localparam   [2:0] P_USRCLK_DIV      = P_USRCLK_INT_DIV[2:0];
  localparam integer P_USRCLK2_INT_DIV = (P_FREQ_RATIO_SOURCE_TO_USRCLK * P_FREQ_RATIO_USRCLK_TO_USRCLK2) - 1;
  localparam   [2:0] P_USRCLK2_DIV     = P_USRCLK2_INT_DIV[2:0];


  // -------------------------------------------------------------------------------------------------------------------
  // Transmitter user clocking network conditional generation, based on parameter values in module instantiation
  // -------------------------------------------------------------------------------------------------------------------
  generate if (1) begin: gen_gtwiz_userclk_tx_main

  // Use BUFG_GT instance(s) to drive TXUSRCLK and TXUSRCLK2, inferred for integral source to TXUSRCLK frequency ratio
    if (P_CONTENTS == 0) begin

      // Drive TXUSRCLK with BUFG_GT-buffered source clock, dividing the input by the integral source clock to TXUSRCLK
      // frequency ratio
      BUFG_GT bufg_gt_usrclk_inst (
        .CE      (1'b1),
        .CEMASK  (1'b0),
        .CLR     (gtwiz_userclk_tx_reset_in),
        .CLRMASK (1'b0),
        .DIV     (P_USRCLK_DIV),
        .I       (gtwiz_userclk_tx_srcclk_in),
        .O       (gtwiz_userclk_tx_usrclk_out)
      );

      // If TXUSRCLK and TXUSRCLK2 frequencies are identical, drive both from the same BUFG_GT. Otherwise, drive
      // TXUSRCLK2 from a second BUFG_GT instance, dividing the source clock down to the TXUSRCLK2 frequency.
      if (P_FREQ_RATIO_USRCLK_TO_USRCLK2 == 1) begin
        assign gtwiz_userclk_tx_usrclk2_out = gtwiz_userclk_tx_usrclk_out;
      end
      else begin
        BUFG_GT bufg_gt_usrclk2_inst (
          .CE      (1'b1),
          .CEMASK  (1'b0),
          .CLR     (gtwiz_userclk_tx_reset_in),
          .CLRMASK (1'b0),
          .DIV     (P_USRCLK2_DIV),
          .I       (gtwiz_userclk_tx_srcclk_in),
          .O       (gtwiz_userclk_tx_usrclk2_out)
        );
      end

      // Indicate active helper block functionality when the BUFG_GT divider is not held in reset
      (* ASYNC_REG = "TRUE" *) reg tx_active_design_1_aurora_64b66b_0_3_cdc_to = 1'b0;
      (* ASYNC_REG = "TRUE" *) reg tx_active_cdc_to_stg2 = 1'b0;
      always @(posedge gtwiz_userclk_tx_usrclk2_out, posedge gtwiz_userclk_tx_reset_in) begin
        if (gtwiz_userclk_tx_reset_in) begin
          tx_active_design_1_aurora_64b66b_0_3_cdc_to <= 1'b0;
          tx_active_cdc_to_stg2 <= 1'b0;
          gtwiz_userclk_tx_active_out <= 1'b0;
        end
        else begin
          tx_active_design_1_aurora_64b66b_0_3_cdc_to <= 1'b1;
          tx_active_cdc_to_stg2 <= tx_active_design_1_aurora_64b66b_0_3_cdc_to;
          gtwiz_userclk_tx_active_out <= tx_active_cdc_to_stg2;
        end
      end

    end

  end
  endgenerate


endmodule
