class monitor extends uvm_monitor;

`uvm_component_utils(monitor)

function new(string name, uvm_component parent);
    super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
    `uvm_info(get_full_name(),"message is from monitor build phase with none", UVM_NONE)
    `uvm_info(get_full_name(),"MESSAGE IS FROM MONITOR BUILD PHASE WITH NONE",UVM_NONE)
    `uvm_info(get_full_name(),"MESSAGE IS FROM MONITOR BUILD PHASE WITH LOW",UVM_LOW)
    `uvm_info(get_full_name(),"MESSAGE IS FROM MONITOR BUILD PHASE WITH MEDIUM",UVM_MEDIUM)
    `uvm_info(get_full_name(),"MESSAGE IS FROM MONITOR BUILD PHASE WITH HIGH",UVM_HIGH)
    `uvm_info(get_full_name(),"MESSAGE IS FROM MONITOR BUILD PHASE WITH FULL",UVM_FULL)
    `uvm_info(get_full_name(),"MESSAGE IS FROM MONITOR BUILD PHASE WITH DEBUG",UVM_DEBUG) 
endfunction

endclass