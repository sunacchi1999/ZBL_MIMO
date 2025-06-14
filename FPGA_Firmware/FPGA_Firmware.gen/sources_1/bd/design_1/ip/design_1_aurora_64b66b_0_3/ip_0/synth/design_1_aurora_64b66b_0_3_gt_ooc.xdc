#------------------------------------------------------------------------------
#  (c) Copyright 2013-2018 Xilinx, Inc. All rights reserved.
#
#  This file contains confidential and proprietary information
#  of Xilinx, Inc. and is protected under U.S. and
#  international copyright and other intellectual property
#  laws.
#
#  DISCLAIMER
#  This disclaimer is not a license and does not grant any
#  rights to the materials distributed herewith. Except as
#  otherwise provided in a valid license issued to you by
#  Xilinx, and to the maximum extent permitted by applicable
#  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#  (2) Xilinx shall not be liable (whether in contract or tort,
#  including negligence, or under any other theory of
#  liability) for any loss or damage of any kind or nature
#  related to, arising under or in connection with these
#  materials, including for any direct, or any indirect,
#  special, incidental, or consequential loss or damage
#  (including loss of data, profits, goodwill, or any type of
#  loss or damage suffered as a result of any action brought
#  by a third party) even if such damage or loss was
#  reasonably foreseeable or Xilinx had been advised of the
#  possibility of the same.
#
#  CRITICAL APPLICATIONS
#  Xilinx products are not designed or intended to be fail-
#  safe, or for use in any application requiring fail-safe
#  performance, such as life-support or safety devices or
#  systems, Class III medical devices, nuclear facilities,
#  applications related to the deployment of airbags, or any
#  other applications that could lead to death, personal
#  injury, or severe property or environmental damage
#  (individually and collectively, "Critical
#  Applications"). Customer assumes the sole risk and
#  liability of any use of Xilinx products in Critical
#  Applications, subject only to applicable laws and
#  regulations governing limitations on product liability.
#
#  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#  PART OF THIS FILE AT ALL TIMES.
#------------------------------------------------------------------------------


# UltraScale FPGAs Transceivers Wizard IP core-level XDC file for out-of-context flows
# ----------------------------------------------------------------------------------------------------------------------

# This constraints file contains default clock frequencies to be used during out-of-context flows such as
# OOC Synthesis and Hierarchical Designs.

# Free-running clock constraint
create_clock -period 10.0 [get_ports gtwiz_reset_clk_freerun_in]

# CPLL reference clock constraint (will be overridden by required constraint on IBUFDS_GTE4 input in context)

# Internal TX user clock constraint (will be overridden by required reference clock constraint propagated through CHANNEL primitive in context)
create_clock -period 2.56 [get_ports txusrclk_in[0]]
create_clock -period 2.56 [get_ports txusrclk_in[1]]
create_clock -period 2.56 [get_ports txusrclk_in[2]]
create_clock -period 2.56 [get_ports txusrclk_in[3]]

# External TX user clock constraint (will be overridden by required reference clock constraint propagated through CHANNEL primitive in context)
create_clock -period 2.56 [get_ports txusrclk2_in[0]]
create_clock -period 2.56 [get_ports txusrclk2_in[1]]
create_clock -period 2.56 [get_ports txusrclk2_in[2]]
create_clock -period 2.56 [get_ports txusrclk2_in[3]]

# TXOUTCLK constraint, required in OOC flows when reference clock input port is external to the IP instance
create_clock -period 2.56 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST}]]
create_clock -period 2.56 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST}]]
create_clock -period 2.56 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gtye4_channel_inst[2].GTYE4_CHANNEL_PRIM_INST}]]
create_clock -period 2.56 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gtye4_channel_inst[3].GTYE4_CHANNEL_PRIM_INST}]]

# Internal RX user clock constraint (will be overridden by required reference clock constraint propagated through CHANNEL primitive in context)
create_clock -period 2.56 [get_ports rxusrclk_in[0]]
create_clock -period 2.56 [get_ports rxusrclk_in[1]]
create_clock -period 2.56 [get_ports rxusrclk_in[2]]
create_clock -period 2.56 [get_ports rxusrclk_in[3]]

# External RX user clock constraint (will be overridden by required reference clock constraint propagated through CHANNEL primitive in context)
create_clock -period 2.56 [get_ports rxusrclk2_in[0]]
create_clock -period 2.56 [get_ports rxusrclk2_in[1]]
create_clock -period 2.56 [get_ports rxusrclk2_in[2]]
create_clock -period 2.56 [get_ports rxusrclk2_in[3]]

# RXOUTCLK constraint, required in OOC flows when reference clock input port is external to the IP instance
create_clock -period 2.56 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST}]]
create_clock -period 2.56 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST}]]
create_clock -period 2.56 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gtye4_channel_inst[2].GTYE4_CHANNEL_PRIM_INST}]]
create_clock -period 2.56 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gtye4_channel_inst[3].GTYE4_CHANNEL_PRIM_INST}]]

# DRP clock constraint for CHANNEL primitive
create_clock -period 10.0 [get_ports drpclk_in[0]]
create_clock -period 10.0 [get_ports drpclk_in[1]]
create_clock -period 10.0 [get_ports drpclk_in[2]]
create_clock -period 10.0 [get_ports drpclk_in[3]]

# False path constraints
# ----------------------------------------------------------------------------------------------------------------------
set_false_path -to [get_cells -hierarchical -filter {NAME =~ *bit_synchronizer*inst/i_in_meta_reg}] -quiet

##set_false_path -to [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_*_reg}] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_meta*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_meta*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync1*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync2*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync3*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_out*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*CLR} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_meta*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*CLR} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync1*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*CLR} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync2*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*CLR} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync3*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*CLR} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_out*}]] -quiet

