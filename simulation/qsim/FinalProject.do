onerror {quit -f}
vlib work
vlog -work work FinalProject.vo
vlog -work work FinalProject.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.storageFinal_vlg_vec_tst
vcd file -direction FinalProject.msim.vcd
vcd add -internal storageFinal_vlg_vec_tst/*
vcd add -internal storageFinal_vlg_vec_tst/i1/*
add wave /*
run -all
