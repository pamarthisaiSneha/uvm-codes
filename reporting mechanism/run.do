#vdel -all -lib work
vlib work
vlog top.sv 
vsim work.top +UVM_VERBOSITY=UVM_DEBUG +UVM_RESOURCE_DB_TRACE -l run.log
run -all 























#vlib work

#vlog top.sv \
#+incdir+/home/phaneendra/questa_phani/questasim/verilog_src/uvm-1.1d/src

#vsim work.top \
#-sv_lib /home/phaneendra/questa_phani/questasim/uvm-1.1d/linux_x86_64/uvm_dpi \
#+UVM_TESTNAME=phases_test \
#+UVM_NO_RELNOTES \
#+UVM_VERBOSITY=UVM_MEDIUM +count=2 -l run.log


#run -all