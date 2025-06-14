 ///////////////////////////////////////////////////////////////////////////////
 //
 // Project:  Aurora 64B/66B
 // Company:  Xilinx
 //
 //
 //
 // (c) Copyright 2008 - 2009 Xilinx, Inc. All rights reserved.
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
 ///////////////////////////////////////////////////////////////////////////////
 //
 //  SIMPLEX_TX_CHANNEL_ERR_DETECT
 //
 //
 //
 //  Description: the CHANNEL_ERR_DETECT module monitors the error signals
 //               from the Aurora Lanes in the channel.  If one or more errors
 //               are detected, the error is reported as a channel error.  If
 //               a hard error is detected, it sends a message to the channel
 //               initialization state machine to reset the channel.
 //
 //
 ///////////////////////////////////////////////////////////////////////////////
 
`timescale 1 ps / 1 ps
 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module design_1_aurora_64b66b_0_3_SIMPLEX_TX_CHANNEL_ERR_DETECT
 (
     // Aurora Lane Interface
     TX_HARD_ERR,
     TX_LANE_UP,
 
 
     // System Interface
     USER_CLK,
 
     TX_CHANNEL_HARD_ERR
 
 
 );
 
 `define DLY #1
 
 
 
 //***********************************Port Declarations*******************************
 
     //Aurora Lane Interface
       input   [0:3]      TX_HARD_ERR; 
       input   [0:3]      TX_LANE_UP; 
 
 
     //System Interface
       input              USER_CLK; 
 
       output             TX_CHANNEL_HARD_ERR; 
 
 
 
 //*****************************External Register Declarations*************************
 
       reg                TX_CHANNEL_HARD_ERR; 
 
 
 //*********************************Wire Declarations**********************************
 
       wire               tx_channel_hard_err_c; 
       wire               reset_channel_c; 
 
 
 //*********************************Main Body of Code**********************************
 
 
     assign tx_channel_hard_err_c = |TX_HARD_ERR ;
 
     always @(posedge USER_CLK)
     begin
         TX_CHANNEL_HARD_ERR  <=  `DLY  tx_channel_hard_err_c;
     end
 
 
 endmodule
