onerror {quit -f}
vlib work
vlog -work work vga.vo
vlog -work work vga.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.vga_vlg_vec_tst
vcd file -direction vga.msim.vcd
vcd add -internal vga_vlg_vec_tst/*
vcd add -internal vga_vlg_vec_tst/i1/*
add wave /*
run -all
