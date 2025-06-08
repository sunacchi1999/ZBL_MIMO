vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_8
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_26
vlib questa_lib/msim/dist_mem_gen_v8_0_13
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/lib_fifo_v1_0_14
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_quad_spi_v3_2_21
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_22
vlib questa_lib/msim/axi_data_fifo_v2_1_21
vlib questa_lib/msim/axi_crossbar_v2_1_23
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/gtwizard_ultrascale_v1_7_9
vlib questa_lib/msim/axi_iic_v2_0_25
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/axi_protocol_converter_v2_1_22

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_8
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap axi_uartlite_v2_0_26 questa_lib/msim/axi_uartlite_v2_0_26
vmap dist_mem_gen_v8_0_13 questa_lib/msim/dist_mem_gen_v8_0_13
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 questa_lib/msim/lib_fifo_v1_0_14
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_21 questa_lib/msim/axi_quad_spi_v3_2_21
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 questa_lib/msim/axi_register_slice_v2_1_22
vmap axi_data_fifo_v2_1_21 questa_lib/msim/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 questa_lib/msim/axi_crossbar_v2_1_23
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap gtwizard_ultrascale_v1_7_9 questa_lib/msim/gtwizard_ultrascale_v1_7_9
vmap axi_iic_v2_0_25 questa_lib/msim/axi_iic_v2_0_25
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap axi_protocol_converter_v2_1_22 questa_lib/msim/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip  -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_26  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/5edb/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_13  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_21  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/63ec/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_0/sim/design_1_axi_quad_spi_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_block.v" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_device_rom.sv" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_por_fsm.sv" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_tile_config.sv" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_constants_config.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_drp_arbiter.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_drp_arbiter_adc.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_register_decode.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_address_decoder.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_axi_lite_ipif.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_counter_f.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_pselect_f.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_slave_attachment.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_rf_wrapper.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_drp_control_top.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_drp_control.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_drp_access_ctrl.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_irq_req_ack.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_irq_sync.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0bufg_gt_ctrl.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_overvol_irq.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_powerup_state_irq.v" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_mt_sysref_count.sv" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_mt_mrk_count.sv" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_mt_data_align.sv" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_mt_fifo_ctrl.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_rst_cnt.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0_clk_detection.v" \
"../../../bd/design_1/ip/design_1_usp_rf_data_converter_0_0/synth/design_1_usp_rf_data_converter_0_0.v" \
"../../../bd/design_1/ipshared/d37a/AXI_Lite.v" \
"../../../bd/design_1/ip/design_1_AXI_Lite_0_0/sim/design_1_AXI_Lite_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_rst_ps8_0_99M_0/sim/design_1_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_DAC_Data_Gen_0_0/sim/design_1_DAC_Data_Gen_0_0.v" \

vlog -work gtwizard_ultrascale_v1_7_9  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d12e/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_channel.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/ip_0/sim/design_1_aurora_64b66b_0_3_gt_gtye4_channel_wrapper.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/ip_0/sim/design_1_aurora_64b66b_0_3_gt_gtwizard_gtye4.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/ip_0/sim/design_1_aurora_64b66b_0_3_gt_gtwizard_top.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/ip_0/sim/design_1_aurora_64b66b_0_3_gt.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_support.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/example_design/gtwizard_ultrascale_v1_7_gtye4_common.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/example_design/design_1_aurora_64b66b_0_3_gt_gtye4_common_wrapper.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_gt_common_wrapper.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_support_reset_logic.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_ultrascale_tx_userclk.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_clock_module.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/example_design/design_1_aurora_64b66b_0_3_axi_to_drp.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/example_design/gt/design_1_aurora_64b66b_0_3_multi_wrapper.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/example_design/gt/design_1_aurora_64b66b_0_3_ultrascale_rx_userclk.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_standard_cc_module.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_reset_logic.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_cdc_sync.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3_core.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_polarity_check.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/example_design/gt/design_1_aurora_64b66b_0_3_wrapper.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_64b66b_scrambler.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_sym_gen.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_tx_aurora_lane_simplex.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_tx_channel_err_detect_simplex.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_tx_channel_init_sm_simplex.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_tx_ch_bond_code_gen_simplex.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_tx_err_detect_simplex.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_tx_global_logic_simplex.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_tx_lane_init_sm_simplex.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_tx_ll_control_sm_simplex.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_tx_ll_datapath_simplex.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3/src/design_1_aurora_64b66b_0_3_tx_ll_simplex.v" \
"../../../bd/design_1/ip/design_1_aurora_64b66b_0_3/design_1_aurora_64b66b_0_3.v" \

