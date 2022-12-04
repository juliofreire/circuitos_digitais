onerror {exit -code 1}
vlib work
vlog -work work projeto_final.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.projeto_final_vlg_vec_tst -voptargs="+acc"
vcd file -direction projeto_final.msim.vcd
vcd add -internal projeto_final_vlg_vec_tst/*
vcd add -internal projeto_final_vlg_vec_tst/i1/*
run -all
quit -f
