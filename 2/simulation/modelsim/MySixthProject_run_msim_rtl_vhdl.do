transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/altera/13.0sp1/lab6 - Copy/Reg.vhd}
vcom -2008 -work work {C:/altera/13.0sp1/lab6 - Copy/Adder.vhd}
vcom -2008 -work work {C:/altera/13.0sp1/lab6 - Copy/Declare.vhd}
vcom -2008 -work work {C:/altera/13.0sp1/lab6 - Copy/CtrlLogic.vhd}
vcom -2008 -work work {C:/altera/13.0sp1/lab6 - Copy/Multiplier.vhd}

vcom -2008 -work work {C:/altera/13.0sp1/lab6 - Copy/simulation/modelsim/multiplier_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  multiplier_tb

add wave *
view structure
view signals
run -all
