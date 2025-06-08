vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/gtwizard_ultrascale_v1_7_9
vlib riviera/xil_defaultlib
vlib riviera/fifo_generator_v13_2_5

vmap xilinx_vip riviera/xilinx_vip
vmap gtwizard_ultrascale_v1_7_9 riviera/gtwizard_ultrascale_v1_7_9
vmap xil_defaultlib riviera/xil_defaultlib
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5

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
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_channel.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_0/sim/aurora_64b66b_rx_0_gt_gtye4_channel_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_0/sim/aurora_64b66b_rx_0_gt_gtwizard_gtye4.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_0/sim/aurora_64b66b_rx_0_gt_gtwizard_top.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_0/sim/aurora_64b66b_rx_0_gt.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_1/sim/aurora_64b66b_rx_0_fifo_gen_master.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_2/sim/aurora_64b66b_rx_0_fifo_gen_slave.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_support.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/example_design/gtwizard_ultrascale_v1_7_gtye4_common.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/example_design/aurora_64b66b_rx_0_gt_gtye4_common_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_gt_common_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_support_reset_logic.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_ultrascale_tx_userclk.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_clock_module.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/example_design/aurora_64b66b_rx_0_axi_to_drp.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/example_design/gt/aurora_64b66b_rx_0_multi_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/example_design/gt/aurora_64b66b_rx_0_ultrascale_rx_userclk.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_reset_logic.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_cdc_sync.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0_core.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_block_sync_sm.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_common_reset_cbcc.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_common_logic_cbcc.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_cbcc_gtx_6466.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_64b66b_descrambler.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_polarity_check.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/example_design/gt/aurora_64b66b_rx_0_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_rx_aurora_lane_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_rx_channel_err_detect_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_rx_channel_init_sm_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_rx_err_detect_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_rx_global_logic_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_rx_lane_init_sm_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_rx_ll_datapath_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_rx_ll_simplex.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_width_conversion.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0/src/aurora_64b66b_rx_0_sym_dec.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/aurora_64b66b_rx_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

