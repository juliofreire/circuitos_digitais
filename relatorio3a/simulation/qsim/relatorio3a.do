onerror {exit -code 1}
vlib work
vlog -work work relatorio3a.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.relatorio3a_vlg_vec_tst -voptargs="+acc"
vcd file -direction relatorio3a.msim.vcd
vcd add -internal relatorio3a_vlg_vec_tst/*
vcd add -internal relatorio3a_vlg_vec_tst/i1/*
run -all
quit -f
