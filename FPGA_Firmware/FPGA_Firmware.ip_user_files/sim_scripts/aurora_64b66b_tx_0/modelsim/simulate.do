onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L gtwizard_ultrascale_v1_7_9 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.aurora_64b66b_tx_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {aurora_64b66b_tx_0.udo}

run -all

quit -force
