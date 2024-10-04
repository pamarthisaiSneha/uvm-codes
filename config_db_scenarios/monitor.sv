class monitor extends uvm_monitor;
 integer count;

`uvm_component_utils(monitor)

function new(string name, uvm_component parent);
    super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);

    if(!uvm_config_db#(integer)::get(this,"uvm_test_top.env_h.*","count",count))
    begin
        `uvm_error("CONFIG_DB_ERROR","NOT BE ABLE TO RETRIVE COUNT FROM DB")
    end

    `uvm_info("monitor","message is from monitor build phase with none", UVM_NONE)
    `uvm_info("MONITOR","MESSAGE IS FROM MONITOR BUILD PHASE WITH NONE",UVM_NONE)
    `uvm_info("MONITOR","MESSAGE IS FROM MONITOR BUILD PHASE WITH LOW",UVM_LOW)
    
  
endfunction

task run_phase(uvm_phase phase);
    `uvm_info("monitor_runphase",$psprintf("printing from monitor from uvm low %0d",count),UVM_LOW)
endtask

endclass



