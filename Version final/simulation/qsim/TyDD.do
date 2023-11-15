onerror {quit -f}
vlib work
vlog -work work TyDD.vo
vlog -work work TyDD.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TyDD_vlg_vec_tst
vcd file -direction TyDD.msim.vcd
vcd add -internal TyDD_vlg_vec_tst/*
vcd add -internal TyDD_vlg_vec_tst/i1/*
add wave /*
run -all
