onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ctrllogic/Rst
add wave -noupdate /ctrllogic/CLK
add wave -noupdate /ctrllogic/EN_A
add wave -noupdate /ctrllogic/SL_A
add wave -noupdate /ctrllogic/EN_B
add wave -noupdate /ctrllogic/SL_B
add wave -noupdate /ctrllogic/EN_H
add wave -noupdate /ctrllogic/SL_H
add wave -noupdate /ctrllogic/EN_L
add wave -noupdate /ctrllogic/SL_L
add wave -noupdate /ctrllogic/EN_C
add wave -noupdate /ctrllogic/SL_C
add wave -noupdate /ctrllogic/state
add wave -noupdate /ctrllogic/count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {5267 ps}