vcom -work axi_iic_v2_0_25  -93 \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1529/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_iic_0_0/sim/design_1_axi_iic_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work xlslice_v1_0_2  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_2/sim/design_1_xlslice_0_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_4_1/sim/design_1_xlslice_4_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_6_0/sim/design_1_xlslice_6_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_7_0/sim/design_1_xlslice_7_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_8_0/sim/design_1_xlslice_8_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_8_1/sim/design_1_xlslice_8_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_10_0/sim/design_1_xlslice_10_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_11_0/sim/design_1_xlslice_11_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_1/sim/design_1_proc_sys_reset_0_1.vhd" \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_3/sim/design_1_proc_sys_reset_0_3.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_Data_Link_Vio_0_0/sim/design_1_Data_Link_Vio_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_6_1/sim/design_1_xlslice_6_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_13_0/sim/design_1_xlslice_13_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_13_1/sim/design_1_xlslice_13_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_14_0/sim/design_1_xlslice_14_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_15_0/sim/design_1_xlslice_15_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_16_0/sim/design_1_xlslice_16_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_17_0/sim/design_1_xlslice_17_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_18_0/sim/design_1_xlslice_18_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_19_0/sim/design_1_xlslice_19_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_20_0/sim/design_1_xlslice_20_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_15_1/sim/design_1_xlslice_15_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_16_1/sim/design_1_xlslice_16_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_17_1/sim/design_1_xlslice_17_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_18_1/sim/design_1_xlslice_18_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_19_1/sim/design_1_xlslice_19_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_20_1/sim/design_1_xlslice_20_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_21_0/sim/design_1_xlslice_21_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_22_0/sim/design_1_xlslice_22_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_12_1/sim/design_1_xlslice_12_1.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_1/sim/design_1_axi_uartlite_0_1.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlslice_6_2/sim/design_1_xlslice_6_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_32_0/sim/design_1_xlslice_32_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_33_0/sim/design_1_xlslice_33_0.v" \

vlog -work xlconcat_v2_1_4  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_1_0/sim/design_1_xlconcat_1_0.v" \

vlog -work xlconstant_v1_1_7  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_2/sim/design_1_xlconstant_0_2.v" \
"../../../bd/design_1/ip/design_1_xlconcat_2_0/sim/design_1_xlconcat_2_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_23_0/sim/design_1_xlslice_23_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_23_1/sim/design_1_xlslice_23_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_23_2/sim/design_1_xlslice_23_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_23_3/sim/design_1_xlslice_23_3.v" \
"../../../bd/design_1/ip/design_1_xlslice_38_2/sim/design_1_xlslice_38_2.v" \
"../../../bd/design_1/ip/design_1_xlconcat_3_0/sim/design_1_xlconcat_3_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_35_0/sim/design_1_xlslice_35_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_41_0/sim/design_1_xlslice_41_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_41_1/sim/design_1_xlslice_41_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_41_2/sim/design_1_xlslice_41_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_41_3/sim/design_1_xlslice_41_3.v" \
"../../../bd/design_1/ip/design_1_xlconcat_3_1/sim/design_1_xlconcat_3_1.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_3/sim/design_1_xlconstant_0_3.v" \
"../../../bd/design_1/ip/design_1_xlslice_32_1/sim/design_1_xlslice_32_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_32_2/sim/design_1_xlslice_32_2.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_5/sim/design_1_xlconstant_0_5.v" \
"../../../bd/design_1/ip/design_1_xlslice_40_0/sim/design_1_xlslice_40_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_2_0/sim/design_1_axi_uartlite_2_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_iic_1_0/sim/design_1_axi_iic_1_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_uartlite_3_0/sim/design_1_axi_uartlite_3_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_CPF_Check_0_0/sim/design_1_CPF_Check_0_0.v" \
"../../../bd/design_1/ip/design_1_Aurora_Init_Rstn_0_1/sim/design_1_Aurora_Init_Rstn_0_1.v" \
"../../../bd/design_1/ip/design_1_LVDS_Rx_0_0/sim/design_1_LVDS_Rx_0_0.v" \
"../../../bd/design_1/ip/design_1_AXI_Stream_MUX_0_5/sim/design_1_AXI_Stream_MUX_0_5.v" \
"../../../bd/design_1/ip/design_1_LVDS_Tx_0_0/sim/design_1_LVDS_Tx_0_0.v" \
"../../../bd/design_1/ip/design_1_MTS_Clk_0_0/sim/design_1_MTS_Clk_0_0.v" \
"../../../bd/design_1/ip/design_1_BUFG_MMCM_OUT_0_0/sim/design_1_BUFG_MMCM_OUT_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_33_1/sim/design_1_xlslice_33_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_49_0/sim/design_1_xlslice_49_0.v" \
"../../../bd/design_1/ip/design_1_xlconcat_2_1/sim/design_1_xlconcat_2_1.v" \
"../../../bd/design_1/ip/design_1_Down_Sampling_0_0/sim/design_1_Down_Sampling_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_33_2/sim/design_1_xlslice_33_2.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_0/bd_0/ip/ip_0/sim/bd_365d_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_0/bd_0/sim/bd_365d.v" \
"../../../bd/design_1/ip/design_1_system_ila_1_0/sim/design_1_system_ila_1_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_2_0/bd_0/ip/ip_0/sim/bd_36ad_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_2_0/bd_0/sim/bd_36ad.v" \
"../../../bd/design_1/ip/design_1_system_ila_2_0/sim/design_1_system_ila_2_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_3_0/bd_0/ip/ip_0/sim/bd_f6fc_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_3_0/bd_0/sim/bd_f6fc.v" \
"../../../bd/design_1/ip/design_1_system_ila_3_0/sim/design_1_system_ila_3_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_22  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../FPGA_Firmware.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

