transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {MySixthProject.vho}

vcom -93 -work work {C:/altera/13.0sp1/lab6/simulation/modelsim/multiplier_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUT=MySixthProject_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  multiplier_tb

add wave *
view structure
view signals
run -all
