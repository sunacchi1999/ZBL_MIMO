onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib aurora_64b66b_tx_0_opt

do {wave.do}

view wave
view structure
view signals

do {aurora_64b66b_tx_0.udo}

run -all

quit -force
