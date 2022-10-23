transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {MySixthProject.vo}

vcom -93 -work work {C:/altera/13.0sp1/lab6 - Copy/simulation/modelsim/multiplier_tb.vhd}

vsim -t 1ps -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  multiplier_tb

add wave *
view structure
view signals
run -all
