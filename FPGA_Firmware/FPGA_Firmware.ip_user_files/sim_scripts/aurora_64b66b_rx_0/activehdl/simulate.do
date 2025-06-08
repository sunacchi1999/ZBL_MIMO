onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+aurora_64b66b_rx_0 -L xilinx_vip -L gtwizard_ultrascale_v1_7_9 -L xil_defaultlib -L fifo_generator_v13_2_5 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.aurora_64b66b_rx_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {aurora_64b66b_rx_0.udo}

run -all

endsim

quit -force
