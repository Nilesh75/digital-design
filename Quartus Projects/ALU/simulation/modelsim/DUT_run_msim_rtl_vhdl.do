transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 4/ALU_exp/DUT_indi.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 4/ALU_exp/right_shifter.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 4/ALU_exp/mux_chain_3.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 4/ALU_exp/mux_chain_2.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 4/ALU_exp/mux_chain_1.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 4/ALU_exp/mux8.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 4/ALU_exp/mux.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 4/ALU_exp/left_shifter.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 4/ALU_exp/8bit_rev.vhd}

vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/Quartus Projects/ALU/../../EE214 - Experiment 4/ALU_exp/Testbench_indi.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
