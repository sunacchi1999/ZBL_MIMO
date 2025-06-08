
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# AXI_Stream_MUX, Aurora_Init_Rstn, BUFG_MMCM_OUT, CPF_Check, DAC_Data_Gen, Data_Link_Vio, Down_Sampling, LVDS_Rx, LVDS_Tx, MTS_Clk

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu49dr-ffvf1760-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set GT_DIFF_REFCLK1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 GT_DIFF_REFCLK1 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   ] $GT_DIFF_REFCLK1

  set GT_SERIAL_TX [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX_rtl:1.0 GT_SERIAL_TX ]

  set adc1_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 adc1_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $adc1_clk

  set dac1_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 dac1_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $dac1_clk

  set iic_rtl_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_rtl_0 ]

  set iic_rtl_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_rtl_1 ]

  set spi_rtl_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 spi_rtl_0 ]

  set sysref_in [ create_bd_intf_port -mode Slave -vlnv xilinx.com:display_usp_rf_data_converter:diff_pins_rtl:1.0 sysref_in ]

  set uart_rtl_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 uart_rtl_0 ]

  set uart_rtl_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 uart_rtl_1 ]

  set uart_rtl_2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 uart_rtl_2 ]

  set uart_rtl_3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 uart_rtl_3 ]

  set vin00 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin00 ]

  set vin01 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin01 ]

  set vin02 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin02 ]

  set vin03 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin03 ]

  set vin10 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin10 ]

  set vin11 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin11 ]

  set vin12 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin12 ]

  set vin13 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin13 ]

  set vin20 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin20 ]

  set vin21 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin21 ]

  set vin22 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin22 ]

  set vin23 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin23 ]

  set vin30 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin30 ]

  set vin31 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin31 ]

  set vin32 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin32 ]

  set vin33 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin33 ]

  set vout00 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout00 ]

  set vout01 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout01 ]

  set vout02 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout02 ]

  set vout03 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout03 ]

  set vout10 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout10 ]

  set vout11 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout11 ]

  set vout12 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout12 ]

  set vout13 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout13 ]

  set vout20 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout20 ]

  set vout21 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout21 ]

  set vout22 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout22 ]

  set vout23 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout23 ]

  set vout30 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout30 ]

  set vout31 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout31 ]

  set vout32 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout32 ]

  set vout33 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout33 ]


  # Create ports
  set LMK_Control [ create_bd_port -dir O -from 3 -to 0 LMK_Control ]
  set Mech_Switch_TTL [ create_bd_port -dir O -from 1 -to 0 Mech_Switch_TTL ]
  set PA_Status_TTL [ create_bd_port -dir I -from 19 -to 0 PA_Status_TTL ]
  set PA_Switch_TTL [ create_bd_port -dir O -from 7 -to 0 PA_Switch_TTL ]
  set PL_Clk_n [ create_bd_port -dir I -type clk -freq_hz 100000000 PL_Clk_n ]
  set PL_Clk_p [ create_bd_port -dir I -type clk -freq_hz 100000000 PL_Clk_p ]
  set PL_SysRef_n [ create_bd_port -dir I PL_SysRef_n ]
  set PL_SysRef_p [ create_bd_port -dir I PL_SysRef_p ]
  set i_LVDS_Clk_n [ create_bd_port -dir I -from 0 -to 0 -type clk -freq_hz 20000000 i_LVDS_Clk_n ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {design_1_LVDS_Tx_0_0_o_LVDS_Clk_n} \
 ] $i_LVDS_Clk_n
  set i_LVDS_Clk_p [ create_bd_port -dir I -from 0 -to 0 -type clk -freq_hz 20000000 i_LVDS_Clk_p ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {design_1_LVDS_Tx_0_0_o_LVDS_Clk_p} \
 ] $i_LVDS_Clk_p
  set i_LVDS_Data0_n [ create_bd_port -dir I -from 0 -to 0 i_LVDS_Data0_n ]
  set i_LVDS_Data0_p [ create_bd_port -dir I -from 0 -to 0 i_LVDS_Data0_p ]
  set i_LVDS_Data1_n [ create_bd_port -dir I -from 0 -to 0 i_LVDS_Data1_n ]
  set i_LVDS_Data1_p [ create_bd_port -dir I -from 0 -to 0 i_LVDS_Data1_p ]
  set i_LVDS_Data2_n [ create_bd_port -dir I -from 0 -to 0 i_LVDS_Data2_n ]
  set i_LVDS_Data2_p [ create_bd_port -dir I -from 0 -to 0 i_LVDS_Data2_p ]
  set i_LVDS_Data3_n [ create_bd_port -dir I -from 0 -to 0 i_LVDS_Data3_n ]
  set i_LVDS_Data3_p [ create_bd_port -dir I -from 0 -to 0 i_LVDS_Data3_p ]
  set o_LVDS_Clk_1_n [ create_bd_port -dir O -from 0 -to 0 o_LVDS_Clk_1_n ]
  set o_LVDS_Clk_1_p [ create_bd_port -dir O -from 0 -to 0 o_LVDS_Clk_1_p ]
  set o_LVDS_Data0_n [ create_bd_port -dir O -from 0 -to 0 o_LVDS_Data0_n ]
  set o_LVDS_Data0_p [ create_bd_port -dir O -from 0 -to 0 o_LVDS_Data0_p ]
  set o_LVDS_Data1_n [ create_bd_port -dir O -from 0 -to 0 o_LVDS_Data1_n ]
  set o_LVDS_Data1_p [ create_bd_port -dir O -from 0 -to 0 o_LVDS_Data1_p ]
  set o_LVDS_Data2_n [ create_bd_port -dir O -from 0 -to 0 o_LVDS_Data2_n ]
  set o_LVDS_Data2_p [ create_bd_port -dir O -from 0 -to 0 o_LVDS_Data2_p ]
  set o_LVDS_Data3_n [ create_bd_port -dir O -from 0 -to 0 o_LVDS_Data3_n ]
  set o_LVDS_Data3_p [ create_bd_port -dir O -from 0 -to 0 o_LVDS_Data3_p ]
  set o_Work_State [ create_bd_port -dir O -from 0 -to 0 o_Work_State ]

  # Create instance: AXI_Lite_0, and set properties
  set AXI_Lite_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:AXI_Lite:1.0 AXI_Lite_0 ]

  # Create instance: AXI_Stream_MUX_0, and set properties
  set block_name AXI_Stream_MUX
  set block_cell_name AXI_Stream_MUX_0
  if { [catch {set AXI_Stream_MUX_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $AXI_Stream_MUX_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Aurora_Init_Rstn_0, and set properties
  set block_name Aurora_Init_Rstn
  set block_cell_name Aurora_Init_Rstn_0
  if { [catch {set Aurora_Init_Rstn_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Aurora_Init_Rstn_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: BUFG_MMCM_OUT_0, and set properties
  set block_name BUFG_MMCM_OUT
  set block_cell_name BUFG_MMCM_OUT_0
  if { [catch {set BUFG_MMCM_OUT_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $BUFG_MMCM_OUT_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: CPF_Check_0, and set properties
  set block_name CPF_Check
  set block_cell_name CPF_Check_0
  if { [catch {set CPF_Check_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $CPF_Check_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: DAC_Data_Gen_0, and set properties
  set block_name DAC_Data_Gen
  set block_cell_name DAC_Data_Gen_0
  if { [catch {set DAC_Data_Gen_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DAC_Data_Gen_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Data_Link_Vio_0, and set properties
  set block_name Data_Link_Vio
  set block_cell_name Data_Link_Vio_0
  if { [catch {set Data_Link_Vio_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Data_Link_Vio_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Down_Sampling_0, and set properties
  set block_name Down_Sampling
  set block_cell_name Down_Sampling_0
  if { [catch {set Down_Sampling_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Down_Sampling_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: LVDS_Rx_0, and set properties
  set block_name LVDS_Rx
  set block_cell_name LVDS_Rx_0
  if { [catch {set LVDS_Rx_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $LVDS_Rx_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.ADC_TRIGGER_WIDTH_DEBUG {0xC8} \
 ] $LVDS_Rx_0

  # Create instance: LVDS_Tx_0, and set properties
  set block_name LVDS_Tx
  set block_cell_name LVDS_Tx_0
  if { [catch {set LVDS_Tx_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $LVDS_Tx_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.DAC_TRIGGER_WIDTH_DEBUG {0xC8} \
 ] $LVDS_Tx_0

  # Create instance: MTS_Clk_0, and set properties
  set block_name MTS_Clk
  set block_cell_name MTS_Clk_0
  if { [catch {set MTS_Clk_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MTS_Clk_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: aurora_64b66b_0, and set properties
  set aurora_64b66b_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:aurora_64b66b:12.0 aurora_64b66b_0 ]
  set_property -dict [ list \
   CONFIG.CHANNEL_ENABLE {X0Y4 X0Y5 X0Y6 X0Y7} \
   CONFIG.C_AURORA_LANES {4} \
   CONFIG.C_GT_LOC_2 {2} \
   CONFIG.C_GT_LOC_3 {3} \
   CONFIG.C_GT_LOC_4 {4} \
   CONFIG.C_INIT_CLK {100} \
   CONFIG.C_LINE_RATE {25} \
   CONFIG.C_USE_BYTESWAP {true} \
   CONFIG.SupportLevel {1} \
   CONFIG.dataflow_config {TX-only_Simplex} \
   CONFIG.drp_mode {Disabled} \
   CONFIG.interface_mode {Framing} \
 ] $aurora_64b66b_0

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]

  # Create instance: axi_iic_1, and set properties
  set axi_iic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_1 ]

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_SCK_RATIO {16} \
   CONFIG.Multiples16 {5} \
 ] $axi_quad_spi_0

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
 ] $axi_uartlite_0

  # Create instance: axi_uartlite_1, and set properties
  set axi_uartlite_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_1 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
 ] $axi_uartlite_1

  # Create instance: axi_uartlite_2, and set properties
  set axi_uartlite_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_2 ]

  # Create instance: axi_uartlite_3, and set properties
  set axi_uartlite_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_3 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {50.0} \
   CONFIG.CLKOUT1_DRIVES {Buffer} \
   CONFIG.CLKOUT1_JITTER {81.254} \
   CONFIG.CLKOUT1_PHASE_ERROR {82.655} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {400.000} \
   CONFIG.CLKOUT2_DRIVES {Buffer} \
   CONFIG.CLKOUT2_JITTER {106.024} \
   CONFIG.CLKOUT2_PHASE_ERROR {82.655} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {Buffer} \
   CONFIG.CLKOUT4_DRIVES {Buffer} \
   CONFIG.CLKOUT5_DRIVES {Buffer} \
   CONFIG.CLKOUT6_DRIVES {Buffer} \
   CONFIG.CLKOUT7_DRIVES {Buffer} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {6.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {5.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {3.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {12} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_IN_FREQ {200.000} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_PHASE_ALIGNMENT {true} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create instance: ps8_0_axi_periph, and set properties
  set ps8_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps8_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {9} \
 ] $ps8_0_axi_periph

  # Create instance: rst_ps8_0_99M, and set properties
  set rst_ps8_0_99M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps8_0_99M ]

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {10} \
   CONFIG.C_DATA_DEPTH {32768} \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {11} \
 ] $system_ila_0

  # Create instance: system_ila_1, and set properties
  set system_ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_1 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {5.5} \
   CONFIG.C_DATA_DEPTH {32768} \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {6} \
 ] $system_ila_1

  # Create instance: system_ila_2, and set properties
  set system_ila_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_2 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {4.5} \
   CONFIG.C_DATA_DEPTH {32768} \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_MONITOR_SLOTS {5} \
   CONFIG.C_NUM_OF_PROBES {5} \
 ] $system_ila_2

  # Create instance: system_ila_3, and set properties
  set system_ila_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_3 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {10} \
   CONFIG.C_DATA_DEPTH {32768} \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_MONITOR_SLOTS {1} \
   CONFIG.C_NUM_OF_PROBES {11} \
   CONFIG.C_SLOT {0} \
   CONFIG.C_SLOT_0_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_1_INTF_TYPE {xilinx.com:interface:gt_rx_interface_rtl:1.0} \
   CONFIG.C_SLOT_2_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
 ] $system_ila_3

  # Create instance: usp_rf_data_converter_0, and set properties
  set usp_rf_data_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:usp_rf_data_converter:2.4 usp_rf_data_converter_0 ]
  set_property -dict [ list \
   CONFIG.ADC0_Clock_Source {1} \
   CONFIG.ADC0_Fabric_Freq {400.000} \
   CONFIG.ADC0_Multi_Tile_Sync {true} \
   CONFIG.ADC1_Clock_Dist {2} \
   CONFIG.ADC1_Enable {1} \
   CONFIG.ADC1_Fabric_Freq {400.000} \
   CONFIG.ADC1_Multi_Tile_Sync {true} \
   CONFIG.ADC1_PLL_Enable {true} \
   CONFIG.ADC1_Refclk_Freq {200.000} \
   CONFIG.ADC2_Clock_Source {1} \
   CONFIG.ADC2_Enable {1} \
   CONFIG.ADC2_Fabric_Freq {400.000} \
   CONFIG.ADC2_Multi_Tile_Sync {true} \
   CONFIG.ADC3_Clock_Source {1} \
   CONFIG.ADC3_Enable {1} \
   CONFIG.ADC3_Fabric_Freq {400.000} \
   CONFIG.ADC3_Multi_Tile_Sync {true} \
   CONFIG.ADC_Coarse_Mixer_Freq01 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq02 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq03 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq10 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq11 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq12 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq13 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq20 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq21 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq22 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq23 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq30 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq31 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq32 {3} \
   CONFIG.ADC_Coarse_Mixer_Freq33 {3} \
   CONFIG.ADC_Data_Width00 {5} \
   CONFIG.ADC_Data_Width01 {5} \
   CONFIG.ADC_Data_Width02 {5} \
   CONFIG.ADC_Data_Width03 {5} \
   CONFIG.ADC_Data_Width10 {5} \
   CONFIG.ADC_Data_Width11 {5} \
   CONFIG.ADC_Data_Width12 {5} \
   CONFIG.ADC_Data_Width13 {5} \
   CONFIG.ADC_Data_Width20 {5} \
   CONFIG.ADC_Data_Width21 {5} \
   CONFIG.ADC_Data_Width22 {5} \
   CONFIG.ADC_Data_Width23 {5} \
   CONFIG.ADC_Data_Width30 {5} \
   CONFIG.ADC_Data_Width31 {5} \
   CONFIG.ADC_Data_Width32 {5} \
   CONFIG.ADC_Data_Width33 {5} \
   CONFIG.ADC_Decimation_Mode01 {1} \
   CONFIG.ADC_Decimation_Mode02 {1} \
   CONFIG.ADC_Decimation_Mode03 {1} \
   CONFIG.ADC_Decimation_Mode10 {1} \
   CONFIG.ADC_Decimation_Mode11 {1} \
   CONFIG.ADC_Decimation_Mode12 {1} \
   CONFIG.ADC_Decimation_Mode13 {1} \
   CONFIG.ADC_Decimation_Mode20 {1} \
   CONFIG.ADC_Decimation_Mode21 {1} \
   CONFIG.ADC_Decimation_Mode22 {1} \
   CONFIG.ADC_Decimation_Mode23 {1} \
   CONFIG.ADC_Decimation_Mode30 {1} \
   CONFIG.ADC_Decimation_Mode31 {1} \
   CONFIG.ADC_Decimation_Mode32 {1} \
   CONFIG.ADC_Decimation_Mode33 {1} \
   CONFIG.ADC_Mixer_Type01 {1} \
   CONFIG.ADC_Mixer_Type02 {1} \
   CONFIG.ADC_Mixer_Type03 {1} \
   CONFIG.ADC_Mixer_Type10 {1} \
   CONFIG.ADC_Mixer_Type11 {1} \
   CONFIG.ADC_Mixer_Type12 {1} \
   CONFIG.ADC_Mixer_Type13 {1} \
   CONFIG.ADC_Mixer_Type20 {1} \
   CONFIG.ADC_Mixer_Type21 {1} \
   CONFIG.ADC_Mixer_Type22 {1} \
   CONFIG.ADC_Mixer_Type23 {1} \
   CONFIG.ADC_Mixer_Type30 {1} \
   CONFIG.ADC_Mixer_Type31 {1} \
   CONFIG.ADC_Mixer_Type32 {1} \
   CONFIG.ADC_Mixer_Type33 {1} \
   CONFIG.ADC_OBS03 {false} \
   CONFIG.ADC_OBS11 {false} \
   CONFIG.ADC_OBS12 {false} \
   CONFIG.ADC_OBS13 {false} \
   CONFIG.ADC_OBS21 {false} \
   CONFIG.ADC_OBS22 {false} \
   CONFIG.ADC_OBS23 {false} \
   CONFIG.ADC_OBS31 {false} \
   CONFIG.ADC_OBS32 {false} \
   CONFIG.ADC_OBS33 {false} \
   CONFIG.ADC_RESERVED_1_00 {false} \
   CONFIG.ADC_RESERVED_1_01 {false} \
   CONFIG.ADC_RESERVED_1_02 {false} \
   CONFIG.ADC_RESERVED_1_03 {false} \
   CONFIG.ADC_RESERVED_1_10 {false} \
   CONFIG.ADC_RESERVED_1_11 {false} \
   CONFIG.ADC_RESERVED_1_12 {false} \
   CONFIG.ADC_RESERVED_1_13 {false} \
   CONFIG.ADC_RESERVED_1_20 {false} \
   CONFIG.ADC_RESERVED_1_21 {false} \
   CONFIG.ADC_RESERVED_1_22 {false} \
   CONFIG.ADC_RESERVED_1_23 {false} \
   CONFIG.ADC_RESERVED_1_30 {false} \
   CONFIG.ADC_RESERVED_1_31 {false} \
   CONFIG.ADC_RESERVED_1_32 {false} \
   CONFIG.ADC_RESERVED_1_33 {false} \
   CONFIG.ADC_Slice01_Enable {true} \
   CONFIG.ADC_Slice02_Enable {true} \
   CONFIG.ADC_Slice03_Enable {true} \
   CONFIG.ADC_Slice10_Enable {true} \
   CONFIG.ADC_Slice11_Enable {true} \
   CONFIG.ADC_Slice12_Enable {true} \
   CONFIG.ADC_Slice13_Enable {true} \
   CONFIG.ADC_Slice20_Enable {true} \
   CONFIG.ADC_Slice21_Enable {true} \
   CONFIG.ADC_Slice22_Enable {true} \
   CONFIG.ADC_Slice23_Enable {true} \
   CONFIG.ADC_Slice30_Enable {true} \
   CONFIG.ADC_Slice31_Enable {true} \
   CONFIG.ADC_Slice32_Enable {true} \
   CONFIG.ADC_Slice33_Enable {true} \
   CONFIG.DAC0_Clock_Source {5} \
   CONFIG.DAC0_Enable {1} \
   CONFIG.DAC0_Fabric_Freq {400.000} \
   CONFIG.DAC0_Multi_Tile_Sync {true} \
   CONFIG.DAC1_Clock_Dist {2} \
   CONFIG.DAC1_Enable {1} \
   CONFIG.DAC1_Fabric_Freq {400.000} \
   CONFIG.DAC1_Multi_Tile_Sync {true} \
   CONFIG.DAC1_PLL_Enable {true} \
   CONFIG.DAC1_Refclk_Freq {200.000} \
   CONFIG.DAC2_Clock_Source {5} \
   CONFIG.DAC2_Enable {1} \
   CONFIG.DAC2_Fabric_Freq {400.000} \
   CONFIG.DAC2_Multi_Tile_Sync {true} \
   CONFIG.DAC3_Clock_Source {5} \
   CONFIG.DAC3_Enable {1} \
   CONFIG.DAC3_Fabric_Freq {400.000} \
   CONFIG.DAC3_Multi_Tile_Sync {true} \
   CONFIG.DAC_Coarse_Mixer_Freq00 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq01 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq02 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq03 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq10 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq11 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq12 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq13 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq20 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq21 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq22 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq23 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq30 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq31 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq32 {3} \
   CONFIG.DAC_Coarse_Mixer_Freq33 {3} \
   CONFIG.DAC_Interpolation_Mode00 {1} \
   CONFIG.DAC_Interpolation_Mode01 {1} \
   CONFIG.DAC_Interpolation_Mode02 {1} \
   CONFIG.DAC_Interpolation_Mode03 {1} \
   CONFIG.DAC_Interpolation_Mode10 {1} \
   CONFIG.DAC_Interpolation_Mode11 {1} \
   CONFIG.DAC_Interpolation_Mode12 {1} \
   CONFIG.DAC_Interpolation_Mode13 {1} \
   CONFIG.DAC_Interpolation_Mode20 {1} \
   CONFIG.DAC_Interpolation_Mode21 {1} \
   CONFIG.DAC_Interpolation_Mode22 {1} \
   CONFIG.DAC_Interpolation_Mode23 {1} \
   CONFIG.DAC_Interpolation_Mode30 {1} \
   CONFIG.DAC_Interpolation_Mode31 {1} \
   CONFIG.DAC_Interpolation_Mode32 {1} \
   CONFIG.DAC_Interpolation_Mode33 {1} \
   CONFIG.DAC_Mixer_Mode00 {2} \
   CONFIG.DAC_Mixer_Type00 {1} \
   CONFIG.DAC_Mixer_Type01 {1} \
   CONFIG.DAC_Mixer_Type02 {1} \
   CONFIG.DAC_Mixer_Type03 {1} \
   CONFIG.DAC_Mixer_Type10 {1} \
   CONFIG.DAC_Mixer_Type11 {1} \
   CONFIG.DAC_Mixer_Type12 {1} \
   CONFIG.DAC_Mixer_Type13 {1} \
   CONFIG.DAC_Mixer_Type20 {1} \
   CONFIG.DAC_Mixer_Type21 {1} \
   CONFIG.DAC_Mixer_Type22 {1} \
   CONFIG.DAC_Mixer_Type23 {1} \
   CONFIG.DAC_Mixer_Type30 {1} \
   CONFIG.DAC_Mixer_Type31 {1} \
   CONFIG.DAC_Mixer_Type32 {1} \
   CONFIG.DAC_Mixer_Type33 {1} \
   CONFIG.DAC_RESERVED_1_00 {false} \
   CONFIG.DAC_RESERVED_1_01 {false} \
   CONFIG.DAC_RESERVED_1_02 {false} \
   CONFIG.DAC_RESERVED_1_03 {false} \
   CONFIG.DAC_RESERVED_1_10 {false} \
   CONFIG.DAC_RESERVED_1_11 {false} \
   CONFIG.DAC_RESERVED_1_12 {false} \
   CONFIG.DAC_RESERVED_1_13 {false} \
   CONFIG.DAC_RESERVED_1_20 {false} \
   CONFIG.DAC_RESERVED_1_21 {false} \
   CONFIG.DAC_RESERVED_1_22 {false} \
   CONFIG.DAC_RESERVED_1_23 {false} \
   CONFIG.DAC_RESERVED_1_30 {false} \
   CONFIG.DAC_RESERVED_1_31 {false} \
   CONFIG.DAC_RESERVED_1_32 {false} \
   CONFIG.DAC_RESERVED_1_33 {false} \
   CONFIG.DAC_Slice00_Enable {true} \
   CONFIG.DAC_Slice01_Enable {true} \
   CONFIG.DAC_Slice02_Enable {true} \
   CONFIG.DAC_Slice03_Enable {true} \
   CONFIG.DAC_Slice10_Enable {true} \
   CONFIG.DAC_Slice11_Enable {true} \
   CONFIG.DAC_Slice12_Enable {true} \
   CONFIG.DAC_Slice13_Enable {true} \
   CONFIG.DAC_Slice20_Enable {true} \
   CONFIG.DAC_Slice21_Enable {true} \
   CONFIG.DAC_Slice22_Enable {true} \
   CONFIG.DAC_Slice23_Enable {true} \
   CONFIG.DAC_Slice30_Enable {true} \
   CONFIG.DAC_Slice31_Enable {true} \
   CONFIG.DAC_Slice32_Enable {true} \
   CONFIG.DAC_Slice33_Enable {true} \
 ] $usp_rf_data_converter_0

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {12} \
   CONFIG.IN1_WIDTH {20} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_2

  # Create instance: xlconcat_3, and set properties
  set xlconcat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_3 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {28} \
   CONFIG.IN2_WIDTH {3} \
   CONFIG.NUM_PORTS {3} \
 ] $xlconcat_3

  # Create instance: xlconcat_4, and set properties
  set xlconcat_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_4 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {5} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_4

  # Create instance: xlconcat_5, and set properties
  set xlconcat_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_5 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {24} \
   CONFIG.IN1_WIDTH {8} \
   CONFIG.IN2_WIDTH {3} \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_5

  # Create instance: xlconcat_6, and set properties
  set xlconcat_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_6 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {1} \
   CONFIG.IN5_WIDTH {1} \
   CONFIG.IN6_WIDTH {1} \
   CONFIG.IN7_WIDTH {1} \
   CONFIG.NUM_PORTS {8} \
 ] $xlconcat_6

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {12} \
 ] $xlconstant_2

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {13} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {14} \
 ] $xlslice_2

  # Create instance: xlslice_6, and set properties
  set xlslice_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_6 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_6

  # Create instance: xlslice_7, and set properties
  set xlslice_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_7 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_7

  # Create instance: xlslice_8, and set properties
  set xlslice_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_8 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {12} \
   CONFIG.DOUT_WIDTH {20} \
 ] $xlslice_8

  # Create instance: xlslice_9, and set properties
  set xlslice_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_9 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_9

  # Create instance: xlslice_10, and set properties
  set xlslice_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_10 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_10

  # Create instance: xlslice_11, and set properties
  set xlslice_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_11 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_11

  # Create instance: xlslice_12, and set properties
  set xlslice_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_12 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_12

  # Create instance: xlslice_13, and set properties
  set xlslice_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_13 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_13

  # Create instance: xlslice_14, and set properties
  set xlslice_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_14 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_14

  # Create instance: xlslice_15, and set properties
  set xlslice_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_15 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_15

  # Create instance: xlslice_16, and set properties
  set xlslice_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_16 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_16

  # Create instance: xlslice_17, and set properties
  set xlslice_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_17 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_17

  # Create instance: xlslice_18, and set properties
  set xlslice_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_18 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_18

  # Create instance: xlslice_19, and set properties
  set xlslice_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_19 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_19

  # Create instance: xlslice_20, and set properties
  set xlslice_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_20 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_20

  # Create instance: xlslice_21, and set properties
  set xlslice_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_21 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_21

  # Create instance: xlslice_22, and set properties
  set xlslice_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_22 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_22

  # Create instance: xlslice_23, and set properties
  set xlslice_23 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_23 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_23

  # Create instance: xlslice_24, and set properties
  set xlslice_24 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_24 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_24

  # Create instance: xlslice_25, and set properties
  set xlslice_25 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_25 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_25

  # Create instance: xlslice_26, and set properties
  set xlslice_26 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_26 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_26

  # Create instance: xlslice_27, and set properties
  set xlslice_27 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_27 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_27

  # Create instance: xlslice_28, and set properties
  set xlslice_28 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_28 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_28

  # Create instance: xlslice_29, and set properties
  set xlslice_29 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_29 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_29

  # Create instance: xlslice_30, and set properties
  set xlslice_30 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_30 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_30

  # Create instance: xlslice_31, and set properties
  set xlslice_31 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_31 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_31

  # Create instance: xlslice_32, and set properties
  set xlslice_32 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_32 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {21} \
   CONFIG.DIN_TO {14} \
   CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_32

  # Create instance: xlslice_33, and set properties
  set xlslice_33 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_33 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {23} \
   CONFIG.DIN_TO {22} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_33

  # Create instance: xlslice_34, and set properties
  set xlslice_34 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_34 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {27} \
   CONFIG.DIN_TO {24} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_34

  # Create instance: xlslice_35, and set properties
  set xlslice_35 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_35 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {6} \
   CONFIG.DOUT_WIDTH {26} \
 ] $xlslice_35

  # Create instance: xlslice_36, and set properties
  set xlslice_36 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_36 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {4} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_36

  # Create instance: xlslice_37, and set properties
  set xlslice_37 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_37 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_37

  # Create instance: xlslice_38, and set properties
  set xlslice_38 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_38 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_38

  # Create instance: xlslice_39, and set properties
  set xlslice_39 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_39 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {12} \
 ] $xlslice_39

  # Create instance: xlslice_40, and set properties
  set xlslice_40 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_40 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {20} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {21} \
 ] $xlslice_40

  # Create instance: xlslice_41, and set properties
  set xlslice_41 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_41 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {5} \
 ] $xlslice_41

  # Create instance: xlslice_42, and set properties
  set xlslice_42 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_42 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {30} \
   CONFIG.DIN_TO {5} \
   CONFIG.DOUT_WIDTH {26} \
 ] $xlslice_42

  # Create instance: xlslice_43, and set properties
  set xlslice_43 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_43 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_43

  # Create instance: xlslice_44, and set properties
  set xlslice_44 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_44 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_44

  # Create instance: xlslice_45, and set properties
  set xlslice_45 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_45 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {29} \
   CONFIG.DIN_TO {6} \
   CONFIG.DOUT_WIDTH {24} \
 ] $xlslice_45

  # Create instance: xlslice_46, and set properties
  set xlslice_46 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_46 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {29} \
   CONFIG.DIN_TO {29} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_46

  # Create instance: xlslice_47, and set properties
  set xlslice_47 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_47 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {28} \
   CONFIG.DIN_TO {28} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_47

  # Create instance: xlslice_48, and set properties
  set xlslice_48 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_48 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_48

  # Create instance: xlslice_49, and set properties
  set xlslice_49 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_49 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {30} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_49

  # Create instance: xlslice_50, and set properties
  set xlslice_50 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_50 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {30} \
   CONFIG.DIN_TO {29} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_50

  # Create instance: zynq_ultra_ps_e_0, and set properties
  set zynq_ultra_ps_e_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.3 zynq_ultra_ps_e_0 ]
  set_property -dict [ list \
   CONFIG.CAN0_BOARD_INTERFACE {custom} \
   CONFIG.CAN1_BOARD_INTERFACE {custom} \
   CONFIG.CSU_BOARD_INTERFACE {custom} \
   CONFIG.DP_BOARD_INTERFACE {custom} \
   CONFIG.GEM0_BOARD_INTERFACE {custom} \
   CONFIG.GEM1_BOARD_INTERFACE {custom} \
   CONFIG.GEM2_BOARD_INTERFACE {custom} \
   CONFIG.GEM3_BOARD_INTERFACE {custom} \
   CONFIG.GPIO_BOARD_INTERFACE {custom} \
   CONFIG.IIC0_BOARD_INTERFACE {custom} \
   CONFIG.IIC1_BOARD_INTERFACE {custom} \
   CONFIG.NAND_BOARD_INTERFACE {custom} \
   CONFIG.PCIE_BOARD_INTERFACE {custom} \
   CONFIG.PJTAG_BOARD_INTERFACE {custom} \
   CONFIG.PMU_BOARD_INTERFACE {custom} \
   CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_3_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_DDR_RAM_HIGHADDR {0x1FFFFFFFF} \
   CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x800000000} \
   CONFIG.PSU_DDR_RAM_LOWADDR_OFFSET {0x80000000} \
   CONFIG.PSU_DYNAMIC_DDR_CONFIG_EN {0} \
   CONFIG.PSU_IMPORT_BOARD_PRESET {} \
   CONFIG.PSU_MIO_0_DIRECTION {out} \
   CONFIG.PSU_MIO_0_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_0_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_0_POLARITY {Default} \
   CONFIG.PSU_MIO_0_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_0_SLEW {fast} \
   CONFIG.PSU_MIO_10_DIRECTION {inout} \
   CONFIG.PSU_MIO_10_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_10_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_10_POLARITY {Default} \
   CONFIG.PSU_MIO_10_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_10_SLEW {fast} \
   CONFIG.PSU_MIO_11_DIRECTION {inout} \
   CONFIG.PSU_MIO_11_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_11_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_11_POLARITY {Default} \
   CONFIG.PSU_MIO_11_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_11_SLEW {fast} \
   CONFIG.PSU_MIO_12_DIRECTION {out} \
   CONFIG.PSU_MIO_12_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_12_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_12_POLARITY {Default} \
   CONFIG.PSU_MIO_12_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_12_SLEW {fast} \
   CONFIG.PSU_MIO_13_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_13_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_13_POLARITY {Default} \
   CONFIG.PSU_MIO_13_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_13_SLEW {fast} \
   CONFIG.PSU_MIO_14_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_14_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_14_POLARITY {Default} \
   CONFIG.PSU_MIO_14_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_14_SLEW {fast} \
   CONFIG.PSU_MIO_15_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_15_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_15_POLARITY {Default} \
   CONFIG.PSU_MIO_15_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_15_SLEW {fast} \
   CONFIG.PSU_MIO_16_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_16_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_16_POLARITY {Default} \
   CONFIG.PSU_MIO_16_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_16_SLEW {fast} \
   CONFIG.PSU_MIO_17_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_17_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_17_POLARITY {Default} \
   CONFIG.PSU_MIO_17_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_17_SLEW {fast} \
   CONFIG.PSU_MIO_18_DIRECTION {in} \
   CONFIG.PSU_MIO_18_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_18_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_18_POLARITY {Default} \
   CONFIG.PSU_MIO_18_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_18_SLEW {fast} \
   CONFIG.PSU_MIO_19_DIRECTION {out} \
   CONFIG.PSU_MIO_19_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_19_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_19_POLARITY {Default} \
   CONFIG.PSU_MIO_19_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_19_SLEW {fast} \
   CONFIG.PSU_MIO_1_DIRECTION {inout} \
   CONFIG.PSU_MIO_1_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_1_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_1_POLARITY {Default} \
   CONFIG.PSU_MIO_1_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_1_SLEW {fast} \
   CONFIG.PSU_MIO_20_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_20_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_20_POLARITY {Default} \
   CONFIG.PSU_MIO_20_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_20_SLEW {fast} \
   CONFIG.PSU_MIO_21_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_21_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_21_POLARITY {Default} \
   CONFIG.PSU_MIO_21_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_21_SLEW {fast} \
   CONFIG.PSU_MIO_22_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_22_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_22_POLARITY {Default} \
   CONFIG.PSU_MIO_22_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_22_SLEW {fast} \
   CONFIG.PSU_MIO_23_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_23_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_23_POLARITY {Default} \
   CONFIG.PSU_MIO_23_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_23_SLEW {fast} \
   CONFIG.PSU_MIO_24_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_24_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_24_POLARITY {Default} \
   CONFIG.PSU_MIO_24_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_24_SLEW {fast} \
   CONFIG.PSU_MIO_25_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_25_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_25_POLARITY {Default} \
   CONFIG.PSU_MIO_25_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_25_SLEW {fast} \
   CONFIG.PSU_MIO_26_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_26_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_26_POLARITY {Default} \
   CONFIG.PSU_MIO_26_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_26_SLEW {fast} \
   CONFIG.PSU_MIO_27_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_27_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_27_POLARITY {Default} \
   CONFIG.PSU_MIO_27_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_27_SLEW {fast} \
   CONFIG.PSU_MIO_28_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_28_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_28_POLARITY {Default} \
   CONFIG.PSU_MIO_28_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_28_SLEW {fast} \
   CONFIG.PSU_MIO_29_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_29_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_29_POLARITY {Default} \
   CONFIG.PSU_MIO_29_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_29_SLEW {fast} \
   CONFIG.PSU_MIO_2_DIRECTION {inout} \
   CONFIG.PSU_MIO_2_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_2_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_2_POLARITY {Default} \
   CONFIG.PSU_MIO_2_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_2_SLEW {fast} \
   CONFIG.PSU_MIO_30_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_30_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_30_POLARITY {Default} \
   CONFIG.PSU_MIO_30_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_30_SLEW {fast} \
   CONFIG.PSU_MIO_31_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_31_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_31_POLARITY {Default} \
   CONFIG.PSU_MIO_31_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_31_SLEW {fast} \
   CONFIG.PSU_MIO_32_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_32_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_32_POLARITY {Default} \
   CONFIG.PSU_MIO_32_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_32_SLEW {fast} \
   CONFIG.PSU_MIO_33_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_33_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_33_POLARITY {Default} \
   CONFIG.PSU_MIO_33_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_33_SLEW {fast} \
   CONFIG.PSU_MIO_34_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_34_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_34_POLARITY {Default} \
   CONFIG.PSU_MIO_34_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_34_SLEW {fast} \
   CONFIG.PSU_MIO_35_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_35_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_35_POLARITY {Default} \
   CONFIG.PSU_MIO_35_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_35_SLEW {fast} \
   CONFIG.PSU_MIO_36_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_36_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_36_POLARITY {Default} \
   CONFIG.PSU_MIO_36_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_36_SLEW {fast} \
   CONFIG.PSU_MIO_37_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_37_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_37_POLARITY {Default} \
   CONFIG.PSU_MIO_37_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_37_SLEW {fast} \
   CONFIG.PSU_MIO_38_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_38_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_38_POLARITY {Default} \
   CONFIG.PSU_MIO_38_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_38_SLEW {fast} \
   CONFIG.PSU_MIO_39_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_39_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_39_POLARITY {Default} \
   CONFIG.PSU_MIO_39_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_39_SLEW {fast} \
   CONFIG.PSU_MIO_3_DIRECTION {inout} \
   CONFIG.PSU_MIO_3_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_3_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_3_POLARITY {Default} \
   CONFIG.PSU_MIO_3_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_3_SLEW {fast} \
   CONFIG.PSU_MIO_40_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_40_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_40_POLARITY {Default} \
   CONFIG.PSU_MIO_40_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_40_SLEW {fast} \
   CONFIG.PSU_MIO_41_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_41_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_41_POLARITY {Default} \
   CONFIG.PSU_MIO_41_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_41_SLEW {fast} \
   CONFIG.PSU_MIO_42_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_42_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_42_POLARITY {Default} \
   CONFIG.PSU_MIO_42_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_42_SLEW {fast} \
   CONFIG.PSU_MIO_43_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_43_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_43_POLARITY {Default} \
   CONFIG.PSU_MIO_43_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_43_SLEW {fast} \
   CONFIG.PSU_MIO_44_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_44_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_44_POLARITY {Default} \
   CONFIG.PSU_MIO_44_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_44_SLEW {fast} \
   CONFIG.PSU_MIO_45_DIRECTION {in} \
   CONFIG.PSU_MIO_45_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_45_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_45_POLARITY {Default} \
   CONFIG.PSU_MIO_45_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_45_SLEW {fast} \
   CONFIG.PSU_MIO_46_DIRECTION {inout} \
   CONFIG.PSU_MIO_46_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_46_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_46_POLARITY {Default} \
   CONFIG.PSU_MIO_46_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_46_SLEW {fast} \
   CONFIG.PSU_MIO_47_DIRECTION {inout} \
   CONFIG.PSU_MIO_47_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_47_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_47_POLARITY {Default} \
   CONFIG.PSU_MIO_47_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_47_SLEW {fast} \
   CONFIG.PSU_MIO_48_DIRECTION {inout} \
   CONFIG.PSU_MIO_48_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_48_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_48_POLARITY {Default} \
   CONFIG.PSU_MIO_48_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_48_SLEW {fast} \
   CONFIG.PSU_MIO_49_DIRECTION {inout} \
   CONFIG.PSU_MIO_49_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_49_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_49_POLARITY {Default} \
   CONFIG.PSU_MIO_49_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_49_SLEW {fast} \
   CONFIG.PSU_MIO_4_DIRECTION {inout} \
   CONFIG.PSU_MIO_4_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_4_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_4_POLARITY {Default} \
   CONFIG.PSU_MIO_4_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_4_SLEW {fast} \
   CONFIG.PSU_MIO_50_DIRECTION {inout} \
   CONFIG.PSU_MIO_50_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_50_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_50_POLARITY {Default} \
   CONFIG.PSU_MIO_50_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_50_SLEW {fast} \
   CONFIG.PSU_MIO_51_DIRECTION {out} \
   CONFIG.PSU_MIO_51_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_51_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_51_POLARITY {Default} \
   CONFIG.PSU_MIO_51_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_51_SLEW {fast} \
   CONFIG.PSU_MIO_52_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_52_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_52_POLARITY {Default} \
   CONFIG.PSU_MIO_52_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_52_SLEW {fast} \
   CONFIG.PSU_MIO_53_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_53_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_53_POLARITY {Default} \
   CONFIG.PSU_MIO_53_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_53_SLEW {fast} \
   CONFIG.PSU_MIO_54_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_54_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_54_POLARITY {Default} \
   CONFIG.PSU_MIO_54_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_54_SLEW {fast} \
   CONFIG.PSU_MIO_55_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_55_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_55_POLARITY {Default} \
   CONFIG.PSU_MIO_55_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_55_SLEW {fast} \
   CONFIG.PSU_MIO_56_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_56_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_56_POLARITY {Default} \
   CONFIG.PSU_MIO_56_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_56_SLEW {fast} \
   CONFIG.PSU_MIO_57_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_57_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_57_POLARITY {Default} \
   CONFIG.PSU_MIO_57_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_57_SLEW {fast} \
   CONFIG.PSU_MIO_58_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_58_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_58_POLARITY {Default} \
   CONFIG.PSU_MIO_58_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_58_SLEW {fast} \
   CONFIG.PSU_MIO_59_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_59_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_59_POLARITY {Default} \
   CONFIG.PSU_MIO_59_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_59_SLEW {fast} \
   CONFIG.PSU_MIO_5_DIRECTION {out} \
   CONFIG.PSU_MIO_5_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_5_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_5_POLARITY {Default} \
   CONFIG.PSU_MIO_5_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_5_SLEW {fast} \
   CONFIG.PSU_MIO_60_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_60_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_60_POLARITY {Default} \
   CONFIG.PSU_MIO_60_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_60_SLEW {fast} \
   CONFIG.PSU_MIO_61_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_61_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_61_POLARITY {Default} \
   CONFIG.PSU_MIO_61_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_61_SLEW {fast} \
   CONFIG.PSU_MIO_62_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_62_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_62_POLARITY {Default} \
   CONFIG.PSU_MIO_62_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_62_SLEW {fast} \
   CONFIG.PSU_MIO_63_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_63_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_63_POLARITY {Default} \
   CONFIG.PSU_MIO_63_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_63_SLEW {fast} \
   CONFIG.PSU_MIO_64_DIRECTION {out} \
   CONFIG.PSU_MIO_64_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_64_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_64_POLARITY {Default} \
   CONFIG.PSU_MIO_64_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_64_SLEW {fast} \
   CONFIG.PSU_MIO_65_DIRECTION {out} \
   CONFIG.PSU_MIO_65_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_65_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_65_POLARITY {Default} \
   CONFIG.PSU_MIO_65_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_65_SLEW {fast} \
   CONFIG.PSU_MIO_66_DIRECTION {out} \
   CONFIG.PSU_MIO_66_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_66_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_66_POLARITY {Default} \
   CONFIG.PSU_MIO_66_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_66_SLEW {fast} \
   CONFIG.PSU_MIO_67_DIRECTION {out} \
   CONFIG.PSU_MIO_67_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_67_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_67_POLARITY {Default} \
   CONFIG.PSU_MIO_67_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_67_SLEW {fast} \
   CONFIG.PSU_MIO_68_DIRECTION {out} \
   CONFIG.PSU_MIO_68_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_68_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_68_POLARITY {Default} \
   CONFIG.PSU_MIO_68_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_68_SLEW {fast} \
   CONFIG.PSU_MIO_69_DIRECTION {out} \
   CONFIG.PSU_MIO_69_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_69_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_69_POLARITY {Default} \
   CONFIG.PSU_MIO_69_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_69_SLEW {fast} \
   CONFIG.PSU_MIO_6_DIRECTION {out} \
   CONFIG.PSU_MIO_6_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_6_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_6_POLARITY {Default} \
   CONFIG.PSU_MIO_6_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_6_SLEW {fast} \
   CONFIG.PSU_MIO_70_DIRECTION {in} \
   CONFIG.PSU_MIO_70_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_70_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_70_POLARITY {Default} \
   CONFIG.PSU_MIO_70_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_70_SLEW {fast} \
   CONFIG.PSU_MIO_71_DIRECTION {in} \
   CONFIG.PSU_MIO_71_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_71_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_71_POLARITY {Default} \
   CONFIG.PSU_MIO_71_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_71_SLEW {fast} \
   CONFIG.PSU_MIO_72_DIRECTION {in} \
   CONFIG.PSU_MIO_72_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_72_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_72_POLARITY {Default} \
   CONFIG.PSU_MIO_72_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_72_SLEW {fast} \
   CONFIG.PSU_MIO_73_DIRECTION {in} \
   CONFIG.PSU_MIO_73_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_73_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_73_POLARITY {Default} \
   CONFIG.PSU_MIO_73_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_73_SLEW {fast} \
   CONFIG.PSU_MIO_74_DIRECTION {in} \
   CONFIG.PSU_MIO_74_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_74_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_74_POLARITY {Default} \
   CONFIG.PSU_MIO_74_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_74_SLEW {fast} \
   CONFIG.PSU_MIO_75_DIRECTION {in} \
   CONFIG.PSU_MIO_75_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_75_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_75_POLARITY {Default} \
   CONFIG.PSU_MIO_75_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_75_SLEW {fast} \
   CONFIG.PSU_MIO_76_DIRECTION {out} \
   CONFIG.PSU_MIO_76_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_76_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_76_POLARITY {Default} \
   CONFIG.PSU_MIO_76_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_76_SLEW {fast} \
   CONFIG.PSU_MIO_77_DIRECTION {inout} \
   CONFIG.PSU_MIO_77_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_77_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_77_POLARITY {Default} \
   CONFIG.PSU_MIO_77_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_77_SLEW {fast} \
   CONFIG.PSU_MIO_7_DIRECTION {out} \
   CONFIG.PSU_MIO_7_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_7_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_7_POLARITY {Default} \
   CONFIG.PSU_MIO_7_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_7_SLEW {fast} \
   CONFIG.PSU_MIO_8_DIRECTION {inout} \
   CONFIG.PSU_MIO_8_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_8_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_8_POLARITY {Default} \
   CONFIG.PSU_MIO_8_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_8_SLEW {fast} \
   CONFIG.PSU_MIO_9_DIRECTION {inout} \
   CONFIG.PSU_MIO_9_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_9_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_9_POLARITY {Default} \
   CONFIG.PSU_MIO_9_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_9_SLEW {fast} \
   CONFIG.PSU_MIO_TREE_PERIPHERALS { \
     0##########################SD 1#SD \
     1#SD 1#############Gem \
     1#SD 1#############Gem \
     1#SD 1#############Gem \
     3#Gem 3#MDIO \
     3#Gem 3#MDIO \
     3#Gem 3#MDIO \
     3#Gem 3#MDIO \
     3#Gem 3#MDIO \
     3#Gem 3#MDIO \
     3#MDIO 3 \
     Flash######UART 0#UART \
     Flash##Quad SPI \
     Flash#Quad SPI \
     Flash#Quad SPI \
     Flash#Quad SPI \
     Flash#Quad SPI \
     Flash#Quad SPI \
     Flash#Quad SPI \
     Flash#Quad SPI \
     Flash#Quad SPI \
     Flash#Quad SPI \
     Flash#Quad SPI \
     Quad SPI \
   } \
   CONFIG.PSU_MIO_TREE_SIGNALS {sclk_out#miso_mo1#mo2#mo3#mosi_mi0#n_ss_out##n_ss_out_upper#mo_upper[0]#mo_upper[1]#mo_upper[2]#mo_upper[3]#sclk_out_upper######rxd#txd##########################sdio1_cd_n#sdio1_data_out[0]#sdio1_data_out[1]#sdio1_data_out[2]#sdio1_data_out[3]#sdio1_cmd_out#sdio1_clk_out#############rgmii_tx_clk#rgmii_txd[0]#rgmii_txd[1]#rgmii_txd[2]#rgmii_txd[3]#rgmii_tx_ctl#rgmii_rx_clk#rgmii_rxd[0]#rgmii_rxd[1]#rgmii_rxd[2]#rgmii_rxd[3]#rgmii_rx_ctl#gem3_mdc#gem3_mdio_out} \
   CONFIG.PSU_PERIPHERAL_BOARD_PRESET {} \
   CONFIG.PSU_SD0_INTERNAL_BUS_WIDTH {8} \
   CONFIG.PSU_SD1_INTERNAL_BUS_WIDTH {4} \
   CONFIG.PSU_SMC_CYCLE_T0 {NA} \
   CONFIG.PSU_SMC_CYCLE_T1 {NA} \
   CONFIG.PSU_SMC_CYCLE_T2 {NA} \
   CONFIG.PSU_SMC_CYCLE_T3 {NA} \
   CONFIG.PSU_SMC_CYCLE_T4 {NA} \
   CONFIG.PSU_SMC_CYCLE_T5 {NA} \
   CONFIG.PSU_SMC_CYCLE_T6 {NA} \
   CONFIG.PSU_USB3__DUAL_CLOCK_ENABLE {0} \
   CONFIG.PSU_VALUE_SILVERSION {3} \
   CONFIG.PSU__ACPU0__POWER__ON {1} \
   CONFIG.PSU__ACPU1__POWER__ON {1} \
   CONFIG.PSU__ACPU2__POWER__ON {1} \
   CONFIG.PSU__ACPU3__POWER__ON {1} \
   CONFIG.PSU__ACTUAL__IP {1} \
   CONFIG.PSU__ACT_DDR_FREQ_MHZ {1066.656006} \
   CONFIG.PSU__AFI0_COHERENCY {0} \
   CONFIG.PSU__AFI1_COHERENCY {0} \
   CONFIG.PSU__AUX_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__CAN0_LOOP_CAN1__ENABLE {0} \
   CONFIG.PSU__CAN0__GRP_CLK__ENABLE {0} \
   CONFIG.PSU__CAN0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__CAN1__GRP_CLK__ENABLE {0} \
   CONFIG.PSU__CAN1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__ACT_FREQMHZ {1333.320068} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__FREQMHZ {1333.333} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__SRCSEL {APLL} \
   CONFIG.PSU__CRF_APB__ACPU__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI0_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI1_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI2_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI3_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI4_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI5_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FBDIV {80} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__APLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__APLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__APM_CTRL__ACT_FREQMHZ {1} \
   CONFIG.PSU__CRF_APB__APM_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRF_APB__APM_CTRL__FREQMHZ {1} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__ACT_FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__ACT_FREQMHZ {533.328003} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {1067} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__ACT_FREQMHZ {533.328003} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV {64} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__DPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__ACT_FREQMHZ {25} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR0 {63} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__FREQMHZ {25} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {VPLL} \
   CONFIG.PSU__CRF_APB__DP_AUDIO__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__ACT_FREQMHZ {27} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR1 {10} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__FREQMHZ {27} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {VPLL} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__ACT_FREQMHZ {320} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__FREQMHZ {300} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__DP_VIDEO__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__ACT_FREQMHZ {533.328003} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__ACT_FREQMHZ {0} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__ACT_FREQMHZ {-1} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__DIVISOR0 {-1} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__FREQMHZ {-1} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__SRCSEL {NA} \
   CONFIG.PSU__CRF_APB__GTGREF0__ENABLE {NA} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__ACT_FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__ACT_FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__ACT_FREQMHZ {533.328003} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__FREQMHZ {533.333} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {VPLL} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FBDIV {64} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__VPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__VPLL_TO_LPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__ACT_FREQMHZ {533.328003} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__FREQMHZ {533.333} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__ACT_FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__AFI6__ENABLE {0} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__ACT_FREQMHZ {49.999500} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR0 {30} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__FREQMHZ {50} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__ACT_FREQMHZ {533.328003} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__FREQMHZ {533.333} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__ACT_FREQMHZ {180} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__FREQMHZ {180} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__SRCSEL {SysOsc} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__ACT_FREQMHZ {1000} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__FREQMHZ {1000} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__ACT_FREQMHZ {1499.984985} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__FREQMHZ {1500} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__ACT_FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__ACT_FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__ACT_FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__ACT_FREQMHZ {124.998749} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FBDIV {90} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__IOPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRL_APB__IOPLL_TO_FPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__ACT_FREQMHZ {266.664001} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__FREQMHZ {267} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__ACT_FREQMHZ {533.328003} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__FREQMHZ {533.333} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__ACT_FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__ACT_FREQMHZ {187.498123} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ {96.968727} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0 {11} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__ACT_FREQMHZ {299.997009} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__FREQMHZ {300} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FBDIV {64} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__RPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRL_APB__RPLL_TO_FPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__ACT_FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__ACT_FREQMHZ {177.776001} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__ACT_FREQMHZ {199.998001} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__ACT_FREQMHZ {214} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__ACT_FREQMHZ {33.333000} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__ACT_FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__ACT_FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__ACT_FREQMHZ {20} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR1 {15} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__FREQMHZ {20} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB3__ENABLE {0} \
   CONFIG.PSU__CSUPMU__PERIPHERAL__VALID {0} \
   CONFIG.PSU__CSU_COHERENCY {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_0__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_0__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_10__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_10__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_11__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_11__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_12__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_12__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_1__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_1__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_2__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_2__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_3__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_3__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_4__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_4__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_5__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_5__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_6__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_6__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_7__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_7__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_8__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_8__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_9__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_9__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__DDRC__ADDR_MIRROR {0} \
   CONFIG.PSU__DDRC__AL {0} \
   CONFIG.PSU__DDRC__BANK_ADDR_COUNT {2} \
   CONFIG.PSU__DDRC__BG_ADDR_COUNT {1} \
   CONFIG.PSU__DDRC__BRC_MAPPING {ROW_BANK_COL} \
   CONFIG.PSU__DDRC__BUS_WIDTH {64 Bit} \
   CONFIG.PSU__DDRC__CL {16} \
   CONFIG.PSU__DDRC__CLOCK_STOP_EN {0} \
   CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} \
   CONFIG.PSU__DDRC__COMPONENTS {Components} \
   CONFIG.PSU__DDRC__CWL {11} \
   CONFIG.PSU__DDRC__DDR3L_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DDR3_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {1} \
   CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {0} \
   CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {0} \
   CONFIG.PSU__DDRC__DDR4_MAXPWR_SAVING_EN {0} \
   CONFIG.PSU__DDRC__DDR4_T_REF_MODE {0} \
   CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {Normal (0-85)} \
   CONFIG.PSU__DDRC__DEEP_PWR_DOWN_EN {0} \
   CONFIG.PSU__DDRC__DEVICE_CAPACITY {16384 MBits} \
   CONFIG.PSU__DDRC__DIMM_ADDR_MIRROR {0} \
   CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} \
   CONFIG.PSU__DDRC__DQMAP_0_3 {0} \
   CONFIG.PSU__DDRC__DQMAP_12_15 {0} \
   CONFIG.PSU__DDRC__DQMAP_16_19 {0} \
   CONFIG.PSU__DDRC__DQMAP_20_23 {0} \
   CONFIG.PSU__DDRC__DQMAP_24_27 {0} \
   CONFIG.PSU__DDRC__DQMAP_28_31 {0} \
   CONFIG.PSU__DDRC__DQMAP_32_35 {0} \
   CONFIG.PSU__DDRC__DQMAP_36_39 {0} \
   CONFIG.PSU__DDRC__DQMAP_40_43 {0} \
   CONFIG.PSU__DDRC__DQMAP_44_47 {0} \
   CONFIG.PSU__DDRC__DQMAP_48_51 {0} \
   CONFIG.PSU__DDRC__DQMAP_4_7 {0} \
   CONFIG.PSU__DDRC__DQMAP_52_55 {0} \
   CONFIG.PSU__DDRC__DQMAP_56_59 {0} \
   CONFIG.PSU__DDRC__DQMAP_60_63 {0} \
   CONFIG.PSU__DDRC__DQMAP_64_67 {0} \
   CONFIG.PSU__DDRC__DQMAP_68_71 {0} \
   CONFIG.PSU__DDRC__DQMAP_8_11 {0} \
   CONFIG.PSU__DDRC__DRAM_WIDTH {16 Bits} \
   CONFIG.PSU__DDRC__ECC {Disabled} \
   CONFIG.PSU__DDRC__ECC_SCRUB {0} \
   CONFIG.PSU__DDRC__ENABLE {1} \
   CONFIG.PSU__DDRC__ENABLE_2T_TIMING {0} \
   CONFIG.PSU__DDRC__ENABLE_DP_SWITCH {0} \
   CONFIG.PSU__DDRC__ENABLE_LP4_HAS_ECC_COMP {0} \
   CONFIG.PSU__DDRC__ENABLE_LP4_SLOWBOOT {0} \
   CONFIG.PSU__DDRC__EN_2ND_CLK {0} \
   CONFIG.PSU__DDRC__FGRM {1X} \
   CONFIG.PSU__DDRC__FREQ_MHZ {1} \
   CONFIG.PSU__DDRC__LPDDR3_DUALRANK_SDP {0} \
   CONFIG.PSU__DDRC__LPDDR3_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__LPDDR4_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__LP_ASR {manual normal} \
   CONFIG.PSU__DDRC__MEMORY_TYPE {DDR 4} \
   CONFIG.PSU__DDRC__PARITY_ENABLE {0} \
   CONFIG.PSU__DDRC__PER_BANK_REFRESH {0} \
   CONFIG.PSU__DDRC__PHY_DBI_MODE {0} \
   CONFIG.PSU__DDRC__PLL_BYPASS {0} \
   CONFIG.PSU__DDRC__PWR_DOWN_EN {0} \
   CONFIG.PSU__DDRC__RANK_ADDR_COUNT {0} \
   CONFIG.PSU__DDRC__RD_DQS_CENTER {0} \
   CONFIG.PSU__DDRC__ROW_ADDR_COUNT {17} \
   CONFIG.PSU__DDRC__SB_TARGET {15-15-15} \
   CONFIG.PSU__DDRC__SELF_REF_ABORT {0} \
   CONFIG.PSU__DDRC__SPEED_BIN {DDR4_2400P} \
   CONFIG.PSU__DDRC__STATIC_RD_MODE {0} \
   CONFIG.PSU__DDRC__TRAIN_DATA_EYE {1} \
   CONFIG.PSU__DDRC__TRAIN_READ_GATE {1} \
   CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1} \
   CONFIG.PSU__DDRC__T_FAW {32.0} \
   CONFIG.PSU__DDRC__T_RAS_MIN {32.0} \
   CONFIG.PSU__DDRC__T_RC {46} \
   CONFIG.PSU__DDRC__T_RCD {16} \
   CONFIG.PSU__DDRC__T_RP {16} \
   CONFIG.PSU__DDRC__VENDOR_PART {OTHERS} \
   CONFIG.PSU__DDRC__VIDEO_BUFFER_SIZE {0} \
   CONFIG.PSU__DDRC__VREF {1} \
   CONFIG.PSU__DDR_HIGH_ADDRESS_GUI_ENABLE {1} \
   CONFIG.PSU__DDR_QOS_ENABLE {0} \
   CONFIG.PSU__DDR_QOS_FIX_HP0_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP0_WRQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP1_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP1_WRQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP2_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP2_WRQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP3_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP3_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP0_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP0_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP1_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP1_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP2_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP2_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP3_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP3_WRQOS {} \
   CONFIG.PSU__DDR_QOS_RD_HPR_THRSHLD {} \
   CONFIG.PSU__DDR_QOS_RD_LPR_THRSHLD {} \
   CONFIG.PSU__DDR_QOS_WR_THRSHLD {} \
   CONFIG.PSU__DDR_SW_REFRESH_ENABLED {1} \
   CONFIG.PSU__DDR__INTERFACE__FREQMHZ {533.500} \
   CONFIG.PSU__DEVICE_TYPE {RFSOC} \
   CONFIG.PSU__DISPLAYPORT__LANE0__ENABLE {0} \
   CONFIG.PSU__DISPLAYPORT__LANE1__ENABLE {0} \
   CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__DLL__ISUSED {1} \
   CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__ENABLE__DDR__REFRESH__SIGNALS {0} \
   CONFIG.PSU__ENET0__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET0__GRP_MDIO__ENABLE {0} \
   CONFIG.PSU__ENET0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__ENET0__PTP__ENABLE {0} \
   CONFIG.PSU__ENET0__TSU__ENABLE {0} \
   CONFIG.PSU__ENET1__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET1__GRP_MDIO__ENABLE {0} \
   CONFIG.PSU__ENET1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__ENET1__PTP__ENABLE {0} \
   CONFIG.PSU__ENET1__TSU__ENABLE {0} \
   CONFIG.PSU__ENET2__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET2__GRP_MDIO__ENABLE {0} \
   CONFIG.PSU__ENET2__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__ENET2__PTP__ENABLE {0} \
   CONFIG.PSU__ENET2__TSU__ENABLE {0} \
   CONFIG.PSU__ENET3__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {1} \
   CONFIG.PSU__ENET3__GRP_MDIO__IO {MIO 76 .. 77} \
   CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__ENET3__PERIPHERAL__IO {MIO 64 .. 75} \
   CONFIG.PSU__ENET3__PTP__ENABLE {0} \
   CONFIG.PSU__ENET3__TSU__ENABLE {0} \
   CONFIG.PSU__EN_AXI_STATUS_PORTS {0} \
   CONFIG.PSU__EN_EMIO_TRACE {0} \
   CONFIG.PSU__EP__IP {0} \
   CONFIG.PSU__EXPAND__CORESIGHT {0} \
   CONFIG.PSU__EXPAND__FPD_SLAVES {0} \
   CONFIG.PSU__EXPAND__GIC {0} \
   CONFIG.PSU__EXPAND__LOWER_LPS_SLAVES {0} \
   CONFIG.PSU__EXPAND__UPPER_LPS_SLAVES {0} \
   CONFIG.PSU__FPDMASTERS_COHERENCY {0} \
   CONFIG.PSU__FPD_SLCR__WDT1__ACT_FREQMHZ {100} \
   CONFIG.PSU__FPD_SLCR__WDT1__FREQMHZ {100} \
   CONFIG.PSU__FPD_SLCR__WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__FPGA_PL0_ENABLE {1} \
   CONFIG.PSU__FPGA_PL1_ENABLE {0} \
   CONFIG.PSU__FPGA_PL2_ENABLE {0} \
   CONFIG.PSU__FPGA_PL3_ENABLE {0} \
   CONFIG.PSU__FP__POWER__ON {1} \
   CONFIG.PSU__FTM__CTI_IN_0 {0} \
   CONFIG.PSU__FTM__CTI_IN_1 {0} \
   CONFIG.PSU__FTM__CTI_IN_2 {0} \
   CONFIG.PSU__FTM__CTI_IN_3 {0} \
   CONFIG.PSU__FTM__CTI_OUT_0 {0} \
   CONFIG.PSU__FTM__CTI_OUT_1 {0} \
   CONFIG.PSU__FTM__CTI_OUT_2 {0} \
   CONFIG.PSU__FTM__CTI_OUT_3 {0} \
   CONFIG.PSU__FTM__GPI {0} \
   CONFIG.PSU__FTM__GPO {0} \
   CONFIG.PSU__GEM0_COHERENCY {0} \
   CONFIG.PSU__GEM0_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM1_COHERENCY {0} \
   CONFIG.PSU__GEM1_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM2_COHERENCY {0} \
   CONFIG.PSU__GEM2_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM3_COHERENCY {0} \
   CONFIG.PSU__GEM3_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM__TSU__ENABLE {0} \
   CONFIG.PSU__GEN_IPI_0__MASTER {APU} \
   CONFIG.PSU__GEN_IPI_10__MASTER {NONE} \
   CONFIG.PSU__GEN_IPI_1__MASTER {RPU0} \
   CONFIG.PSU__GEN_IPI_2__MASTER {RPU1} \
   CONFIG.PSU__GEN_IPI_3__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_4__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_5__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_6__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_7__MASTER {NONE} \
   CONFIG.PSU__GEN_IPI_8__MASTER {NONE} \
   CONFIG.PSU__GEN_IPI_9__MASTER {NONE} \
   CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__GPIO2_MIO__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__GPIO_EMIO_WIDTH {1} \
   CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__GPIO_EMIO__PERIPHERAL__IO {1} \
   CONFIG.PSU__GPIO_EMIO__WIDTH {[94:0]} \
   CONFIG.PSU__GPU_PP0__POWER__ON {0} \
   CONFIG.PSU__GPU_PP1__POWER__ON {0} \
   CONFIG.PSU__GT_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__GT__PRE_EMPH_LVL_4 {} \
   CONFIG.PSU__GT__VLT_SWNG_LVL_4 {} \
   CONFIG.PSU__HIGH_ADDRESS__ENABLE {1} \
   CONFIG.PSU__HPM0_FPD__NUM_READ_THREADS {4} \
   CONFIG.PSU__HPM0_FPD__NUM_WRITE_THREADS {4} \
   CONFIG.PSU__HPM0_LPD__NUM_READ_THREADS {4} \
   CONFIG.PSU__HPM0_LPD__NUM_WRITE_THREADS {4} \
   CONFIG.PSU__HPM1_FPD__NUM_READ_THREADS {4} \
   CONFIG.PSU__HPM1_FPD__NUM_WRITE_THREADS {4} \
   CONFIG.PSU__I2C0_LOOP_I2C1__ENABLE {0} \
   CONFIG.PSU__I2C0__GRP_INT__ENABLE {0} \
   CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__I2C0__PERIPHERAL__IO {<Select>} \
   CONFIG.PSU__I2C1__GRP_INT__ENABLE {0} \
   CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC0_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC1_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC2_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC3_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__TTC0__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC0__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC1__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC1__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC2__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC2__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC3__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC3__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__WDT0__ACT_FREQMHZ {100} \
   CONFIG.PSU__IOU_SLCR__WDT0__FREQMHZ {100} \
   CONFIG.PSU__IOU_SLCR__WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__IRQ_P2F_ADMA_CHAN__INT {0} \
   CONFIG.PSU__IRQ_P2F_AIB_AXI__INT {0} \
   CONFIG.PSU__IRQ_P2F_AMS__INT {0} \
   CONFIG.PSU__IRQ_P2F_APM_FPD__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_COMM__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_CPUMNT__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_CTI__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_EXTERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_IPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_L2ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_PMU__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_REGS__INT {0} \
   CONFIG.PSU__IRQ_P2F_ATB_LPD__INT {0} \
   CONFIG.PSU__IRQ_P2F_CAN0__INT {0} \
   CONFIG.PSU__IRQ_P2F_CAN1__INT {0} \
   CONFIG.PSU__IRQ_P2F_CLKMON__INT {0} \
   CONFIG.PSU__IRQ_P2F_CSUPMU_WDT__INT {0} \
   CONFIG.PSU__IRQ_P2F_CSU_DMA__INT {0} \
   CONFIG.PSU__IRQ_P2F_CSU__INT {0} \
   CONFIG.PSU__IRQ_P2F_DDR_SS__INT {0} \
   CONFIG.PSU__IRQ_P2F_DPDMA__INT {0} \
   CONFIG.PSU__IRQ_P2F_DPORT__INT {0} \
   CONFIG.PSU__IRQ_P2F_EFUSE__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT0_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT0__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT1_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT1__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT2_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT2__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT3_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT3__INT {0} \
   CONFIG.PSU__IRQ_P2F_FPD_APB__INT {0} \
   CONFIG.PSU__IRQ_P2F_FPD_ATB_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_FP_WDT__INT {0} \
   CONFIG.PSU__IRQ_P2F_GDMA_CHAN__INT {0} \
   CONFIG.PSU__IRQ_P2F_GPIO__INT {0} \
   CONFIG.PSU__IRQ_P2F_GPU__INT {0} \
   CONFIG.PSU__IRQ_P2F_I2C0__INT {0} \
   CONFIG.PSU__IRQ_P2F_I2C1__INT {0} \
   CONFIG.PSU__IRQ_P2F_LPD_APB__INT {0} \
   CONFIG.PSU__IRQ_P2F_LPD_APM__INT {0} \
   CONFIG.PSU__IRQ_P2F_LP_WDT__INT {0} \
   CONFIG.PSU__IRQ_P2F_NAND__INT {0} \
   CONFIG.PSU__IRQ_P2F_OCM_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_DMA__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_LEGACY__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_MSC__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_MSI__INT {0} \
   CONFIG.PSU__IRQ_P2F_PL_IPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_QSPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_R5_CORE0_ECC_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_R5_CORE1_ECC_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_RPU_IPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_RPU_PERMON__INT {0} \
   CONFIG.PSU__IRQ_P2F_RTC_ALARM__INT {0} \
   CONFIG.PSU__IRQ_P2F_RTC_SECONDS__INT {0} \
   CONFIG.PSU__IRQ_P2F_SATA__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO0_WAKE__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO0__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO1_WAKE__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO1__INT {0} \
   CONFIG.PSU__IRQ_P2F_SPI0__INT {0} \
   CONFIG.PSU__IRQ_P2F_SPI1__INT {0} \
   CONFIG.PSU__IRQ_P2F_TTC0__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC0__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC0__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_TTC1__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC1__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC1__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_TTC2__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC2__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC2__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_TTC3__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC3__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC3__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_UART0__INT {0} \
   CONFIG.PSU__IRQ_P2F_UART1__INT {0} \
   CONFIG.PSU__IRQ_P2F_USB3_ENDPOINT__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_ENDPOINT__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_OTG__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_OTG__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_PMU_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_XMPU_FPD__INT {0} \
   CONFIG.PSU__IRQ_P2F_XMPU_LPD__INT {0} \
   CONFIG.PSU__IRQ_P2F__INTF_FPD_SMMU__INT {0} \
   CONFIG.PSU__IRQ_P2F__INTF_PPD_CCI__INT {0} \
   CONFIG.PSU__L2_BANK0__POWER__ON {1} \
   CONFIG.PSU__LPDMA0_COHERENCY {0} \
   CONFIG.PSU__LPDMA1_COHERENCY {0} \
   CONFIG.PSU__LPDMA2_COHERENCY {0} \
   CONFIG.PSU__LPDMA3_COHERENCY {0} \
   CONFIG.PSU__LPDMA4_COHERENCY {0} \
   CONFIG.PSU__LPDMA5_COHERENCY {0} \
   CONFIG.PSU__LPDMA6_COHERENCY {0} \
   CONFIG.PSU__LPDMA7_COHERENCY {0} \
   CONFIG.PSU__LPD_SLCR__CSUPMU_WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__LPD_SLCR__CSUPMU__ACT_FREQMHZ {100} \
   CONFIG.PSU__LPD_SLCR__CSUPMU__FREQMHZ {100} \
   CONFIG.PSU__MAXIGP0__DATA_WIDTH {128} \
   CONFIG.PSU__MAXIGP1__DATA_WIDTH {128} \
   CONFIG.PSU__MAXIGP2__DATA_WIDTH {32} \
   CONFIG.PSU__M_AXI_GP0_SUPPORTS_NARROW_BURST {1} \
   CONFIG.PSU__M_AXI_GP1_SUPPORTS_NARROW_BURST {1} \
   CONFIG.PSU__M_AXI_GP2_SUPPORTS_NARROW_BURST {1} \
   CONFIG.PSU__NAND_COHERENCY {0} \
   CONFIG.PSU__NAND_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__NAND__CHIP_ENABLE__ENABLE {0} \
   CONFIG.PSU__NAND__DATA_STROBE__ENABLE {0} \
   CONFIG.PSU__NAND__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__NAND__READY0_BUSY__ENABLE {0} \
   CONFIG.PSU__NAND__READY1_BUSY__ENABLE {0} \
   CONFIG.PSU__NAND__READY_BUSY__ENABLE {0} \
   CONFIG.PSU__NUM_FABRIC_RESETS {1} \
   CONFIG.PSU__OCM_BANK0__POWER__ON {1} \
   CONFIG.PSU__OCM_BANK1__POWER__ON {1} \
   CONFIG.PSU__OCM_BANK2__POWER__ON {1} \
   CONFIG.PSU__OCM_BANK3__POWER__ON {1} \
   CONFIG.PSU__OVERRIDE_HPX_QOS {0} \
   CONFIG.PSU__OVERRIDE__BASIC_CLOCK {0} \
   CONFIG.PSU__PCIE__ACS_VIOLAION {0} \
   CONFIG.PSU__PCIE__ACS_VIOLATION {0} \
   CONFIG.PSU__PCIE__AER_CAPABILITY {0} \
   CONFIG.PSU__PCIE__ATOMICOP_EGRESS_BLOCKED {0} \
   CONFIG.PSU__PCIE__BAR0_64BIT {0} \
   CONFIG.PSU__PCIE__BAR0_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR0_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR0_VAL {} \
   CONFIG.PSU__PCIE__BAR1_64BIT {0} \
   CONFIG.PSU__PCIE__BAR1_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR1_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR1_VAL {} \
   CONFIG.PSU__PCIE__BAR2_64BIT {0} \
   CONFIG.PSU__PCIE__BAR2_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR2_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR2_VAL {} \
   CONFIG.PSU__PCIE__BAR3_64BIT {0} \
   CONFIG.PSU__PCIE__BAR3_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR3_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR3_VAL {} \
   CONFIG.PSU__PCIE__BAR4_64BIT {0} \
   CONFIG.PSU__PCIE__BAR4_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR4_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR4_VAL {} \
   CONFIG.PSU__PCIE__BAR5_64BIT {0} \
   CONFIG.PSU__PCIE__BAR5_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR5_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR5_VAL {} \
   CONFIG.PSU__PCIE__CLASS_CODE_BASE {} \
   CONFIG.PSU__PCIE__CLASS_CODE_INTERFACE {} \
   CONFIG.PSU__PCIE__CLASS_CODE_SUB {} \
   CONFIG.PSU__PCIE__CLASS_CODE_VALUE {} \
   CONFIG.PSU__PCIE__COMPLETER_ABORT {0} \
   CONFIG.PSU__PCIE__COMPLTION_TIMEOUT {0} \
   CONFIG.PSU__PCIE__CORRECTABLE_INT_ERR {0} \
   CONFIG.PSU__PCIE__CRS_SW_VISIBILITY {0} \
   CONFIG.PSU__PCIE__DEVICE_ID {} \
   CONFIG.PSU__PCIE__ECRC_CHECK {0} \
   CONFIG.PSU__PCIE__ECRC_ERR {0} \
   CONFIG.PSU__PCIE__ECRC_GEN {0} \
   CONFIG.PSU__PCIE__EROM_ENABLE {0} \
   CONFIG.PSU__PCIE__EROM_VAL {} \
   CONFIG.PSU__PCIE__FLOW_CONTROL_ERR {0} \
   CONFIG.PSU__PCIE__FLOW_CONTROL_PROTOCOL_ERR {0} \
   CONFIG.PSU__PCIE__HEADER_LOG_OVERFLOW {0} \
   CONFIG.PSU__PCIE__INTX_GENERATION {0} \
   CONFIG.PSU__PCIE__LANE0__ENABLE {0} \
   CONFIG.PSU__PCIE__LANE1__ENABLE {0} \
   CONFIG.PSU__PCIE__LANE2__ENABLE {0} \
   CONFIG.PSU__PCIE__LANE3__ENABLE {0} \
   CONFIG.PSU__PCIE__MC_BLOCKED_TLP {0} \
   CONFIG.PSU__PCIE__MSIX_BAR_INDICATOR {} \
   CONFIG.PSU__PCIE__MSIX_CAPABILITY {0} \
   CONFIG.PSU__PCIE__MSIX_PBA_BAR_INDICATOR {} \
   CONFIG.PSU__PCIE__MSIX_PBA_OFFSET {0} \
   CONFIG.PSU__PCIE__MSIX_TABLE_OFFSET {0} \
   CONFIG.PSU__PCIE__MSIX_TABLE_SIZE {0} \
   CONFIG.PSU__PCIE__MSI_64BIT_ADDR_CAPABLE {0} \
   CONFIG.PSU__PCIE__MSI_CAPABILITY {0} \
   CONFIG.PSU__PCIE__MULTIHEADER {0} \
   CONFIG.PSU__PCIE__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__PCIE__PERIPHERAL__ENDPOINT_ENABLE {1} \
   CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_ENABLE {0} \
   CONFIG.PSU__PCIE__PERM_ROOT_ERR_UPDATE {0} \
   CONFIG.PSU__PCIE__RECEIVER_ERR {0} \
   CONFIG.PSU__PCIE__RECEIVER_OVERFLOW {0} \
   CONFIG.PSU__PCIE__RESET__POLARITY {Active Low} \
   CONFIG.PSU__PCIE__REVISION_ID {} \
   CONFIG.PSU__PCIE__SUBSYSTEM_ID {} \
   CONFIG.PSU__PCIE__SUBSYSTEM_VENDOR_ID {} \
   CONFIG.PSU__PCIE__SURPRISE_DOWN {0} \
   CONFIG.PSU__PCIE__TLP_PREFIX_BLOCKED {0} \
   CONFIG.PSU__PCIE__UNCORRECTABL_INT_ERR {0} \
   CONFIG.PSU__PCIE__VENDOR_ID {} \
   CONFIG.PSU__PJTAG__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__PL_CLK0_BUF {TRUE} \
   CONFIG.PSU__PL_CLK1_BUF {FALSE} \
   CONFIG.PSU__PL_CLK2_BUF {FALSE} \
   CONFIG.PSU__PL_CLK3_BUF {FALSE} \
   CONFIG.PSU__PL__POWER__ON {1} \
   CONFIG.PSU__PMU_COHERENCY {0} \
   CONFIG.PSU__PMU__AIBACK__ENABLE {0} \
   CONFIG.PSU__PMU__EMIO_GPI__ENABLE {0} \
   CONFIG.PSU__PMU__EMIO_GPO__ENABLE {0} \
   CONFIG.PSU__PMU__GPI0__ENABLE {0} \
   CONFIG.PSU__PMU__GPI1__ENABLE {0} \
   CONFIG.PSU__PMU__GPI2__ENABLE {0} \
   CONFIG.PSU__PMU__GPI3__ENABLE {0} \
   CONFIG.PSU__PMU__GPI4__ENABLE {0} \
   CONFIG.PSU__PMU__GPI5__ENABLE {0} \
   CONFIG.PSU__PMU__GPO0__ENABLE {0} \
   CONFIG.PSU__PMU__GPO1__ENABLE {0} \
   CONFIG.PSU__PMU__GPO2__ENABLE {0} \
   CONFIG.PSU__PMU__GPO3__ENABLE {0} \
   CONFIG.PSU__PMU__GPO4__ENABLE {0} \
   CONFIG.PSU__PMU__GPO5__ENABLE {0} \
   CONFIG.PSU__PMU__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__PMU__PLERROR__ENABLE {0} \
   CONFIG.PSU__PRESET_APPLIED {0} \
   CONFIG.PSU__PROTECTION__DDR_SEGMENTS {NONE} \
   CONFIG.PSU__PROTECTION__DEBUG {0} \
   CONFIG.PSU__PROTECTION__ENABLE {0} \
   CONFIG.PSU__PROTECTION__FPD_SEGMENTS {SA:0xFD1A0000; SIZE:1280; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFD000000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFD010000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFD020000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFD030000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFD040000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFD050000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFD610000; SIZE:512; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFD5D0000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware|SA:0xFD1A0000 ; SIZE:1280; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem} \
   CONFIG.PSU__PROTECTION__LOCK_UNUSED_SEGMENTS {0} \
   CONFIG.PSU__PROTECTION__LPD_SEGMENTS {SA:0xFF980000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF5E0000; SIZE:2560; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFFCC0000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF180000; SIZE:768; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF410000; SIZE:640; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFFA70000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF9A0000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware|SA:0xFF5E0000 ; SIZE:2560; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem|SA:0xFFCC0000 ; SIZE:64; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem|SA:0xFF180000 ; SIZE:768; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem|SA:0xFF9A0000 ; SIZE:64; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem} \
   CONFIG.PSU__PROTECTION__MASTERS {USB1:NonSecure;0|USB0:NonSecure;0|S_AXI_LPD:NA;0|S_AXI_HPC1_FPD:NA;0|S_AXI_HPC0_FPD:NA;0|S_AXI_HP3_FPD:NA;0|S_AXI_HP2_FPD:NA;0|S_AXI_HP1_FPD:NA;0|S_AXI_HP0_FPD:NA;0|S_AXI_ACP:NA;0|S_AXI_ACE:NA;0|SD1:NonSecure;1|SD0:NonSecure;0|SATA1:NonSecure;0|SATA0:NonSecure;0|RPU1:Secure;1|RPU0:Secure;1|QSPI:NonSecure;1|PMU:NA;1|PCIe:NonSecure;0|NAND:NonSecure;0|LDMA:NonSecure;1|GPU:NonSecure;1|GEM3:NonSecure;1|GEM2:NonSecure;0|GEM1:NonSecure;0|GEM0:NonSecure;0|FDMA:NonSecure;1|DP:NonSecure;0|DAP:NA;1|Coresight:NA;1|CSU:NA;1|APU:NA;1} \
   CONFIG.PSU__PROTECTION__MASTERS_TZ {GEM0:NonSecure|SD1:NonSecure|GEM2:NonSecure|GEM1:NonSecure|GEM3:NonSecure|PCIe:NonSecure|DP:NonSecure|NAND:NonSecure|GPU:NonSecure|USB1:NonSecure|USB0:NonSecure|LDMA:NonSecure|FDMA:NonSecure|QSPI:NonSecure|SD0:NonSecure} \
   CONFIG.PSU__PROTECTION__OCM_SEGMENTS {NONE} \
   CONFIG.PSU__PROTECTION__PRESUBSYSTEMS {NONE} \
   CONFIG.PSU__PROTECTION__SLAVES { \
     LPD;USB3_1_XHCI;FE300000;FE3FFFFF;0|LPD;USB3_1;FF9E0000;FF9EFFFF;0|LPD;USB3_0_XHCI;FE200000;FE2FFFFF;0|LPD;USB3_0;FF9D0000;FF9DFFFF;0|LPD;UART1;FF010000;FF01FFFF;0|LPD;UART0;FF000000;FF00FFFF;1|LPD;TTC3;FF140000;FF14FFFF;1|LPD;TTC2;FF130000;FF13FFFF;1|LPD;TTC1;FF120000;FF12FFFF;1|LPD;TTC0;FF110000;FF11FFFF;1|FPD;SWDT1;FD4D0000;FD4DFFFF;0|LPD;SWDT0;FF150000;FF15FFFF;0|LPD;SPI1;FF050000;FF05FFFF;0|LPD;SPI0;FF040000;FF04FFFF;0|FPD;SMMU_REG;FD5F0000;FD5FFFFF;1|FPD;SMMU;FD800000;FDFFFFFF;1|FPD;SIOU;FD3D0000;FD3DFFFF;1|FPD;SERDES;FD400000;FD47FFFF;1|LPD;SD1;FF170000;FF17FFFF;1|LPD;SD0;FF160000;FF16FFFF;0|FPD;SATA;FD0C0000;FD0CFFFF;0|LPD;RTC;FFA60000;FFA6FFFF;1|LPD;RSA_CORE;FFCE0000;FFCEFFFF;1|LPD;RPU;FF9A0000;FF9AFFFF;1|LPD;R5_TCM_RAM_GLOBAL;FFE00000;FFE3FFFF;1|LPD;R5_1_Instruction_Cache;FFEC0000;FFECFFFF;1|LPD;R5_1_Data_Cache;FFED0000;FFEDFFFF;1|LPD;R5_1_BTCM_GLOBAL;FFEB0000;FFEBFFFF;1|LPD;R5_1_ATCM_GLOBAL;FFE90000;FFE9FFFF;1|LPD;R5_0_Instruction_Cache;FFE40000;FFE4FFFF;1|LPD;R5_0_Data_Cache;FFE50000;FFE5FFFF;1|LPD;R5_0_BTCM_GLOBAL;FFE20000;FFE2FFFF;1|LPD;R5_0_ATCM_GLOBAL;FFE00000;FFE0FFFF;1|LPD;QSPI_Linear_Address;C0000000;DFFFFFFF;1|LPD;QSPI;FF0F0000;FF0FFFFF;1|LPD;PMU_RAM;FFDC0000;FFDDFFFF;1|LPD;PMU_GLOBAL;FFD80000;FFDBFFFF;1|FPD;PCIE_MAIN;FD0E0000;FD0EFFFF;0|FPD;PCIE_LOW;E0000000;EFFFFFFF;0|FPD;PCIE_HIGH2;8000000000;BFFFFFFFFF;0|FPD;PCIE_HIGH1;600000000;7FFFFFFFF;0|FPD;PCIE_DMA;FD0F0000;FD0FFFFF;0|FPD;PCIE_ATTRIB;FD480000;FD48FFFF;0|LPD;OCM_XMPU_CFG;FFA70000;FFA7FFFF;1|LPD;OCM_SLCR;FF960000;FF96FFFF;1|OCM;OCM;FFFC0000;FFFFFFFF;1|LPD;NAND;FF100000;FF10FFFF;0|LPD;MBISTJTAG;FFCF0000;FFCFFFFF;1|LPD;LPD_XPPU_SINK;FF9C0000;FF9CFFFF;1|LPD;LPD_XPPU;FF980000;FF98FFFF;1|LPD;LPD_SLCR_SECURE;FF4B0000;FF4DFFFF;1|LPD;LPD_SLCR;FF410000;FF4AFFFF;1|LPD;LPD_GPV;FE100000;FE1FFFFF;1|LPD;LPD_DMA_7;FFAF0000;FFAFFFFF;1|LPD;LPD_DMA_6;FFAE0000;FFAEFFFF;1|LPD;LPD_DMA_5;FFAD0000;FFADFFFF;1|LPD;LPD_DMA_4;FFAC0000;FFACFFFF;1|LPD;LPD_DMA_3;FFAB0000;FFABFFFF;1|LPD;LPD_DMA_2;FFAA0000;FFAAFFFF;1|LPD;LPD_DMA_1;FFA90000;FFA9FFFF;1|LPD;LPD_DMA_0;FFA80000;FFA8FFFF;1|LPD;IPI_CTRL;FF380000;FF3FFFFF;1|LPD;IOU_SLCR;FF180000;FF23FFFF;1|LPD;IOU_SECURE_SLCR;FF240000;FF24FFFF;1|LPD;IOU_SCNTRS;FF260000;FF26FFFF;1|LPD;IOU_SCNTR;FF250000;FF25FFFF;1|LPD;IOU_GPV;FE000000;FE0FFFFF;1|LPD;I2C1;FF030000;FF03FFFF;0|LPD;I2C0;FF020000;FF02FFFF;0|FPD;GPU;FD4B0000;FD4BFFFF;0|LPD;GPIO;FF0A0000;FF0AFFFF;1|LPD;GEM3;FF0E0000;FF0EFFFF;1|LPD;GEM2;FF0D0000;FF0DFFFF;0|LPD;GEM1;FF0C0000;FF0CFFFF;0|LPD;GEM0;FF0B0000;FF0BFFFF;0|FPD;FPD_XMPU_SINK;FD4F0000;FD4FFFFF;1|FPD;FPD_XMPU_CFG;FD5D0000;FD5DFFFF;1|FPD;FPD_SLCR_SECURE;FD690000;FD6CFFFF;1|FPD;FPD_SLCR;FD610000;FD68FFFF;1|FPD;FPD_DMA_CH7;FD570000;FD57FFFF;1|FPD;FPD_DMA_CH6;FD560000;FD56FFFF;1|FPD;FPD_DMA_CH5;FD550000;FD55FFFF;1|FPD;FPD_DMA_CH4;FD540000;FD54FFFF;1|FPD;FPD_DMA_CH3;FD530000;FD53FFFF;1|FPD;FPD_DMA_CH2;FD520000;FD52FFFF;1|FPD;FPD_DMA_CH1;FD510000;FD51FFFF;1|FPD;FPD_DMA_CH0;FD500000;FD50FFFF;1|LPD;EFUSE;FFCC0000;FFCCFFFF;1|FPD;Display Port;FD4A0000;FD4AFFFF;0|FPD;DPDMA;FD4C0000;FD4CFFFF;0|FPD;DDR_XMPU5_CFG;FD050000;FD05FFFF;1|FPD;DDR_XMPU4_CFG;FD040000;FD04FFFF;1|FPD;DDR_XMPU3_CFG;FD030000;FD03FFFF;1|FPD;DDR_XMPU2_CFG;FD020000;FD02FFFF;1|FPD;DDR_XMPU1_CFG;FD010000;FD01FFFF;1|FPD;DDR_XMPU0_CFG;FD000000;FD00FFFF;1|FPD;DDR_QOS_CTRL;FD090000;FD09FFFF;1|FPD;DDR_PHY;FD080000;FD08FFFF;1|DDR;DDR_LOW;0;7FFFFFFF;1|DDR;DDR_HIGH;800000000;97FFFFFFF;1|FPD;DDDR_CTRL;FD070000;FD070FFF;1|LPD;Coresight;FE800000;FEFFFFFF;1|LPD;CSU_DMA;FFC80000;FFC9FFFF;1|LPD;CSU;FFCA0000;FFCAFFFF;1|LPD;CRL_APB;FF5E0000;FF85FFFF;1|FPD;CRF_APB;FD1A0000;FD2DFFFF;1|FPD;CCI_REG;FD5E0000;FD5EFFFF;1|LPD;CAN1;FF070000;FF07FFFF;0|LPD;CAN0;FF060000;FF06FFFF;0|FPD;APU;FD5C0000;FD5CFFFF;1|LPD;APM_INTC_IOU;FFA20000;FFA2FFFF;1|LPD;APM_FPD_LPD;FFA30000;FFA3FFFF;1|FPD;APM_5;FD490000;FD49FFFF;1|FPD;APM_0;FD0B0000;FD0BFFFF;1|LPD;APM2;FFA10000;FFA1FFFF;1|LPD;APM1;FFA00000;FFA0FFFF;1|LPD;AMS;FFA50000;FFA5FFFF;1|FPD;AFI_5;FD3B0000;FD3BFFFF;1|FPD;AFI_4;FD3A0000;FD3AFFFF;1|FPD;AFI_3;FD390000;FD39FFFF;1|FPD;AFI_2;FD380000;FD38FFFF;1|FPD;AFI_1;FD370000;FD37FFFF;1|FPD;AFI_0;FD360000;FD36FFFF;1|LPD;AFIFM6;FF9B0000;FF9BFFFF;1|FPD;ACPU_GIC;F9010000;F907FFFF;1 \
   } \
   CONFIG.PSU__PROTECTION__SUBSYSTEMS {PMU Firmware:PMU|Secure Subsystem:} \
   CONFIG.PSU__PSS_ALT_REF_CLK__ENABLE {0} \
   CONFIG.PSU__PSS_ALT_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__PSS_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__QSPI_COHERENCY {0} \
   CONFIG.PSU__QSPI_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {0} \
   CONFIG.PSU__QSPI__GRP_FBCLK__IO {<Select>} \
   CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {x4} \
   CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__QSPI__PERIPHERAL__IO {MIO 0 .. 12} \
   CONFIG.PSU__QSPI__PERIPHERAL__MODE {Dual Parallel} \
   CONFIG.PSU__REPORT__DBGLOG {0} \
   CONFIG.PSU__RPU_COHERENCY {0} \
   CONFIG.PSU__RPU__POWER__ON {1} \
   CONFIG.PSU__SATA__LANE0__ENABLE {0} \
   CONFIG.PSU__SATA__LANE1__ENABLE {0} \
   CONFIG.PSU__SATA__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SAXIGP0__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP1__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP2__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP3__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP4__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP5__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP6__DATA_WIDTH {128} \
   CONFIG.PSU__SD0_COHERENCY {0} \
   CONFIG.PSU__SD0_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__SD0__GRP_CD__ENABLE {0} \
   CONFIG.PSU__SD0__GRP_POW__ENABLE {0} \
   CONFIG.PSU__SD0__GRP_WP__ENABLE {0} \
   CONFIG.PSU__SD0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SD0__RESET__ENABLE {0} \
   CONFIG.PSU__SD1_COHERENCY {0} \
   CONFIG.PSU__SD1_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__SD1__DATA_TRANSFER_MODE {4Bit} \
   CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
   CONFIG.PSU__SD1__GRP_CD__IO {MIO 45} \
   CONFIG.PSU__SD1__GRP_POW__ENABLE {0} \
   CONFIG.PSU__SD1__GRP_WP__ENABLE {0} \
   CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 46 .. 51} \
   CONFIG.PSU__SD1__RESET__ENABLE {0} \
   CONFIG.PSU__SD1__SLOT_TYPE {SD 2.0} \
   CONFIG.PSU__SPI0_LOOP_SPI1__ENABLE {0} \
   CONFIG.PSU__SPI0__GRP_SS0__ENABLE {0} \
   CONFIG.PSU__SPI0__GRP_SS0__IO {<Select>} \
   CONFIG.PSU__SPI0__GRP_SS1__ENABLE {0} \
   CONFIG.PSU__SPI0__GRP_SS1__IO {<Select>} \
   CONFIG.PSU__SPI0__GRP_SS2__ENABLE {0} \
   CONFIG.PSU__SPI0__GRP_SS2__IO {<Select>} \
   CONFIG.PSU__SPI0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SPI0__PERIPHERAL__IO {<Select>} \
   CONFIG.PSU__SPI1__GRP_SS0__ENABLE {0} \
   CONFIG.PSU__SPI1__GRP_SS1__ENABLE {0} \
   CONFIG.PSU__SPI1__GRP_SS2__ENABLE {0} \
   CONFIG.PSU__SPI1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SWDT0__CLOCK__ENABLE {0} \
   CONFIG.PSU__SWDT0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SWDT0__PERIPHERAL__IO {NA} \
   CONFIG.PSU__SWDT0__RESET__ENABLE {0} \
   CONFIG.PSU__SWDT1__CLOCK__ENABLE {0} \
   CONFIG.PSU__SWDT1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SWDT1__PERIPHERAL__IO {NA} \
   CONFIG.PSU__SWDT1__RESET__ENABLE {0} \
   CONFIG.PSU__TCM0A__POWER__ON {1} \
   CONFIG.PSU__TCM0B__POWER__ON {1} \
   CONFIG.PSU__TCM1A__POWER__ON {1} \
   CONFIG.PSU__TCM1B__POWER__ON {1} \
   CONFIG.PSU__TESTSCAN__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__TRACE_PIPELINE_WIDTH {8} \
   CONFIG.PSU__TRACE__INTERNAL_WIDTH {32} \
   CONFIG.PSU__TRACE__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__TRISTATE__INVERTED {1} \
   CONFIG.PSU__TSU__BUFG_PORT_PAIR {0} \
   CONFIG.PSU__TTC0__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC0__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC0__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC1__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC1__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC1__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC2__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC2__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC2__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC2__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC3__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC3__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC3__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC3__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__UART0_LOOP_UART1__ENABLE {0} \
   CONFIG.PSU__UART0__BAUD_RATE {115200} \
   CONFIG.PSU__UART0__MODEM__ENABLE {0} \
   CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 18 .. 19} \
   CONFIG.PSU__UART1__MODEM__ENABLE {0} \
   CONFIG.PSU__UART1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__USB0_COHERENCY {0} \
   CONFIG.PSU__USB0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__USB0__RESET__ENABLE {0} \
   CONFIG.PSU__USB1_COHERENCY {0} \
   CONFIG.PSU__USB1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__USB1__RESET__ENABLE {0} \
   CONFIG.PSU__USB2_0__EMIO__ENABLE {0} \
   CONFIG.PSU__USB2_1__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_0__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__USB3_1__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP0 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP1 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP2 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP3 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP4 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP5 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP6 {0} \
   CONFIG.PSU__USE__ADMA {0} \
   CONFIG.PSU__USE__APU_LEGACY_INTERRUPT {0} \
   CONFIG.PSU__USE__AUDIO {0} \
   CONFIG.PSU__USE__CLK {0} \
   CONFIG.PSU__USE__CLK0 {0} \
   CONFIG.PSU__USE__CLK1 {0} \
   CONFIG.PSU__USE__CLK2 {0} \
   CONFIG.PSU__USE__CLK3 {0} \
   CONFIG.PSU__USE__CROSS_TRIGGER {0} \
   CONFIG.PSU__USE__DDR_INTF_REQUESTED {0} \
   CONFIG.PSU__USE__DEBUG__TEST {0} \
   CONFIG.PSU__USE__EVENT_RPU {0} \
   CONFIG.PSU__USE__FABRIC__RST {1} \
   CONFIG.PSU__USE__FTM {0} \
   CONFIG.PSU__USE__GDMA {0} \
   CONFIG.PSU__USE__IRQ {0} \
   CONFIG.PSU__USE__IRQ0 {1} \
   CONFIG.PSU__USE__IRQ1 {0} \
   CONFIG.PSU__USE__M_AXI_GP0 {0} \
   CONFIG.PSU__USE__M_AXI_GP1 {0} \
   CONFIG.PSU__USE__M_AXI_GP2 {1} \
   CONFIG.PSU__USE__PROC_EVENT_BUS {0} \
   CONFIG.PSU__USE__RPU_LEGACY_INTERRUPT {0} \
   CONFIG.PSU__USE__RST0 {0} \
   CONFIG.PSU__USE__RST1 {0} \
   CONFIG.PSU__USE__RST2 {0} \
   CONFIG.PSU__USE__RST3 {0} \
   CONFIG.PSU__USE__RTC {0} \
   CONFIG.PSU__USE__STM {0} \
   CONFIG.PSU__USE__S_AXI_ACE {0} \
   CONFIG.PSU__USE__S_AXI_ACP {0} \
   CONFIG.PSU__USE__S_AXI_GP0 {0} \
   CONFIG.PSU__USE__S_AXI_GP1 {0} \
   CONFIG.PSU__USE__S_AXI_GP2 {0} \
   CONFIG.PSU__USE__S_AXI_GP3 {0} \
   CONFIG.PSU__USE__S_AXI_GP4 {0} \
   CONFIG.PSU__USE__S_AXI_GP5 {0} \
   CONFIG.PSU__USE__S_AXI_GP6 {0} \
   CONFIG.PSU__USE__USB3_0_HUB {0} \
   CONFIG.PSU__USE__USB3_1_HUB {0} \
   CONFIG.PSU__USE__VIDEO {0} \
   CONFIG.PSU__VIDEO_REF_CLK__ENABLE {0} \
   CONFIG.PSU__VIDEO_REF_CLK__FREQMHZ {33.333} \
   CONFIG.QSPI_BOARD_INTERFACE {custom} \
   CONFIG.SATA_BOARD_INTERFACE {custom} \
   CONFIG.SD0_BOARD_INTERFACE {custom} \
   CONFIG.SD1_BOARD_INTERFACE {custom} \
   CONFIG.SPI0_BOARD_INTERFACE {custom} \
   CONFIG.SPI1_BOARD_INTERFACE {custom} \
   CONFIG.SUBPRESET1 {Custom} \
   CONFIG.SUBPRESET2 {Custom} \
   CONFIG.SWDT0_BOARD_INTERFACE {custom} \
   CONFIG.SWDT1_BOARD_INTERFACE {custom} \
   CONFIG.TRACE_BOARD_INTERFACE {custom} \
   CONFIG.TTC0_BOARD_INTERFACE {custom} \
   CONFIG.TTC1_BOARD_INTERFACE {custom} \
   CONFIG.TTC2_BOARD_INTERFACE {custom} \
   CONFIG.TTC3_BOARD_INTERFACE {custom} \
   CONFIG.UART0_BOARD_INTERFACE {custom} \
   CONFIG.UART1_BOARD_INTERFACE {custom} \
   CONFIG.USB0_BOARD_INTERFACE {custom} \
   CONFIG.USB1_BOARD_INTERFACE {custom} \
   CONFIG.preset {None} \
 ] $zynq_ultra_ps_e_0

  # Create interface connections
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC00 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC00] [get_bd_intf_pins usp_rf_data_converter_0/s00_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC01 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC01] [get_bd_intf_pins usp_rf_data_converter_0/s01_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC02 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC02] [get_bd_intf_pins usp_rf_data_converter_0/s02_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC03 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC03] [get_bd_intf_pins usp_rf_data_converter_0/s03_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC10 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC10] [get_bd_intf_pins usp_rf_data_converter_0/s10_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC11 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC11] [get_bd_intf_pins usp_rf_data_converter_0/s11_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC12 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC12] [get_bd_intf_pins usp_rf_data_converter_0/s12_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC13 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC13] [get_bd_intf_pins usp_rf_data_converter_0/s13_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC20 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC20] [get_bd_intf_pins usp_rf_data_converter_0/s20_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC21 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC21] [get_bd_intf_pins usp_rf_data_converter_0/s21_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC22 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC22] [get_bd_intf_pins usp_rf_data_converter_0/s22_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC23 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC23] [get_bd_intf_pins usp_rf_data_converter_0/s23_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC30 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC30] [get_bd_intf_pins usp_rf_data_converter_0/s30_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC31 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC31] [get_bd_intf_pins usp_rf_data_converter_0/s31_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC32 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC32] [get_bd_intf_pins usp_rf_data_converter_0/s32_axis]
  connect_bd_intf_net -intf_net DAC_Data_Gen_0_m_axis_DAC33 [get_bd_intf_pins DAC_Data_Gen_0/m_axis_DAC33] [get_bd_intf_pins usp_rf_data_converter_0/s33_axis]
  connect_bd_intf_net -intf_net GT_DIFF_REFCLK1_1 [get_bd_intf_ports GT_DIFF_REFCLK1] [get_bd_intf_pins aurora_64b66b_0/GT_DIFF_REFCLK1]
  connect_bd_intf_net -intf_net adc1_clk_1 [get_bd_intf_ports adc1_clk] [get_bd_intf_pins usp_rf_data_converter_0/adc1_clk]
  connect_bd_intf_net -intf_net aurora_64b66b_0_GT_SERIAL_TX [get_bd_intf_ports GT_SERIAL_TX] [get_bd_intf_pins aurora_64b66b_0/GT_SERIAL_TX]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports iic_rtl_0] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_iic_1_IIC [get_bd_intf_ports iic_rtl_1] [get_bd_intf_pins axi_iic_1/IIC]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports spi_rtl_0] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports uart_rtl_0] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net axi_uartlite_1_UART [get_bd_intf_ports uart_rtl_1] [get_bd_intf_pins axi_uartlite_1/UART]
  connect_bd_intf_net -intf_net axi_uartlite_2_UART [get_bd_intf_ports uart_rtl_2] [get_bd_intf_pins axi_uartlite_2/UART]
  connect_bd_intf_net -intf_net axi_uartlite_3_UART [get_bd_intf_ports uart_rtl_3] [get_bd_intf_pins axi_uartlite_3/UART]
  connect_bd_intf_net -intf_net dac1_clk_1 [get_bd_intf_ports dac1_clk] [get_bd_intf_pins usp_rf_data_converter_0/dac1_clk]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M00_AXI [get_bd_intf_pins AXI_Lite_0/S_AXI] [get_bd_intf_pins ps8_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M01_AXI [get_bd_intf_pins axi_quad_spi_0/AXI_LITE] [get_bd_intf_pins ps8_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M02_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins ps8_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M03_AXI [get_bd_intf_pins ps8_0_axi_periph/M03_AXI] [get_bd_intf_pins usp_rf_data_converter_0/s_axi]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M04_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins ps8_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M05_AXI [get_bd_intf_pins axi_uartlite_1/S_AXI] [get_bd_intf_pins ps8_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M06_AXI [get_bd_intf_pins axi_iic_1/S_AXI] [get_bd_intf_pins ps8_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M07_AXI [get_bd_intf_pins axi_uartlite_2/S_AXI] [get_bd_intf_pins ps8_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M08_AXI [get_bd_intf_pins axi_uartlite_3/S_AXI] [get_bd_intf_pins ps8_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net sysref_in_1 [get_bd_intf_ports sysref_in] [get_bd_intf_pins usp_rf_data_converter_0/sysref_in]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout00 [get_bd_intf_ports vout00] [get_bd_intf_pins usp_rf_data_converter_0/vout00]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout01 [get_bd_intf_ports vout01] [get_bd_intf_pins usp_rf_data_converter_0/vout01]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout02 [get_bd_intf_ports vout02] [get_bd_intf_pins usp_rf_data_converter_0/vout02]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout03 [get_bd_intf_ports vout03] [get_bd_intf_pins usp_rf_data_converter_0/vout03]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout10 [get_bd_intf_ports vout10] [get_bd_intf_pins usp_rf_data_converter_0/vout10]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout11 [get_bd_intf_ports vout11] [get_bd_intf_pins usp_rf_data_converter_0/vout11]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout12 [get_bd_intf_ports vout12] [get_bd_intf_pins usp_rf_data_converter_0/vout12]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout13 [get_bd_intf_ports vout13] [get_bd_intf_pins usp_rf_data_converter_0/vout13]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout20 [get_bd_intf_ports vout20] [get_bd_intf_pins usp_rf_data_converter_0/vout20]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout21 [get_bd_intf_ports vout21] [get_bd_intf_pins usp_rf_data_converter_0/vout21]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout22 [get_bd_intf_ports vout22] [get_bd_intf_pins usp_rf_data_converter_0/vout22]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout23 [get_bd_intf_ports vout23] [get_bd_intf_pins usp_rf_data_converter_0/vout23]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout30 [get_bd_intf_ports vout30] [get_bd_intf_pins usp_rf_data_converter_0/vout30]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout31 [get_bd_intf_ports vout31] [get_bd_intf_pins usp_rf_data_converter_0/vout31]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout32 [get_bd_intf_ports vout32] [get_bd_intf_pins usp_rf_data_converter_0/vout32]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout33 [get_bd_intf_ports vout33] [get_bd_intf_pins usp_rf_data_converter_0/vout33]
  connect_bd_intf_net -intf_net vin00_1 [get_bd_intf_ports vin00] [get_bd_intf_pins usp_rf_data_converter_0/vin00]
  connect_bd_intf_net -intf_net vin01_1 [get_bd_intf_ports vin01] [get_bd_intf_pins usp_rf_data_converter_0/vin01]
  connect_bd_intf_net -intf_net vin02_1 [get_bd_intf_ports vin02] [get_bd_intf_pins usp_rf_data_converter_0/vin02]
  connect_bd_intf_net -intf_net vin03_1 [get_bd_intf_ports vin03] [get_bd_intf_pins usp_rf_data_converter_0/vin03]
  connect_bd_intf_net -intf_net vin10_1 [get_bd_intf_ports vin10] [get_bd_intf_pins usp_rf_data_converter_0/vin10]
  connect_bd_intf_net -intf_net vin11_1 [get_bd_intf_ports vin11] [get_bd_intf_pins usp_rf_data_converter_0/vin11]
  connect_bd_intf_net -intf_net vin12_1 [get_bd_intf_ports vin12] [get_bd_intf_pins usp_rf_data_converter_0/vin12]
  connect_bd_intf_net -intf_net vin13_1 [get_bd_intf_ports vin13] [get_bd_intf_pins usp_rf_data_converter_0/vin13]
  connect_bd_intf_net -intf_net vin20_1 [get_bd_intf_ports vin20] [get_bd_intf_pins usp_rf_data_converter_0/vin20]
  connect_bd_intf_net -intf_net vin21_1 [get_bd_intf_ports vin21] [get_bd_intf_pins usp_rf_data_converter_0/vin21]
  connect_bd_intf_net -intf_net vin22_1 [get_bd_intf_ports vin22] [get_bd_intf_pins usp_rf_data_converter_0/vin22]
  connect_bd_intf_net -intf_net vin23_1 [get_bd_intf_ports vin23] [get_bd_intf_pins usp_rf_data_converter_0/vin23]
  connect_bd_intf_net -intf_net vin30_1 [get_bd_intf_ports vin30] [get_bd_intf_pins usp_rf_data_converter_0/vin30]
  connect_bd_intf_net -intf_net vin31_1 [get_bd_intf_ports vin31] [get_bd_intf_pins usp_rf_data_converter_0/vin31]
  connect_bd_intf_net -intf_net vin32_1 [get_bd_intf_ports vin32] [get_bd_intf_pins usp_rf_data_converter_0/vin32]
  connect_bd_intf_net -intf_net vin33_1 [get_bd_intf_ports vin33] [get_bd_intf_pins usp_rf_data_converter_0/vin33]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_M_AXI_HPM0_LPD [get_bd_intf_pins ps8_0_axi_periph/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_LPD]

  # Create port connections
  connect_bd_net -net AXI_Lite_0_Data_Out_0 [get_bd_pins AXI_Lite_0/Data_Out_0] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net AXI_Lite_0_Data_Out_2 [get_bd_pins AXI_Lite_0/Data_Out_2] [get_bd_pins xlslice_2/Din] [get_bd_pins xlslice_32/Din] [get_bd_pins xlslice_33/Din] [get_bd_pins xlslice_34/Din] [get_bd_pins xlslice_46/Din] [get_bd_pins xlslice_47/Din] [get_bd_pins xlslice_49/Din] [get_bd_pins xlslice_50/Din]
  connect_bd_net -net AXI_Lite_0_Data_Out_19 [get_bd_pins AXI_Lite_0/Data_Out_19] [get_bd_pins LVDS_Tx_0/i_Set_Pulse_Period]
  connect_bd_net -net AXI_Lite_0_Data_Out_20 [get_bd_pins AXI_Lite_0/Data_Out_20] [get_bd_pins LVDS_Tx_0/i_Set_Frame_Period]
  connect_bd_net -net AXI_Lite_0_Data_Out_21 [get_bd_pins AXI_Lite_0/Data_Out_21] [get_bd_pins xlslice_48/Din]
  connect_bd_net -net AXI_Lite_0_Data_Out_22 [get_bd_pins AXI_Lite_0/Data_Out_22] [get_bd_pins xlslice_40/Din]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC00 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC00] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC00]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC01 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC01] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC01]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC02 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC02] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC02]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC03 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC03] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC03]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC10 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC10] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC10]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC11 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC11] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC11]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC12 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC12] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC12]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC13 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC13] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC13]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC20 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC20] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC20]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC21 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC21] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC21]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC22 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC22] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC22]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC23 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC23] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC23]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC30 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC30] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC30]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC31 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC31] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC31]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC32 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC32] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC32]
  connect_bd_net -net AXI_Stream_MUX_0_m_Data_ADC33 [get_bd_pins AXI_Stream_MUX_0/m_Data_ADC33] [get_bd_pins Down_Sampling_0/s_axis_tdata_ADC33]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC00 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC00] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC00]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC01 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC01] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC01]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC02 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC02] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC02]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC03 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC03] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC03]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC10 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC10] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC10]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC11 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC11] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC11]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC12 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC12] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC12]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC13 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC13] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC13]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC20 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC20] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC20]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC21 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC21] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC21]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC22 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC22] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC22]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC23 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC23] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC23]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC30 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC30] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC30]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC31 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC31] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC31]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC32 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC32] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC32]
  connect_bd_net -net AXI_Stream_MUX_0_m_Valid_ADC33 [get_bd_pins AXI_Stream_MUX_0/m_Valid_ADC33] [get_bd_pins Down_Sampling_0/s_axis_tvalid_ADC33]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC00_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC00_0] [get_bd_pins system_ila_3/probe1] [get_bd_pins usp_rf_data_converter_0/m00_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC00_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC00_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC00]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC01_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC01_0] [get_bd_pins usp_rf_data_converter_0/m01_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC01_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC01_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC01]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC02_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC02_0] [get_bd_pins usp_rf_data_converter_0/m02_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC02_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC02_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC02]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC03_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC03_0] [get_bd_pins usp_rf_data_converter_0/m03_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC03_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC03_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC03]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC10_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC10_0] [get_bd_pins usp_rf_data_converter_0/m10_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC10_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC10_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC10]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC11_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC11_0] [get_bd_pins usp_rf_data_converter_0/m11_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC11_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC11_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC11]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC12_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC12_0] [get_bd_pins usp_rf_data_converter_0/m12_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC12_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC12_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC12]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC13_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC13_0] [get_bd_pins usp_rf_data_converter_0/m13_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC13_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC13_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC13]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC20_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC20_0] [get_bd_pins usp_rf_data_converter_0/m20_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC20_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC20_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC20]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC21_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC21_0] [get_bd_pins usp_rf_data_converter_0/m21_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC21_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC21_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC21]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC22_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC22_0] [get_bd_pins usp_rf_data_converter_0/m22_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC22_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC22_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC22]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC23_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC23_0] [get_bd_pins usp_rf_data_converter_0/m23_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC23_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC23_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC23]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC30_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC30_0] [get_bd_pins usp_rf_data_converter_0/m30_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC30_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC30_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC30]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC31_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC31_0] [get_bd_pins usp_rf_data_converter_0/m31_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC31_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC31_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC31]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC32_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC32_0] [get_bd_pins usp_rf_data_converter_0/m32_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC32_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC32_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC32]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC33_0 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC33_0] [get_bd_pins usp_rf_data_converter_0/m33_axis_tready]
  connect_bd_net -net AXI_Stream_MUX_0_s_Ready_ADC33_1 [get_bd_pins AXI_Stream_MUX_0/s_Ready_ADC33_1] [get_bd_pins Data_Link_Vio_0/m_axis_tready_ADC33]
  connect_bd_net -net Aurora_Init_Rstn_0_Aurora_PMA_Init [get_bd_pins Aurora_Init_Rstn_0/Aurora_PMA_Init] [get_bd_pins aurora_64b66b_0/pma_init]
  connect_bd_net -net Aurora_Init_Rstn_0_Aurora_RST_PB [get_bd_pins Aurora_Init_Rstn_0/Aurora_RST_PB] [get_bd_pins aurora_64b66b_0/reset_pb]
  connect_bd_net -net CPF_Check_0_Error_Code [get_bd_pins CPF_Check_0/Error_Code] [get_bd_pins system_ila_2/probe4] [get_bd_pins xlconcat_5/In1]
  connect_bd_net -net CPF_Check_0_o_Frame_Cnt_Real [get_bd_pins CPF_Check_0/o_Frame_Cnt_Real] [get_bd_pins system_ila_2/probe3] [get_bd_pins xlconcat_5/In0]
  connect_bd_net -net CPF_Check_0_o_Pulse_Cnt_Real [get_bd_pins CPF_Check_0/o_Pulse_Cnt_Real] [get_bd_pins system_ila_2/probe2] [get_bd_pins xlconcat_3/In1]
  connect_bd_net -net CPF_Check_0_o_Task_Over [get_bd_pins CPF_Check_0/o_Task_Over] [get_bd_pins system_ila_2/probe1] [get_bd_pins zynq_ultra_ps_e_0/emio_gpio_i]
  connect_bd_net -net CPF_Check_0_o_Work_State [get_bd_ports o_Work_State] [get_bd_pins CPF_Check_0/o_Work_State] [get_bd_pins system_ila_2/probe0]
  connect_bd_net -net DAC_Data_Gen_0_m_axis_tdata_DAC00 [get_bd_pins DAC_Data_Gen_0/m_axis_tdata_DAC00] [get_bd_pins system_ila_3/probe8]
  connect_bd_net -net DAC_Data_Gen_0_m_axis_tvalid_DAC00 [get_bd_pins DAC_Data_Gen_0/m_axis_tvalid_DAC00] [get_bd_pins system_ila_3/probe9]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC00 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC00_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC00]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC01 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC01_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC01]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC02 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC02_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC02]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC03 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC03_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC03]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC10 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC10_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC10]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC11 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC11_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC11]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC12 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC12_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC12]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC13 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC13_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC13]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC20 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC20_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC20]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC21 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC21_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC21]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC22 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC22_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC22]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC23 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC23_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC23]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC30 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC30_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC30]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC31 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC31_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC31]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC32 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC32_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC32]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tdata_ADC33 [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC33_1] [get_bd_pins Data_Link_Vio_0/m_axis_tdata_ADC33]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC00 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC00_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC00]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC01 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC01_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC01]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC02 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC02_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC02]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC03 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC03_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC03]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC10 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC10_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC10]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC11 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC11_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC11]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC12 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC12_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC12]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC13 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC13_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC13]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC20 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC20_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC20]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC21 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC21_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC21]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC22 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC22_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC22]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC23 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC23_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC23]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC30 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC30_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC30]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC31 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC31_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC31]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC32 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC32_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC32]
  connect_bd_net -net Data_Link_Vio_0_m_axis_tvalid_ADC33 [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC33_1] [get_bd_pins Data_Link_Vio_0/m_axis_tvalid_ADC33]
  connect_bd_net -net Down_Sampling_0_m_axi_tx_tdata [get_bd_pins Down_Sampling_0/m_axi_tx_tdata] [get_bd_pins aurora_64b66b_0/s_axi_tx_tdata] [get_bd_pins system_ila_3/probe3]
  connect_bd_net -net Down_Sampling_0_m_axi_tx_tkeep [get_bd_pins Down_Sampling_0/m_axi_tx_tkeep] [get_bd_pins aurora_64b66b_0/s_axi_tx_tkeep] [get_bd_pins system_ila_3/probe4]
  connect_bd_net -net Down_Sampling_0_m_axi_tx_tlast [get_bd_pins Down_Sampling_0/m_axi_tx_tlast] [get_bd_pins aurora_64b66b_0/s_axi_tx_tlast] [get_bd_pins system_ila_3/probe5]
  connect_bd_net -net Down_Sampling_0_m_axi_tx_tvalid [get_bd_pins Down_Sampling_0/m_axi_tx_tvalid] [get_bd_pins aurora_64b66b_0/s_axi_tx_tvalid] [get_bd_pins system_ila_3/probe6]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC00 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC00] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC00]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC01 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC01] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC01]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC02 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC02] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC02]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC03 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC03] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC03]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC10 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC10] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC10]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC11 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC11] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC11]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC12 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC12] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC12]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC13 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC13] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC13]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC20 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC20] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC20]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC21 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC21] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC21]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC22 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC22] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC22]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC23 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC23] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC23]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC30 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC30] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC30]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC31 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC31] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC31]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC32 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC32] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC32]
  connect_bd_net -net Down_Sampling_0_s_axis_tready_ADC33 [get_bd_pins AXI_Stream_MUX_0/m_Ready_ADC33] [get_bd_pins Down_Sampling_0/s_axis_tready_ADC33]
  connect_bd_net -net LVDS_Rx_0_o_ADC_Trigger [get_bd_pins CPF_Check_0/i_Trig] [get_bd_pins Down_Sampling_0/i_Trig] [get_bd_pins LVDS_Rx_0/o_ADC_Trigger] [get_bd_pins system_ila_1/probe0]
  connect_bd_net -net LVDS_Rx_0_o_Channel_Cnt [get_bd_pins CPF_Check_0/i_Channel_Cnt] [get_bd_pins Down_Sampling_0/i_Channel_Cnt] [get_bd_pins LVDS_Rx_0/o_Channel_Cnt] [get_bd_pins system_ila_1/probe1]
  connect_bd_net -net LVDS_Rx_0_o_Frame_Cnt [get_bd_pins CPF_Check_0/i_Frame_Cnt] [get_bd_pins Down_Sampling_0/i_Frame_Cnt] [get_bd_pins LVDS_Rx_0/o_Frame_Cnt] [get_bd_pins system_ila_1/probe3]
  connect_bd_net -net LVDS_Rx_0_o_Pulse_Cnt [get_bd_pins CPF_Check_0/i_Pulse_Cnt] [get_bd_pins Down_Sampling_0/i_Pulse_Cnt] [get_bd_pins LVDS_Rx_0/o_Pulse_Cnt] [get_bd_pins system_ila_1/probe2]
  connect_bd_net -net LVDS_Rx_0_o_Rx_PolaMode [get_bd_pins CPF_Check_0/i_Rx_PolaMode] [get_bd_pins Down_Sampling_0/i_Rx_PolaMode] [get_bd_pins LVDS_Rx_0/o_Rx_PolaMode] [get_bd_pins system_ila_1/probe5]
  connect_bd_net -net LVDS_Rx_0_o_Tx_PolaMode [get_bd_pins CPF_Check_0/i_Tx_PolaMode] [get_bd_pins Down_Sampling_0/i_Tx_PolaMode] [get_bd_pins LVDS_Rx_0/o_Tx_PolaMode] [get_bd_pins system_ila_1/probe4]
  connect_bd_net -net LVDS_Tx_0_o_DAC_Trigger [get_bd_pins DAC_Data_Gen_0/i_Trig] [get_bd_pins Data_Link_Vio_0/i_Trig] [get_bd_pins LVDS_Tx_0/o_DAC_Trigger] [get_bd_pins system_ila_0/probe0]
  connect_bd_net -net LVDS_Tx_0_o_LVDS_Clk_1_n [get_bd_ports o_LVDS_Clk_1_n] [get_bd_pins LVDS_Tx_0/o_LVDS_Clk_1_n] [get_bd_pins system_ila_0/probe2]
  connect_bd_net -net LVDS_Tx_0_o_LVDS_Clk_1_p [get_bd_ports o_LVDS_Clk_1_p] [get_bd_pins LVDS_Tx_0/o_LVDS_Clk_1_p] [get_bd_pins system_ila_0/probe1]
  connect_bd_net -net LVDS_Tx_0_o_LVDS_Data0_n [get_bd_ports o_LVDS_Data0_n] [get_bd_pins LVDS_Tx_0/o_LVDS_Data0_n] [get_bd_pins system_ila_0/probe4]
  connect_bd_net -net LVDS_Tx_0_o_LVDS_Data0_p [get_bd_ports o_LVDS_Data0_p] [get_bd_pins LVDS_Tx_0/o_LVDS_Data0_p] [get_bd_pins system_ila_0/probe3]
  connect_bd_net -net LVDS_Tx_0_o_LVDS_Data1_n [get_bd_ports o_LVDS_Data1_n] [get_bd_pins LVDS_Tx_0/o_LVDS_Data1_n] [get_bd_pins system_ila_0/probe6]
  connect_bd_net -net LVDS_Tx_0_o_LVDS_Data1_p [get_bd_ports o_LVDS_Data1_p] [get_bd_pins LVDS_Tx_0/o_LVDS_Data1_p] [get_bd_pins system_ila_0/probe5]
  connect_bd_net -net LVDS_Tx_0_o_LVDS_Data2_n [get_bd_ports o_LVDS_Data2_n] [get_bd_pins LVDS_Tx_0/o_LVDS_Data2_n] [get_bd_pins system_ila_0/probe8]
  connect_bd_net -net LVDS_Tx_0_o_LVDS_Data2_p [get_bd_ports o_LVDS_Data2_p] [get_bd_pins LVDS_Tx_0/o_LVDS_Data2_p] [get_bd_pins system_ila_0/probe7]
  connect_bd_net -net LVDS_Tx_0_o_LVDS_Data3_n [get_bd_ports o_LVDS_Data3_n] [get_bd_pins LVDS_Tx_0/o_LVDS_Data3_n] [get_bd_pins system_ila_0/probe10]
  connect_bd_net -net LVDS_Tx_0_o_LVDS_Data3_p [get_bd_ports o_LVDS_Data3_p] [get_bd_pins LVDS_Tx_0/o_LVDS_Data3_p] [get_bd_pins system_ila_0/probe9]
  connect_bd_net -net MTS_Clk_0_PL_Clk [get_bd_pins MTS_Clk_0/PL_Clk_1] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net MTS_Clk_0_User_SysRef [get_bd_pins MTS_Clk_0/User_SysRef] [get_bd_pins usp_rf_data_converter_0/user_sysref_adc] [get_bd_pins usp_rf_data_converter_0/user_sysref_dac]
  connect_bd_net -net Net [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC00] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC01] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC02] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC03] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC10] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC11] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC12] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC13] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC20] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC21] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC22] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC23] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC30] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC31] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC32] [get_bd_pins DAC_Data_Gen_0/i_Phase_Start_DAC33] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net Net1 [get_bd_pins AXI_Lite_0/Data_Out_1] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC00] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC01] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC02] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC03] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC10] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC11] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC12] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC13] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC20] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC21] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC22] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC23] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC30] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC31] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC32] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Freq_DAC33]
  connect_bd_net -net Net2 [get_bd_pins AXI_Lite_0/Data_Out_3] [get_bd_pins xlslice_35/Din] [get_bd_pins xlslice_36/Din] [get_bd_pins xlslice_37/Din] [get_bd_pins xlslice_38/Din]
  connect_bd_net -net Net3 [get_bd_pins AXI_Lite_0/Data_Out_6] [get_bd_pins xlslice_6/Din] [get_bd_pins xlslice_7/Din] [get_bd_pins xlslice_8/Din]
  connect_bd_net -net Net4 [get_bd_pins AXI_Lite_0/Data_Out_7] [get_bd_pins xlslice_10/Din] [get_bd_pins xlslice_9/Din]
  connect_bd_net -net Net5 [get_bd_pins AXI_Lite_0/Data_Out_8] [get_bd_pins xlslice_11/Din] [get_bd_pins xlslice_12/Din] [get_bd_pins xlslice_31/Din]
  connect_bd_net -net Net6 [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC00] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC01] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC02] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC03] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC10] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC11] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC12] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC13] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC20] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC21] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC22] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC23] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC30] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC31] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC32] [get_bd_pins Data_Link_Vio_0/i_Trig_DELA_ADC33] [get_bd_pins xlslice_13/Dout]
  connect_bd_net -net Net7 [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC00] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC01] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC02] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC03] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC10] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC11] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC12] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC13] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC20] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC21] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC22] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC23] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC30] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC31] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC32] [get_bd_pins Data_Link_Vio_0/i_Pulse_Width_ADC33] [get_bd_pins xlslice_14/Dout]
  connect_bd_net -net Net8 [get_bd_pins AXI_Lite_0/Data_Out_9] [get_bd_pins xlslice_13/Din] [get_bd_pins xlslice_14/Din]
  connect_bd_net -net Net9 [get_bd_pins AXI_Lite_0/Data_Out_10] [get_bd_pins xlslice_15/Din] [get_bd_pins xlslice_16/Din]
  connect_bd_net -net Net10 [get_bd_pins AXI_Lite_0/Data_Out_11] [get_bd_pins xlslice_17/Din] [get_bd_pins xlslice_18/Din]
  connect_bd_net -net Net11 [get_bd_pins AXI_Lite_0/Data_Out_12] [get_bd_pins xlslice_19/Din] [get_bd_pins xlslice_20/Din]
  connect_bd_net -net Net12 [get_bd_pins AXI_Lite_0/Data_Out_13] [get_bd_pins xlslice_21/Din] [get_bd_pins xlslice_22/Din]
  connect_bd_net -net Net13 [get_bd_pins AXI_Lite_0/Data_Out_14] [get_bd_pins xlslice_23/Din] [get_bd_pins xlslice_24/Din]
  connect_bd_net -net Net14 [get_bd_pins AXI_Lite_0/Data_Out_15] [get_bd_pins xlslice_25/Din] [get_bd_pins xlslice_26/Din]
  connect_bd_net -net Net15 [get_bd_pins AXI_Lite_0/Data_Out_16] [get_bd_pins xlslice_27/Din] [get_bd_pins xlslice_30/Din]
  connect_bd_net -net Net16 [get_bd_pins AXI_Lite_0/Data_Out_17] [get_bd_pins xlslice_28/Din] [get_bd_pins xlslice_29/Din]
  connect_bd_net -net Net18 [get_bd_pins AXI_Lite_0/Data_Out_4] [get_bd_pins xlslice_39/Din]
  connect_bd_net -net Net19 [get_bd_pins AXI_Lite_0/Data_Out_5] [get_bd_pins xlslice_41/Din] [get_bd_pins xlslice_42/Din]
  connect_bd_net -net Net20 [get_bd_pins AXI_Lite_0/Data_Out_18] [get_bd_pins xlslice_43/Din] [get_bd_pins xlslice_44/Din] [get_bd_pins xlslice_45/Din]
  connect_bd_net -net PA_Status_TTL_1 [get_bd_ports PA_Status_TTL] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net PL_Clk_n_1 [get_bd_ports PL_Clk_n] [get_bd_pins MTS_Clk_0/PL_Clk_n]
  connect_bd_net -net PL_Clk_p_1 [get_bd_ports PL_Clk_p] [get_bd_pins MTS_Clk_0/PL_Clk_p]
  connect_bd_net -net PL_SysRef_n_1 [get_bd_ports PL_SysRef_n] [get_bd_pins MTS_Clk_0/PL_SysRef_n]
  connect_bd_net -net PL_SysRef_p_1 [get_bd_ports PL_SysRef_p] [get_bd_pins MTS_Clk_0/PL_SysRef_p]
  connect_bd_net -net aurora_64b66b_0_s_axi_tx_tready [get_bd_pins Down_Sampling_0/m_axi_tx_ready] [get_bd_pins aurora_64b66b_0/s_axi_tx_tready]
  connect_bd_net -net aurora_64b66b_0_tx_channel_up [get_bd_pins Down_Sampling_0/i_Aurora_Channel_UP] [get_bd_pins aurora_64b66b_0/tx_channel_up] [get_bd_pins system_ila_3/probe7] [get_bd_pins xlconcat_3/In0]
  connect_bd_net -net aurora_64b66b_0_user_clk_out [get_bd_pins Aurora_Init_Rstn_0/Usr_Clk] [get_bd_pins Down_Sampling_0/Clk_Aurora_User] [get_bd_pins aurora_64b66b_0/user_clk_out] [get_bd_pins proc_sys_reset_1/slowest_sync_clk]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins axi_iic_0/iic2intc_irpt] [get_bd_pins xlconcat_6/In6]
  connect_bd_net -net axi_iic_1_iic2intc_irpt [get_bd_pins axi_iic_1/iic2intc_irpt] [get_bd_pins xlconcat_6/In5]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins axi_quad_spi_0/ip2intc_irpt] [get_bd_pins xlconcat_6/In4]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins axi_uartlite_0/interrupt] [get_bd_pins xlconcat_6/In0]
  connect_bd_net -net axi_uartlite_1_interrupt [get_bd_pins axi_uartlite_1/interrupt] [get_bd_pins xlconcat_6/In1]
  connect_bd_net -net axi_uartlite_2_interrupt [get_bd_pins axi_uartlite_2/interrupt] [get_bd_pins xlconcat_6/In2]
  connect_bd_net -net axi_uartlite_3_interrupt [get_bd_pins axi_uartlite_3/interrupt] [get_bd_pins xlconcat_6/In3]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins AXI_Stream_MUX_0/Clk] [get_bd_pins BUFG_MMCM_OUT_0/CLK_1_OUT] [get_bd_pins CPF_Check_0/Clk] [get_bd_pins DAC_Data_Gen_0/Clk] [get_bd_pins Data_Link_Vio_0/Clk] [get_bd_pins Down_Sampling_0/Clk] [get_bd_pins LVDS_Rx_0/Clk] [get_bd_pins LVDS_Tx_0/Clk] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins system_ila_0/clk] [get_bd_pins system_ila_1/clk] [get_bd_pins system_ila_2/clk] [get_bd_pins system_ila_3/clk] [get_bd_pins usp_rf_data_converter_0/m0_axis_aclk] [get_bd_pins usp_rf_data_converter_0/m1_axis_aclk] [get_bd_pins usp_rf_data_converter_0/m2_axis_aclk] [get_bd_pins usp_rf_data_converter_0/m3_axis_aclk] [get_bd_pins usp_rf_data_converter_0/s0_axis_aclk] [get_bd_pins usp_rf_data_converter_0/s1_axis_aclk] [get_bd_pins usp_rf_data_converter_0/s2_axis_aclk] [get_bd_pins usp_rf_data_converter_0/s3_axis_aclk]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins aurora_64b66b_0/init_clk] [get_bd_pins clk_wiz_0/clk_out2]
  connect_bd_net -net clk_wiz_0_clk_out3 [get_bd_pins BUFG_MMCM_OUT_0/CLK_1_IN] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net i_LVDS_Clk_n_1 [get_bd_ports i_LVDS_Clk_n] [get_bd_pins LVDS_Rx_0/i_LVDS_Clk_n]
  connect_bd_net -net i_LVDS_Clk_p_1 [get_bd_ports i_LVDS_Clk_p] [get_bd_pins LVDS_Rx_0/i_LVDS_Clk_p]
  connect_bd_net -net i_LVDS_Data0_n_1 [get_bd_ports i_LVDS_Data0_n] [get_bd_pins LVDS_Rx_0/i_LVDS_Data0_n]
  connect_bd_net -net i_LVDS_Data0_p_1 [get_bd_ports i_LVDS_Data0_p] [get_bd_pins LVDS_Rx_0/i_LVDS_Data0_p]
  connect_bd_net -net i_LVDS_Data1_n_1 [get_bd_ports i_LVDS_Data1_n] [get_bd_pins LVDS_Rx_0/i_LVDS_Data1_n]
  connect_bd_net -net i_LVDS_Data1_p_1 [get_bd_ports i_LVDS_Data1_p] [get_bd_pins LVDS_Rx_0/i_LVDS_Data1_p]
  connect_bd_net -net i_LVDS_Data2_n_1 [get_bd_ports i_LVDS_Data2_n] [get_bd_pins LVDS_Rx_0/i_LVDS_Data2_n]
  connect_bd_net -net i_LVDS_Data2_p_1 [get_bd_ports i_LVDS_Data2_p] [get_bd_pins LVDS_Rx_0/i_LVDS_Data2_p]
  connect_bd_net -net i_LVDS_Data3_n_1 [get_bd_ports i_LVDS_Data3_n] [get_bd_pins LVDS_Rx_0/i_LVDS_Data3_n]
  connect_bd_net -net i_LVDS_Data3_p_1 [get_bd_ports i_LVDS_Data3_p] [get_bd_pins LVDS_Rx_0/i_LVDS_Data3_p]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins AXI_Stream_MUX_0/rstn] [get_bd_pins CPF_Check_0/rstn] [get_bd_pins DAC_Data_Gen_0/rstn] [get_bd_pins Data_Link_Vio_0/rstn] [get_bd_pins Down_Sampling_0/rstn] [get_bd_pins LVDS_Rx_0/rstn] [get_bd_pins LVDS_Tx_0/rstn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins usp_rf_data_converter_0/m0_axis_aresetn] [get_bd_pins usp_rf_data_converter_0/m1_axis_aresetn] [get_bd_pins usp_rf_data_converter_0/m2_axis_aresetn] [get_bd_pins usp_rf_data_converter_0/m3_axis_aresetn] [get_bd_pins usp_rf_data_converter_0/s0_axis_aresetn] [get_bd_pins usp_rf_data_converter_0/s1_axis_aresetn] [get_bd_pins usp_rf_data_converter_0/s2_axis_aresetn] [get_bd_pins usp_rf_data_converter_0/s3_axis_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins Aurora_Init_Rstn_0/rstn] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net rst_ps8_0_99M_peripheral_aresetn [get_bd_pins AXI_Lite_0/S_AXI_ARESETN] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_iic_1/s_axi_aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins axi_uartlite_1/s_axi_aresetn] [get_bd_pins axi_uartlite_2/s_axi_aresetn] [get_bd_pins axi_uartlite_3/s_axi_aresetn] [get_bd_pins ps8_0_axi_periph/ARESETN] [get_bd_pins ps8_0_axi_periph/M00_ARESETN] [get_bd_pins ps8_0_axi_periph/M01_ARESETN] [get_bd_pins ps8_0_axi_periph/M02_ARESETN] [get_bd_pins ps8_0_axi_periph/M03_ARESETN] [get_bd_pins ps8_0_axi_periph/M04_ARESETN] [get_bd_pins ps8_0_axi_periph/M05_ARESETN] [get_bd_pins ps8_0_axi_periph/M06_ARESETN] [get_bd_pins ps8_0_axi_periph/M07_ARESETN] [get_bd_pins ps8_0_axi_periph/M08_ARESETN] [get_bd_pins ps8_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps8_0_99M/peripheral_aresetn] [get_bd_pins usp_rf_data_converter_0/s_axi_aresetn]
  connect_bd_net -net usp_rf_data_converter_0_irq [get_bd_pins usp_rf_data_converter_0/irq] [get_bd_pins xlconcat_6/In7]
  connect_bd_net -net usp_rf_data_converter_0_m00_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC00_0] [get_bd_pins system_ila_3/probe0] [get_bd_pins usp_rf_data_converter_0/m00_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m00_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC00_0] [get_bd_pins system_ila_3/probe2] [get_bd_pins usp_rf_data_converter_0/m00_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m01_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC01_0] [get_bd_pins usp_rf_data_converter_0/m01_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m01_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC01_0] [get_bd_pins usp_rf_data_converter_0/m01_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m02_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC02_0] [get_bd_pins usp_rf_data_converter_0/m02_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m02_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC02_0] [get_bd_pins usp_rf_data_converter_0/m02_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m03_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC03_0] [get_bd_pins usp_rf_data_converter_0/m03_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m03_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC03_0] [get_bd_pins usp_rf_data_converter_0/m03_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m10_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC10_0] [get_bd_pins usp_rf_data_converter_0/m10_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m10_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC10_0] [get_bd_pins usp_rf_data_converter_0/m10_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m11_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC11_0] [get_bd_pins usp_rf_data_converter_0/m11_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m11_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC11_0] [get_bd_pins usp_rf_data_converter_0/m11_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m12_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC12_0] [get_bd_pins usp_rf_data_converter_0/m12_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m12_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC12_0] [get_bd_pins usp_rf_data_converter_0/m12_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m13_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC13_0] [get_bd_pins usp_rf_data_converter_0/m13_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m13_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC13_0] [get_bd_pins usp_rf_data_converter_0/m13_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m20_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC20_0] [get_bd_pins usp_rf_data_converter_0/m20_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m20_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC20_0] [get_bd_pins usp_rf_data_converter_0/m20_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m21_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC21_0] [get_bd_pins usp_rf_data_converter_0/m21_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m21_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC21_0] [get_bd_pins usp_rf_data_converter_0/m21_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m22_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC22_0] [get_bd_pins usp_rf_data_converter_0/m22_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m22_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC22_0] [get_bd_pins usp_rf_data_converter_0/m22_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m23_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC23_0] [get_bd_pins usp_rf_data_converter_0/m23_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m23_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC23_0] [get_bd_pins usp_rf_data_converter_0/m23_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m30_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC30_0] [get_bd_pins usp_rf_data_converter_0/m30_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m30_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC30_0] [get_bd_pins usp_rf_data_converter_0/m30_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m31_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC31_0] [get_bd_pins usp_rf_data_converter_0/m31_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m31_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC31_0] [get_bd_pins usp_rf_data_converter_0/m31_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m32_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC32_0] [get_bd_pins usp_rf_data_converter_0/m32_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m32_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC32_0] [get_bd_pins usp_rf_data_converter_0/m32_axis_tvalid]
  connect_bd_net -net usp_rf_data_converter_0_m33_axis_tdata [get_bd_pins AXI_Stream_MUX_0/s_Data_ADC33_0] [get_bd_pins usp_rf_data_converter_0/m33_axis_tdata]
  connect_bd_net -net usp_rf_data_converter_0_m33_axis_tvalid [get_bd_pins AXI_Stream_MUX_0/s_Valid_ADC33_0] [get_bd_pins usp_rf_data_converter_0/m33_axis_tvalid]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins AXI_Lite_0/Data_In_2] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconcat_3_dout [get_bd_pins AXI_Lite_0/Data_In_0] [get_bd_pins xlconcat_3/dout]
  connect_bd_net -net xlconcat_4_dout [get_bd_pins Down_Sampling_0/i_Set_SignalDelay] [get_bd_pins xlconcat_4/dout]
  connect_bd_net -net xlconcat_5_dout [get_bd_pins AXI_Lite_0/Data_In_1] [get_bd_pins xlconcat_5/dout]
  connect_bd_net -net xlconcat_6_dout [get_bd_pins xlconcat_6/dout] [get_bd_pins zynq_ultra_ps_e_0/pl_ps_irq0]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconcat_3/In2] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins AXI_Lite_0/Data_In_3] [get_bd_pins AXI_Lite_0/Data_In_4] [get_bd_pins AXI_Lite_0/Data_In_5] [get_bd_pins AXI_Lite_0/Data_In_6] [get_bd_pins AXI_Lite_0/Data_In_7] [get_bd_pins AXI_Lite_0/Data_In_8] [get_bd_pins AXI_Lite_0/Data_In_9] [get_bd_pins AXI_Lite_0/Data_In_10] [get_bd_pins AXI_Lite_0/Data_In_11] [get_bd_pins AXI_Lite_0/Data_In_12] [get_bd_pins AXI_Lite_0/Data_In_13] [get_bd_pins AXI_Lite_0/Data_In_14] [get_bd_pins AXI_Lite_0/Data_In_15] [get_bd_pins AXI_Lite_0/Data_In_16] [get_bd_pins AXI_Lite_0/Data_In_17] [get_bd_pins AXI_Lite_0/Data_In_18] [get_bd_pins AXI_Lite_0/Data_In_19] [get_bd_pins AXI_Lite_0/Data_In_20] [get_bd_pins AXI_Lite_0/Data_In_21] [get_bd_pins AXI_Lite_0/Data_In_22] [get_bd_pins AXI_Lite_0/Data_In_23] [get_bd_pins AXI_Lite_0/Data_In_24] [get_bd_pins AXI_Lite_0/Data_In_25] [get_bd_pins AXI_Lite_0/Data_In_26] [get_bd_pins AXI_Lite_0/Data_In_27] [get_bd_pins AXI_Lite_0/Data_In_28] [get_bd_pins AXI_Lite_0/Data_In_29] [get_bd_pins AXI_Lite_0/Data_In_30] [get_bd_pins AXI_Lite_0/Data_In_31] [get_bd_pins AXI_Lite_0/Data_In_32] [get_bd_pins AXI_Lite_0/Data_In_33] [get_bd_pins AXI_Lite_0/Data_In_34] [get_bd_pins AXI_Lite_0/Data_In_35] [get_bd_pins AXI_Lite_0/Data_In_36] [get_bd_pins AXI_Lite_0/Data_In_37] [get_bd_pins AXI_Lite_0/Data_In_38] [get_bd_pins AXI_Lite_0/Data_In_39] [get_bd_pins AXI_Lite_0/Data_In_40] [get_bd_pins AXI_Lite_0/Data_In_41] [get_bd_pins AXI_Lite_0/Data_In_42] [get_bd_pins AXI_Lite_0/Data_In_43] [get_bd_pins AXI_Lite_0/Data_In_44] [get_bd_pins AXI_Lite_0/Data_In_45] [get_bd_pins AXI_Lite_0/Data_In_46] [get_bd_pins AXI_Lite_0/Data_In_47] [get_bd_pins AXI_Lite_0/Data_In_48] [get_bd_pins AXI_Lite_0/Data_In_49] [get_bd_pins AXI_Lite_0/Data_In_50] [get_bd_pins AXI_Lite_0/Data_In_51] [get_bd_pins AXI_Lite_0/Data_In_52] [get_bd_pins AXI_Lite_0/Data_In_53] [get_bd_pins AXI_Lite_0/Data_In_54] [get_bd_pins AXI_Lite_0/Data_In_55] [get_bd_pins AXI_Lite_0/Data_In_56] [get_bd_pins AXI_Lite_0/Data_In_57] [get_bd_pins AXI_Lite_0/Data_In_58] [get_bd_pins AXI_Lite_0/Data_In_59] [get_bd_pins AXI_Lite_0/Data_In_60] [get_bd_pins AXI_Lite_0/Data_In_61] [get_bd_pins AXI_Lite_0/Data_In_62] [get_bd_pins AXI_Lite_0/Data_In_63] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins xlconcat_2/In0] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC00] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC01] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC02] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC03] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC10] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC11] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC12] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC13] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC20] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC21] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC22] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC23] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC30] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC31] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC32] [get_bd_pins DAC_Data_Gen_0/i_Trig_DELA_DAC33] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_10_Dout [get_bd_pins Down_Sampling_0/i_Trig_DELA] [get_bd_pins xlslice_10/Dout]
  connect_bd_net -net xlslice_11_Dout [get_bd_pins Down_Sampling_0/i_Trig_DELA_RD] [get_bd_pins xlslice_11/Dout]
  connect_bd_net -net xlslice_12_Dout [get_bd_pins Aurora_Init_Rstn_0/Init_Flag] [get_bd_pins xlslice_12/Dout]
  connect_bd_net -net xlslice_15_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC01] [get_bd_pins xlslice_15/Dout]
  connect_bd_net -net xlslice_16_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC00] [get_bd_pins xlslice_16/Dout]
  connect_bd_net -net xlslice_17_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC03] [get_bd_pins xlslice_17/Dout]
  connect_bd_net -net xlslice_18_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC02] [get_bd_pins xlslice_18/Dout]
  connect_bd_net -net xlslice_19_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC11] [get_bd_pins xlslice_19/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC00] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC01] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC02] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC03] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC10] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC11] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC12] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC13] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC20] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC21] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC22] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC23] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC30] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC31] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC32] [get_bd_pins DAC_Data_Gen_0/i_Pulse_Width_DAC33] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_20_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC10] [get_bd_pins xlslice_20/Dout]
  connect_bd_net -net xlslice_21_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC13] [get_bd_pins xlslice_21/Dout]
  connect_bd_net -net xlslice_22_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC12] [get_bd_pins xlslice_22/Dout]
  connect_bd_net -net xlslice_23_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC21] [get_bd_pins xlslice_23/Dout]
  connect_bd_net -net xlslice_24_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC20] [get_bd_pins xlslice_24/Dout]
  connect_bd_net -net xlslice_25_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC23] [get_bd_pins xlslice_25/Dout]
  connect_bd_net -net xlslice_26_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC22] [get_bd_pins xlslice_26/Dout]
  connect_bd_net -net xlslice_27_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC31] [get_bd_pins xlslice_27/Dout]
  connect_bd_net -net xlslice_28_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC32] [get_bd_pins xlslice_28/Dout]
  connect_bd_net -net xlslice_29_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC33] [get_bd_pins xlslice_29/Dout]
  connect_bd_net -net xlslice_30_Dout [get_bd_pins Data_Link_Vio_0/i_Phase_Start_ADC30] [get_bd_pins xlslice_30/Dout]
  connect_bd_net -net xlslice_31_Dout [get_bd_pins AXI_Stream_MUX_0/Control] [get_bd_pins xlslice_31/Dout]
  connect_bd_net -net xlslice_32_Dout [get_bd_ports PA_Switch_TTL] [get_bd_pins xlslice_32/Dout]
  connect_bd_net -net xlslice_33_Dout [get_bd_ports Mech_Switch_TTL] [get_bd_pins xlslice_33/Dout]
  connect_bd_net -net xlslice_34_Dout [get_bd_ports LMK_Control] [get_bd_pins xlslice_34/Dout]
  connect_bd_net -net xlslice_35_Dout [get_bd_pins Down_Sampling_0/i_Set_LFMW_CenterFrequency] [get_bd_pins xlslice_35/Dout]
  connect_bd_net -net xlslice_36_Dout [get_bd_pins CPF_Check_0/i_Set_Tx_PolaMode] [get_bd_pins Down_Sampling_0/i_Set_Tx_PolaMode] [get_bd_pins LVDS_Tx_0/i_Set_Tx_PolaMode] [get_bd_pins xlslice_36/Dout]
  connect_bd_net -net xlslice_37_Dout [get_bd_pins CPF_Check_0/i_Set_Rx_PolaMode] [get_bd_pins Down_Sampling_0/i_Set_Rx_PolaMode] [get_bd_pins LVDS_Tx_0/i_Set_Rx_PolaMode] [get_bd_pins xlslice_37/Dout]
  connect_bd_net -net xlslice_38_Dout [get_bd_pins CPF_Check_0/i_Set_InterferenceMode] [get_bd_pins Down_Sampling_0/i_Set_InterferenceMode] [get_bd_pins LVDS_Tx_0/i_Set_InterferenceMode] [get_bd_pins xlslice_38/Dout]
  connect_bd_net -net xlslice_39_Dout [get_bd_pins Down_Sampling_0/i_Set_LFMW_PulsePeriod] [get_bd_pins xlslice_39/Dout]
  connect_bd_net -net xlslice_40_Dout [get_bd_pins Down_Sampling_0/i_Set_LFMW_BandWidth] [get_bd_pins xlslice_40/Dout]
  connect_bd_net -net xlslice_41_Dout [get_bd_pins xlconcat_4/In1] [get_bd_pins xlslice_41/Dout]
  connect_bd_net -net xlslice_42_Dout [get_bd_pins Down_Sampling_0/i_Set_LFMW_Slope] [get_bd_pins xlslice_42/Dout]
  connect_bd_net -net xlslice_43_Dout [get_bd_pins CPF_Check_0/i_Set_ControlMode] [get_bd_pins Down_Sampling_0/i_Set_ControlMode] [get_bd_pins LVDS_Tx_0/i_Set_ControlMode] [get_bd_pins xlslice_43/Dout]
  connect_bd_net -net xlslice_44_Dout [get_bd_pins xlconcat_4/In0] [get_bd_pins xlslice_44/Dout]
  connect_bd_net -net xlslice_45_Dout [get_bd_pins CPF_Check_0/i_Set_FrameNum] [get_bd_pins Down_Sampling_0/i_Set_FrameNum] [get_bd_pins LVDS_Tx_0/i_Set_Frame_Num] [get_bd_pins xlslice_45/Dout]
  connect_bd_net -net xlslice_46_Dout [get_bd_pins CPF_Check_0/i_Start] [get_bd_pins LVDS_Tx_0/i_Start] [get_bd_pins xlslice_46/Dout]
  connect_bd_net -net xlslice_47_Dout [get_bd_pins CPF_Check_0/i_Stop] [get_bd_pins LVDS_Tx_0/i_Stop] [get_bd_pins xlslice_47/Dout]
  connect_bd_net -net xlslice_48_Dout [get_bd_pins Down_Sampling_0/i_Set_LFMW_FramePeriod] [get_bd_pins xlslice_48/Dout]
  connect_bd_net -net xlslice_49_Dout [get_bd_pins proc_sys_reset_0/aux_reset_in] [get_bd_pins xlslice_49/Dout]
  connect_bd_net -net xlslice_50_Dout [get_bd_pins proc_sys_reset_1/aux_reset_in] [get_bd_pins xlslice_50/Dout]
  connect_bd_net -net xlslice_6_Dout [get_bd_pins Down_Sampling_0/i_Sample_Interval] [get_bd_pins xlslice_6/Dout]
  connect_bd_net -net xlslice_7_Dout [get_bd_pins Down_Sampling_0/i_Sample_Start01234] [get_bd_pins xlslice_7/Dout]
  connect_bd_net -net xlslice_8_Dout [get_bd_pins Down_Sampling_0/i_Sample_Num] [get_bd_pins xlslice_8/Dout]
  connect_bd_net -net xlslice_9_Dout [get_bd_pins Down_Sampling_0/i_Sample_Start] [get_bd_pins xlslice_9/Dout]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins AXI_Lite_0/S_AXI_ACLK] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_iic_1/s_axi_aclk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins axi_uartlite_1/s_axi_aclk] [get_bd_pins axi_uartlite_2/s_axi_aclk] [get_bd_pins axi_uartlite_3/s_axi_aclk] [get_bd_pins ps8_0_axi_periph/ACLK] [get_bd_pins ps8_0_axi_periph/M00_ACLK] [get_bd_pins ps8_0_axi_periph/M01_ACLK] [get_bd_pins ps8_0_axi_periph/M02_ACLK] [get_bd_pins ps8_0_axi_periph/M03_ACLK] [get_bd_pins ps8_0_axi_periph/M04_ACLK] [get_bd_pins ps8_0_axi_periph/M05_ACLK] [get_bd_pins ps8_0_axi_periph/M06_ACLK] [get_bd_pins ps8_0_axi_periph/M07_ACLK] [get_bd_pins ps8_0_axi_periph/M08_ACLK] [get_bd_pins ps8_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps8_0_99M/slowest_sync_clk] [get_bd_pins usp_rf_data_converter_0/s_axi_aclk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_lpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn0 [get_bd_pins rst_ps8_0_99M/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0]

  # Create address segments
  assign_bd_address -offset 0x80000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs AXI_Lite_0/S_AXI/reg0] -force
  assign_bd_address -offset 0x80030000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x80090000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x80010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x80020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x80080000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uartlite_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x800A0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uartlite_2/S_AXI/Reg] -force
  assign_bd_address -offset 0x800B0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uartlite_3/S_AXI/Reg] -force
  assign_bd_address -offset 0x80040000 -range 0x00040000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs usp_rf_data_converter_0/s_axi/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


