vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_channel.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_0/sim/aurora_64b66b_rx_0_gt_gtye4_channel_wrapper.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_0/sim/aurora_64b66b_rx_0_gt_gtwizard_gtye4.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_0/sim/aurora_64b66b_rx_0_gt_gtwizard_top.v" \
"../../../../FPGA_Firmware.gen/sources_1/ip/aurora_64b66b_rx_0/ip_0/sim/aurora_64b66b_rx_0_gt.v" \
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

