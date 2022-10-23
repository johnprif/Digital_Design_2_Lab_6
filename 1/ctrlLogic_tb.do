onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ctrllogic/rst
add wave -noupdate /ctrllogic/clk
add wave -noupdate /ctrllogic/sl_a
add wave -noupdate /ctrllogic/sl_b
add wave -noupdate /ctrllogic/sl_h
add wave -noupdate /ctrllogic/sl_l
add wave -noupdate /ctrllogic/sl_c
add wave -noupdate /ctrllogic/en_a
add wave -noupdate /ctrllogic/en_b
add wave -noupdate /ctrllogic/en_h
add wave -noupdate /ctrllogic/en_l
add wave -noupdate /ctrllogic/en_c
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /ctrllogic/Rst 
wave create -pattern none -portmode in -language vhdl /ctrllogic/CLK 
wave create -pattern none -portmode out -language vhdl /ctrllogic/SL_A 
wave create -pattern none -portmode out -language vhdl /ctrllogic/SL_B 
wave create -pattern none -portmode out -language vhdl /ctrllogic/SL_H 
wave create -pattern none -portmode out -language vhdl /ctrllogic/SL_L 
wave create -pattern none -portmode out -language vhdl /ctrllogic/SL_C 
wave create -pattern none -portmode out -language vhdl /ctrllogic/EN_A 
wave create -pattern none -portmode out -language vhdl /ctrllogic/EN_B 
wave create -pattern none -portmode out -language vhdl /ctrllogic/EN_H 
wave create -pattern none -portmode out -language vhdl /ctrllogic/EN_L 
wave create -pattern none -portmode out -language vhdl /ctrllogic/EN_C 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 10000ns NewSig:/ctrllogic/clk 
WaveCollapseAll -1
wave clipboard restore
