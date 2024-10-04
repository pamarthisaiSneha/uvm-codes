class monitor_1 extends uvm_monitor;

    `uvm_component_utils(monitor_1)

    function new(string name, uvm_component parent);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
         `uvm_info("MONITOR_1", "MONITOR_1 BUILD PHASE",UVM_NONE)
         `uvm_info("MONITOR_1", "MONITOR_1 BUILD PHASE",UVM_LOW)
         `uvm_info("MONITOR_1", "MONITOR_1 BUILD PHASE",UVM_NONE)
         `uvm_info("MONITOR_1", "MONITOR_1 BUILD PHASE",UVM_NONE)
         `uvm_info("MONITOR_1", "MONITOR_1 BUILD PHASE",UVM_DEBUG)
    endfunction
endclass