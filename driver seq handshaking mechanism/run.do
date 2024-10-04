vlib work
vlog top.sv 
vsim work.tb_top +UVM_TESTNAME=base_test +UVM_VERBOSITY=UVM_HIGH -l run.log
run -all 