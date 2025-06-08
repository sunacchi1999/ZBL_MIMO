vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/gtwizard_ultrascale_v1_7_9
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap gtwizard_ultrascale_v1_7_9 activehdl/gtwizard_ultrascale_v1_7_9
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work gtwizard_ultrascale_v1_7_9  -v2k5 "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_channel.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/ip_0/sim/aurora_64b66b_tx_0_gt_gtye4_channel_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/ip_0/sim/aurora_64b66b_tx_0_gt_gtwizard_gtye4.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/ip_0/sim/aurora_64b66b_tx_0_gt_gtwizard_top.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/ip_0/sim/aurora_64b66b_tx_0_gt.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_support.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/example_design/gtwizard_ultrascale_v1_7_gtye4_common.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/example_design/aurora_64b66b_tx_0_gt_gtye4_common_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_gt_common_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_support_reset_logic.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_ultrascale_tx_userclk.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_clock_module.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/example_design/aurora_64b66b_tx_0_axi_to_drp.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/example_design/gt/aurora_64b66b_tx_0_multi_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/example_design/gt/aurora_64b66b_tx_0_ultrascale_rx_userclk.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_standard_cc_module.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_reset_logic.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_cdc_sync.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0_core.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_polarity_check.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/example_design/gt/aurora_64b66b_tx_0_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_64b66b_scrambler.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_sym_gen.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_tx_aurora_lane_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_tx_channel_err_detect_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_tx_channel_init_sm_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_tx_ch_bond_code_gen_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_tx_err_detect_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_tx_global_logic_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_tx_lane_init_sm_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_tx_ll_control_sm_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_tx_ll_datapath_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0/src/aurora_64b66b_tx_0_tx_ll_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_tx_0/aurora_64b66b_tx_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

