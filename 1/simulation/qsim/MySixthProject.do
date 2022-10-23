onerror {quit -f}
vlib work
vlog -work work MySixthProject.vo
vlog -work work MySixthProject.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CtrlLogic_vlg_vec_tst
vcd file -direction MySixthProject.msim.vcd
vcd add -internal CtrlLogic_vlg_vec_tst/*
vcd add -internal CtrlLogic_vlg_vec_tst/i1/*
add wave /*
run -all
