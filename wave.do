onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_riscV/uut/clk
add wave -noupdate /tb_riscV/uut/rst
add wave -noupdate /tb_riscV/uut/PC_we
add wave -noupdate -radix hexadecimal /tb_riscV/uut/PC
add wave -noupdate -radix hexadecimal /tb_riscV/uut/PC_next
add wave -noupdate -radix hexadecimal /tb_riscV/uut/instr_if
add wave -noupdate -radix hexadecimal /tb_riscV/uut/instr_id
add wave -noupdate -radix hexadecimal /tb_riscV/uut/R0
add wave -noupdate -radix hexadecimal /tb_riscV/uut/R1
add wave -noupdate -radix hexadecimal /tb_riscV/uut/R2
add wave -noupdate -radix hexadecimal /tb_riscV/uut/R3
add wave -noupdate -radix hexadecimal /tb_riscV/uut/opcode
add wave -noupdate -radix hexadecimal /tb_riscV/uut/rd
add wave -noupdate -radix hexadecimal /tb_riscV/uut/rs1
add wave -noupdate -radix hexadecimal /tb_riscV/uut/rs2
add wave -noupdate -radix hexadecimal /tb_riscV/uut/data1
add wave -noupdate -radix hexadecimal /tb_riscV/uut/data2
add wave -noupdate -radix hexadecimal /tb_riscV/uut/result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {308 ps}
